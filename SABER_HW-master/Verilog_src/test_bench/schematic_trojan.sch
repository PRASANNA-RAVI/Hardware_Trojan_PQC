# File saved with Nlview 6.8.11  2018-08-07 bk=1.4403 VDI=40 GEI=35 GUI=JA:9.0 TLS
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new ComputeCore3 work:ComputeCore3:NOFILE -nosplit
load symbol Add_m_pack work:Add_m_pack:NOFILE HIERBOX pin clk input.left pin done output.right pin read_base_sel output.right pin rst input.left pin write_en output.right pinBus read_address output.right [8:0] pinBus read_data input.left [63:0] pinBus write_address output.right [8:0] pinBus write_data output.right [63:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Add_Round work:Add_Round:NOFILE HIERBOX pin clk input.left pin done output.right pin rst input.left pin write_en output.right pinBus read_address output.right [8:0] pinBus read_data input.left [63:0] pinBus write_address output.right [8:0] pinBus write_data output.right [63:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol BS2POLVECp work:BS2POLVECp:NOFILE HIERBOX pin clk input.left pin done output.right pin rst input.left pin write_en output.right pinBus read_address output.right [8:0] pinBus read_data input.left [63:0] pinBus write_address output.right [8:0] pinBus write_data output.right [63:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol BRAM64_1024 work:BRAM64_1024:NOFILE HIERBOX pin clka input.left pin clkb input.left pinBus addra input.left [9:0] pinBus addrb input.left [9:0] pinBus dina input.left [63:0] pinBus doutb output.right [63:0] pinBus wea input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol cmov work:cmov:NOFILE HIERBOX pin clk input.left pin done output.right pin rd_base_sel output.right pin rst input.left pin verify_true input.left pin write_en output.right pinBus read_address output.right [8:0] pinBus read_data input.left [63:0] pinBus write_address output.right [8:0] pinBus write_data output.right [63:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX292 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus I2 input.left [7:0] pinBus I3 input.left [7:0] pinBus I4 input.left [7:0] pinBus I5 input.left [7:0] pinBus I6 input.left [7:0] pinBus I7 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [4:0] fillcolor 1
load symbol RTL_MUX303 work MUX pin S input.bot pinBus I0 input.left [9:0] pinBus I1 input.left [9:0] pinBus O output.right [9:0] fillcolor 1
load symbol SHA_SHAKE_wrapper work:SHA_SHAKE_wrapper:NOFILE HIERBOX pin clk input.left pin done output.right pin rst input.left pin sample_dout output.right pin shake_intermediate_rst input.left pin shake_next_extract input.left pinBus din input.left [63:0] pinBus dout output.right [63:0] pinBus mlen input.left [31:0] pinBus olen input.left [31:0] pinBus rate_type input.left [1:0] pinBus rd_address output.right [8:0] pinBus wt_address output.right [8:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol vector_sampler work:vector_sampler:NOFILE HIERBOX pin clk input.left pin done output.right pin rst input.left pin wen output.right pinBus data_in input.left [63:0] pinBus rd_address output.right [8:0] pinBus sample_pack output.right [63:0] pinBus wt_address output.right [8:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol verify work:verify:NOFILE HIERBOX pin clk input.left pin done output.right pin rd_base_sel output.right pin rst input.left pin verify_true output.right pinBus din input.left [63:0] pinBus ilen input.left [9:0] pinBus rd_address output.right [8:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol VectorMul_wrapper work:VectorMul_wrapper:NOFILE HIERBOX pin PolMem_wen output.right pin clk input.left pin pol_load_coeff4x input.left pin rst input.left pin s_load_happens_now output.right pin vector_mul_done output.right pinBus coeff4x_out output.right [63:0] pinBus ram_data_out input.left [63:0] pinBus read_address output.right [8:0] pinBus write_address output.right [8:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_ADD89 work RTL(+) pinBus I0 input.left [9:0] pinBus I1 input.left [9:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_EQ work RTL(=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol IBUF {hdi_primitives:netlist:no file specified} HIERBOX pin O output.right pin I input.left fillcolor 2
load symbol copy_words work:copy_words:NOFILE HIERBOX pin clk input.left pin done output.right pin rst input.left pin write_en output.right pinBus number_words input.left [8:0] pinBus read_address output.right [8:0] pinBus read_data input.left [63:0] pinBus write_address output.right [8:0] pinBus write_data output.right [63:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX17 work MUX pin S input.bot pinBus I0 input.left [63:0] pinBus I1 input.left [63:0] pinBus O output.right [63:0] fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol RTL_MUX15 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_ROM13 work GEN pin O output.right pinBus A input.left [4:0] fillcolor 1
load symbol RTL_ROM54 work GEN pinBus A input.left [4:0] pinBus O output.right [1:0] fillcolor 1
load symbol RTL_MUX293 work MUX pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus O output.right [1:0] pinBus S input.bot [4:0] fillcolor 1
load symbol unpack work:unpack:NOFILE HIERBOX pin clk input.left pin done output.right pin done_verify input.left pin read_base_sel output.right pin rst input.left pin trigger output.right pin verify_true input.left pin write_en output.right pinBus read_address output.right [8:0] pinBus read_data input.left [63:0] pinBus write_address output.right [8:0] pinBus write_data output.right [63:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol OBUF hdi_primitives[63:0] BUF pinBus O output [63:0] pinBus I input [63:0] fillcolor 1 sandwich 3 prop @bundle 64
load symbol RTL_REG_SYNC__BREG_38 work[34:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [34:0] pinBus Q output.right [34:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 35
load symbol RTL_REG__BREG_34 work[63:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [63:0] pinBus Q output.right [63:0] fillcolor 1 sandwich 3 prop @bundle 64
load port done_copy output -pg 1 -y 790
load port done_addround output -pg 1 -y 610
load port done_unpack output -pg 1 -y 1650
load port clk input -pg 1 -y 1620
load port done_verify output -pg 1 -y 1780
load port rst input -pg 1 -y 1560
load port done_addpack output -pg 1 -y 1020
load port done_bs2polvecp output -pg 1 -y 140
load port command_we0 input -pg 1 -y 1660
load port command_we1 input -pg 1 -y 1740
load port done_cmov output -pg 1 -y 1630
load port done_sampler output -pg 1 -y 590
load port wea_ext input -pg 1 -y 1160
load port done_shake output -pg 1 -y 1610
load port done_vmul output -pg 1 -y 960
load port done_timer output -pg 1 -y 1820
load portBus doutb_ext output [63:0] -attr @name doutb_ext[63:0] -pg 1 -y 1190
load portBus dina_ext input [63:0] -attr @name dina_ext[63:0] -pg 1 -y 1140
load portBus address_ext input [9:0] -attr @name address_ext[9:0] -pg 1 -y 1530
load portBus command_in input [34:0] -attr @name command_in[34:0] -pg 1 -y 1680
load inst wea0_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 16 -y 1030
load inst BR BRAM64_1024 work:BRAM64_1024:NOFILE -autohide -attr @cell(#000000) BRAM64_1024 -pinBusAttr addra @name addra[9:0] -pinBusAttr addrb @name addrb[9:0] -pinBusAttr dina @name dina[63:0] -pinBusAttr doutb @name doutb[63:0] -pinBusAttr wea @name wea -pg 1 -lvl 18 -y 1090
load inst rd_address0_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 15 -y 1230
load inst unpack0 unpack work:unpack:NOFILE -autohide -attr @cell(#000000) unpack -attr @fillcolor #fafafa -pinBusAttr read_address @name read_address[8:0] -pinBusAttr read_data @name read_data[63:0] -pinBusAttr write_address @name write_address[8:0] -pinBusAttr write_data @name write_data[63:0] -pg 1 -lvl 5 -y 1310
load inst unpack0|v_buffer_reg[63:0] RTL_REG__BREG_34 work[63:0]ssww -hier unpack0 -attr @cell(#000000) RTL_REG -attr @name v_buffer_reg[63:0] -pinBusAttr Q @attr n/c -pg 1 -lvl 1 -y 1450
load inst addra_i RTL_ADD89 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[9:0] -pinBusAttr I1 @name I1[9:0] -pinBusAttr O @name O[9:0] -pg 1 -lvl 17 -y 1470
load inst wea4_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -y 740
load inst op2_sel_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 15 -y 1360
load inst rate_type_i RTL_MUX293 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=5'b00001 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[4:0] -pg 1 -lvl 14 -y 1080
load inst rd_address6_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 9 -y 520
load inst wea1_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 15 -y 450
load inst CMOV1 cmov work:cmov:NOFILE -autohide -attr @cell(#000000) cmov -pinBusAttr read_address @name read_address[8:0] -pinBusAttr read_data @name read_data[63:0] -pinBusAttr write_address @name write_address[8:0] -pinBusAttr write_data @name write_data[63:0] -pg 1 -lvl 6 -y 1390
load inst op2_sel0_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 14 -y 1310
load inst rst_bs2polvecp_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 10 -y 410
load inst dina_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 17 -y 900
load inst rd_address3_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 12 -y 300
load inst VERIFY1 verify work:verify:NOFILE -autohide -attr @cell(#000000) verify -pinBusAttr din @name din[63:0] -pinBusAttr ilen @name ilen[9:0] -pinBusAttr rd_address @name rd_address[8:0] -pg 1 -lvl 4 -y 1650
load inst clear_sha0_i RTL_EQ work -attr @cell(#000000) RTL_EQ -pg 1 -lvl 13 -y 1420
load inst wea6_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 10 -y 530
load inst rd_address8_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 7 -y 1480
load inst clear_sha_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 14 -y 1420
load inst rst_vmul_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 11 -y 1470
load inst BC2PVEC BS2POLVECp work:BS2POLVECp:NOFILE -autohide -attr @cell(#000000) BS2POLVECp -pinBusAttr read_address @name read_address[8:0] -pinBusAttr read_data @name read_data[63:0] -pinBusAttr write_address @name write_address[8:0] -pinBusAttr write_data @name write_data[63:0] -pg 1 -lvl 11 -y 130
load inst rst_addpack_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 12 -y 540
load inst doutb_ext[63:0]_OBUF_inst OBUF hdi_primitives[63:0] -attr @cell(#000000) OBUF -pg 1 -lvl 19 -y 1190
load inst enable_sha_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 12 -y 1410
load inst op2_sel1_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 13 -y 1660
load inst dina0_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 16 -y 910
load inst rst_copy_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 8 -y 1030
load inst rst_cmov_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 5 -y 1630
load inst rst_verify_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 3 -y 1620
load inst wt_address6_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 9 -y 710
load inst Sampler vector_sampler work:vector_sampler:NOFILE -autohide -attr @cell(#000000) vector_sampler -pinBusAttr data_in @name data_in[63:0] -pinBusAttr rd_address @name rd_address[8:0] -pinBusAttr sample_pack @name sample_pack[63:0] -pinBusAttr wt_address @name wt_address[8:0] -pg 1 -lvl 8 -y 580
load inst VMUL0 VectorMul_wrapper work:VectorMul_wrapper:NOFILE -autohide -attr @cell(#000000) VectorMul_wrapper -pinBusAttr coeff4x_out @name coeff4x_out[63:0] -pinBusAttr ram_data_out @name ram_data_out[63:0] -pinBusAttr read_address @name read_address[8:0] -pinBusAttr write_address @name write_address[8:0] -pg 1 -lvl 12 -y 1160
load inst wea_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 17 -y 1020
load inst unpack0|op_buffer_i RTL_MUX17 work -hier unpack0 -attr @cell(#000000) RTL_MUX -attr @name op_buffer_i -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 1 -y 1340
load inst enable_sha1_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 10 -y 1400
load inst wea5_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 11 -y 530
load inst dina5_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 11 -y 740
load inst wea3_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 13 -y 200
load inst rd_address5_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 10 -y 900
load inst enable_sha2_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 9 -y 1400
load inst dina3_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 13 -y 60
load inst rd_address7_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 8 -y 1690
load inst rd_address4_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 11 -y 880
load inst wea7_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -y 1230
load inst wt_address5_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 10 -y 1040
load inst rd_address2_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 13 -y 340
load inst clk_IBUF_inst IBUF {hdi_primitives:netlist:no file specified} -autohide -attr @cell(#000000) IBUF -pg 1 -lvl 1 -y 1610
load inst OP1_or_OP2_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 16 -y 1170
load inst INS_i RTL_MUX292 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr V=B\"00000001\",\ S=5'b00110 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"00000010\",\ S=5'b01010 -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr V=B\"00000100\",\ S=5'b00001 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr V=B\"00001000\",\ S=5'b00010 -pinBusAttr I4 @name I4[7:0] -pinBusAttr I4 @attr V=B\"00010000\",\ S=5'b00011 -pinBusAttr I5 @name I5[7:0] -pinBusAttr I5 @attr V=B\"00100000\",\ S=5'b00100 -pinBusAttr I6 @name I6[7:0] -pinBusAttr I6 @attr V=B\"01000000\",\ S=5'b00101 -pinBusAttr I7 @name I7[7:0] -pinBusAttr I7 @attr V=B\"10000000\",\ S=5'b00000 -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[4:0] -pg 1 -lvl 8 -y 850
load inst enable_sha0_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 11 -y 1360
load inst wt_address7_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 8 -y 1240
load inst op2_sel3_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 11 -y 1660
load inst wt_address_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 16 -y 1500
load inst copy copy_words work:copy_words:NOFILE -autohide -attr @cell(#000000) copy_words -pinBusAttr number_words @name number_words[8:0] -pinBusAttr read_address @name read_address[8:0] -pinBusAttr read_data @name read_data[63:0] -pinBusAttr write_address @name write_address[8:0] -pinBusAttr write_data @name write_data[63:0] -pg 1 -lvl 9 -y 850
load inst wt_address0_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 15 -y 1500
load inst wt_address1_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 14 -y 500
load inst shake_next_extract_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 14 -y 970
load inst dina1_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 15 -y 680
load inst rst_unpack_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 4 -y 1480
load inst AddPack0 Add_m_pack work:Add_m_pack:NOFILE -autohide -attr @cell(#000000) Add_m_pack -pinBusAttr read_address @name read_address[8:0] -pinBusAttr read_data @name read_data[63:0] -pinBusAttr write_address @name write_address[8:0] -pinBusAttr write_data @name write_data[63:0] -pg 1 -lvl 19 -y 1010
load inst SH SHA_SHAKE_wrapper work:SHA_SHAKE_wrapper:NOFILE -autohide -attr @cell(#000000) SHA_SHAKE_wrapper -pinBusAttr din @name din[63:0] -pinBusAttr dout @name dout[63:0] -pinBusAttr mlen @name mlen[31:0] -pinBusAttr olen @name olen[31:0] -pinBusAttr rate_type @name rate_type[1:0] -pinBusAttr rd_address @name rd_address[8:0] -pinBusAttr wt_address @name wt_address[8:0] -pg 1 -lvl 15 -y 860
load inst dina7_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 9 -y 1110
load inst wt_address2_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 13 -y 480
load inst shake_intermediate_rst_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 14 -y 880
load inst rst_vmul1_i RTL_OR work -attr @cell(#000000) RTL_OR -pinAttr I0 @attr n/c -pg 1 -lvl 10 -y 1500
load inst command_reg1_reg[34:0] RTL_REG_SYNC__BREG_38 work[34:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pinBusAttr Q @attr n/c -pg 1 -lvl 3 -y 1740
load inst AddRound0 Add_Round work:Add_Round:NOFILE -autohide -attr @cell(#000000) Add_Round -pinBusAttr read_address @name read_address[8:0] -pinBusAttr read_data @name read_data[63:0] -pinBusAttr write_address @name write_address[8:0] -pinBusAttr write_data @name write_data[63:0] -pg 1 -lvl 13 -y 640
load inst rate_type0_i RTL_ROM54 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pinBusAttr O @name O[1:0] -pg 1 -lvl 13 -y 1090
load inst rst_sampler_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 7 -y 980
load inst dina2_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 14 -y 690
load inst rst_addround_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 12 -y 640
load inst wea2_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 14 -y 200
load inst addrb_i RTL_ADD89 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[9:0] -pinBusAttr I1 @name I1[9:0] -pinBusAttr O @name O[9:0] -pg 1 -lvl 17 -y 1180
load inst command_reg0_reg[34:0] RTL_REG_SYNC__BREG_38 work[34:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 2 -y 1640
load inst pol_load_coeff4x_i RTL_ROM13 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[4:0] -pg 1 -lvl 11 -y 1190
load inst wt_address4_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 11 -y 1050
load inst rd_address1_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 14 -y 360
load inst done_timer_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 19 -y 1820
load inst dina6_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 10 -y 720
load inst op2_sel2_i RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -y 1690
load inst dina4_i RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 12 -y 880
load inst rd_address_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 16 -y 1310
load inst wt_address3_i RTL_MUX303 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 12 -y 420
load net dina2_i_n_51 -attr @rip O[12] -pin dina1_i I1[12] -pin dina2_i O[12]
load net dout_bs2polvecp[14] -attr @rip write_data[14] -pin BC2PVEC write_data[14] -pin dina3_i I0[14]
load net dina2_i_n_52 -attr @rip O[11] -pin dina1_i I1[11] -pin dina2_i O[11]
load net dout_bs2polvecp[31] -attr @rip write_data[31] -pin BC2PVEC write_data[31] -pin dina3_i I0[31]
load net dout_copy[20] -attr @rip write_data[20] -pin copy write_data[20] -pin dina5_i I0[20]
load net doutb_ext[13] -attr @rip 13 -port doutb_ext[13] -pin doutb_ext[63:0]_OBUF_inst O[13]
load net rd_address_sampler[3] -attr @rip rd_address[3] -pin Sampler rd_address[3] -pin rd_address6_i I0[3]
load net dina2_i_n_53 -attr @rip O[10] -pin dina1_i I1[10] -pin dina2_i O[10]
load net rd_address_unpack[6] -attr @rip read_address[6] -pin rd_address4_i I0[6] -pin unpack0 read_address[6]
load net dina2_i_n_54 -attr @rip O[9] -pin dina1_i I1[9] -pin dina2_i O[9]
load net dout_addround[24] -attr @rip write_data[24] -pin AddRound0 write_data[24] -pin dina1_i I0[24]
load net dina2_i_n_55 -attr @rip O[8] -pin dina1_i I1[8] -pin dina2_i O[8]
load net dina2_i_n_56 -attr @rip O[7] -pin dina1_i I1[7] -pin dina2_i O[7]
load net dina2_i_n_57 -attr @rip O[6] -pin dina1_i I1[6] -pin dina2_i O[6]
load net dout_sampler[40] -attr @rip sample_pack[40] -pin Sampler sample_pack[40] -pin dina6_i I0[40]
load net dina2_i_n_58 -attr @rip O[5] -pin dina1_i I1[5] -pin dina2_i O[5]
load net dina[16] -attr @rip O[16] -pin BR dina[16] -pin dina_i O[16]
load net dout_bs2polvecp[21] -attr @rip write_data[21] -pin BC2PVEC write_data[21] -pin dina3_i I0[21]
load net rst_vmul -pin VMUL0 rst -pin dina0_i S -pin op2_sel1_i S -pin rd_address0_i S -pin rst_vmul_i O -pin wea0_i S -pin wt_address0_i S
netloc rst_vmul 1 11 5 5150 1630 5530J N 6250 1590 6670 N 7480
load net dina2_i_n_59 -attr @rip O[4] -pin dina1_i I1[4] -pin dina2_i O[4]
load net command_in[11] -attr @rip command_in[11] -port command_in[11] -pin command_reg0_reg[34:0] D[11] -pin command_reg1_reg[34:0] D[11]
load net unpack0|read_data[21] -attr @rip read_data[21] -attr @name read_data[21] -hierPin unpack0 read_data[21] -pin unpack0|op_buffer_i I0[21] -pin unpack0|v_buffer_reg[63:0] D[21]
load net dout_addround[13] -attr @rip write_data[13] -pin AddRound0 write_data[13] -pin dina1_i I0[13]
load net rd_address_bs2polvecp[3] -attr @rip read_address[3] -pin BC2PVEC read_address[3] -pin rd_address3_i I0[3]
load net dina2_i_n_20 -attr @rip O[43] -pin dina1_i I1[43] -pin dina2_i O[43]
load net dout_addround[5] -attr @rip write_data[5] -pin AddRound0 write_data[5] -pin dina1_i I0[5]
load net doutb_ext[35] -attr @rip 35 -port doutb_ext[35] -pin doutb_ext[63:0]_OBUF_inst O[35]
load net rd_address_shake[7] -attr @rip rd_address[7] -pin SH rd_address[7] -pin rd_address_i I0[7]
load net dina2_i_n_21 -attr @rip O[42] -pin dina1_i I1[42] -pin dina2_i O[42]
load net command_in[7] -attr @rip command_in[7] -port command_in[7] -pin command_reg0_reg[34:0] D[7] -pin command_reg1_reg[34:0] D[7]
load net dina2_i_n_22 -attr @rip O[41] -pin dina1_i I1[41] -pin dina2_i O[41]
load net addrb[9] -attr @rip O[9] -pin BR addrb[9] -pin addrb_i O[9]
load net done_addround -pin AddRound0 done -port done_addround
netloc done_addround 1 13 7 6110J 610 NJ 610 NJ 610 NJ 610 NJ 610 NJ 610 NJ
load net dout_cmov[2] -attr @rip write_data[2] -pin CMOV1 write_data[2] -pin dina7_i I0[2]
load net doutb_ext[7] -attr @rip 7 -port doutb_ext[7] -pin doutb_ext[63:0]_OBUF_inst O[7]
load net dina2_i_n_23 -attr @rip O[40] -pin dina1_i I1[40] -pin dina2_i O[40]
load net dina2_i_n_24 -attr @rip O[39] -pin dina1_i I1[39] -pin dina2_i O[39]
load net command_in[34] -attr @rip command_in[34] -port command_in[34] -pin command_reg0_reg[34:0] D[34] -pin command_reg1_reg[34:0] D[34]
load net doutb_ext[12] -attr @rip 12 -port doutb_ext[12] -pin doutb_ext[63:0]_OBUF_inst O[12]
load net dina2_i_n_25 -attr @rip O[38] -pin dina1_i I1[38] -pin dina2_i O[38]
load net dout_bs2polvecp[15] -attr @rip write_data[15] -pin BC2PVEC write_data[15] -pin dina3_i I0[15]
load net dina2_i_n_26 -attr @rip O[37] -pin dina1_i I1[37] -pin dina2_i O[37]
load net dout_bs2polvecp[32] -attr @rip write_data[32] -pin BC2PVEC write_data[32] -pin dina3_i I0[32]
load net dout_addround[23] -attr @rip write_data[23] -pin AddRound0 write_data[23] -pin dina1_i I0[23]
load net dina2_i_n_27 -attr @rip O[36] -pin dina1_i I1[36] -pin dina2_i O[36]
load net rd_address_unpack[7] -attr @rip read_address[7] -pin rd_address4_i I0[7] -pin unpack0 read_address[7]
load net dina2_i_n_28 -attr @rip O[35] -pin dina1_i I1[35] -pin dina2_i O[35]
load net doutb_ext[63] -attr @rip 63 -port doutb_ext[63] -pin doutb_ext[63:0]_OBUF_inst O[63]
load net rd_address_addpack[3] -attr @rip read_address[3] -pin AddPack0 read_address[3] -pin rd_address2_i I0[3]
load net rd_address_sampler[6] -attr @rip rd_address[6] -pin Sampler rd_address[6] -pin rd_address6_i I0[6]
load net dina2_i_n_29 -attr @rip O[34] -pin dina1_i I1[34] -pin dina2_i O[34]
load net dout_bs2polvecp[20] -attr @rip write_data[20] -pin BC2PVEC write_data[20] -pin dina3_i I0[20]
load net dout_vmul[45] -attr @rip coeff4x_out[45] -pin VMUL0 coeff4x_out[45] -pin dina0_i I0[45]
load net wt_address_copy[5] -attr @rip write_address[5] -pin copy write_address[5] -pin wt_address5_i I0[5]
load net clear_sha -pin SH rst -pin clear_sha_i O
netloc clear_sha 1 14 1 6650
load net dina[17] -attr @rip O[17] -pin BR dina[17] -pin dina_i O[17]
load net command_in[10] -attr @rip command_in[10] -port command_in[10] -pin command_reg0_reg[34:0] D[10] -pin command_reg1_reg[34:0] D[10]
load net rd_address_bs2polvecp[4] -attr @rip read_address[4] -pin BC2PVEC read_address[4] -pin rd_address3_i I0[4]
load net command_in[6] -attr @rip command_in[6] -port command_in[6] -pin command_reg0_reg[34:0] D[6] -pin command_reg1_reg[34:0] D[6]
load net dina2_i_n_30 -attr @rip O[33] -pin dina1_i I1[33] -pin dina2_i O[33]
load net dout_cmov[1] -attr @rip write_data[1] -pin CMOV1 write_data[1] -pin dina7_i I0[1]
load net doutb_ext[36] -attr @rip 36 -port doutb_ext[36] -pin doutb_ext[63:0]_OBUF_inst O[36]
load net rd_address_shake[8] -attr @rip rd_address[8] -pin SH rd_address[8] -pin rd_address_i I0[8]
load net dina2_i_n_31 -attr @rip O[32] -pin dina1_i I1[32] -pin dina2_i O[32]
load net dina[60] -attr @rip O[60] -pin BR dina[60] -pin dina_i O[60]
load net dina2_i_n_32 -attr @rip O[31] -pin dina1_i I1[31] -pin dina2_i O[31]
load net command_in[33] -attr @rip command_in[33] -port command_in[33] -pin command_reg0_reg[34:0] D[33] -pin command_reg1_reg[34:0] D[33]
load net dout_addround[8] -attr @rip write_data[8] -pin AddRound0 write_data[8] -pin dina1_i I0[8]
load net unpack0|read_data[26] -attr @rip read_data[26] -attr @name read_data[26] -hierPin unpack0 read_data[26] -pin unpack0|op_buffer_i I0[26] -pin unpack0|v_buffer_reg[63:0] D[26]
load net dina2_i_n_33 -attr @rip O[30] -pin dina1_i I1[30] -pin dina2_i O[30]
load net dina2_i_n_34 -attr @rip O[29] -pin dina1_i I1[29] -pin dina2_i O[29]
load net dina2_i_n_35 -attr @rip O[28] -pin dina1_i I1[28] -pin dina2_i O[28]
load net dout_bs2polvecp[16] -attr @rip write_data[16] -pin BC2PVEC write_data[16] -pin dina3_i I0[16]
load net wea_ext -pin wea7_i I1 -port wea_ext
netloc wea_ext 1 0 9 NJ 1160 NJ 1160 NJ 1160 NJ 1160 NJ 1160 NJ 1160 NJ 1160 NJ 1160 3440J
load net dina2_i_n_36 -attr @rip O[27] -pin dina1_i I1[27] -pin dina2_i O[27]
load net doutb_ext[15] -attr @rip 15 -port doutb_ext[15] -pin doutb_ext[63:0]_OBUF_inst O[15]
load net doutb_ext[62] -attr @rip 62 -port doutb_ext[62] -pin doutb_ext[63:0]_OBUF_inst O[62]
load net rd_address_sampler[5] -attr @rip rd_address[5] -pin Sampler rd_address[5] -pin rd_address6_i I0[5]
load net dina2_i_n_37 -attr @rip O[26] -pin dina1_i I1[26] -pin dina2_i O[26]
load net rd_address_unpack[8] -attr @rip read_address[8] -pin rd_address4_i I0[8] -pin unpack0 read_address[8]
load net dina2_i_n_38 -attr @rip O[25] -pin dina1_i I1[25] -pin dina2_i O[25]
load net dina[14] -attr @rip O[14] -pin BR dina[14] -pin dina_i O[14]
load net dout_sampler[23] -attr @rip sample_pack[23] -pin Sampler sample_pack[23] -pin dina6_i I0[23]
load net dout_vmul[44] -attr @rip coeff4x_out[44] -pin VMUL0 coeff4x_out[44] -pin dina0_i I0[44]
load net rd_address1_i_n_0 -attr @rip O[9] -pin rd_address0_i I1[9] -pin rd_address1_i O[9]
load net rd_address_addpack[4] -attr @rip read_address[4] -pin AddPack0 read_address[4] -pin rd_address2_i I0[4]
load net dina2_i_n_39 -attr @rip O[24] -pin dina1_i I1[24] -pin dina2_i O[24]
load net rd_address1_i_n_1 -attr @rip O[8] -pin rd_address0_i I1[8] -pin rd_address1_i O[8]
load net rd_address1_i_n_2 -attr @rip O[7] -pin rd_address0_i I1[7] -pin rd_address1_i O[7]
load net wt_address_copy[6] -attr @rip write_address[6] -pin copy write_address[6] -pin wt_address5_i I0[6]
load net rd_address1_i_n_3 -attr @rip O[6] -pin rd_address0_i I1[6] -pin rd_address1_i O[6]
load net unpack0|read_data[62] -attr @rip read_data[62] -attr @name read_data[62] -hierPin unpack0 read_data[62] -pin unpack0|op_buffer_i I0[62] -pin unpack0|v_buffer_reg[63:0] D[62]
load net done_timer -port done_timer -pin done_timer_OBUF_inst O
netloc done_timer 1 19 1 NJ
load net dout_bs2polvecp[23] -attr @rip write_data[23] -pin BC2PVEC write_data[23] -pin dina3_i I0[23]
load net rd_address1_i_n_4 -attr @rip O[5] -pin rd_address0_i I1[5] -pin rd_address1_i O[5]
load net rd_address1_i_n_5 -attr @rip O[4] -pin rd_address0_i I1[4] -pin rd_address1_i O[4]
load net rd_address1_i_n_6 -attr @rip O[3] -pin rd_address0_i I1[3] -pin rd_address1_i O[3]
load net dout_shake[59] -attr @rip dout[59] -pin SH dout[59] -pin dina_i I0[59]
load net p_3_in -attr @rip O[6] -pin INS_i O[6] -pin enable_sha_i I1
load net rd_address1_i_n_7 -attr @rip O[2] -pin rd_address0_i I1[2] -pin rd_address1_i O[2]
load net dout_addround[49] -attr @rip write_data[49] -pin AddRound0 write_data[49] -pin dina1_i I0[49]
load net rd_address1_i_n_8 -attr @rip O[1] -pin rd_address0_i I1[1] -pin rd_address1_i O[1]
load net dina_ext[19] -attr @rip dina_ext[19] -pin dina7_i I1[19] -port dina_ext[19]
load net dout_addpack[0] -attr @rip write_data[0] -pin AddPack0 write_data[0] -pin dina2_i I0[0]
load net dout_addround[7] -attr @rip write_data[7] -pin AddRound0 write_data[7] -pin dina1_i I0[7]
load net doutb_ext[37] -attr @rip 37 -port doutb_ext[37] -pin doutb_ext[63:0]_OBUF_inst O[37]
load net rd_address1_i_n_9 -attr @rip O[0] -pin rd_address0_i I1[0] -pin rd_address1_i O[0]
load net rd_address2_i_n_0 -attr @rip O[9] -pin rd_address1_i I1[9] -pin rd_address2_i O[9]
load net rd_address_sampler[0] -attr @rip rd_address[0] -pin Sampler rd_address[0] -pin rd_address6_i I0[0]
load net rd_address2_i_n_1 -attr @rip O[8] -pin rd_address1_i I1[8] -pin rd_address2_i O[8]
load net command_in[9] -attr @rip command_in[9] -port command_in[9] -pin command_reg0_reg[34:0] D[9] -pin command_reg1_reg[34:0] D[9]
load net dout_bs2polvecp[30] -attr @rip write_data[30] -pin BC2PVEC write_data[30] -pin dina3_i I0[30]
load net dout_cmov[4] -attr @rip write_data[4] -pin CMOV1 write_data[4] -pin dina7_i I0[4]
load net doutb_ext[9] -attr @rip 9 -port doutb_ext[9] -pin doutb_ext[63:0]_OBUF_inst O[9]
load net rd_address2_i_n_2 -attr @rip O[7] -pin rd_address1_i I1[7] -pin rd_address2_i O[7]
load net unpack0|read_data[27] -attr @rip read_data[27] -attr @name read_data[27] -hierPin unpack0 read_data[27] -pin unpack0|op_buffer_i I0[27] -pin unpack0|v_buffer_reg[63:0] D[27]
load net rd_address2_i_n_3 -attr @rip O[6] -pin rd_address1_i I1[6] -pin rd_address2_i O[6]
load net doutb_ext[14] -attr @rip 14 -port doutb_ext[14] -pin doutb_ext[63:0]_OBUF_inst O[14]
load net doutb_ext[61] -attr @rip 61 -port doutb_ext[61] -pin doutb_ext[63:0]_OBUF_inst O[61]
load net rd_address2_i_n_4 -attr @rip O[5] -pin rd_address1_i I1[5] -pin rd_address2_i O[5]
load net dina[0] -attr @rip O[0] -pin BR dina[0] -pin dina_i O[0]
load net dout_bs2polvecp[17] -attr @rip write_data[17] -pin BC2PVEC write_data[17] -pin dina3_i I0[17]
load net rd_address2_i_n_5 -attr @rip O[4] -pin rd_address1_i I1[4] -pin rd_address2_i O[4]
load net dout_sampler[22] -attr @rip sample_pack[22] -pin Sampler sample_pack[22] -pin dina6_i I0[22]
load net dout_vmul[43] -attr @rip coeff4x_out[43] -pin VMUL0 coeff4x_out[43] -pin dina0_i I0[43]
load net rd_address2_i_n_6 -attr @rip O[3] -pin rd_address1_i I1[3] -pin rd_address2_i O[3]
load net wt_address_copy[3] -attr @rip write_address[3] -pin copy write_address[3] -pin wt_address5_i I0[3]
load net dina1_i_n_30 -attr @rip O[33] -pin dina0_i I1[33] -pin dina1_i O[33]
load net rd_address2_i_n_7 -attr @rip O[2] -pin rd_address1_i I1[2] -pin rd_address2_i O[2]
load net dina1_i_n_31 -attr @rip O[32] -pin dina0_i I1[32] -pin dina1_i O[32]
load net dina[15] -attr @rip O[15] -pin BR dina[15] -pin dina_i O[15]
load net rd_address2_i_n_8 -attr @rip O[1] -pin rd_address1_i I1[1] -pin rd_address2_i O[1]
load net rd_address_addpack[5] -attr @rip read_address[5] -pin AddPack0 read_address[5] -pin rd_address2_i I0[5]
load net wt_address5_i_n_0 -attr @rip O[9] -pin wt_address4_i I1[9] -pin wt_address5_i O[9]
load net dina1_i_n_32 -attr @rip O[31] -pin dina0_i I1[31] -pin dina1_i O[31]
load net rd_address2_i_n_9 -attr @rip O[0] -pin rd_address1_i I1[0] -pin rd_address2_i O[0]
load net wt_address5_i_n_1 -attr @rip O[8] -pin wt_address4_i I1[8] -pin wt_address5_i O[8]
load net dina1_i_n_33 -attr @rip O[30] -pin dina0_i I1[30] -pin dina1_i O[30]
load net dout_bs2polvecp[22] -attr @rip write_data[22] -pin BC2PVEC write_data[22] -pin dina3_i I0[22]
load net wt_address5_i_n_2 -attr @rip O[7] -pin wt_address4_i I1[7] -pin wt_address5_i O[7]
load net done_copy -pin copy done -port done_copy
netloc done_copy 1 9 11 3980J 820 NJ 820 NJ 820 5550J 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ
load net dina1_i_n_34 -attr @rip O[29] -pin dina0_i I1[29] -pin dina1_i O[29]
load net wt_address5_i_n_3 -attr @rip O[6] -pin wt_address4_i I1[6] -pin wt_address5_i O[6]
load net unpack0|read_data[63] -attr @rip read_data[63] -attr @name read_data[63] -hierPin unpack0 read_data[63] -pin unpack0|op_buffer_i I0[63] -pin unpack0|v_buffer_reg[63:0] D[63]
load net dina1_i_n_35 -attr @rip O[28] -pin dina0_i I1[28] -pin dina1_i O[28]
load net wt_address5_i_n_4 -attr @rip O[5] -pin wt_address4_i I1[5] -pin wt_address5_i O[5]
load net dina1_i_n_36 -attr @rip O[27] -pin dina0_i I1[27] -pin dina1_i O[27]
load net wt_address5_i_n_5 -attr @rip O[4] -pin wt_address4_i I1[4] -pin wt_address5_i O[4]
load net dina1_i_n_37 -attr @rip O[26] -pin dina0_i I1[26] -pin dina1_i O[26]
load net wt_address5_i_n_6 -attr @rip O[3] -pin wt_address4_i I1[3] -pin wt_address5_i O[3]
load net dina_ext[18] -attr @rip dina_ext[18] -pin dina7_i I1[18] -port dina_ext[18]
load net dina1_i_n_38 -attr @rip O[25] -pin dina0_i I1[25] -pin dina1_i O[25]
load net wt_address5_i_n_7 -attr @rip O[2] -pin wt_address4_i I1[2] -pin wt_address5_i O[2]
load net unpack0|read_data[24] -attr @rip read_data[24] -attr @name read_data[24] -hierPin unpack0 read_data[24] -pin unpack0|op_buffer_i I0[24] -pin unpack0|v_buffer_reg[63:0] D[24]
load net command_in[16] -attr @rip command_in[16] -port command_in[16] -pin command_reg0_reg[34:0] D[16] -pin command_reg1_reg[34:0] D[16]
load net dina1_i_n_39 -attr @rip O[24] -pin dina0_i I1[24] -pin dina1_i O[24]
load net dout_vmul[32] -attr @rip coeff4x_out[32] -pin VMUL0 coeff4x_out[32] -pin dina0_i I0[32]
load net wt_address5_i_n_8 -attr @rip O[1] -pin wt_address4_i I1[1] -pin wt_address5_i O[1]
load net dout_addpack[1] -attr @rip write_data[1] -pin AddPack0 write_data[1] -pin dina2_i I0[1]
load net command_in[8] -attr @rip command_in[8] -port command_in[8] -pin command_reg0_reg[34:0] D[8] -pin command_reg1_reg[34:0] D[8]
load net dout_cmov[3] -attr @rip write_data[3] -pin CMOV1 write_data[3] -pin dina7_i I0[3]
load net doutb_ext[38] -attr @rip 38 -port doutb_ext[38] -pin doutb_ext[63:0]_OBUF_inst O[38]
load net wt_address5_i_n_9 -attr @rip O[0] -pin wt_address4_i I1[0] -pin wt_address5_i O[0]
load net dina[62] -attr @rip O[62] -pin BR dina[62] -pin dina_i O[62]
load net rd_address7_i_n_0 -attr @rip O[9] -pin rd_address6_i I1[9] -pin rd_address7_i O[9]
load net rd_address7_i_n_1 -attr @rip O[8] -pin rd_address6_i I1[8] -pin rd_address7_i O[8]
load net rd_address7_i_n_2 -attr @rip O[7] -pin rd_address6_i I1[7] -pin rd_address7_i O[7]
load net done_verify -pin VERIFY1 done -port done_verify -pin unpack0 done_verify
netloc done_verify 1 4 16 1200 1720 NJ 1720 NJ 1720 2810J 1780 NJ 1780 NJ 1780 NJ 1780 NJ 1780 NJ 1780 NJ 1780 NJ 1780 NJ 1780 NJ 1780 NJ 1780 NJ 1780 NJ
load net dina[12] -attr @rip O[12] -pin BR dina[12] -pin dina_i O[12]
load net dout_sampler[21] -attr @rip sample_pack[21] -pin Sampler sample_pack[21] -pin dina6_i I0[21]
load net dout_vmul[42] -attr @rip coeff4x_out[42] -pin VMUL0 coeff4x_out[42] -pin dina0_i I0[42]
load net rd_address7_i_n_3 -attr @rip O[6] -pin rd_address6_i I1[6] -pin rd_address7_i O[6]
load net dout_bs2polvecp[18] -attr @rip write_data[18] -pin BC2PVEC write_data[18] -pin dina3_i I0[18]
load net rd_address7_i_n_4 -attr @rip O[5] -pin rd_address6_i I1[5] -pin rd_address7_i O[5]
load net rd_address7_i_n_5 -attr @rip O[4] -pin rd_address6_i I1[4] -pin rd_address7_i O[4]
load net wt_address_copy[4] -attr @rip write_address[4] -pin copy write_address[4] -pin wt_address5_i I0[4]
load net dina1_i_n_40 -attr @rip O[23] -pin dina0_i I1[23] -pin dina1_i O[23]
load net rd_address7_i_n_6 -attr @rip O[3] -pin rd_address6_i I1[3] -pin rd_address7_i O[3]
load net sample_dout -pin SH sample_dout -pin wea_i I0
netloc sample_dout 1 15 2 7340J 850 7860
load net unpack0|read_data[60] -attr @rip read_data[60] -attr @name read_data[60] -hierPin unpack0 read_data[60] -pin unpack0|op_buffer_i I0[60] -pin unpack0|v_buffer_reg[63:0] D[60]
load net dina1_i_n_41 -attr @rip O[22] -pin dina0_i I1[22] -pin dina1_i O[22]
load net rd_address7_i_n_7 -attr @rip O[2] -pin rd_address6_i I1[2] -pin rd_address7_i O[2]
load net rd_address_addpack[6] -attr @rip read_address[6] -pin AddPack0 read_address[6] -pin rd_address2_i I0[6]
load net dina1_i_n_42 -attr @rip O[21] -pin dina0_i I1[21] -pin dina1_i O[21]
load net rd_address7_i_n_8 -attr @rip O[1] -pin rd_address6_i I1[1] -pin rd_address7_i O[1]
load net dina1_i_n_43 -attr @rip O[20] -pin dina0_i I1[20] -pin dina1_i O[20]
load net rd_address7_i_n_9 -attr @rip O[0] -pin rd_address6_i I1[0] -pin rd_address7_i O[0]
load net dina1_i_n_44 -attr @rip O[19] -pin dina0_i I1[19] -pin dina1_i O[19]
load net dout_cmov[7] -attr @rip write_data[7] -pin CMOV1 write_data[7] -pin dina7_i I0[7]
load net rst_vmul1 -pin rst_vmul1_i O -pin rst_vmul_i S
netloc rst_vmul1 1 10 1 4530J
load net dout_addround[47] -attr @rip write_data[47] -pin AddRound0 write_data[47] -pin dina1_i I0[47]
load net dina1_i_n_45 -attr @rip O[18] -pin dina0_i I1[18] -pin dina1_i O[18]
load net command_in[30] -attr @rip command_in[30] -port command_in[30] -pin command_reg0_reg[34:0] D[30] -pin command_reg1_reg[34:0] D[30]
load net dina1_i_n_46 -attr @rip O[17] -pin dina0_i I1[17] -pin dina1_i O[17]
load net rd_address0_i_n_0 -attr @rip O[9] -pin rd_address0_i O[9] -pin rd_address_i I1[9]
load net rd_address8_i_n_0 -attr @rip O[9] -pin rd_address7_i I1[9] -pin rd_address8_i O[9]
load net wt_address_sampler[1] -attr @rip wt_address[1] -pin Sampler wt_address[1] -pin wt_address6_i I0[1]
load net command_in[15] -attr @rip command_in[15] -port command_in[15] -pin command_reg0_reg[34:0] D[15] -pin command_reg1_reg[34:0] D[15]
load net dina1_i_n_47 -attr @rip O[16] -pin dina0_i I1[16] -pin dina1_i O[16]
load net dout_sampler[38] -attr @rip sample_pack[38] -pin Sampler sample_pack[38] -pin dina6_i I0[38]
load net dout_vmul[31] -attr @rip coeff4x_out[31] -pin VMUL0 coeff4x_out[31] -pin dina0_i I0[31]
load net rd_address0_i_n_1 -attr @rip O[8] -pin rd_address0_i O[8] -pin rd_address_i I1[8]
load net rd_address8_i_n_1 -attr @rip O[8] -pin rd_address7_i I1[8] -pin rd_address8_i O[8]
load net dina1_i_n_48 -attr @rip O[15] -pin dina0_i I1[15] -pin dina1_i O[15]
load net rd_address0_i_n_2 -attr @rip O[7] -pin rd_address0_i O[7] -pin rd_address_i I1[7]
load net rd_address8_i_n_2 -attr @rip O[7] -pin rd_address7_i I1[7] -pin rd_address8_i O[7]
load net wt_address[2] -attr @rip O[2] -pin addra_i I1[2] -pin wt_address_i O[2]
load net unpack0|read_data[25] -attr @rip read_data[25] -attr @name read_data[25] -hierPin unpack0 read_data[25] -pin unpack0|op_buffer_i I0[25] -pin unpack0|v_buffer_reg[63:0] D[25]
load net dina[61] -attr @rip O[61] -pin BR dina[61] -pin dina_i O[61]
load net dina1_i_n_49 -attr @rip O[14] -pin dina0_i I1[14] -pin dina1_i O[14]
load net dout_cmov[10] -attr @rip write_data[10] -pin CMOV1 write_data[10] -pin dina7_i I0[10]
load net rd_address0_i_n_3 -attr @rip O[6] -pin rd_address0_i O[6] -pin rd_address_i I1[6]
load net rd_address8_i_n_3 -attr @rip O[6] -pin rd_address7_i I1[6] -pin rd_address8_i O[6]
load net dina2_i_n_60 -attr @rip O[3] -pin dina1_i I1[3] -pin dina2_i O[3]
load net doutb_ext[39] -attr @rip 39 -port doutb_ext[39] -pin doutb_ext[63:0]_OBUF_inst O[39]
load net rd_address0_i_n_4 -attr @rip O[5] -pin rd_address0_i O[5] -pin rd_address_i I1[5]
load net rd_address8_i_n_4 -attr @rip O[5] -pin rd_address7_i I1[5] -pin rd_address8_i O[5]
load net rd_address_sampler[2] -attr @rip rd_address[2] -pin Sampler rd_address[2] -pin rd_address6_i I0[2]
load net dout_addround[19] -attr @rip write_data[19] -pin AddRound0 write_data[19] -pin dina1_i I0[19]
load net dina2_i_n_61 -attr @rip O[2] -pin dina1_i I1[2] -pin dina2_i O[2]
load net rd_address0_i_n_5 -attr @rip O[4] -pin rd_address0_i O[4] -pin rd_address_i I1[4]
load net rd_address8_i_n_5 -attr @rip O[4] -pin rd_address7_i I1[4] -pin rd_address8_i O[4]
load net dina2_i_n_62 -attr @rip O[1] -pin dina1_i I1[1] -pin dina2_i O[1]
load net dout_bs2polvecp[59] -attr @rip write_data[59] -pin BC2PVEC write_data[59] -pin dina3_i I0[59]
load net dout_sampler[20] -attr @rip sample_pack[20] -pin Sampler sample_pack[20] -pin dina6_i I0[20]
load net rd_address0_i_n_6 -attr @rip O[3] -pin rd_address0_i O[3] -pin rd_address_i I1[3]
load net rd_address8_i_n_6 -attr @rip O[3] -pin rd_address7_i I1[3] -pin rd_address8_i O[3]
load net dina2_i_n_63 -attr @rip O[0] -pin dina1_i I1[0] -pin dina2_i O[0]
load net rd_address0_i_n_7 -attr @rip O[2] -pin rd_address0_i O[2] -pin rd_address_i I1[2]
load net rd_address8_i_n_7 -attr @rip O[2] -pin rd_address7_i I1[2] -pin rd_address8_i O[2]
load net dina[13] -attr @rip O[13] -pin BR dina[13] -pin dina_i O[13]
load net rd_address0_i_n_8 -attr @rip O[1] -pin rd_address0_i O[1] -pin rd_address_i I1[1]
load net rd_address8_i_n_8 -attr @rip O[1] -pin rd_address7_i I1[1] -pin rd_address8_i O[1]
load net rd_address0_i_n_9 -attr @rip O[0] -pin rd_address0_i O[0] -pin rd_address_i I1[0]
load net rd_address8_i_n_9 -attr @rip O[0] -pin rd_address7_i I1[0] -pin rd_address8_i O[0]
load net dina1_i_n_50 -attr @rip O[13] -pin dina0_i I1[13] -pin dina1_i O[13]
load net unpack0|read_data[61] -attr @rip read_data[61] -attr @name read_data[61] -hierPin unpack0 read_data[61] -pin unpack0|op_buffer_i I0[61] -pin unpack0|v_buffer_reg[63:0] D[61]
load net dina1_i_n_51 -attr @rip O[12] -pin dina0_i I1[12] -pin dina1_i O[12]
load net dina1_i_n_52 -attr @rip O[11] -pin dina0_i I1[11] -pin dina1_i O[11]
load net addra[6] -attr @rip O[6] -pin BR addra[6] -pin addra_i O[6]
load net dina1_i_n_53 -attr @rip O[10] -pin dina0_i I1[10] -pin dina1_i O[10]
load net dout_shake[48] -attr @rip dout[48] -pin SH dout[48] -pin dina_i I0[48]
load net dout_vmul[49] -attr @rip coeff4x_out[49] -pin VMUL0 coeff4x_out[49] -pin dina0_i I0[49]
load net op2_sel0 -pin op2_sel0_i O -pin op2_sel_i I1
netloc op2_sel0 1 14 1 6630
load net dina1_i_n_54 -attr @rip O[9] -pin dina0_i I1[9] -pin dina1_i O[9]
load net dout_cmov[8] -attr @rip write_data[8] -pin CMOV1 write_data[8] -pin dina7_i I0[8]
load net op2_sel1 -pin op2_sel0_i I1 -pin op2_sel1_i O
netloc op2_sel1 1 13 1 6150
load net wt_address_sampler[0] -attr @rip wt_address[0] -pin Sampler wt_address[0] -pin wt_address6_i I0[0]
load net dina1_i_n_55 -attr @rip O[8] -pin dina0_i I1[8] -pin dina1_i O[8]
load net command_in[14] -attr @rip command_in[14] -port command_in[14] -pin command_reg0_reg[34:0] D[14] -pin command_reg1_reg[34:0] D[14]
load net dout_addround[48] -attr @rip write_data[48] -pin AddRound0 write_data[48] -pin dina1_i I0[48]
load net dout_sampler[37] -attr @rip sample_pack[37] -pin Sampler sample_pack[37] -pin dina6_i I0[37]
load net dout_vmul[30] -attr @rip coeff4x_out[30] -pin VMUL0 coeff4x_out[30] -pin dina0_i I0[30]
load net op2_sel2 -pin op2_sel1_i I1 -pin op2_sel2_i O
netloc op2_sel2 1 12 1 5610
load net dina1_i_n_56 -attr @rip O[7] -pin dina0_i I1[7] -pin dina1_i O[7]
load net op2_sel3 -pin op2_sel2_i I1 -pin op2_sel3_i O
netloc op2_sel3 1 11 1 5070
load net wt_address[1] -attr @rip O[1] -pin addra_i I1[1] -pin wt_address_i O[1]
load net dina1_i_n_57 -attr @rip O[6] -pin dina0_i I1[6] -pin dina1_i O[6]
load net dina1_i_n_58 -attr @rip O[5] -pin dina0_i I1[5] -pin dina1_i O[5]
load net dout_addpack[10] -attr @rip write_data[10] -pin AddPack0 write_data[10] -pin dina2_i I0[10]
load net doutb_ext[11] -attr @rip 11 -port doutb_ext[11] -pin doutb_ext[63:0]_OBUF_inst O[11]
load net rd_address_sampler[1] -attr @rip rd_address[1] -pin Sampler rd_address[1] -pin rd_address6_i I0[1]
load net wt_address_sampler[4] -attr @rip wt_address[4] -pin Sampler wt_address[4] -pin wt_address6_i I0[4]
load net dina1_i_n_59 -attr @rip O[4] -pin dina0_i I1[4] -pin dina1_i O[4]
load net dout_addround[18] -attr @rip write_data[18] -pin AddRound0 write_data[18] -pin dina1_i I0[18]
load net dout_cmov[11] -attr @rip write_data[11] -pin CMOV1 write_data[11] -pin dina7_i I0[11]
load net dina[10] -attr @rip O[10] -pin BR dina[10] -pin dina_i O[10]
load net dina4_i_n_20 -attr @rip O[43] -pin dina3_i I1[43] -pin dina4_i O[43]
load net doutb_ext_OBUF[40] -attr @rip doutb[40] -pin AddPack0 read_data[40] -pin AddRound0 read_data[40] -pin BC2PVEC read_data[40] -pin BR doutb[40] -pin CMOV1 read_data[40] -pin SH din[40] -pin Sampler data_in[40] -pin VERIFY1 din[40] -pin VMUL0 ram_data_out[40] -pin copy read_data[40] -pin doutb_ext[63:0]_OBUF_inst I[40] -pin unpack0 read_data[40]
load net dina4_i_n_21 -attr @rip O[42] -pin dina3_i I1[42] -pin dina4_i O[42]
load net dina4_i_n_22 -attr @rip O[41] -pin dina3_i I1[41] -pin dina4_i O[41]
load net wt_address1_i_n_0 -attr @rip O[9] -pin wt_address0_i I1[9] -pin wt_address1_i O[9]
load net dina1_i_n_60 -attr @rip O[3] -pin dina0_i I1[3] -pin dina1_i O[3]
load net dina4_i_n_23 -attr @rip O[40] -pin dina3_i I1[40] -pin dina4_i O[40]
load net addra[5] -attr @rip O[5] -pin BR addra[5] -pin addra_i O[5]
load net dout_cmov[5] -attr @rip write_data[5] -pin CMOV1 write_data[5] -pin dina7_i I0[5]
load net wt_address1_i_n_1 -attr @rip O[8] -pin wt_address0_i I1[8] -pin wt_address1_i O[8]
load net dina1_i_n_61 -attr @rip O[2] -pin dina0_i I1[2] -pin dina1_i O[2]
load net dout_addround[45] -attr @rip write_data[45] -pin AddRound0 write_data[45] -pin dina1_i I0[45]
load net dina4_i_n_24 -attr @rip O[39] -pin dina3_i I1[39] -pin dina4_i O[39]
load net dout_vmul[48] -attr @rip coeff4x_out[48] -pin VMUL0 coeff4x_out[48] -pin dina0_i I0[48]
load net wt_address1_i_n_2 -attr @rip O[7] -pin wt_address0_i I1[7] -pin wt_address1_i O[7]
load net dina1_i_n_62 -attr @rip O[1] -pin dina0_i I1[1] -pin dina1_i O[1]
load net dina4_i_n_25 -attr @rip O[38] -pin dina3_i I1[38] -pin dina4_i O[38]
load net wt_address1_i_n_3 -attr @rip O[6] -pin wt_address0_i I1[6] -pin wt_address1_i O[6]
load net dina1_i_n_63 -attr @rip O[0] -pin dina0_i I1[0] -pin dina1_i O[0]
load net command_in[13] -attr @rip command_in[13] -port command_in[13] -pin command_reg0_reg[34:0] D[13] -pin command_reg1_reg[34:0] D[13]
load net dina4_i_n_26 -attr @rip O[37] -pin dina3_i I1[37] -pin dina4_i O[37]
load net dout_shake[49] -attr @rip dout[49] -pin SH dout[49] -pin dina_i I0[49]
load net wt_address1_i_n_4 -attr @rip O[5] -pin wt_address0_i I1[5] -pin wt_address1_i O[5]
load net dina4_i_n_27 -attr @rip O[36] -pin dina3_i I1[36] -pin dina4_i O[36]
load net wt_address1_i_n_5 -attr @rip O[4] -pin wt_address0_i I1[4] -pin wt_address1_i O[4]
load net dina4_i_n_28 -attr @rip O[35] -pin dina3_i I1[35] -pin dina4_i O[35]
load net INS[1] -attr @rip 1 -pin INS_i S[1] -pin command_reg0_reg[34:0] Q[1] -pin pol_load_coeff4x_i A[1] -pin rate_type0_i A[1] -pin rate_type_i S[1] -pin rst_addpack_i A[1] -pin rst_addround_i A[1] -pin rst_bs2polvecp_i A[1] -pin rst_cmov_i A[1] -pin rst_copy_i A[1] -pin rst_sampler_i A[1] -pin rst_unpack_i A[1] -pin rst_verify_i A[1] -pin shake_intermediate_rst_i A[1] -pin shake_next_extract_i A[1]
load net wt_address1_i_n_6 -attr @rip O[3] -pin wt_address0_i I1[3] -pin wt_address1_i O[3]
load net dina4_i_n_29 -attr @rip O[34] -pin dina3_i I1[34] -pin dina4_i O[34]
load net doutb_ext[10] -attr @rip 10 -port doutb_ext[10] -pin doutb_ext[63:0]_OBUF_inst O[10]
load net wt_address1_i_n_7 -attr @rip O[2] -pin wt_address0_i I1[2] -pin wt_address1_i O[2]
load net wt_address1_i_n_8 -attr @rip O[1] -pin wt_address0_i I1[1] -pin wt_address1_i O[1]
load net wt_address1_i_n_9 -attr @rip O[0] -pin wt_address0_i I1[0] -pin wt_address1_i O[0]
load net wt_address[4] -attr @rip O[4] -pin addra_i I1[4] -pin wt_address_i O[4]
load net wt_address_sampler[5] -attr @rip wt_address[5] -pin Sampler wt_address[5] -pin wt_address6_i I0[5]
load net dina[63] -attr @rip O[63] -pin BR dina[63] -pin dina_i O[63]
load net dout_cmov[12] -attr @rip write_data[12] -pin CMOV1 write_data[12] -pin dina7_i I0[12]
load net dina[11] -attr @rip O[11] -pin BR dina[11] -pin dina_i O[11]
load net rd_address4_i_n_0 -attr @rip O[9] -pin rd_address3_i I1[9] -pin rd_address4_i O[9]
load net wt_address6_i_n_0 -attr @rip O[9] -pin wt_address5_i I1[9] -pin wt_address6_i O[9]
load net rd_address4_i_n_1 -attr @rip O[8] -pin rd_address3_i I1[8] -pin rd_address4_i O[8]
load net wt_address6_i_n_1 -attr @rip O[8] -pin wt_address5_i I1[8] -pin wt_address6_i O[8]
load net rd_address4_i_n_2 -attr @rip O[7] -pin rd_address3_i I1[7] -pin rd_address4_i O[7]
load net wt_address6_i_n_2 -attr @rip O[7] -pin wt_address5_i I1[7] -pin wt_address6_i O[7]
load net rd_address4_i_n_3 -attr @rip O[6] -pin rd_address3_i I1[6] -pin rd_address4_i O[6]
load net wt_address6_i_n_3 -attr @rip O[6] -pin wt_address5_i I1[6] -pin wt_address6_i O[6]
load net dina4_i_n_30 -attr @rip O[33] -pin dina3_i I1[33] -pin dina4_i O[33]
load net doutb_ext_OBUF[41] -attr @rip doutb[41] -pin AddPack0 read_data[41] -pin AddRound0 read_data[41] -pin BC2PVEC read_data[41] -pin BR doutb[41] -pin CMOV1 read_data[41] -pin SH din[41] -pin Sampler data_in[41] -pin VERIFY1 din[41] -pin VMUL0 ram_data_out[41] -pin copy read_data[41] -pin doutb_ext[63:0]_OBUF_inst I[41] -pin unpack0 read_data[41]
load net rd_address4_i_n_4 -attr @rip O[5] -pin rd_address3_i I1[5] -pin rd_address4_i O[5]
load net wt_address6_i_n_4 -attr @rip O[5] -pin wt_address5_i I1[5] -pin wt_address6_i O[5]
load net unpack0|read_data[10] -attr @rip(#000000) read_data[10] -attr @name read_data[10] -hierPin unpack0 read_data[10] -pin unpack0|op_buffer_i I0[10] -pin unpack0|v_buffer_reg[63:0] D[10]
load net dina[4] -attr @rip O[4] -pin BR dina[4] -pin dina_i O[4]
load net dina4_i_n_31 -attr @rip O[32] -pin dina3_i I1[32] -pin dina4_i O[32]
load net rd_address4_i_n_5 -attr @rip O[4] -pin rd_address3_i I1[4] -pin rd_address4_i O[4]
load net wt_address6_i_n_5 -attr @rip O[4] -pin wt_address5_i I1[4] -pin wt_address6_i O[4]
load net dina4_i_n_32 -attr @rip O[31] -pin dina3_i I1[31] -pin dina4_i O[31]
load net dout_shake[46] -attr @rip dout[46] -pin SH dout[46] -pin dina_i I0[46]
load net dout_vmul[47] -attr @rip coeff4x_out[47] -pin VMUL0 coeff4x_out[47] -pin dina0_i I0[47]
load net rd_address4_i_n_6 -attr @rip O[3] -pin rd_address3_i I1[3] -pin rd_address4_i O[3]
load net wt_address6_i_n_6 -attr @rip O[3] -pin wt_address5_i I1[3] -pin wt_address6_i O[3]
load net wt_address_copy[7] -attr @rip write_address[7] -pin copy write_address[7] -pin wt_address5_i I0[7]
load net dina4_i_n_33 -attr @rip O[30] -pin dina3_i I1[30] -pin dina4_i O[30]
load net dout_cmov[6] -attr @rip write_data[6] -pin CMOV1 write_data[6] -pin dina7_i I0[6]
load net rd_address4_i_n_7 -attr @rip O[2] -pin rd_address3_i I1[2] -pin rd_address4_i O[2]
load net wt_address6_i_n_7 -attr @rip O[2] -pin wt_address5_i I1[2] -pin wt_address6_i O[2]
load net dout_addround[46] -attr @rip write_data[46] -pin AddRound0 write_data[46] -pin dina1_i I0[46]
load net dina4_i_n_34 -attr @rip O[29] -pin dina3_i I1[29] -pin dina4_i O[29]
load net dout_copy[29] -attr @rip write_data[29] -pin copy write_data[29] -pin dina5_i I0[29]
load net rd_address4_i_n_8 -attr @rip O[1] -pin rd_address3_i I1[1] -pin rd_address4_i O[1]
load net wt_address6_i_n_8 -attr @rip O[1] -pin wt_address5_i I1[1] -pin wt_address6_i O[1]
load net dina4_i_n_35 -attr @rip O[28] -pin dina3_i I1[28] -pin dina4_i O[28]
load net addra[8] -attr @rip O[8] -pin BR addra[8] -pin addra_i O[8]
load net rd_address4_i_n_9 -attr @rip O[0] -pin rd_address3_i I1[0] -pin rd_address4_i O[0]
load net wt_address6_i_n_9 -attr @rip O[0] -pin wt_address5_i I1[0] -pin wt_address6_i O[0]
load net dina4_i_n_36 -attr @rip O[27] -pin dina3_i I1[27] -pin dina4_i O[27]
load net dina4_i_n_37 -attr @rip O[26] -pin dina3_i I1[26] -pin dina4_i O[26]
load net wt_address_sampler[2] -attr @rip wt_address[2] -pin Sampler wt_address[2] -pin wt_address6_i I0[2]
load net dina4_i_n_38 -attr @rip O[25] -pin dina3_i I1[25] -pin dina4_i O[25]
load net INS[2] -attr @rip 2 -pin INS_i S[2] -pin command_reg0_reg[34:0] Q[2] -pin pol_load_coeff4x_i A[2] -pin rate_type0_i A[2] -pin rate_type_i S[2] -pin rst_addpack_i A[2] -pin rst_addround_i A[2] -pin rst_bs2polvecp_i A[2] -pin rst_cmov_i A[2] -pin rst_copy_i A[2] -pin rst_sampler_i A[2] -pin rst_unpack_i A[2] -pin rst_verify_i A[2] -pin shake_intermediate_rst_i A[2] -pin shake_next_extract_i A[2]
load net dout_sampler[39] -attr @rip sample_pack[39] -pin Sampler sample_pack[39] -pin dina6_i I0[39]
load net wea_vmul -pin VMUL0 PolMem_wen -pin wea0_i I0
netloc wea_vmul 1 12 4 NJ 1170 NJ 1170 6750J 1090 7460
load net dina4_i_n_39 -attr @rip O[24] -pin dina3_i I1[24] -pin dina4_i O[24]
load net dout_bs2polvecp[56] -attr @rip write_data[56] -pin BC2PVEC write_data[56] -pin dina3_i I0[56]
load net wt_address[3] -attr @rip O[3] -pin addra_i I1[3] -pin wt_address_i O[3]
load net dina6_i_n_60 -attr @rip O[3] -pin dina5_i I1[3] -pin dina6_i O[3]
load net olen[8] -attr @rip 8 -pin SH olen[8] -pin command_reg1_reg[34:0] Q[24]
load net unpack0|read_data[28] -attr @rip read_data[28] -attr @name read_data[28] -hierPin unpack0 read_data[28] -pin unpack0|op_buffer_i I0[28] -pin unpack0|v_buffer_reg[63:0] D[28]
load net done_unpack -port done_unpack -pin unpack0 done
netloc done_unpack 1 5 15 2000J 1560 2420J 1590 NJ 1590 NJ 1590 NJ 1590 4430J 1600 NJ 1600 NJ 1600 6190J 1650 NJ 1650 NJ 1650 NJ 1650 NJ 1650 NJ 1650 NJ
load net dina6_i_n_61 -attr @rip O[2] -pin dina5_i I1[2] -pin dina6_i O[2]
load net dout_cmov[13] -attr @rip write_data[13] -pin CMOV1 write_data[13] -pin dina7_i I0[13]
load net dina6_i_n_62 -attr @rip O[1] -pin dina5_i I1[1] -pin dina6_i O[1]
load net dout_cmov[23] -attr @rip write_data[23] -pin CMOV1 write_data[23] -pin dina7_i I0[23]
load net dina6_i_n_63 -attr @rip O[0] -pin dina5_i I1[0] -pin dina6_i O[0]
load net dina[3] -attr @rip O[3] -pin BR dina[3] -pin dina_i O[3]
load net done_sampler -pin Sampler done -port done_sampler
netloc done_sampler 1 8 12 3420J 610 NJ 610 NJ 610 5070J 590 NJ 590 NJ 590 NJ 590 NJ 590 NJ 590 NJ 590 NJ 590 NJ
load net dout_vmul[46] -attr @rip coeff4x_out[46] -pin VMUL0 coeff4x_out[46] -pin dina0_i I0[46]
load net doutb_ext_OBUF[42] -attr @rip doutb[42] -pin AddPack0 read_data[42] -pin AddRound0 read_data[42] -pin BC2PVEC read_data[42] -pin BR doutb[42] -pin CMOV1 read_data[42] -pin SH din[42] -pin Sampler data_in[42] -pin VERIFY1 din[42] -pin VMUL0 ram_data_out[42] -pin copy read_data[42] -pin doutb_ext[63:0]_OBUF_inst I[42] -pin unpack0 read_data[42]
load net unpack0|read_data[0] -attr @rip(#000000) read_data[0] -attr @name read_data[0] -hierPin unpack0 read_data[0] -pin unpack0|op_buffer_i I0[0] -pin unpack0|v_buffer_reg[63:0] D[0]
load net dout_vmul[8] -attr @rip coeff4x_out[8] -pin VMUL0 coeff4x_out[8] -pin dina0_i I0[8]
load net dout_copy[28] -attr @rip write_data[28] -pin copy write_data[28] -pin dina5_i I0[28]
load net dout_sampler[34] -attr @rip sample_pack[34] -pin Sampler sample_pack[34] -pin dina6_i I0[34]
load net dout_shake[47] -attr @rip dout[47] -pin SH dout[47] -pin dina_i I0[47]
load net wt_address_copy[8] -attr @rip write_address[8] -pin copy write_address[8] -pin wt_address5_i I0[8]
load net addra[7] -attr @rip O[7] -pin BR addra[7] -pin addra_i O[7]
load net rst_verify -pin VERIFY1 rst -pin op2_sel2_i S -pin rd_address7_i S -pin rst_verify_i O
netloc rst_verify 1 3 9 820 1760 NJ 1760 NJ 1760 NJ 1760 2850 N N 1750 NJ 1750 NJ 1750 NJ
load net rate_type0_i_n_0 -attr @rip O[1] -pin rate_type0_i O[1] -pin rate_type_i I1[1]
load net dout_cmov[35] -attr @rip write_data[35] -pin CMOV1 write_data[35] -pin dina7_i I0[35]
load net rate_type0_i_n_1 -attr @rip O[0] -pin rate_type0_i O[0] -pin rate_type_i I1[0]
load net rd_address_cmov[3] -attr @rip read_address[3] -pin CMOV1 read_address[3] -pin rd_address8_i I0[3]
load net dout_bs2polvecp[55] -attr @rip write_data[55] -pin BC2PVEC write_data[55] -pin dina3_i I0[55]
load net wt_address_sampler[3] -attr @rip wt_address[3] -pin Sampler wt_address[3] -pin wt_address6_i I0[3]
load net dina_ext[20] -attr @rip dina_ext[20] -pin dina7_i I1[20] -port dina_ext[20]
load net olen[7] -attr @rip 7 -pin SH olen[7] -pin command_reg1_reg[34:0] Q[23]
load net rd_address_addround[1] -attr @rip read_address[1] -pin AddRound0 read_address[1] -pin rd_address1_i I0[1]
load net command_in[19] -attr @rip command_in[19] -port command_in[19] -pin command_reg0_reg[34:0] D[19] -pin command_reg1_reg[34:0] D[19]
load net unpack0|read_data[29] -attr @rip read_data[29] -attr @name read_data[29] -hierPin unpack0 read_data[29] -pin unpack0|op_buffer_i I0[29] -pin unpack0|v_buffer_reg[63:0] D[29]
load net dina1_i_n_10 -attr @rip O[53] -pin dina0_i I1[53] -pin dina1_i O[53]
load net dina1_i_n_11 -attr @rip O[52] -pin dina0_i I1[52] -pin dina1_i O[52]
load net dina4_i_n_10 -attr @rip O[53] -pin dina3_i I1[53] -pin dina4_i O[53]
load net dout_cmov[24] -attr @rip write_data[24] -pin CMOV1 write_data[24] -pin dina7_i I0[24]
load net dina[2] -attr @rip O[2] -pin BR dina[2] -pin dina_i O[2]
load net dina1_i_n_12 -attr @rip O[51] -pin dina0_i I1[51] -pin dina1_i O[51]
load net dina4_i_n_11 -attr @rip O[52] -pin dina3_i I1[52] -pin dina4_i O[52]
load net addra[2] -attr @rip O[2] -pin BR addra[2] -pin addra_i O[2]
load net rd_address_shake[0] -attr @rip rd_address[0] -pin SH rd_address[0] -pin rd_address_i I0[0]
load net dina1_i_n_13 -attr @rip O[50] -pin dina0_i I1[50] -pin dina1_i O[50]
load net dina4_i_n_12 -attr @rip O[51] -pin dina3_i I1[51] -pin dina4_i O[51]
load net dout_shake[44] -attr @rip dout[44] -pin SH dout[44] -pin dina_i I0[44]
load net dout_addround[0] -attr @rip write_data[0] -pin AddRound0 write_data[0] -pin dina1_i I0[0]
load net dina1_i_n_14 -attr @rip O[49] -pin dina0_i I1[49] -pin dina1_i O[49]
load net dout_addround[34] -attr @rip write_data[34] -pin AddRound0 write_data[34] -pin dina1_i I0[34]
load net dina_ext[12] -attr @rip dina_ext[12] -pin dina7_i I1[12] -port dina_ext[12]
load net dina4_i_n_13 -attr @rip O[50] -pin dina3_i I1[50] -pin dina4_i O[50]
load net dout_bs2polvecp[28] -attr @rip write_data[28] -pin BC2PVEC write_data[28] -pin dina3_i I0[28]
load net shake_intermediate_rst -pin SH shake_intermediate_rst -pin shake_intermediate_rst_i O
netloc shake_intermediate_rst 1 14 1 6670J
load net wea_sampler -pin Sampler wen -pin wea6_i I0
netloc wea_sampler 1 8 2 NJ 650 3940
load net dina1_i_n_15 -attr @rip O[48] -pin dina0_i I1[48] -pin dina1_i O[48]
load net dina4_i_n_14 -attr @rip O[49] -pin dina3_i I1[49] -pin dina4_i O[49]
load net dout_copy[27] -attr @rip write_data[27] -pin copy write_data[27] -pin dina5_i I0[27]
load net dout_sampler[33] -attr @rip sample_pack[33] -pin Sampler sample_pack[33] -pin dina6_i I0[33]
load net doutb_ext_OBUF[43] -attr @rip doutb[43] -pin AddPack0 read_data[43] -pin AddRound0 read_data[43] -pin BC2PVEC read_data[43] -pin BR doutb[43] -pin CMOV1 read_data[43] -pin SH din[43] -pin Sampler data_in[43] -pin VERIFY1 din[43] -pin VMUL0 ram_data_out[43] -pin copy read_data[43] -pin doutb_ext[63:0]_OBUF_inst I[43] -pin unpack0 read_data[43]
load net unpack0|read_data[1] -attr @rip(#000000) read_data[1] -attr @name read_data[1] -hierPin unpack0 read_data[1] -pin unpack0|op_buffer_i I0[1] -pin unpack0|v_buffer_reg[63:0] D[1]
load net dina1_i_n_16 -attr @rip O[47] -pin dina0_i I1[47] -pin dina1_i O[47]
load net dina4_i_n_15 -attr @rip O[48] -pin dina3_i I1[48] -pin dina4_i O[48]
load net dout_vmul[9] -attr @rip coeff4x_out[9] -pin VMUL0 coeff4x_out[9] -pin dina0_i I0[9]
load net dina1_i_n_17 -attr @rip O[46] -pin dina0_i I1[46] -pin dina1_i O[46]
load net dina4_i_n_16 -attr @rip O[47] -pin dina3_i I1[47] -pin dina4_i O[47]
load net dina1_i_n_18 -attr @rip O[45] -pin dina0_i I1[45] -pin dina1_i O[45]
load net dina4_i_n_17 -attr @rip O[46] -pin dina3_i I1[46] -pin dina4_i O[46]
load net dina1_i_n_19 -attr @rip O[44] -pin dina0_i I1[44] -pin dina1_i O[44]
load net dina4_i_n_18 -attr @rip O[45] -pin dina3_i I1[45] -pin dina4_i O[45]
load net INS[0] -attr @rip 0 -pin INS_i S[0] -pin command_reg0_reg[34:0] Q[0] -pin pol_load_coeff4x_i A[0] -pin rate_type0_i A[0] -pin rate_type_i S[0] -pin rst_addpack_i A[0] -pin rst_addround_i A[0] -pin rst_bs2polvecp_i A[0] -pin rst_cmov_i A[0] -pin rst_copy_i A[0] -pin rst_sampler_i A[0] -pin rst_unpack_i A[0] -pin rst_verify_i A[0] -pin shake_intermediate_rst_i A[0] -pin shake_next_extract_i A[0]
load net dout_cmov[34] -attr @rip write_data[34] -pin CMOV1 write_data[34] -pin dina7_i I0[34]
load net rd_address_cmov[2] -attr @rip read_address[2] -pin CMOV1 read_address[2] -pin rd_address8_i I0[2]
load net rd_address_unpack[0] -attr @rip read_address[0] -pin rd_address4_i I0[0] -pin unpack0 read_address[0]
load net dina4_i_n_19 -attr @rip O[44] -pin dina3_i I1[44] -pin dina4_i O[44]
load net dout_addround[42] -attr @rip write_data[42] -pin AddRound0 write_data[42] -pin dina1_i I0[42]
load net rd_address_addround[0] -attr @rip read_address[0] -pin AddRound0 read_address[0] -pin rd_address1_i I0[0]
load net command_in[18] -attr @rip command_in[18] -port command_in[18] -pin command_reg0_reg[34:0] D[18] -pin command_reg1_reg[34:0] D[18]
load net dout_bs2polvecp[58] -attr @rip write_data[58] -pin BC2PVEC write_data[58] -pin dina3_i I0[58]
load net wt_address_sampler[8] -attr @rip wt_address[8] -pin Sampler wt_address[8] -pin wt_address6_i I0[8]
load net addra[1] -attr @rip O[1] -pin BR addra[1] -pin addra_i O[1]
load net dina[1] -attr @rip O[1] -pin BR dina[1] -pin dina_i O[1]
load net dina1_i_n_20 -attr @rip O[43] -pin dina0_i I1[43] -pin dina1_i O[43]
load net dina1_i_n_21 -attr @rip O[42] -pin dina0_i I1[42] -pin dina1_i O[42]
load net dout_cmov[25] -attr @rip write_data[25] -pin CMOV1 write_data[25] -pin dina7_i I0[25]
load net dina1_i_n_22 -attr @rip O[41] -pin dina0_i I1[41] -pin dina1_i O[41]
load net dout_vmul[6] -attr @rip coeff4x_out[6] -pin VMUL0 coeff4x_out[6] -pin dina0_i I0[6]
load net rd_address_shake[1] -attr @rip rd_address[1] -pin SH rd_address[1] -pin rd_address_i I0[1]
load net dina1_i_n_23 -attr @rip O[40] -pin dina0_i I1[40] -pin dina1_i O[40]
load net dout_copy[26] -attr @rip write_data[26] -pin copy write_data[26] -pin dina5_i I0[26]
load net dout_shake[45] -attr @rip dout[45] -pin SH dout[45] -pin dina_i I0[45]
load net dina1_i_n_24 -attr @rip O[39] -pin dina0_i I1[39] -pin dina1_i O[39]
load net dout_addround[35] -attr @rip write_data[35] -pin AddRound0 write_data[35] -pin dina1_i I0[35]
load net dina_ext[13] -attr @rip dina_ext[13] -pin dina7_i I1[13] -port dina_ext[13]
load net dout_bs2polvecp[29] -attr @rip write_data[29] -pin BC2PVEC write_data[29] -pin dina3_i I0[29]
load net dina1_i_n_25 -attr @rip O[38] -pin dina0_i I1[38] -pin dina1_i O[38]
load net doutb_ext_OBUF[44] -attr @rip doutb[44] -pin AddPack0 read_data[44] -pin AddRound0 read_data[44] -pin BC2PVEC read_data[44] -pin BR doutb[44] -pin CMOV1 read_data[44] -pin SH din[44] -pin Sampler data_in[44] -pin VERIFY1 din[44] -pin VMUL0 ram_data_out[44] -pin copy read_data[44] -pin doutb_ext[63:0]_OBUF_inst I[44] -pin unpack0 read_data[44]
load net dina1_i_n_26 -attr @rip O[37] -pin dina0_i I1[37] -pin dina1_i O[37]
load net dina1_i_n_27 -attr @rip O[36] -pin dina0_i I1[36] -pin dina1_i O[36]
load net dout_cmov[33] -attr @rip write_data[33] -pin CMOV1 write_data[33] -pin dina7_i I0[33]
load net dout_sampler[36] -attr @rip sample_pack[36] -pin Sampler sample_pack[36] -pin dina6_i I0[36]
load net dina1_i_n_28 -attr @rip O[35] -pin dina0_i I1[35] -pin dina1_i O[35]
load net dout_addround[41] -attr @rip write_data[41] -pin AddRound0 write_data[41] -pin dina1_i I0[41]
load net dout_cmov[9] -attr @rip write_data[9] -pin CMOV1 write_data[9] -pin dina7_i I0[9]
load net rd_address[9] -attr @rip O[9] -pin addrb_i I1[9] -pin rd_address_i O[9]
load net wt_address[0] -attr @rip O[0] -pin addra_i I1[0] -pin wt_address_i O[0]
load net dina1_i_n_29 -attr @rip O[34] -pin dina0_i I1[34] -pin dina1_i O[34]
load net dout_addround[55] -attr @rip write_data[55] -pin AddRound0 write_data[55] -pin dina1_i I0[55]
load net doutb_ext_OBUF[56] -attr @rip doutb[56] -pin AddPack0 read_data[56] -pin AddRound0 read_data[56] -pin BC2PVEC read_data[56] -pin BR doutb[56] -pin CMOV1 read_data[56] -pin SH din[56] -pin Sampler data_in[56] -pin VERIFY1 din[56] -pin VMUL0 ram_data_out[56] -pin copy read_data[56] -pin doutb_ext[63:0]_OBUF_inst I[56] -pin unpack0 read_data[56]
load net command_in[17] -attr @rip command_in[17] -port command_in[17] -pin command_reg0_reg[34:0] D[17] -pin command_reg1_reg[34:0] D[17]
load net rd_address_cmov[5] -attr @rip read_address[5] -pin CMOV1 read_address[5] -pin rd_address8_i I0[5]
load net wt_address_cmov[0] -attr @rip write_address[0] -pin CMOV1 write_address[0] -pin wt_address7_i I0[0]
load net dout_bs2polvecp[57] -attr @rip write_data[57] -pin BC2PVEC write_data[57] -pin dina3_i I0[57]
load net dina_ext[22] -attr @rip dina_ext[22] -pin dina7_i I1[22] -port dina_ext[22]
load net olen[9] -attr @rip 9 -pin SH olen[9] -pin command_reg1_reg[34:0] Q[25]
load net rd_address_addround[3] -attr @rip read_address[3] -pin AddRound0 read_address[3] -pin rd_address1_i I0[3]
load net dout_shake[42] -attr @rip dout[42] -pin SH dout[42] -pin dina_i I0[42]
load net dout_unpack[38] -attr @rip write_data[38] -pin dina4_i I0[38] -pin unpack0 write_data[38]
load net dout_addround[32] -attr @rip write_data[32] -pin AddRound0 write_data[32] -pin dina1_i I0[32]
load net dina_ext[10] -attr @rip dina_ext[10] -pin dina7_i I1[10] -port dina_ext[10]
load net dout_cmov[26] -attr @rip write_data[26] -pin CMOV1 write_data[26] -pin dina7_i I0[26]
load net dout_copy[25] -attr @rip write_data[25] -pin copy write_data[25] -pin dina5_i I0[25]
load net doutb_ext[18] -attr @rip 18 -port doutb_ext[18] -pin doutb_ext[63:0]_OBUF_inst O[18]
load net addra[4] -attr @rip O[4] -pin BR addra[4] -pin addra_i O[4]
load net dout_vmul[7] -attr @rip coeff4x_out[7] -pin VMUL0 coeff4x_out[7] -pin dina0_i I0[7]
load net rd_address_shake[2] -attr @rip rd_address[2] -pin SH rd_address[2] -pin rd_address_i I0[2]
load net dina_ext[59] -attr @rip dina_ext[59] -pin dina7_i I1[59] -port dina_ext[59]
load net dout_cmov[32] -attr @rip write_data[32] -pin CMOV1 write_data[32] -pin dina7_i I0[32]
load net dout_sampler[35] -attr @rip sample_pack[35] -pin Sampler sample_pack[35] -pin dina6_i I0[35]
load net doutb_ext_OBUF[45] -attr @rip doutb[45] -pin AddPack0 read_data[45] -pin AddRound0 read_data[45] -pin BC2PVEC read_data[45] -pin BR doutb[45] -pin CMOV1 read_data[45] -pin SH din[45] -pin Sampler data_in[45] -pin VERIFY1 din[45] -pin VMUL0 ram_data_out[45] -pin copy read_data[45] -pin doutb_ext[63:0]_OBUF_inst I[45] -pin unpack0 read_data[45]
load net dina[8] -attr @rip O[8] -pin BR dina[8] -pin dina_i O[8]
load net dina[29] -attr @rip O[29] -pin BR dina[29] -pin dina_i O[29]
load net rd_address[8] -attr @rip O[8] -pin addrb_i I1[8] -pin rd_address_i O[8]
load net dout_bs2polvecp[10] -attr @rip write_data[10] -pin BC2PVEC write_data[10] -pin dina3_i I0[10]
load net dout_addround[54] -attr @rip write_data[54] -pin AddRound0 write_data[54] -pin dina1_i I0[54]
load net doutb_ext_OBUF[55] -attr @rip doutb[55] -pin AddPack0 read_data[55] -pin AddRound0 read_data[55] -pin BC2PVEC read_data[55] -pin BR doutb[55] -pin CMOV1 read_data[55] -pin SH din[55] -pin Sampler data_in[55] -pin VERIFY1 din[55] -pin VMUL0 ram_data_out[55] -pin copy read_data[55] -pin doutb_ext[63:0]_OBUF_inst I[55] -pin unpack0 read_data[55]
load net unpack0|read_data[16] -attr @rip read_data[16] -attr @name read_data[16] -hierPin unpack0 read_data[16] -pin unpack0|op_buffer_i I0[16] -pin unpack0|v_buffer_reg[63:0] D[16]
load net dina6_i_n_20 -attr @rip O[43] -pin dina5_i I1[43] -pin dina6_i O[43]
load net dina6_i_n_21 -attr @rip O[42] -pin dina5_i I1[42] -pin dina6_i O[42]
load net rd_address_cmov[4] -attr @rip read_address[4] -pin CMOV1 read_address[4] -pin rd_address8_i I0[4]
load net dout_addround[44] -attr @rip write_data[44] -pin AddRound0 write_data[44] -pin dina1_i I0[44]
load net dina6_i_n_22 -attr @rip O[41] -pin dina5_i I1[41] -pin dina6_i O[41]
load net dina_ext[21] -attr @rip dina_ext[21] -pin dina7_i I1[21] -port dina_ext[21]
load net dina6_i_n_23 -attr @rip O[40] -pin dina5_i I1[40] -pin dina6_i O[40]
load net dina6_i_n_24 -attr @rip O[39] -pin dina5_i I1[39] -pin dina6_i O[39]
load net rd_address_addround[2] -attr @rip read_address[2] -pin AddRound0 read_address[2] -pin rd_address1_i I0[2]
load net wt_address_sampler[6] -attr @rip wt_address[6] -pin Sampler wt_address[6] -pin wt_address6_i I0[6]
load net dina6_i_n_25 -attr @rip O[38] -pin dina5_i I1[38] -pin dina6_i O[38]
load net dina6_i_n_26 -attr @rip O[37] -pin dina5_i I1[37] -pin dina6_i O[37]
load net dout_unpack[37] -attr @rip write_data[37] -pin dina4_i I0[37] -pin unpack0 write_data[37]
load net wt_address_bs2polvecp[5] -attr @rip write_address[5] -pin BC2PVEC write_address[5] -pin wt_address3_i I0[5]
load net dina6_i_n_27 -attr @rip O[36] -pin dina5_i I1[36] -pin dina6_i O[36]
load net dina6_i_n_28 -attr @rip O[35] -pin dina5_i I1[35] -pin dina6_i O[35]
load net dout_shake[43] -attr @rip dout[43] -pin SH dout[43] -pin dina_i I0[43]
load net mlen[9] -attr @rip 9 -pin SH mlen[9] -pin VERIFY1 ilen[9] -pin command_reg1_reg[34:0] Q[9]
load net addra[3] -attr @rip O[3] -pin BR addra[3] -pin addra_i O[3]
load net address_ext[0] -attr @rip address_ext[0] -port address_ext[0] -pin rd_address8_i I1[0] -pin wt_address7_i I1[0]
load net dina6_i_n_29 -attr @rip O[34] -pin dina5_i I1[34] -pin dina6_i O[34]
load net dout_addround[33] -attr @rip write_data[33] -pin AddRound0 write_data[33] -pin dina1_i I0[33]
load net dina_ext[11] -attr @rip dina_ext[11] -pin dina7_i I1[11] -port dina_ext[11]
load net dout_cmov[27] -attr @rip write_data[27] -pin CMOV1 write_data[27] -pin dina7_i I0[27]
load net dout_shake[16] -attr @rip dout[16] -pin SH dout[16] -pin dina_i I0[16]
load net doutb_ext[19] -attr @rip 19 -port doutb_ext[19] -pin doutb_ext[63:0]_OBUF_inst O[19]
load net dina_ext[58] -attr @rip dina_ext[58] -pin dina7_i I1[58] -port dina_ext[58]
load net rd_address_shake[3] -attr @rip rd_address[3] -pin SH rd_address[3] -pin rd_address_i I0[3]
load net dout_shake[20] -attr @rip dout[20] -pin SH dout[20] -pin dina_i I0[20]
load net dina[7] -attr @rip O[7] -pin BR dina[7] -pin dina_i O[7]
load net dout_bs2polvecp[61] -attr @rip write_data[61] -pin BC2PVEC write_data[61] -pin dina3_i I0[61]
load net rd_address[7] -attr @rip O[7] -pin addrb_i I1[7] -pin rd_address_i O[7]
load net doutb_ext_OBUF[46] -attr @rip doutb[46] -pin AddPack0 read_data[46] -pin AddRound0 read_data[46] -pin BC2PVEC read_data[46] -pin BR doutb[46] -pin CMOV1 read_data[46] -pin SH din[46] -pin Sampler data_in[46] -pin VERIFY1 din[46] -pin VMUL0 ram_data_out[46] -pin copy read_data[46] -pin doutb_ext[63:0]_OBUF_inst I[46] -pin unpack0 read_data[46]
load net doutb_ext_OBUF[54] -attr @rip doutb[54] -pin AddPack0 read_data[54] -pin AddRound0 read_data[54] -pin BC2PVEC read_data[54] -pin BR doutb[54] -pin CMOV1 read_data[54] -pin SH din[54] -pin Sampler data_in[54] -pin VERIFY1 din[54] -pin VMUL0 ram_data_out[54] -pin copy read_data[54] -pin doutb_ext[63:0]_OBUF_inst I[54] -pin unpack0 read_data[54]
load net unpack0|read_data[15] -attr @rip read_data[15] -attr @name read_data[15] -hierPin unpack0 read_data[15] -pin unpack0|op_buffer_i I0[15] -pin unpack0|v_buffer_reg[63:0] D[15]
load net dout_addround[43] -attr @rip write_data[43] -pin AddRound0 write_data[43] -pin dina1_i I0[43]
load net dina6_i_n_30 -attr @rip O[33] -pin dina5_i I1[33] -pin dina6_i O[33]
load net OP1[3] -attr @rip 3 -pin OP1_or_OP2_i I1[3] -pin command_reg0_reg[34:0] Q[8]
load net dina6_i_n_31 -attr @rip O[32] -pin dina5_i I1[32] -pin dina6_i O[32]
load net dout_addround[57] -attr @rip write_data[57] -pin AddRound0 write_data[57] -pin dina1_i I0[57]
load net dina6_i_n_32 -attr @rip O[31] -pin dina5_i I1[31] -pin dina6_i O[31]
load net dina6_i_n_33 -attr @rip O[30] -pin dina5_i I1[30] -pin dina6_i O[30]
load net dout_cmov[39] -attr @rip write_data[39] -pin CMOV1 write_data[39] -pin dina7_i I0[39]
load net dina6_i_n_34 -attr @rip O[29] -pin dina5_i I1[29] -pin dina6_i O[29]
load net dout_unpack[36] -attr @rip write_data[36] -pin dina4_i I0[36] -pin unpack0 write_data[36]
load net wt_address_bs2polvecp[4] -attr @rip write_address[4] -pin BC2PVEC write_address[4] -pin wt_address3_i I0[4]
load net wt_address_copy[1] -attr @rip write_address[1] -pin copy write_address[1] -pin wt_address5_i I0[1]
load net wt_address_sampler[7] -attr @rip wt_address[7] -pin Sampler wt_address[7] -pin wt_address6_i I0[7]
load net dina_ext[24] -attr @rip dina_ext[24] -pin dina7_i I1[24] -port dina_ext[24]
load net dina6_i_n_35 -attr @rip O[28] -pin dina5_i I1[28] -pin dina6_i O[28]
load net dout_addround[30] -attr @rip write_data[30] -pin AddRound0 write_data[30] -pin dina1_i I0[30]
load net doutb_ext_OBUF[30] -attr @rip doutb[30] -pin AddPack0 read_data[30] -pin AddRound0 read_data[30] -pin BC2PVEC read_data[30] -pin BR doutb[30] -pin CMOV1 read_data[30] -pin SH din[30] -pin Sampler data_in[30] -pin VERIFY1 din[30] -pin VMUL0 ram_data_out[30] -pin copy read_data[30] -pin doutb_ext[63:0]_OBUF_inst I[30] -pin unpack0 read_data[30]
load net dina6_i_n_36 -attr @rip O[27] -pin dina5_i I1[27] -pin dina6_i O[27]
load net doutb_ext[16] -attr @rip 16 -port doutb_ext[16] -pin doutb_ext[63:0]_OBUF_inst O[16]
load net rd_address_addround[5] -attr @rip read_address[5] -pin AddRound0 read_address[5] -pin rd_address1_i I0[5]
load net dina6_i_n_37 -attr @rip O[26] -pin dina5_i I1[26] -pin dina6_i O[26]
load net dina6_i_n_38 -attr @rip O[25] -pin dina5_i I1[25] -pin dina6_i O[25]
load net dout_shake[15] -attr @rip dout[15] -pin SH dout[15] -pin dina_i I0[15]
load net dina_ext[57] -attr @rip dina_ext[57] -pin dina7_i I1[57] -port dina_ext[57]
load net dina6_i_n_39 -attr @rip O[24] -pin dina5_i I1[24] -pin dina6_i O[24]
load net dout_cmov[28] -attr @rip write_data[28] -pin CMOV1 write_data[28] -pin dina7_i I0[28]
load net dina[6] -attr @rip O[6] -pin BR dina[6] -pin dina_i O[6]
load net dina[27] -attr @rip O[27] -pin BR dina[27] -pin dina_i O[27]
load net dout_bs2polvecp[60] -attr @rip write_data[60] -pin BC2PVEC write_data[60] -pin dina3_i I0[60]
load net rd_address[6] -attr @rip O[6] -pin addrb_i I1[6] -pin rd_address_i O[6]
load net rd_address_shake[4] -attr @rip rd_address[4] -pin SH rd_address[4] -pin rd_address_i I0[4]
load net dout_shake[21] -attr @rip dout[21] -pin SH dout[21] -pin dina_i I0[21]
load net doutb_ext_OBUF[53] -attr @rip doutb[53] -pin AddPack0 read_data[53] -pin AddRound0 read_data[53] -pin BC2PVEC read_data[53] -pin BR doutb[53] -pin CMOV1 read_data[53] -pin SH din[53] -pin Sampler data_in[53] -pin VERIFY1 din[53] -pin VMUL0 ram_data_out[53] -pin copy read_data[53] -pin doutb_ext[63:0]_OBUF_inst I[53] -pin unpack0 read_data[53]
load net wt_address_addround[0] -attr @rip write_address[0] -pin AddRound0 write_address[0] -pin wt_address1_i I0[0]
load net dina_ext[16] -attr @rip dina_ext[16] -pin dina7_i I1[16] -port dina_ext[16]
load net doutb_ext_OBUF[47] -attr @rip doutb[47] -pin AddPack0 read_data[47] -pin AddRound0 read_data[47] -pin BC2PVEC read_data[47] -pin BR doutb[47] -pin CMOV1 read_data[47] -pin SH din[47] -pin Sampler data_in[47] -pin VERIFY1 din[47] -pin VMUL0 ram_data_out[47] -pin copy read_data[47] -pin doutb_ext[63:0]_OBUF_inst I[47] -pin unpack0 read_data[47]
load net wt_address_addpack[4] -attr @rip write_address[4] -pin AddPack0 write_address[4] -pin wt_address2_i I0[4]
load net dout_addround[56] -attr @rip write_data[56] -pin AddRound0 write_data[56] -pin dina1_i I0[56]
load net unpack0|read_data[18] -attr @rip read_data[18] -attr @name read_data[18] -hierPin unpack0 read_data[18] -pin unpack0|op_buffer_i I0[18] -pin unpack0|v_buffer_reg[63:0] D[18]
load net dina6_i_n_40 -attr @rip O[23] -pin dina5_i I1[23] -pin dina6_i O[23]
load net dout_vmul[20] -attr @rip coeff4x_out[20] -pin VMUL0 coeff4x_out[20] -pin dina0_i I0[20]
load net OP1[4] -attr @rip 4 -pin OP1_or_OP2_i I1[4] -pin command_reg0_reg[34:0] Q[9]
load net dina6_i_n_41 -attr @rip O[22] -pin dina5_i I1[22] -pin dina6_i O[22]
load net dout_cmov[38] -attr @rip write_data[38] -pin CMOV1 write_data[38] -pin dina7_i I0[38]
load net dina6_i_n_42 -attr @rip O[21] -pin dina5_i I1[21] -pin dina6_i O[21]
load net dout_unpack[35] -attr @rip write_data[35] -pin dina4_i I0[35] -pin unpack0 write_data[35]
load net wt_address_bs2polvecp[3] -attr @rip write_address[3] -pin BC2PVEC write_address[3] -pin wt_address3_i I0[3]
load net dina_ext[23] -attr @rip dina_ext[23] -pin dina7_i I1[23] -port dina_ext[23]
load net dina6_i_n_43 -attr @rip O[20] -pin dina5_i I1[20] -pin dina6_i O[20]
load net dout_copy[16] -attr @rip write_data[16] -pin copy write_data[16] -pin dina5_i I0[16]
load net OP2[9] -attr @rip 9 -pin OP1_or_OP2_i I0[9] -pin command_reg0_reg[34:0] Q[24]
load net dina6_i_n_44 -attr @rip O[19] -pin dina5_i I1[19] -pin dina6_i O[19]
load net rd_address_addround[4] -attr @rip read_address[4] -pin AddRound0 read_address[4] -pin rd_address1_i I0[4]
load net wt_address_copy[2] -attr @rip write_address[2] -pin copy write_address[2] -pin wt_address5_i I0[2]
load net dout_addround[31] -attr @rip write_data[31] -pin AddRound0 write_data[31] -pin dina1_i I0[31]
load net dina6_i_n_45 -attr @rip O[18] -pin dina5_i I1[18] -pin dina6_i O[18]
load net dout_copy[50] -attr @rip write_data[50] -pin copy write_data[50] -pin dina5_i I0[50]
load net dina6_i_n_46 -attr @rip O[17] -pin dina5_i I1[17] -pin dina6_i O[17]
load net doutb_ext[17] -attr @rip 17 -port doutb_ext[17] -pin doutb_ext[63:0]_OBUF_inst O[17]
load net dina_ext[56] -attr @rip dina_ext[56] -pin dina7_i I1[56] -port dina_ext[56]
load net dina6_i_n_47 -attr @rip O[16] -pin dina5_i I1[16] -pin dina6_i O[16]
load net dina6_i_n_48 -attr @rip O[15] -pin dina5_i I1[15] -pin dina6_i O[15]
load net dout_sampler[18] -attr @rip sample_pack[18] -pin Sampler sample_pack[18] -pin dina6_i I0[18]
load net dout_sampler[50] -attr @rip sample_pack[50] -pin Sampler sample_pack[50] -pin dina6_i I0[50]
load net address_ext[2] -attr @rip address_ext[2] -port address_ext[2] -pin rd_address8_i I1[2] -pin wt_address7_i I1[2]
load net dina[5] -attr @rip O[5] -pin BR dina[5] -pin dina_i O[5]
load net dina6_i_n_49 -attr @rip O[14] -pin dina5_i I1[14] -pin dina6_i O[14]
load net rd_address[5] -attr @rip O[5] -pin addrb_i I1[5] -pin rd_address_i O[5]
load net wea_cmov -pin CMOV1 write_en -pin wea7_i I0
netloc wea_cmov 1 6 3 2480J 1420 NJ 1420 3340
load net dout_cmov[29] -attr @rip write_data[29] -pin CMOV1 write_data[29] -pin dina7_i I0[29]
load net dout_shake[18] -attr @rip dout[18] -pin SH dout[18] -pin dina_i I0[18]
load net doutb_ext_OBUF[52] -attr @rip doutb[52] -pin AddPack0 read_data[52] -pin AddRound0 read_data[52] -pin BC2PVEC read_data[52] -pin BR doutb[52] -pin CMOV1 read_data[52] -pin SH din[52] -pin Sampler data_in[52] -pin VERIFY1 din[52] -pin VMUL0 ram_data_out[52] -pin copy read_data[52] -pin doutb_ext[63:0]_OBUF_inst I[52] -pin unpack0 read_data[52]
load net dina[28] -attr @rip O[28] -pin BR dina[28] -pin dina_i O[28]
load net doutb_ext[51] -attr @rip 51 -port doutb_ext[51] -pin doutb_ext[63:0]_OBUF_inst O[51]
load net rd_address_shake[5] -attr @rip rd_address[5] -pin SH rd_address[5] -pin rd_address_i I0[5]
load net dout_shake[22] -attr @rip dout[22] -pin SH dout[22] -pin dina_i I0[22]
load net rd_address_cmov[1] -attr @rip read_address[1] -pin CMOV1 read_address[1] -pin rd_address8_i I0[1]
load net dina_ext[17] -attr @rip dina_ext[17] -pin dina7_i I1[17] -port dina_ext[17]
load net dout_bs2polvecp[63] -attr @rip write_data[63] -pin BC2PVEC write_data[63] -pin dina3_i I0[63]
load net OP1[1] -attr @rip 1 -pin OP1_or_OP2_i I1[1] -pin command_reg0_reg[34:0] Q[6]
load net unpack0|read_data[17] -attr @rip read_data[17] -attr @name read_data[17] -hierPin unpack0 read_data[17] -pin unpack0|op_buffer_i I0[17] -pin unpack0|v_buffer_reg[63:0] D[17]
load net wt_address_addpack[5] -attr @rip write_address[5] -pin AddPack0 write_address[5] -pin wt_address2_i I0[5]
load net command_in[24] -attr @rip command_in[24] -port command_in[24] -pin command_reg0_reg[34:0] D[24] -pin command_reg1_reg[34:0] D[24]
load net dout_cmov[37] -attr @rip write_data[37] -pin CMOV1 write_data[37] -pin dina7_i I0[37]
load net command_we0 -pin command_reg0_reg[34:0] CE -port command_we0
netloc command_we0 1 0 2 NJ 1660 120J
load net dina6_i_n_50 -attr @rip O[13] -pin dina5_i I1[13] -pin dina6_i O[13]
load net dout_vmul[21] -attr @rip coeff4x_out[21] -pin VMUL0 coeff4x_out[21] -pin dina0_i I0[21]
load net wt_address_bs2polvecp[2] -attr @rip write_address[2] -pin BC2PVEC write_address[2] -pin wt_address3_i I0[2]
load net dout_addround[59] -attr @rip write_data[59] -pin AddRound0 write_data[59] -pin dina1_i I0[59]
load net command_we1 -pin command_reg1_reg[34:0] CE -port command_we1
netloc command_we1 1 0 3 NJ 1740 NJ 1740 NJ
load net dina6_i_n_51 -attr @rip O[12] -pin dina5_i I1[12] -pin dina6_i O[12]
load net OP2[8] -attr @rip 8 -pin OP1_or_OP2_i I0[8] -pin command_reg0_reg[34:0] Q[23] -pin copy number_words[8]
load net dina6_i_n_52 -attr @rip O[11] -pin dina5_i I1[11] -pin dina6_i O[11]
load net dout_shake[3] -attr @rip dout[3] -pin SH dout[3] -pin dina_i I0[3]
load net addra[0] -attr @rip O[0] -pin BR addra[0] -pin addra_i O[0]
load net dina6_i_n_53 -attr @rip O[10] -pin dina5_i I1[10] -pin dina6_i O[10]
load net dout_copy[17] -attr @rip write_data[17] -pin copy write_data[17] -pin dina5_i I0[17]
load net dina6_i_n_54 -attr @rip O[9] -pin dina5_i I1[9] -pin dina6_i O[9]
load net unpack0|read_data[40] -attr @rip read_data[40] -attr @name read_data[40] -hierPin unpack0 read_data[40] -pin unpack0|op_buffer_i I0[40] -pin unpack0|v_buffer_reg[63:0] D[40]
load net dina_ext[55] -attr @rip dina_ext[55] -pin dina7_i I1[55] -port dina_ext[55]
load net dina_ext[26] -attr @rip dina_ext[26] -pin dina7_i I1[26] -port dina_ext[26]
load net dina6_i_n_55 -attr @rip O[8] -pin dina5_i I1[8] -pin dina6_i O[8]
load net dout_copy[51] -attr @rip write_data[51] -pin copy write_data[51] -pin dina5_i I0[51]
load net dina[40] -attr @rip O[40] -pin BR dina[40] -pin dina_i O[40]
load net dina6_i_n_56 -attr @rip O[7] -pin dina5_i I1[7] -pin dina6_i O[7]
load net dout_sampler[17] -attr @rip sample_pack[17] -pin Sampler sample_pack[17] -pin dina6_i I0[17]
load net rd_address_addround[7] -attr @rip read_address[7] -pin AddRound0 read_address[7] -pin rd_address1_i I0[7]
load net OP3[9] -attr @rip 9 -pin addra_i I0[9] -pin command_reg0_reg[34:0] Q[34]
load net address_ext[1] -attr @rip address_ext[1] -port address_ext[1] -pin rd_address8_i I1[1] -pin wt_address7_i I1[1]
load net dina6_i_n_57 -attr @rip O[6] -pin dina5_i I1[6] -pin dina6_i O[6]
load net op2_sel -pin OP1_or_OP2_i S -pin op2_sel_i O
netloc op2_sel 1 15 1 7340
load net rd_address[4] -attr @rip O[4] -pin addrb_i I1[4] -pin rd_address_i O[4]
load net dina6_i_n_58 -attr @rip O[5] -pin dina5_i I1[5] -pin dina6_i O[5]
load net dout_shake[17] -attr @rip dout[17] -pin SH dout[17] -pin dina_i I0[17]
load net doutb_ext_OBUF[51] -attr @rip doutb[51] -pin AddPack0 read_data[51] -pin AddRound0 read_data[51] -pin BC2PVEC read_data[51] -pin BR doutb[51] -pin CMOV1 read_data[51] -pin SH din[51] -pin Sampler data_in[51] -pin VERIFY1 din[51] -pin VMUL0 ram_data_out[51] -pin copy read_data[51] -pin doutb_ext[63:0]_OBUF_inst I[51] -pin unpack0 read_data[51]
load net unpack0|read_data[12] -attr @rip(#000000) read_data[12] -attr @name read_data[12] -hierPin unpack0 read_data[12] -pin unpack0|op_buffer_i I0[12] -pin unpack0|v_buffer_reg[63:0] D[12]
load net dina_ext[14] -attr @rip dina_ext[14] -pin dina7_i I1[14] -port dina_ext[14]
load net dina6_i_n_59 -attr @rip O[4] -pin dina5_i I1[4] -pin dina6_i O[4]
load net doutb_ext[50] -attr @rip 50 -port doutb_ext[50] -pin doutb_ext[63:0]_OBUF_inst O[50]
load net rd_address_cmov[0] -attr @rip read_address[0] -pin CMOV1 read_address[0] -pin rd_address8_i I0[0]
load net dout_addround[40] -attr @rip write_data[40] -pin AddRound0 write_data[40] -pin dina1_i I0[40]
load net dout_bs2polvecp[62] -attr @rip write_data[62] -pin BC2PVEC write_data[62] -pin dina3_i I0[62]
load net rd_address_shake[6] -attr @rip rd_address[6] -pin SH rd_address[6] -pin rd_address_i I0[6]
load net wt_address_addpack[2] -attr @rip write_address[2] -pin AddPack0 write_address[2] -pin wt_address2_i I0[2]
load net dout_shake[23] -attr @rip dout[23] -pin SH dout[23] -pin dina_i I0[23]
load net doutb_ext[44] -attr @rip 44 -port doutb_ext[44] -pin doutb_ext[63:0]_OBUF_inst O[44]
load net dina_ext[8] -attr @rip dina_ext[8] -pin dina7_i I1[8] -port dina_ext[8]
load net OP1[2] -attr @rip 2 -pin OP1_or_OP2_i I1[2] -pin command_reg0_reg[34:0] Q[7]
load net dout_cmov[36] -attr @rip write_data[36] -pin CMOV1 write_data[36] -pin dina7_i I0[36]
load net wt_address_bs2polvecp[1] -attr @rip write_address[1] -pin BC2PVEC write_address[1] -pin wt_address3_i I0[1]
load net dout_addround[58] -attr @rip write_data[58] -pin AddRound0 write_data[58] -pin dina1_i I0[58]
load net command_in[25] -attr @rip command_in[25] -port command_in[25] -pin command_reg0_reg[34:0] D[25] -pin command_reg1_reg[34:0] D[25]
load net OP2[7] -attr @rip 7 -pin OP1_or_OP2_i I0[7] -pin command_reg0_reg[34:0] Q[22] -pin copy number_words[7]
load net dout_shake[2] -attr @rip dout[2] -pin SH dout[2] -pin dina_i I0[2]
load net dout_vmul[22] -attr @rip coeff4x_out[22] -pin VMUL0 coeff4x_out[22] -pin dina0_i I0[22]
load net doutb_ext_OBUF[12] -attr @rip doutb[12] -pin AddPack0 read_data[12] -pin AddRound0 read_data[12] -pin BC2PVEC read_data[12] -pin BR doutb[12] -pin CMOV1 read_data[12] -pin SH din[12] -pin Sampler data_in[12] -pin VERIFY1 din[12] -pin VMUL0 ram_data_out[12] -pin copy read_data[12] -pin doutb_ext[63:0]_OBUF_inst I[12] -pin unpack0 read_data[12]
load net wt_address_copy[0] -attr @rip write_address[0] -pin copy write_address[0] -pin wt_address5_i I0[0]
load net doutb_ext[23] -attr @rip 23 -port doutb_ext[23] -pin doutb_ext[63:0]_OBUF_inst O[23]
load net dina_ext[25] -attr @rip dina_ext[25] -pin dina7_i I1[25] -port dina_ext[25]
load net dina_ext[54] -attr @rip dina_ext[54] -pin dina7_i I1[54] -port dina_ext[54]
load net dout_copy[18] -attr @rip write_data[18] -pin copy write_data[18] -pin dina5_i I0[18]
load net dout_sampler[16] -attr @rip sample_pack[16] -pin Sampler sample_pack[16] -pin dina6_i I0[16]
load net rd_address_addround[6] -attr @rip read_address[6] -pin AddRound0 read_address[6] -pin rd_address1_i I0[6]
load net unpack0|read_data[41] -attr @rip read_data[41] -attr @name read_data[41] -hierPin unpack0 read_data[41] -pin unpack0|op_buffer_i I0[41] -pin unpack0|v_buffer_reg[63:0] D[41]
load net dina[24] -attr @rip O[24] -pin BR dina[24] -pin dina_i O[24]
load net OP3[8] -attr @rip 8 -pin addra_i I0[8] -pin command_reg0_reg[34:0] Q[33]
load net rd_address[3] -attr @rip O[3] -pin addrb_i I1[3] -pin rd_address_i O[3]
load net dina_ext[37] -attr @rip dina_ext[37] -pin dina7_i I1[37] -port dina_ext[37]
load net doutb_ext_OBUF[50] -attr @rip doutb[50] -pin AddPack0 read_data[50] -pin AddRound0 read_data[50] -pin BC2PVEC read_data[50] -pin BR doutb[50] -pin CMOV1 read_data[50] -pin SH din[50] -pin Sampler data_in[50] -pin VERIFY1 din[50] -pin VMUL0 ram_data_out[50] -pin copy read_data[50] -pin doutb_ext[63:0]_OBUF_inst I[50] -pin unpack0 read_data[50]
load net unpack0|read_data[11] -attr @rip(#000000) O[7] -attr @name read_data[11] -hierPin unpack0 read_data[11] -pin unpack0|op_buffer_i I0[11] -pin unpack0|v_buffer_reg[63:0] D[11]
load net wt_address_unpack[1] -attr @rip write_address[1] -pin unpack0 write_address[1] -pin wt_address4_i I0[1]
load net dina_ext[15] -attr @rip dina_ext[15] -pin dina7_i I1[15] -port dina_ext[15]
load net address_ext[4] -attr @rip address_ext[4] -port address_ext[4] -pin rd_address8_i I1[4] -pin wt_address7_i I1[4]
load net doutb_ext[43] -attr @rip 43 -port doutb_ext[43] -pin doutb_ext[63:0]_OBUF_inst O[43]
load net dina_ext[7] -attr @rip dina_ext[7] -pin dina7_i I1[7] -port dina_ext[7]
load net dout_copy[60] -attr @rip write_data[60] -pin copy write_data[60] -pin dina5_i I0[60]
load net wt_address_addpack[3] -attr @rip write_address[3] -pin AddPack0 write_address[3] -pin wt_address2_i I0[3]
load net command_in[22] -attr @rip command_in[22] -port command_in[22] -pin command_reg0_reg[34:0] D[22] -pin command_reg1_reg[34:0] D[22]
load net wt_address_addround[3] -attr @rip write_address[3] -pin AddRound0 write_address[3] -pin wt_address1_i I0[3]
load net wt_address_bs2polvecp[0] -attr @rip write_address[0] -pin BC2PVEC write_address[0] -pin wt_address3_i I0[0]
load net dina_ext[29] -attr @rip dina_ext[29] -pin dina7_i I1[29] -port dina_ext[29]
load net OP2[6] -attr @rip 6 -pin OP1_or_OP2_i I0[6] -pin command_reg0_reg[34:0] Q[21] -pin copy number_words[6]
load net doutb_ext_OBUF[11] -attr @rip doutb[11] -pin AddPack0 read_data[11] -pin AddRound0 read_data[11] -pin BC2PVEC read_data[11] -pin BR doutb[11] -pin CMOV1 read_data[11] -pin SH din[11] -pin Sampler data_in[11] -pin VERIFY1 din[11] -pin VMUL0 ram_data_out[11] -pin copy read_data[11] -pin doutb_ext[63:0]_OBUF_inst I[11] -pin unpack0 read_data[11]
load net dout_vmul[23] -attr @rip coeff4x_out[23] -pin VMUL0 coeff4x_out[23] -pin dina0_i I0[23]
load net dout_unpack[58] -attr @rip write_data[58] -pin dina4_i I0[58] -pin unpack0 write_data[58]
load net dout_vmul[33] -attr @rip coeff4x_out[33] -pin VMUL0 coeff4x_out[33] -pin dina0_i I0[33]
load net doutb_ext[24] -attr @rip 24 -port doutb_ext[24] -pin doutb_ext[63:0]_OBUF_inst O[24]
load net dout_sampler[15] -attr @rip sample_pack[15] -pin Sampler sample_pack[15] -pin dina6_i I0[15]
load net dout_shake[5] -attr @rip dout[5] -pin SH dout[5] -pin dina_i I0[5]
load net dina[23] -attr @rip O[23] -pin BR dina[23] -pin dina_i O[23]
load net OP3[7] -attr @rip 7 -pin addra_i I0[7] -pin command_reg0_reg[34:0] Q[32]
load net dout_copy[19] -attr @rip write_data[19] -pin copy write_data[19] -pin dina5_i I0[19]
load net rd_address[2] -attr @rip O[2] -pin addrb_i I1[2] -pin rd_address_i O[2]
load net dina_ext[36] -attr @rip dina_ext[36] -pin dina7_i I1[36] -port dina_ext[36]
load net unpack0|read_data[42] -attr @rip read_data[42] -attr @name read_data[42] -hierPin unpack0 read_data[42] -pin unpack0|op_buffer_i I0[42] -pin unpack0|v_buffer_reg[63:0] D[42]
load net wea -attr @rip 0 -pin BR wea[0] -pin wea_i O
netloc wea 1 17 1 8160
load net wt_address_unpack[0] -attr @rip write_address[0] -pin unpack0 write_address[0] -pin wt_address4_i I0[0]
load net address_ext[3] -attr @rip address_ext[3] -port address_ext[3] -pin rd_address8_i I1[3] -pin wt_address7_i I1[3]
load net wt_address_addpack[0] -attr @rip write_address[0] -pin AddPack0 write_address[0] -pin wt_address2_i I0[0]
load net addrb[7] -attr @rip O[7] -pin BR addrb[7] -pin addrb_i O[7]
load net dout_shake[19] -attr @rip dout[19] -pin SH dout[19] -pin dina_i I0[19]
load net unpack0|read_data[14] -attr @rip read_data[14] -attr @name read_data[14] -hierPin unpack0 read_data[14] -pin unpack0|op_buffer_i I0[14] -pin unpack0|v_buffer_reg[63:0] D[14]
load net dina_ext[6] -attr @rip dina_ext[6] -pin dina7_i I1[6] -port dina_ext[6]
load net rate_type[0] -attr @rip O[0] -pin SH rate_type[0] -pin rate_type_i O[0]
load net done_cmov -pin CMOV1 done -port done_cmov
netloc done_cmov 1 6 14 2440J 1380 NJ 1380 3320J 1470 3920J 1550 4530J 1580 NJ 1580 NJ 1580 6210J 1630 NJ 1630 NJ 1630 NJ 1630 NJ 1630 NJ 1630 NJ
load net dina2_i_n_0 -attr @rip O[63] -pin dina1_i I1[63] -pin dina2_i O[63]
load net OP1[0] -attr @rip 0 -pin OP1_or_OP2_i I1[0] -pin command_reg0_reg[34:0] Q[5]
load net dina2_i_n_1 -attr @rip O[62] -pin dina1_i I1[62] -pin dina2_i O[62]
load net dina2_i_n_2 -attr @rip O[61] -pin dina1_i I1[61] -pin dina2_i O[61]
load net command_in[23] -attr @rip command_in[23] -port command_in[23] -pin command_reg0_reg[34:0] D[23] -pin command_reg1_reg[34:0] D[23]
load net dout_copy[6] -attr @rip write_data[6] -pin copy write_data[6] -pin dina5_i I0[6]
load net doutb_ext[46] -attr @rip 46 -port doutb_ext[46] -pin doutb_ext[63:0]_OBUF_inst O[46]
load net wt_address_addround[4] -attr @rip write_address[4] -pin AddRound0 write_address[4] -pin wt_address1_i I0[4]
load net dina[52] -attr @rip O[52] -pin BR dina[52] -pin dina_i O[52]
load net OP2[5] -attr @rip 5 -pin OP1_or_OP2_i I0[5] -pin command_reg0_reg[34:0] Q[20] -pin copy number_words[5]
load net dina2_i_n_3 -attr @rip O[60] -pin dina1_i I1[60] -pin dina2_i O[60]
load net doutb_ext_OBUF[10] -attr @rip doutb[10] -pin AddPack0 read_data[10] -pin AddRound0 read_data[10] -pin BC2PVEC read_data[10] -pin BR doutb[10] -pin CMOV1 read_data[10] -pin SH din[10] -pin Sampler data_in[10] -pin VERIFY1 din[10] -pin VMUL0 ram_data_out[10] -pin copy read_data[10] -pin doutb_ext[63:0]_OBUF_inst I[10] -pin unpack0 read_data[10]
load net mlen[3] -attr @rip 3 -pin SH mlen[3] -pin VERIFY1 ilen[3] -pin command_reg1_reg[34:0] Q[3]
load net dina2_i_n_4 -attr @rip O[59] -pin dina1_i I1[59] -pin dina2_i O[59]
load net doutb_ext[21] -attr @rip 21 -port doutb_ext[21] -pin doutb_ext[63:0]_OBUF_inst O[21]
load net dina2_i_n_5 -attr @rip O[58] -pin dina1_i I1[58] -pin dina2_i O[58]
load net dina2_i_n_6 -attr @rip O[57] -pin dina1_i I1[57] -pin dina2_i O[57]
load net dout_unpack[57] -attr @rip write_data[57] -pin dina4_i I0[57] -pin unpack0 write_data[57]
load net dina2_i_n_7 -attr @rip O[56] -pin dina1_i I1[56] -pin dina2_i O[56]
load net dina_ext[44] -attr @rip dina_ext[44] -pin dina7_i I1[44] -port dina_ext[44]
load net dout_shake[4] -attr @rip dout[4] -pin SH dout[4] -pin dina_i I0[4]
load net wea_bs2polvecp -pin BC2PVEC write_en -pin wea3_i I0
netloc wea_bs2polvecp 1 11 2 NJ 220 5550
load net OP3[6] -attr @rip 6 -pin addra_i I0[6] -pin command_reg0_reg[34:0] Q[31]
load net dina2_i_n_8 -attr @rip O[55] -pin dina1_i I1[55] -pin dina2_i O[55]
load net dout_vmul[34] -attr @rip coeff4x_out[34] -pin VMUL0 coeff4x_out[34] -pin dina0_i I0[34]
load net rd_address[1] -attr @rip O[1] -pin addrb_i I1[1] -pin rd_address_i O[1]
load net dina2_i_n_9 -attr @rip O[54] -pin dina1_i I1[54] -pin dina2_i O[54]
load net dout_unpack[39] -attr @rip write_data[39] -pin dina4_i I0[39] -pin unpack0 write_data[39]
load net rd_address_addround[8] -attr @rip read_address[8] -pin AddRound0 read_address[8] -pin rd_address1_i I0[8]
load net unpack0|read_data[43] -attr @rip read_data[43] -attr @name read_data[43] -hierPin unpack0 read_data[43] -pin unpack0|op_buffer_i I0[43] -pin unpack0|v_buffer_reg[63:0] D[43]
load net dina[26] -attr @rip O[26] -pin BR dina[26] -pin dina_i O[26]
load net dina_ext[39] -attr @rip dina_ext[39] -pin dina7_i I1[39] -port dina_ext[39]
load net dina4_i_n_60 -attr @rip O[3] -pin dina3_i I1[3] -pin dina4_i O[3]
load net addrb[6] -attr @rip O[6] -pin BR addrb[6] -pin addrb_i O[6]
load net unpack0|read_data[13] -attr @rip read_data[13] -attr @name read_data[13] -hierPin unpack0 read_data[13] -pin unpack0|op_buffer_i I0[13] -pin unpack0|v_buffer_reg[63:0] D[13]
load net dina_ext[5] -attr @rip dina_ext[5] -pin dina7_i I1[5] -port dina_ext[5]
load net dina4_i_n_61 -attr @rip O[2] -pin dina3_i I1[2] -pin dina4_i O[2]
load net wt_address_addpack[1] -attr @rip write_address[1] -pin AddPack0 write_address[1] -pin wt_address2_i I0[1]
load net command_in[20] -attr @rip command_in[20] -port command_in[20] -pin command_reg0_reg[34:0] D[20] -pin command_reg1_reg[34:0] D[20]
load net dina4_i_n_62 -attr @rip O[1] -pin dina3_i I1[1] -pin dina4_i O[1]
load net wea_addpack -pin AddPack0 write_en -pin wea2_i I0
netloc wea_addpack 1 13 7 6230 1230 6790J 1170 7400J 1250 NJ 1250 NJ 1250 NJ 1250 8920
load net wt_address_addround[1] -attr @rip write_address[1] -pin AddRound0 write_address[1] -pin wt_address1_i I0[1]
load net wt_address_unpack[3] -attr @rip write_address[3] -pin unpack0 write_address[3] -pin wt_address4_i I0[3]
load net address_ext[6] -attr @rip address_ext[6] -port address_ext[6] -pin rd_address8_i I1[6] -pin wt_address7_i I1[6]
load net dina[9] -attr @rip O[9] -pin BR dina[9] -pin dina_i O[9]
load net dina6_i_n_10 -attr @rip O[53] -pin dina5_i I1[53] -pin dina6_i O[53]
load net dina4_i_n_63 -attr @rip O[0] -pin dina3_i I1[0] -pin dina4_i O[0]
load net dout_addpack[28] -attr @rip write_data[28] -pin AddPack0 write_data[28] -pin dina2_i I0[28]
load net rate_type[1] -attr @rip O[1] -pin SH rate_type[1] -pin rate_type_i O[1]
load net dina6_i_n_11 -attr @rip O[52] -pin dina5_i I1[52] -pin dina6_i O[52]
load net dina_ext[27] -attr @rip dina_ext[27] -pin dina7_i I1[27] -port dina_ext[27]
load net dout_copy[5] -attr @rip write_data[5] -pin copy write_data[5] -pin dina5_i I0[5]
load net doutb_ext[45] -attr @rip 45 -port doutb_ext[45] -pin doutb_ext[63:0]_OBUF_inst O[45]
load net dina6_i_n_12 -attr @rip O[51] -pin dina5_i I1[51] -pin dina6_i O[51]
load net OP2[4] -attr @rip 4 -pin OP1_or_OP2_i I0[4] -pin command_reg0_reg[34:0] Q[19] -pin copy number_words[4]
load net dina6_i_n_13 -attr @rip O[50] -pin dina5_i I1[50] -pin dina6_i O[50]
load net dina6_i_n_14 -attr @rip O[49] -pin dina5_i I1[49] -pin dina6_i O[49]
load net dina[53] -attr @rip O[53] -pin BR dina[53] -pin dina_i O[53]
load net dina3_i_n_10 -attr @rip O[53] -pin dina2_i I1[53] -pin dina3_i O[53]
load net mlen[4] -attr @rip 4 -pin SH mlen[4] -pin VERIFY1 ilen[4] -pin command_reg1_reg[34:0] Q[4]
load net dina6_i_n_15 -attr @rip O[48] -pin dina5_i I1[48] -pin dina6_i O[48]
load net dina3_i_n_11 -attr @rip O[52] -pin dina2_i I1[52] -pin dina3_i O[52]
load net dout_vmul[1] -attr @rip coeff4x_out[1] -pin VMUL0 coeff4x_out[1] -pin dina0_i I0[1]
load net doutb_ext[22] -attr @rip 22 -port doutb_ext[22] -pin doutb_ext[63:0]_OBUF_inst O[22]
load net dina6_i_n_16 -attr @rip O[47] -pin dina5_i I1[47] -pin dina6_i O[47]
load net dina3_i_n_12 -attr @rip O[51] -pin dina2_i I1[51] -pin dina3_i O[51]
load net dina_ext[43] -attr @rip dina_ext[43] -pin dina7_i I1[43] -port dina_ext[43]
load net rd_base_sel_addpack -pin AddPack0 read_base_sel -pin op2_sel_i I0
netloc rd_base_sel_addpack 1 14 6 6950 1440 7400J 1400 NJ 1400 NJ 1400 NJ 1400 8960
load net addra[9] -attr @rip O[9] -pin BR addra[9] -pin addra_i O[9]
load net dina6_i_n_17 -attr @rip O[46] -pin dina5_i I1[46] -pin dina6_i O[46]
load net OP3[5] -attr @rip 5 -pin addra_i I0[5] -pin command_reg0_reg[34:0] Q[30]
load net dina3_i_n_13 -attr @rip O[50] -pin dina2_i I1[50] -pin dina3_i O[50]
load net rd_address[0] -attr @rip O[0] -pin addrb_i I1[0] -pin rd_address_i O[0]
load net dina6_i_n_18 -attr @rip O[45] -pin dina5_i I1[45] -pin dina6_i O[45]
load net dina3_i_n_14 -attr @rip O[49] -pin dina2_i I1[49] -pin dina3_i O[49]
load net dina6_i_n_19 -attr @rip O[44] -pin dina5_i I1[44] -pin dina6_i O[44]
load net dina3_i_n_15 -attr @rip O[48] -pin dina2_i I1[48] -pin dina3_i O[48]
load net dout_vmul[35] -attr @rip coeff4x_out[35] -pin VMUL0 coeff4x_out[35] -pin dina0_i I0[35]
load net verify_true_wire -pin VERIFY1 verify_true -pin unpack0 verify_true
netloc verify_true_wire 1 4 1 1160
load net dina3_i_n_16 -attr @rip O[47] -pin dina2_i I1[47] -pin dina3_i O[47]
load net dina[25] -attr @rip O[25] -pin BR dina[25] -pin dina_i O[25]
load net dina3_i_n_17 -attr @rip O[46] -pin dina2_i I1[46] -pin dina3_i O[46]
load net dina_ext[38] -attr @rip dina_ext[38] -pin dina7_i I1[38] -port dina_ext[38]
load net dina3_i_n_18 -attr @rip O[45] -pin dina2_i I1[45] -pin dina3_i O[45]
load net addrb[5] -attr @rip O[5] -pin BR addrb[5] -pin addrb_i O[5]
load net unpack0|read_data[44] -attr @rip read_data[44] -attr @name read_data[44] -hierPin unpack0 read_data[44] -pin unpack0|op_buffer_i I0[44] -pin unpack0|v_buffer_reg[63:0] D[44]
load net dina_ext[4] -attr @rip dina_ext[4] -pin dina7_i I1[4] -port dina_ext[4]
load net dina3_i_n_19 -attr @rip O[44] -pin dina2_i I1[44] -pin dina3_i O[44]
load net doutb_ext_OBUF[36] -attr @rip doutb[36] -pin AddPack0 read_data[36] -pin AddRound0 read_data[36] -pin BC2PVEC read_data[36] -pin BR doutb[36] -pin CMOV1 read_data[36] -pin SH din[36] -pin Sampler data_in[36] -pin VERIFY1 din[36] -pin VMUL0 ram_data_out[36] -pin copy read_data[36] -pin doutb_ext[63:0]_OBUF_inst I[36] -pin unpack0 read_data[36]
load net dina[44] -attr @rip O[44] -pin BR dina[44] -pin dina_i O[44]
load net wt_address_unpack[2] -attr @rip write_address[2] -pin unpack0 write_address[2] -pin wt_address4_i I0[2]
load net address_ext[5] -attr @rip address_ext[5] -port address_ext[5] -pin rd_address8_i I1[5] -pin wt_address7_i I1[5]
load net command_in[21] -attr @rip command_in[21] -port command_in[21] -pin command_reg0_reg[34:0] D[21] -pin command_reg1_reg[34:0] D[21]
load net dout_copy[4] -attr @rip write_data[4] -pin copy write_data[4] -pin dina5_i I0[4]
load net wt_address_addround[2] -attr @rip write_address[2] -pin AddRound0 write_address[2] -pin wt_address1_i I0[2]
load net dout_addpack[29] -attr @rip write_data[29] -pin AddPack0 write_data[29] -pin dina2_i I0[29]
load net dina[50] -attr @rip O[50] -pin BR dina[50] -pin dina_i O[50]
load net mlen[1] -attr @rip 1 -pin SH mlen[1] -pin VERIFY1 ilen[1] -pin command_reg1_reg[34:0] Q[1]
load net dina_ext[28] -attr @rip dina_ext[28] -pin dina7_i I1[28] -port dina_ext[28]
load net dout_vmul[0] -attr @rip coeff4x_out[0] -pin VMUL0 coeff4x_out[0] -pin dina0_i I0[0]
load net doutb_ext[48] -attr @rip 48 -port doutb_ext[48] -pin doutb_ext[63:0]_OBUF_inst O[48]
load net dina3_i_n_20 -attr @rip O[43] -pin dina2_i I1[43] -pin dina3_i O[43]
load net dina_ext[42] -attr @rip dina_ext[42] -pin dina7_i I1[42] -port dina_ext[42]
load net dina[20] -attr @rip O[20] -pin BR dina[20] -pin dina_i O[20]
load net OP3[4] -attr @rip 4 -pin addra_i I0[4] -pin command_reg0_reg[34:0] Q[29]
load net dina3_i_n_21 -attr @rip O[42] -pin dina2_i I1[42] -pin dina3_i O[42]
load net rd_address_cmov[8] -attr @rip read_address[8] -pin CMOV1 read_address[8] -pin rd_address8_i I0[8]
load net wt_address2_i_n_0 -attr @rip O[9] -pin wt_address1_i I1[9] -pin wt_address2_i O[9]
load net dina3_i_n_22 -attr @rip O[41] -pin dina2_i I1[41] -pin dina3_i O[41]
load net wt_address2_i_n_1 -attr @rip O[8] -pin wt_address1_i I1[8] -pin wt_address2_i O[8]
load net dina3_i_n_23 -attr @rip O[40] -pin dina2_i I1[40] -pin dina3_i O[40]
load net dout_unpack[59] -attr @rip write_data[59] -pin dina4_i I0[59] -pin unpack0 write_data[59]
load net wt_address2_i_n_2 -attr @rip O[7] -pin wt_address1_i I1[7] -pin wt_address2_i O[7]
load net dina3_i_n_24 -attr @rip O[39] -pin dina2_i I1[39] -pin dina3_i O[39]
load net doutb_ext_OBUF[16] -attr @rip doutb[16] -pin AddPack0 read_data[16] -pin AddRound0 read_data[16] -pin BC2PVEC read_data[16] -pin BR doutb[16] -pin CMOV1 read_data[16] -pin SH din[16] -pin Sampler data_in[16] -pin VERIFY1 din[16] -pin VMUL0 ram_data_out[16] -pin copy read_data[16] -pin doutb_ext[63:0]_OBUF_inst I[16] -pin unpack0 read_data[16]
load net wt_address2_i_n_3 -attr @rip O[6] -pin wt_address1_i I1[6] -pin wt_address2_i O[6]
load net dina3_i_n_25 -attr @rip O[38] -pin dina2_i I1[38] -pin dina3_i O[38]
load net dout_vmul[36] -attr @rip coeff4x_out[36] -pin VMUL0 coeff4x_out[36] -pin dina0_i I0[36]
load net wt_address2_i_n_4 -attr @rip O[5] -pin wt_address1_i I1[5] -pin wt_address2_i O[5]
load net dina4_i_n_40 -attr @rip O[23] -pin dina3_i I1[23] -pin dina4_i O[23]
load net dina3_i_n_26 -attr @rip O[37] -pin dina2_i I1[37] -pin dina3_i O[37]
load net addrb[4] -attr @rip O[4] -pin BR addrb[4] -pin addrb_i O[4]
load net wt_address2_i_n_5 -attr @rip O[4] -pin wt_address1_i I1[4] -pin wt_address2_i O[4]
load net dina_ext[3] -attr @rip dina_ext[3] -pin dina7_i I1[3] -port dina_ext[3]
load net dina4_i_n_41 -attr @rip O[22] -pin dina3_i I1[22] -pin dina4_i O[22]
load net dina3_i_n_27 -attr @rip O[36] -pin dina2_i I1[36] -pin dina3_i O[36]
load net doutb_ext_OBUF[35] -attr @rip doutb[35] -pin AddPack0 read_data[35] -pin AddRound0 read_data[35] -pin BC2PVEC read_data[35] -pin BR doutb[35] -pin CMOV1 read_data[35] -pin SH din[35] -pin Sampler data_in[35] -pin VERIFY1 din[35] -pin VMUL0 ram_data_out[35] -pin copy read_data[35] -pin doutb_ext[63:0]_OBUF_inst I[35] -pin unpack0 read_data[35]
load net wt_address2_i_n_6 -attr @rip O[3] -pin wt_address1_i I1[3] -pin wt_address2_i O[3]
load net dina4_i_n_42 -attr @rip O[21] -pin dina3_i I1[21] -pin dina4_i O[21]
load net dina3_i_n_28 -attr @rip O[35] -pin dina2_i I1[35] -pin dina3_i O[35]
load net dina[43] -attr @rip O[43] -pin BR dina[43] -pin dina_i O[43]
load net wt_address2_i_n_7 -attr @rip O[2] -pin wt_address1_i I1[2] -pin wt_address2_i O[2]
load net unpack0|read_data[45] -attr @rip read_data[45] -attr @name read_data[45] -hierPin unpack0 read_data[45] -pin unpack0|op_buffer_i I0[45] -pin unpack0|v_buffer_reg[63:0] D[45]
load net dina4_i_n_43 -attr @rip O[20] -pin dina3_i I1[20] -pin dina4_i O[20]
load net dina3_i_n_29 -attr @rip O[34] -pin dina2_i I1[34] -pin dina3_i O[34]
load net dout_copy[56] -attr @rip write_data[56] -pin copy write_data[56] -pin dina5_i I0[56]
load net wt_address2_i_n_8 -attr @rip O[1] -pin wt_address1_i I1[1] -pin wt_address2_i O[1]
load net dina4_i_n_44 -attr @rip O[19] -pin dina3_i I1[19] -pin dina4_i O[19]
load net dout_copy[3] -attr @rip write_data[3] -pin copy write_data[3] -pin dina5_i I0[3]
load net wt_address2_i_n_9 -attr @rip O[0] -pin wt_address1_i I1[0] -pin wt_address2_i O[0]
load net dout_addround[39] -attr @rip write_data[39] -pin AddRound0 write_data[39] -pin dina1_i I0[39]
load net dina4_i_n_45 -attr @rip O[18] -pin dina3_i I1[18] -pin dina4_i O[18]
load net dout_unpack[30] -attr @rip write_data[30] -pin dina4_i I0[30] -pin unpack0 write_data[30]
load net dina4_i_n_46 -attr @rip O[17] -pin dina3_i I1[17] -pin dina4_i O[17]
load net address_ext[8] -attr @rip address_ext[8] -port address_ext[8] -pin rd_address8_i I1[8] -pin wt_address7_i I1[8]
load net dina[51] -attr @rip O[51] -pin BR dina[51] -pin dina_i O[51]
load net dina4_i_n_47 -attr @rip O[16] -pin dina3_i I1[16] -pin dina4_i O[16]
load net dout_sampler[48] -attr @rip sample_pack[48] -pin Sampler sample_pack[48] -pin dina6_i I0[48]
load net mlen[2] -attr @rip 2 -pin SH mlen[2] -pin VERIFY1 ilen[2] -pin command_reg1_reg[34:0] Q[2]
load net dina4_i_n_48 -attr @rip O[15] -pin dina3_i I1[15] -pin dina4_i O[15]
load net INS[3] -attr @rip 3 -pin INS_i S[3] -pin command_reg0_reg[34:0] Q[3] -pin pol_load_coeff4x_i A[3] -pin rate_type0_i A[3] -pin rate_type_i S[3] -pin rst_addpack_i A[3] -pin rst_addround_i A[3] -pin rst_bs2polvecp_i A[3] -pin rst_cmov_i A[3] -pin rst_copy_i A[3] -pin rst_sampler_i A[3] -pin rst_unpack_i A[3] -pin rst_verify_i A[3] -pin shake_intermediate_rst_i A[3] -pin shake_next_extract_i A[3]
load net dout_unpack[54] -attr @rip write_data[54] -pin dina4_i I0[54] -pin unpack0 write_data[54]
load net doutb_ext[20] -attr @rip 20 -port doutb_ext[20] -pin doutb_ext[63:0]_OBUF_inst O[20]
load net doutb_ext[47] -attr @rip 47 -port doutb_ext[47] -pin doutb_ext[63:0]_OBUF_inst O[47]
load net dina4_i_n_49 -attr @rip O[14] -pin dina3_i I1[14] -pin dina4_i O[14]
load net dina_ext[41] -attr @rip dina_ext[41] -pin dina7_i I1[41] -port dina_ext[41]
load net dout_shake[1] -attr @rip dout[1] -pin SH dout[1] -pin dina_i I0[1]
load net OP3[3] -attr @rip 3 -pin addra_i I0[3] -pin command_reg0_reg[34:0] Q[28]
load net dout_shake[28] -attr @rip dout[28] -pin SH dout[28] -pin dina_i I0[28]
load net dina3_i_n_30 -attr @rip O[33] -pin dina2_i I1[33] -pin dina3_i O[33]
load net dina3_i_n_31 -attr @rip O[32] -pin dina2_i I1[32] -pin dina3_i O[32]
load net dout_vmul[3] -attr @rip coeff4x_out[3] -pin VMUL0 coeff4x_out[3] -pin dina0_i I0[3]
load net dina[57] -attr @rip O[57] -pin BR dina[57] -pin dina_i O[57]
load net dina3_i_n_32 -attr @rip O[31] -pin dina2_i I1[31] -pin dina3_i O[31]
load net doutb_ext_OBUF[15] -attr @rip doutb[15] -pin AddPack0 read_data[15] -pin AddRound0 read_data[15] -pin BC2PVEC read_data[15] -pin BR doutb[15] -pin CMOV1 read_data[15] -pin SH din[15] -pin Sampler data_in[15] -pin VERIFY1 din[15] -pin VMUL0 ram_data_out[15] -pin copy read_data[15] -pin doutb_ext[63:0]_OBUF_inst I[15] -pin unpack0 read_data[15]
load net dina3_i_n_33 -attr @rip O[30] -pin dina2_i I1[30] -pin dina3_i O[30]
load net dout_bs2polvecp[19] -attr @rip write_data[19] -pin BC2PVEC write_data[19] -pin dina3_i I0[19]
load net dout_unpack[21] -attr @rip write_data[21] -pin dina4_i I0[21] -pin unpack0 write_data[21]
load net dina3_i_n_34 -attr @rip O[29] -pin dina2_i I1[29] -pin dina3_i O[29]
load net addrb[3] -attr @rip O[3] -pin BR addrb[3] -pin addrb_i O[3]
load net dina_ext[2] -attr @rip dina_ext[2] -pin dina7_i I1[2] -port dina_ext[2]
load net dina3_i_n_35 -attr @rip O[28] -pin dina2_i I1[28] -pin dina3_i O[28]
load net dout_vmul[37] -attr @rip coeff4x_out[37] -pin VMUL0 coeff4x_out[37] -pin dina0_i I0[37]
load net dina[42] -attr @rip O[42] -pin BR dina[42] -pin dina_i O[42]
load net dina4_i_n_50 -attr @rip O[13] -pin dina3_i I1[13] -pin dina4_i O[13]
load net dina3_i_n_36 -attr @rip O[27] -pin dina2_i I1[27] -pin dina3_i O[27]
load net dout_sampler[19] -attr @rip sample_pack[19] -pin Sampler sample_pack[19] -pin dina6_i I0[19]
load net dout_addpack[60] -attr @rip write_data[60] -pin AddPack0 write_data[60] -pin dina2_i I0[60]
load net dina4_i_n_51 -attr @rip O[12] -pin dina3_i I1[12] -pin dina4_i O[12]
load net dina3_i_n_37 -attr @rip O[26] -pin dina2_i I1[26] -pin dina3_i O[26]
load net dina4_i_n_52 -attr @rip O[11] -pin dina3_i I1[11] -pin dina4_i O[11]
load net dina3_i_n_38 -attr @rip O[25] -pin dina2_i I1[25] -pin dina3_i O[25]
load net dout_copy[2] -attr @rip write_data[2] -pin copy write_data[2] -pin dina5_i I0[2]
load net unpack0|read_data[46] -attr @rip read_data[46] -attr @name read_data[46] -hierPin unpack0 read_data[46] -pin unpack0|op_buffer_i I0[46] -pin unpack0|v_buffer_reg[63:0] D[46]
load net dout_addround[38] -attr @rip write_data[38] -pin AddRound0 write_data[38] -pin dina1_i I0[38]
load net dina4_i_n_53 -attr @rip O[10] -pin dina3_i I1[10] -pin dina4_i O[10]
load net dina3_i_n_39 -attr @rip O[24] -pin dina2_i I1[24] -pin dina3_i O[24]
load net dout_copy[57] -attr @rip write_data[57] -pin copy write_data[57] -pin dina5_i I0[57]
load net doutb_ext_OBUF[38] -attr @rip doutb[38] -pin AddPack0 read_data[38] -pin AddRound0 read_data[38] -pin BC2PVEC read_data[38] -pin BR doutb[38] -pin CMOV1 read_data[38] -pin SH din[38] -pin Sampler data_in[38] -pin VERIFY1 din[38] -pin VMUL0 ram_data_out[38] -pin copy read_data[38] -pin doutb_ext[63:0]_OBUF_inst I[38] -pin unpack0 read_data[38]
load net dina4_i_n_54 -attr @rip O[9] -pin dina3_i I1[9] -pin dina4_i O[9]
load net address_ext[7] -attr @rip address_ext[7] -port address_ext[7] -pin rd_address8_i I1[7] -pin wt_address7_i I1[7]
load net dina4_i_n_55 -attr @rip O[8] -pin dina3_i I1[8] -pin dina4_i O[8]
load net dina4_i_n_56 -attr @rip O[7] -pin dina3_i I1[7] -pin dina4_i O[7]
load net dout_unpack[53] -attr @rip write_data[53] -pin dina4_i I0[53] -pin unpack0 write_data[53]
load net dina4_i_n_57 -attr @rip O[6] -pin dina3_i I1[6] -pin dina4_i O[6]
load net dina_ext[40] -attr @rip dina_ext[40] -pin dina7_i I1[40] -port dina_ext[40]
load net dout_copy[63] -attr @rip write_data[63] -pin copy write_data[63] -pin dina5_i I0[63]
load net dout_sampler[49] -attr @rip sample_pack[49] -pin Sampler sample_pack[49] -pin dina6_i I0[49]
load net dout_shake[0] -attr @rip dout[0] -pin SH dout[0] -pin dina_i I0[0]
load net dina4_i_n_58 -attr @rip O[5] -pin dina3_i I1[5] -pin dina4_i O[5]
load net INS[4] -attr @rip 4 -pin INS_i S[4] -pin command_reg0_reg[34:0] Q[4] -pin pol_load_coeff4x_i A[4] -pin rate_type0_i A[4] -pin rate_type_i S[4] -pin rst_addpack_i A[4] -pin rst_addround_i A[4] -pin rst_bs2polvecp_i A[4] -pin rst_cmov_i A[4] -pin rst_copy_i A[4] -pin rst_sampler_i A[4] -pin rst_unpack_i A[4] -pin rst_verify_i A[4] -pin shake_intermediate_rst_i A[4] -pin shake_next_extract_i A[4]
load net rd_address_cmov[6] -attr @rip read_address[6] -pin CMOV1 read_address[6] -pin rd_address8_i I0[6]
load net dina4_i_n_0 -attr @rip O[63] -pin dina3_i I1[63] -pin dina4_i O[63]
load net dina4_i_n_59 -attr @rip O[4] -pin dina3_i I1[4] -pin dina4_i O[4]
load net dout_shake[10] -attr @rip dout[10] -pin SH dout[10] -pin dina_i I0[10]
load net dina4_i_n_1 -attr @rip O[62] -pin dina3_i I1[62] -pin dina4_i O[62]
load net dout_shake[29] -attr @rip dout[29] -pin SH dout[29] -pin dina_i I0[29]
load net dout_vmul[2] -attr @rip coeff4x_out[2] -pin VMUL0 coeff4x_out[2] -pin dina0_i I0[2]
load net dina[56] -attr @rip O[56] -pin BR dina[56] -pin dina_i O[56]
load net dina4_i_n_2 -attr @rip O[61] -pin dina3_i I1[61] -pin dina4_i O[61]
load net dina3_i_n_40 -attr @rip O[23] -pin dina2_i I1[23] -pin dina3_i O[23]
load net doutb_ext_OBUF[14] -attr @rip doutb[14] -pin AddPack0 read_data[14] -pin AddRound0 read_data[14] -pin BC2PVEC read_data[14] -pin BR doutb[14] -pin CMOV1 read_data[14] -pin SH din[14] -pin Sampler data_in[14] -pin VERIFY1 din[14] -pin VMUL0 ram_data_out[14] -pin copy read_data[14] -pin doutb_ext[63:0]_OBUF_inst I[14] -pin unpack0 read_data[14]
load net mlen[7] -attr @rip 7 -pin SH mlen[7] -pin VERIFY1 ilen[7] -pin command_reg1_reg[34:0] Q[7]
load net dina[22] -attr @rip O[22] -pin BR dina[22] -pin dina_i O[22]
load net dina4_i_n_3 -attr @rip O[60] -pin dina3_i I1[60] -pin dina4_i O[60]
load net dina3_i_n_41 -attr @rip O[22] -pin dina2_i I1[22] -pin dina3_i O[22]
load net dout_unpack[20] -attr @rip write_data[20] -pin dina4_i I0[20] -pin unpack0 write_data[20]
load net dina4_i_n_4 -attr @rip O[59] -pin dina3_i I1[59] -pin dina4_i O[59]
load net dina3_i_n_42 -attr @rip O[21] -pin dina2_i I1[21] -pin dina3_i O[21]
load net addrb[2] -attr @rip O[2] -pin BR addrb[2] -pin addrb_i O[2]
load net dina4_i_n_5 -attr @rip O[58] -pin dina3_i I1[58] -pin dina4_i O[58]
load net dina_ext[1] -attr @rip dina_ext[1] -pin dina7_i I1[1] -port dina_ext[1]
load net dina3_i_n_43 -attr @rip O[20] -pin dina2_i I1[20] -pin dina3_i O[20]
load net dina[41] -attr @rip O[41] -pin BR dina[41] -pin dina_i O[41]
load net dina4_i_n_6 -attr @rip O[57] -pin dina3_i I1[57] -pin dina4_i O[57]
load net dina3_i_n_44 -attr @rip O[19] -pin dina2_i I1[19] -pin dina3_i O[19]
load net dout_addpack[24] -attr @rip write_data[24] -pin AddPack0 write_data[24] -pin dina2_i I0[24]
load net dina4_i_n_7 -attr @rip O[56] -pin dina3_i I1[56] -pin dina4_i O[56]
load net dina3_i_n_45 -attr @rip O[18] -pin dina2_i I1[18] -pin dina3_i O[18]
load net dout_vmul[38] -attr @rip coeff4x_out[38] -pin VMUL0 coeff4x_out[38] -pin dina0_i I0[38]
load net dina4_i_n_8 -attr @rip O[55] -pin dina3_i I1[55] -pin dina4_i O[55]
load net dina3_i_n_46 -attr @rip O[17] -pin dina2_i I1[17] -pin dina3_i O[17]
load net dout_copy[1] -attr @rip write_data[1] -pin copy write_data[1] -pin dina5_i I0[1]
load net dina4_i_n_9 -attr @rip O[54] -pin dina3_i I1[54] -pin dina4_i O[54]
load net dout_addpack[61] -attr @rip write_data[61] -pin AddPack0 write_data[61] -pin dina2_i I0[61]
load net dout_addround[37] -attr @rip write_data[37] -pin AddRound0 write_data[37] -pin dina1_i I0[37]
load net dina3_i_n_47 -attr @rip O[16] -pin dina2_i I1[16] -pin dina3_i O[16]
load net doutb_ext_OBUF[37] -attr @rip doutb[37] -pin AddPack0 read_data[37] -pin AddRound0 read_data[37] -pin BC2PVEC read_data[37] -pin BR doutb[37] -pin CMOV1 read_data[37] -pin SH din[37] -pin Sampler data_in[37] -pin VERIFY1 din[37] -pin VMUL0 ram_data_out[37] -pin copy read_data[37] -pin doutb_ext[63:0]_OBUF_inst I[37] -pin unpack0 read_data[37]
load net dina3_i_n_48 -attr @rip O[15] -pin dina2_i I1[15] -pin dina3_i O[15]
load net unpack0|read_data[47] -attr @rip read_data[47] -attr @name read_data[47] -hierPin unpack0 read_data[47] -pin unpack0|op_buffer_i I0[47] -pin unpack0|v_buffer_reg[63:0] D[47]
load net dina3_i_n_49 -attr @rip O[14] -pin dina2_i I1[14] -pin dina3_i O[14]
load net dout_copy[58] -attr @rip write_data[58] -pin copy write_data[58] -pin dina5_i I0[58]
load net dout_sampler[46] -attr @rip sample_pack[46] -pin Sampler sample_pack[46] -pin dina6_i I0[46]
load net wt_address3_i_n_0 -attr @rip O[9] -pin wt_address2_i I1[9] -pin wt_address3_i O[9]
load net wt_address3_i_n_1 -attr @rip O[8] -pin wt_address2_i I1[8] -pin wt_address3_i O[8]
load net OP1_or_OP2[9] -attr @rip O[9] -pin OP1_or_OP2_i O[9] -pin addrb_i I0[9]
load net dout_copy[62] -attr @rip write_data[62] -pin copy write_data[62] -pin dina5_i I0[62]
load net wt_address3_i_n_2 -attr @rip O[7] -pin wt_address2_i I1[7] -pin wt_address3_i O[7]
load net OP3[1] -attr @rip 1 -pin addra_i I0[1] -pin command_reg0_reg[34:0] Q[26]
load net wt_address3_i_n_3 -attr @rip O[6] -pin wt_address2_i I1[6] -pin wt_address3_i O[6]
load net wt_address3_i_n_4 -attr @rip O[5] -pin wt_address2_i I1[5] -pin wt_address3_i O[5]
load net wt_address_shake[4] -attr @rip wt_address[4] -pin SH wt_address[4] -pin wt_address_i I0[4]
load net dout_unpack[56] -attr @rip write_data[56] -pin dina4_i I0[56] -pin unpack0 write_data[56]
load net doutb_ext[49] -attr @rip 49 -port doutb_ext[49] -pin doutb_ext[63:0]_OBUF_inst O[49]
load net rd_address_cmov[7] -attr @rip read_address[7] -pin CMOV1 read_address[7] -pin rd_address8_i I0[7]
load net wt_address3_i_n_5 -attr @rip O[4] -pin wt_address2_i I1[4] -pin wt_address3_i O[4]
load net dina[55] -attr @rip O[55] -pin BR dina[55] -pin dina_i O[55]
load net dout_cmov[40] -attr @rip write_data[40] -pin CMOV1 write_data[40] -pin dina7_i I0[40]
load net doutb_ext_OBUF[13] -attr @rip doutb[13] -pin AddPack0 read_data[13] -pin AddRound0 read_data[13] -pin BC2PVEC read_data[13] -pin BR doutb[13] -pin CMOV1 read_data[13] -pin SH din[13] -pin Sampler data_in[13] -pin VERIFY1 din[13] -pin VMUL0 ram_data_out[13] -pin copy read_data[13] -pin doutb_ext[63:0]_OBUF_inst I[13] -pin unpack0 read_data[13]
load net wt_address3_i_n_6 -attr @rip O[3] -pin wt_address2_i I1[3] -pin wt_address3_i O[3]
load net dina[21] -attr @rip O[21] -pin BR dina[21] -pin dina_i O[21]
load net wt_address3_i_n_7 -attr @rip O[2] -pin wt_address2_i I1[2] -pin wt_address3_i O[2]
load net addrb[1] -attr @rip O[1] -pin BR addrb[1] -pin addrb_i O[1]
load net mlen[8] -attr @rip 8 -pin SH mlen[8] -pin VERIFY1 ilen[8] -pin command_reg1_reg[34:0] Q[8]
load net wt_address3_i_n_8 -attr @rip O[1] -pin wt_address2_i I1[1] -pin wt_address3_i O[1]
load net dina_ext[0] -attr @rip dina_ext[0] -pin dina7_i I1[0] -port dina_ext[0]
load net dout_unpack[62] -attr @rip write_data[62] -pin dina4_i I0[62] -pin unpack0 write_data[62]
load net dout_vmul[5] -attr @rip coeff4x_out[5] -pin VMUL0 coeff4x_out[5] -pin dina0_i I0[5]
load net doutb_ext_OBUF[32] -attr @rip doutb[32] -pin AddPack0 read_data[32] -pin AddRound0 read_data[32] -pin BC2PVEC read_data[32] -pin BR doutb[32] -pin CMOV1 read_data[32] -pin SH din[32] -pin Sampler data_in[32] -pin VERIFY1 din[32] -pin VMUL0 ram_data_out[32] -pin copy read_data[32] -pin doutb_ext[63:0]_OBUF_inst I[32] -pin unpack0 read_data[32]
load net wt_address3_i_n_9 -attr @rip O[0] -pin wt_address2_i I1[0] -pin wt_address3_i O[0]
load net dout_unpack[23] -attr @rip write_data[23] -pin dina4_i I0[23] -pin unpack0 write_data[23]
load net dout_copy[0] -attr @rip write_data[0] -pin copy write_data[0] -pin dina5_i I0[0]
load net rd_address3_i_n_0 -attr @rip O[9] -pin rd_address2_i I1[9] -pin rd_address3_i O[9]
load net dout_addpack[25] -attr @rip write_data[25] -pin AddPack0 write_data[25] -pin dina2_i I0[25]
load net dout_addround[36] -attr @rip write_data[36] -pin AddRound0 write_data[36] -pin dina1_i I0[36]
load net dout_vmul[39] -attr @rip coeff4x_out[39] -pin VMUL0 coeff4x_out[39] -pin dina0_i I0[39]
load net rd_address3_i_n_1 -attr @rip O[8] -pin rd_address2_i I1[8] -pin rd_address3_i O[8]
load net rd_address3_i_n_2 -attr @rip O[7] -pin rd_address2_i I1[7] -pin rd_address3_i O[7]
load net dout_addpack[62] -attr @rip write_data[62] -pin AddPack0 write_data[62] -pin dina2_i I0[62]
load net rd_address3_i_n_3 -attr @rip O[6] -pin rd_address2_i I1[6] -pin rd_address3_i O[6]
load net dout_copy[10] -attr @rip write_data[10] -pin copy write_data[10] -pin dina5_i I0[10]
load net rd_address3_i_n_4 -attr @rip O[5] -pin rd_address2_i I1[5] -pin rd_address3_i O[5]
load net unpack0|read_data[48] -attr @rip read_data[48] -attr @name read_data[48] -hierPin unpack0 read_data[48] -pin unpack0|op_buffer_i I0[48] -pin unpack0|v_buffer_reg[63:0] D[48]
load net dout_copy[59] -attr @rip write_data[59] -pin copy write_data[59] -pin dina5_i I0[59]
load net dout_copy[61] -attr @rip write_data[61] -pin copy write_data[61] -pin dina5_i I0[61]
load net dout_sampler[47] -attr @rip sample_pack[47] -pin Sampler sample_pack[47] -pin dina6_i I0[47]
load net p_1_in -attr @rip O[4] -pin INS_i O[4] -pin enable_sha1_i I1
load net rd_address3_i_n_5 -attr @rip O[4] -pin rd_address2_i I1[4] -pin rd_address3_i O[4]
load net dout_vmul[61] -attr @rip coeff4x_out[61] -pin VMUL0 coeff4x_out[61] -pin dina0_i I0[61]
load net rd_address3_i_n_6 -attr @rip O[3] -pin rd_address2_i I1[3] -pin rd_address3_i O[3]
load net address_ext[9] -attr @rip address_ext[9] -port address_ext[9] -pin rd_address8_i I1[9] -pin wt_address7_i I1[9]
load net dout_unpack[33] -attr @rip write_data[33] -pin dina4_i I0[33] -pin unpack0 write_data[33]
load net rd_address3_i_n_7 -attr @rip O[2] -pin rd_address2_i I1[2] -pin rd_address3_i O[2]
load net OP3[2] -attr @rip 2 -pin addra_i I0[2] -pin command_reg0_reg[34:0] Q[27]
load net dout_unpack[55] -attr @rip write_data[55] -pin dina4_i I0[55] -pin unpack0 write_data[55]
load net rd_address3_i_n_8 -attr @rip O[1] -pin rd_address2_i I1[1] -pin rd_address3_i O[1]
load net dina[54] -attr @rip O[54] -pin BR dina[54] -pin dina_i O[54]
load net mlen[5] -attr @rip 5 -pin SH mlen[5] -pin VERIFY1 ilen[5] -pin command_reg1_reg[34:0] Q[5]
load net rd_address3_i_n_9 -attr @rip O[0] -pin rd_address2_i I1[0] -pin rd_address3_i O[0]
load net wt_address_shake[5] -attr @rip wt_address[5] -pin SH wt_address[5] -pin wt_address_i I0[5]
load net addrb[0] -attr @rip O[0] -pin BR addrb[0] -pin addrb_i O[0]
load net done_vmul -pin VMUL0 vector_mul_done -port done_vmul
netloc done_vmul 1 12 8 5670J 1210 NJ 1210 6850J 1130 7500J 1110 NJ 1110 8180J 960 NJ 960 NJ
load net dout_shake[12] -attr @rip dout[12] -pin SH dout[12] -pin dina_i I0[12]
load net dout_cmov[15] -attr @rip write_data[15] -pin CMOV1 write_data[15] -pin dina7_i I0[15]
load net dout_vmul[4] -attr @rip coeff4x_out[4] -pin VMUL0 coeff4x_out[4] -pin dina0_i I0[4]
load net doutb_ext_OBUF[31] -attr @rip doutb[31] -pin AddPack0 read_data[31] -pin AddRound0 read_data[31] -pin BC2PVEC read_data[31] -pin BR doutb[31] -pin CMOV1 read_data[31] -pin SH din[31] -pin Sampler data_in[31] -pin VERIFY1 din[31] -pin VMUL0 ram_data_out[31] -pin copy read_data[31] -pin doutb_ext[63:0]_OBUF_inst I[31] -pin unpack0 read_data[31]
load net dina6_i_n_0 -attr @rip O[63] -pin dina5_i I1[63] -pin dina6_i O[63]
load net dina6_i_n_1 -attr @rip O[62] -pin dina5_i I1[62] -pin dina6_i O[62]
load net dout_copy[52] -attr @rip write_data[52] -pin copy write_data[52] -pin dina5_i I0[52]
load net dout_unpack[22] -attr @rip write_data[22] -pin dina4_i I0[22] -pin unpack0 write_data[22]
load net dout_unpack[63] -attr @rip write_data[63] -pin dina4_i I0[63] -pin unpack0 write_data[63]
load net dina6_i_n_2 -attr @rip O[61] -pin dina5_i I1[61] -pin dina6_i O[61]
load net dina6_i_n_3 -attr @rip O[60] -pin dina5_i I1[60] -pin dina6_i O[60]
load net dina6_i_n_4 -attr @rip O[59] -pin dina5_i I1[59] -pin dina6_i O[59]
load net dout_bs2polvecp[39] -attr @rip write_data[39] -pin BC2PVEC write_data[39] -pin dina3_i I0[39]
load net dout_addpack[26] -attr @rip write_data[26] -pin AddPack0 write_data[26] -pin dina2_i I0[26]
load net dina6_i_n_5 -attr @rip O[58] -pin dina5_i I1[58] -pin dina6_i O[58]
load net dout_sampler[44] -attr @rip sample_pack[44] -pin Sampler sample_pack[44] -pin dina6_i I0[44]
load net dout_unpack[9] -attr @rip write_data[9] -pin dina4_i I0[9] -pin unpack0 write_data[9]
load net dina6_i_n_6 -attr @rip O[57] -pin dina5_i I1[57] -pin dina6_i O[57]
load net dout_cmov[63] -attr @rip write_data[63] -pin CMOV1 write_data[63] -pin dina7_i I0[63]
load net dina6_i_n_7 -attr @rip O[56] -pin dina5_i I1[56] -pin dina6_i O[56]
load net OP1_or_OP2[7] -attr @rip O[7] -pin OP1_or_OP2_i O[7] -pin addrb_i I0[7]
load net dout_addpack[63] -attr @rip write_data[63] -pin AddPack0 write_data[63] -pin dina2_i I0[63]
load net dina6_i_n_8 -attr @rip O[55] -pin dina5_i I1[55] -pin dina6_i O[55]
load net dout_copy[11] -attr @rip write_data[11] -pin copy write_data[11] -pin dina5_i I0[11]
load net dout_shake[24] -attr @rip dout[24] -pin SH dout[24] -pin dina_i I0[24]
load net dout_vmul[60] -attr @rip coeff4x_out[60] -pin VMUL0 coeff4x_out[60] -pin dina0_i I0[60]
load net unpack0|read_data[49] -attr @rip read_data[49] -attr @name read_data[49] -hierPin unpack0 read_data[49] -pin unpack0|op_buffer_i I0[49] -pin unpack0|v_buffer_reg[63:0] D[49]
load net dina6_i_n_9 -attr @rip O[54] -pin dina5_i I1[54] -pin dina6_i O[54]
load net wt_address_shake[2] -attr @rip wt_address[2] -pin SH wt_address[2] -pin wt_address_i I0[2]
load net unpack0|read_data[19] -attr @rip read_data[19] -attr @name read_data[19] -hierPin unpack0 read_data[19] -pin unpack0|op_buffer_i I0[19] -pin unpack0|v_buffer_reg[63:0] D[19]
load net dout_unpack[34] -attr @rip write_data[34] -pin dina4_i I0[34] -pin unpack0 write_data[34]
load net doutb_ext[0] -attr @rip 0 -port doutb_ext[0] -pin doutb_ext[63:0]_OBUF_inst O[0]
load net dout_shake[11] -attr @rip dout[11] -pin SH dout[11] -pin dina_i I0[11]
load net mlen[6] -attr @rip 6 -pin SH mlen[6] -pin VERIFY1 ilen[6] -pin command_reg1_reg[34:0] Q[6]
load net rst_addround -pin AddRound0 rst -pin dina1_i S -pin rd_address1_i S -pin rst_addround_i O -pin wea1_i S -pin wt_address1_i S
netloc rst_addround 1 12 3 5670 570 6070 N 6930
load net dout_cmov[14] -attr @rip write_data[14] -pin CMOV1 write_data[14] -pin dina7_i I0[14]
load net olen[13] -attr @rip 13 -pin SH olen[13] -pin command_reg1_reg[34:0] Q[29]
load net dout_copy[53] -attr @rip write_data[53] -pin copy write_data[53] -pin dina5_i I0[53]
load net doutb_ext_OBUF[34] -attr @rip doutb[34] -pin AddPack0 read_data[34] -pin AddRound0 read_data[34] -pin BC2PVEC read_data[34] -pin BR doutb[34] -pin CMOV1 read_data[34] -pin SH din[34] -pin Sampler data_in[34] -pin VERIFY1 din[34] -pin VMUL0 ram_data_out[34] -pin copy read_data[34] -pin doutb_ext[63:0]_OBUF_inst I[34] -pin unpack0 read_data[34]
load net dout_addround[62] -attr @rip write_data[62] -pin AddRound0 write_data[62] -pin dina1_i I0[62]
load net dout_bs2polvecp[0] -attr @rip write_data[0] -pin BC2PVEC write_data[0] -pin dina3_i I0[0]
load net dout_bs2polvecp[38] -attr @rip write_data[38] -pin BC2PVEC write_data[38] -pin dina3_i I0[38]
load net doutb_ext_OBUF[19] -attr @rip doutb[19] -pin AddPack0 read_data[19] -pin AddRound0 read_data[19] -pin BC2PVEC read_data[19] -pin BR doutb[19] -pin CMOV1 read_data[19] -pin SH din[19] -pin Sampler data_in[19] -pin VERIFY1 din[19] -pin VMUL0 ram_data_out[19] -pin copy read_data[19] -pin doutb_ext[63:0]_OBUF_inst I[19] -pin unpack0 read_data[19]
load net rd_base_sel_cmov -pin CMOV1 rd_base_sel -pin op2_sel3_i I0
netloc rd_base_sel_cmov 1 6 5 2440J 1570 NJ 1570 NJ 1570 NJ 1570 4450
load net shake_next_extract -pin SH shake_next_extract -pin shake_next_extract_i O
netloc shake_next_extract 1 14 1 6630J
load net dout_unpack[25] -attr @rip write_data[25] -pin dina4_i I0[25] -pin unpack0 write_data[25]
load net dout_unpack[8] -attr @rip write_data[8] -pin dina4_i I0[8] -pin unpack0 write_data[8]
load net dout_addpack[27] -attr @rip write_data[27] -pin AddPack0 write_data[27] -pin dina2_i I0[27]
load net dout_sampler[45] -attr @rip sample_pack[45] -pin Sampler sample_pack[45] -pin dina6_i I0[45]
load net rd_address_verify[1] -attr @rip rd_address[1] -pin VERIFY1 rd_address[1] -pin rd_address7_i I0[1]
load net OP1_or_OP2[8] -attr @rip O[8] -pin OP1_or_OP2_i O[8] -pin addrb_i I0[8]
load net dout_unpack[31] -attr @rip write_data[31] -pin dina4_i I0[31] -pin unpack0 write_data[31]
load net rd_base_sel_verify -pin VERIFY1 rd_base_sel -pin op2_sel2_i I0
netloc rd_base_sel_verify 1 4 8 1140J 1740 NJ 1740 NJ 1740 2790J 1800 NJ 1800 NJ 1800 NJ 1800 5130
load net OP3[0] -attr @rip 0 -pin addra_i I0[0] -pin command_reg0_reg[34:0] Q[25]
load net dout_copy[12] -attr @rip write_data[12] -pin copy write_data[12] -pin dina5_i I0[12]
load net dout_shake[25] -attr @rip dout[25] -pin SH dout[25] -pin dina_i I0[25]
load net wt_address_shake[3] -attr @rip wt_address[3] -pin SH wt_address[3] -pin wt_address_i I0[3]
load net dout_vmul[63] -attr @rip coeff4x_out[63] -pin VMUL0 coeff4x_out[63] -pin dina0_i I0[63]
load net doutb_ext[1] -attr @rip 1 -port doutb_ext[1] -pin doutb_ext[63:0]_OBUF_inst O[1]
load net wt_address_addpack[8] -attr @rip write_address[8] -pin AddPack0 write_address[8] -pin wt_address2_i I0[8]
load net wt_address7_i_n_0 -attr @rip O[9] -pin wt_address6_i I1[9] -pin wt_address7_i O[9]
load net wt_address7_i_n_1 -attr @rip O[8] -pin wt_address6_i I1[8] -pin wt_address7_i O[8]
load net dout_addpack[20] -attr @rip write_data[20] -pin AddPack0 write_data[20] -pin dina2_i I0[20]
load net wt_address7_i_n_2 -attr @rip O[7] -pin wt_address6_i I1[7] -pin wt_address7_i O[7]
load net dout_shake[14] -attr @rip dout[14] -pin SH dout[14] -pin dina_i I0[14]
load net olen[12] -attr @rip 12 -pin SH olen[12] -pin command_reg1_reg[34:0] Q[28]
load net wt_address7_i_n_3 -attr @rip O[6] -pin wt_address6_i I1[6] -pin wt_address7_i O[6]
load net dout_cmov[17] -attr @rip write_data[17] -pin CMOV1 write_data[17] -pin dina7_i I0[17]
load net doutb_ext_OBUF[33] -attr @rip doutb[33] -pin AddPack0 read_data[33] -pin AddRound0 read_data[33] -pin BC2PVEC read_data[33] -pin BR doutb[33] -pin CMOV1 read_data[33] -pin SH din[33] -pin Sampler data_in[33] -pin VERIFY1 din[33] -pin VMUL0 ram_data_out[33] -pin copy read_data[33] -pin doutb_ext[63:0]_OBUF_inst I[33] -pin unpack0 read_data[33]
load net wt_address7_i_n_4 -attr @rip O[5] -pin wt_address6_i I1[5] -pin wt_address7_i O[5]
load net dout_addround[61] -attr @rip write_data[61] -pin AddRound0 write_data[61] -pin dina1_i I0[61]
load net dout_bs2polvecp[37] -attr @rip write_data[37] -pin BC2PVEC write_data[37] -pin dina3_i I0[37]
load net doutb_ext_OBUF[18] -attr @rip doutb[18] -pin AddPack0 read_data[18] -pin AddRound0 read_data[18] -pin BC2PVEC read_data[18] -pin BR doutb[18] -pin CMOV1 read_data[18] -pin SH din[18] -pin Sampler data_in[18] -pin VERIFY1 din[18] -pin VMUL0 ram_data_out[18] -pin copy read_data[18] -pin doutb_ext[63:0]_OBUF_inst I[18] -pin unpack0 read_data[18]
load net wt_address7_i_n_5 -attr @rip O[4] -pin wt_address6_i I1[4] -pin wt_address7_i O[4]
load net dout_copy[54] -attr @rip write_data[54] -pin copy write_data[54] -pin dina5_i I0[54]
load net dout_sampler[42] -attr @rip sample_pack[42] -pin Sampler sample_pack[42] -pin dina6_i I0[42]
load net dout_unpack[24] -attr @rip write_data[24] -pin dina4_i I0[24] -pin unpack0 write_data[24]
load net doutb_ext[29] -attr @rip 29 -port doutb_ext[29] -pin doutb_ext[63:0]_OBUF_inst O[29]
load net wt_address7_i_n_6 -attr @rip O[3] -pin wt_address6_i I1[3] -pin wt_address7_i O[3]
load net dout_bs2polvecp[1] -attr @rip write_data[1] -pin BC2PVEC write_data[1] -pin dina3_i I0[1]
load net dout_cmov[61] -attr @rip write_data[61] -pin CMOV1 write_data[61] -pin dina7_i I0[61]
load net wt_address7_i_n_7 -attr @rip O[2] -pin wt_address6_i I1[2] -pin wt_address7_i O[2]
load net OP1_or_OP2[5] -attr @rip O[5] -pin OP1_or_OP2_i O[5] -pin addrb_i I0[5]
load net rd_address_verify[0] -attr @rip rd_address[0] -pin VERIFY1 rd_address[0] -pin rd_address7_i I0[0]
load net wt_address7_i_n_8 -attr @rip O[1] -pin wt_address6_i I1[1] -pin wt_address7_i O[1]
load net dout_unpack[18] -attr @rip write_data[18] -pin dina4_i I0[18] -pin unpack0 write_data[18]
load net wt_address7_i_n_9 -attr @rip O[0] -pin wt_address6_i I1[0] -pin wt_address7_i O[0]
load net <const0> -ground -pin INS_i I0[7] -pin INS_i I0[6] -pin INS_i I0[5] -pin INS_i I0[4] -pin INS_i I0[3] -pin INS_i I0[2] -pin INS_i I0[1] -pin INS_i I1[7] -pin INS_i I1[6] -pin INS_i I1[5] -pin INS_i I1[4] -pin INS_i I1[3] -pin INS_i I1[2] -pin INS_i I1[0] -pin INS_i I2[7] -pin INS_i I2[6] -pin INS_i I2[5] -pin INS_i I2[4] -pin INS_i I2[3] -pin INS_i I2[1] -pin INS_i I2[0] -pin INS_i I3[7] -pin INS_i I3[6] -pin INS_i I3[5] -pin INS_i I3[4] -pin INS_i I3[2] -pin INS_i I3[1] -pin INS_i I3[0] -pin INS_i I4[7] -pin INS_i I4[6] -pin INS_i I4[5] -pin INS_i I4[3] -pin INS_i I4[2] -pin INS_i I4[1] -pin INS_i I4[0] -pin INS_i I5[7] -pin INS_i I5[6] -pin INS_i I5[4] -pin INS_i I5[3] -pin INS_i I5[2] -pin INS_i I5[1] -pin INS_i I5[0] -pin INS_i I6[7] -pin INS_i I6[5] -pin INS_i I6[4] -pin INS_i I6[3] -pin INS_i I6[2] -pin INS_i I6[1] -pin INS_i I6[0] -pin INS_i I7[6] -pin INS_i I7[5] -pin INS_i I7[4] -pin INS_i I7[3] -pin INS_i I7[2] -pin INS_i I7[1] -pin INS_i I7[0] -pin SH mlen[31] -pin SH mlen[30] -pin SH mlen[29] -pin SH mlen[28] -pin SH mlen[27] -pin SH mlen[26] -pin SH mlen[25] -pin SH mlen[24] -pin SH mlen[23] -pin SH mlen[22] -pin SH mlen[21] -pin SH mlen[20] -pin SH mlen[19] -pin SH mlen[18] -pin SH mlen[17] -pin SH mlen[16] -pin SH olen[31] -pin SH olen[30] -pin SH olen[29] -pin SH olen[28] -pin SH olen[27] -pin SH olen[26] -pin SH olen[25] -pin SH olen[24] -pin SH olen[23] -pin SH olen[22] -pin SH olen[21] -pin SH olen[20] -pin SH olen[19] -pin SH olen[18] -pin SH olen[17] -pin SH olen[16] -pin clear_sha0_i I1 -pin done_timer_OBUF_inst I -pin op2_sel3_i I1 -pin rate_type_i I0[1] -pin rd_address0_i I0[9] -pin rd_address1_i I0[9] -pin rd_address2_i I0[9] -pin rd_address3_i I0[9] -pin rd_address4_i I0[9] -pin rd_address5_i I0[9] -pin rd_address6_i I0[9] -pin rd_address7_i I0[9] -pin rd_address8_i I0[9] -pin rd_address_i I0[9] -pin rst_vmul_i I0 -pin wt_address0_i I0[9] -pin wt_address1_i I0[9] -pin wt_address2_i I0[9] -pin wt_address3_i I0[9] -pin wt_address4_i I0[9] -pin wt_address5_i I0[9] -pin wt_address6_i I0[9] -pin wt_address7_i I0[9] -pin wt_address_i I0[9]
load net dout_unpack[32] -attr @rip write_data[32] -pin dina4_i I0[32] -pin unpack0 write_data[32]
load net rd_address_vmul[7] -attr @rip read_address[7] -pin VMUL0 read_address[7] -pin rd_address0_i I0[7]
load net dina_ext[9] -attr @rip dina_ext[9] -pin dina7_i I1[9] -port dina_ext[9]
load net dout_copy[13] -attr @rip write_data[13] -pin copy write_data[13] -pin dina5_i I0[13]
load net dout_shake[26] -attr @rip dout[26] -pin SH dout[26] -pin dina_i I0[26]
load net dout_vmul[62] -attr @rip coeff4x_out[62] -pin VMUL0 coeff4x_out[62] -pin dina0_i I0[62]
load net dina_ext[30] -attr @rip dina_ext[30] -pin dina7_i I1[30] -port dina_ext[30]
load net rd_address_addpack[2] -attr @rip read_address[2] -pin AddPack0 read_address[2] -pin rd_address2_i I0[2]
load net doutb_ext[2] -attr @rip 2 -port doutb_ext[2] -pin doutb_ext[63:0]_OBUF_inst O[2]
load net doutb_ext_OBUF[20] -attr @rip doutb[20] -pin AddPack0 read_data[20] -pin AddRound0 read_data[20] -pin BC2PVEC read_data[20] -pin BR doutb[20] -pin CMOV1 read_data[20] -pin SH din[20] -pin Sampler data_in[20] -pin VERIFY1 din[20] -pin VMUL0 ram_data_out[20] -pin copy read_data[20] -pin doutb_ext[63:0]_OBUF_inst I[20] -pin unpack0 read_data[20]
load net command_in[28] -attr @rip command_in[28] -port command_in[28] -pin command_reg0_reg[34:0] D[28] -pin command_reg1_reg[34:0] D[28]
load net dout_unpack[28] -attr @rip write_data[28] -pin dina4_i I0[28] -pin unpack0 write_data[28]
load net dout_shake[13] -attr @rip dout[13] -pin SH dout[13] -pin dina_i I0[13]
load net dout_vmul[59] -attr @rip coeff4x_out[59] -pin VMUL0 coeff4x_out[59] -pin dina0_i I0[59]
load net wt_address_shake[8] -attr @rip wt_address[8] -pin SH wt_address[8] -pin wt_address_i I0[8]
load net dout_addpack[21] -attr @rip write_data[21] -pin AddPack0 write_data[21] -pin dina2_i I0[21]
load net dout_cmov[16] -attr @rip write_data[16] -pin CMOV1 write_data[16] -pin dina7_i I0[16]
load net dina[59] -attr @rip O[59] -pin BR dina[59] -pin dina_i O[59]
load net dout_addround[60] -attr @rip write_data[60] -pin AddRound0 write_data[60] -pin dina1_i I0[60]
load net dout_shake[7] -attr @rip dout[7] -pin SH dout[7] -pin dina_i I0[7]
load net doutb_ext_OBUF[17] -attr @rip doutb[17] -pin AddPack0 read_data[17] -pin AddRound0 read_data[17] -pin BC2PVEC read_data[17] -pin BR doutb[17] -pin CMOV1 read_data[17] -pin SH din[17] -pin Sampler data_in[17] -pin VERIFY1 din[17] -pin VMUL0 ram_data_out[17] -pin copy read_data[17] -pin doutb_ext[63:0]_OBUF_inst I[17] -pin unpack0 read_data[17]
load net doutb_ext[28] -attr @rip 28 -port doutb_ext[28] -pin doutb_ext[63:0]_OBUF_inst O[28]
load net olen[15] -attr @rip 15 -pin SH olen[15] -pin command_reg1_reg[34:0] Q[31]
load net dout_copy[55] -attr @rip write_data[55] -pin copy write_data[55] -pin dina5_i I0[55]
load net dout_sampler[43] -attr @rip sample_pack[43] -pin Sampler sample_pack[43] -pin dina6_i I0[43]
load net dina[37] -attr @rip O[37] -pin BR dina[37] -pin dina_i O[37]
load net dout_cmov[62] -attr @rip write_data[62] -pin CMOV1 write_data[62] -pin dina7_i I0[62]
load net dout_unpack[17] -attr @rip write_data[17] -pin dina4_i I0[17] -pin unpack0 write_data[17]
load net OP1_or_OP2[6] -attr @rip O[6] -pin OP1_or_OP2_i O[6] -pin addrb_i I0[6]
load net <const1> -power -pin INS_i I0[0] -pin INS_i I1[1] -pin INS_i I2[2] -pin INS_i I3[3] -pin INS_i I4[4] -pin INS_i I5[5] -pin INS_i I6[6] -pin INS_i I7[7] -pin rate_type_i I0[0] -pin rst_vmul_i I1
load net dout_copy[32] -attr @rip write_data[32] -pin copy write_data[32] -pin dina5_i I0[32]
load net dout_unpack[61] -attr @rip write_data[61] -pin dina4_i I0[61] -pin unpack0 write_data[61]
load net rd_address_vmul[8] -attr @rip read_address[8] -pin VMUL0 read_address[8] -pin rd_address0_i I0[8]
load net wt_address_addpack[6] -attr @rip write_address[6] -pin AddPack0 write_address[6] -pin wt_address2_i I0[6]
load net dout_copy[14] -attr @rip write_data[14] -pin copy write_data[14] -pin dina5_i I0[14]
load net dout_shake[27] -attr @rip dout[27] -pin SH dout[27] -pin dina_i I0[27]
load net enable_sha -pin clear_sha0_i I0 -pin dina_i S -pin enable_sha_i O -pin rd_address_i S -pin wea_i S -pin wt_address_i S
netloc enable_sha 1 12 5 5650 1540 6230J 1610 NJ 1610 7360 N 7840
load net rd_address_addpack[1] -attr @rip read_address[1] -pin AddPack0 read_address[1] -pin rd_address2_i I0[1]
load net dina_ext[31] -attr @rip dina_ext[31] -pin dina7_i I1[31] -port dina_ext[31]
load net rd_base_sel_unpack -pin op2_sel0_i I0 -pin unpack0 read_base_sel
netloc rd_base_sel_unpack 1 5 9 1980J 1320 NJ 1320 2850J 1330 NJ 1330 NJ 1330 4550J 1310 NJ 1310 NJ 1310 6110
load net dout_bs2polvecp[51] -attr @rip write_data[51] -pin BC2PVEC write_data[51] -pin dina3_i I0[51]
load net dout_copy[40] -attr @rip write_data[40] -pin copy write_data[40] -pin dina5_i I0[40]
load net doutb_ext[3] -attr @rip 3 -port doutb_ext[3] -pin doutb_ext[63:0]_OBUF_inst O[3]
load net doutb_ext_OBUF[21] -attr @rip doutb[21] -pin AddPack0 read_data[21] -pin AddRound0 read_data[21] -pin BC2PVEC read_data[21] -pin BR doutb[21] -pin CMOV1 read_data[21] -pin SH din[21] -pin Sampler data_in[21] -pin VERIFY1 din[21] -pin VMUL0 ram_data_out[21] -pin copy read_data[21] -pin doutb_ext[63:0]_OBUF_inst I[21] -pin unpack0 read_data[21]
load net rd_address_copy[8] -attr @rip read_address[8] -pin copy read_address[8] -pin rd_address5_i I0[8]
load net command_in[29] -attr @rip command_in[29] -port command_in[29] -pin command_reg0_reg[34:0] D[29] -pin command_reg1_reg[34:0] D[29]
load net dout_unpack[29] -attr @rip write_data[29] -pin dina4_i I0[29] -pin unpack0 write_data[29]
load net dina[58] -attr @rip O[58] -pin BR dina[58] -pin dina_i O[58]
load net dout_shake[6] -attr @rip dout[6] -pin SH dout[6] -pin dina_i I0[6]
load net dout_addpack[22] -attr @rip write_data[22] -pin AddPack0 write_data[22] -pin dina2_i I0[22]
load net doutb_ext[27] -attr @rip 27 -port doutb_ext[27] -pin doutb_ext[63:0]_OBUF_inst O[27]
load net olen[14] -attr @rip 14 -pin SH olen[14] -pin command_reg1_reg[34:0] Q[30]
load net wt_address0_i_n_0 -attr @rip O[9] -pin wt_address0_i O[9] -pin wt_address_i I1[9]
load net dout_cmov[19] -attr @rip write_data[19] -pin CMOV1 write_data[19] -pin dina7_i I0[19]
load net wt_address0_i_n_1 -attr @rip O[8] -pin wt_address0_i O[8] -pin wt_address_i I1[8]
load net dina[36] -attr @rip O[36] -pin BR dina[36] -pin dina_i O[36]
load net dout_bs2polvecp[41] -attr @rip write_data[41] -pin BC2PVEC write_data[41] -pin dina3_i I0[41]
load net wt_address0_i_n_2 -attr @rip O[7] -pin wt_address0_i O[7] -pin wt_address_i I1[7]
load net wt_address0_i_n_3 -attr @rip O[6] -pin wt_address0_i O[6] -pin wt_address_i I1[6]
load net wt_address0_i_n_4 -attr @rip O[5] -pin wt_address0_i O[5] -pin wt_address_i I1[5]
load net dout_unpack[60] -attr @rip write_data[60] -pin dina4_i I0[60] -pin unpack0 write_data[60]
load net dout_vmul[19] -attr @rip coeff4x_out[19] -pin VMUL0 coeff4x_out[19] -pin dina0_i I0[19]
load net wt_address0_i_n_5 -attr @rip O[4] -pin wt_address0_i O[4] -pin wt_address_i I1[4]
load net wt_address0_i_n_6 -attr @rip O[3] -pin wt_address0_i O[3] -pin wt_address_i I1[3]
load net dout_copy[33] -attr @rip write_data[33] -pin copy write_data[33] -pin dina5_i I0[33]
load net wt_address0_i_n_7 -attr @rip O[2] -pin wt_address0_i O[2] -pin wt_address_i I1[2]
load net rd_address_addpack[0] -attr @rip read_address[0] -pin AddPack0 read_address[0] -pin rd_address2_i I0[0]
load net wt_address0_i_n_8 -attr @rip O[1] -pin wt_address0_i O[1] -pin wt_address_i I1[1]
load net wt_address0_i_n_9 -attr @rip O[0] -pin wt_address0_i O[0] -pin wt_address_i I1[0]
load net wt_address_addpack[7] -attr @rip write_address[7] -pin AddPack0 write_address[7] -pin wt_address2_i I0[7]
load net command_in[26] -attr @rip command_in[26] -port command_in[26] -pin command_reg0_reg[34:0] D[26] -pin command_reg1_reg[34:0] D[26]
load net dout_copy[15] -attr @rip write_data[15] -pin copy write_data[15] -pin dina5_i I0[15]
load net dout_unpack[26] -attr @rip write_data[26] -pin dina4_i I0[26] -pin unpack0 write_data[26]
load net dina_ext[32] -attr @rip dina_ext[32] -pin dina7_i I1[32] -port dina_ext[32]
load net wt_address_shake[6] -attr @rip wt_address[6] -pin SH wt_address[6] -pin wt_address_i I0[6]
load net wt_address_cmov[4] -attr @rip write_address[4] -pin CMOV1 write_address[4] -pin wt_address7_i I0[4]
load net wt_address_vmul[5] -attr @rip write_address[5] -pin VMUL0 write_address[5] -pin wt_address0_i I0[5]
load net unpack0|read_data[30] -attr @rip read_data[30] -attr @name read_data[30] -hierPin unpack0 read_data[30] -pin unpack0|op_buffer_i I0[30] -pin unpack0|v_buffer_reg[63:0] D[30]
load net dout_bs2polvecp[52] -attr @rip write_data[52] -pin BC2PVEC write_data[52] -pin dina3_i I0[52]
load net doutb_ext[4] -attr @rip 4 -port doutb_ext[4] -pin doutb_ext[63:0]_OBUF_inst O[4]
load net dout_unpack[4] -attr @rip write_data[4] -pin dina4_i I0[4] -pin unpack0 write_data[4]
load net doutb_ext[26] -attr @rip 26 -port doutb_ext[26] -pin doutb_ext[63:0]_OBUF_inst O[26]
load net dout_addpack[23] -attr @rip write_data[23] -pin AddPack0 write_data[23] -pin dina2_i I0[23]
load net done_shake -pin SH done -port done_shake
netloc done_shake 1 15 5 7380J 1610 NJ 1610 NJ 1610 NJ 1610 NJ
load net dout_cmov[18] -attr @rip write_data[18] -pin CMOV1 write_data[18] -pin dina7_i I0[18]
load net doutb_ext_OBUF[49] -attr @rip doutb[49] -pin AddPack0 read_data[49] -pin AddRound0 read_data[49] -pin BC2PVEC read_data[49] -pin BR doutb[49] -pin CMOV1 read_data[49] -pin SH din[49] -pin Sampler data_in[49] -pin VERIFY1 din[49] -pin VMUL0 ram_data_out[49] -pin copy read_data[49] -pin doutb_ext[63:0]_OBUF_inst I[49] -pin unpack0 read_data[49]
load net unpack0|read_data[59] -attr @rip read_data[59] -attr @name read_data[59] -hierPin unpack0 read_data[59] -pin unpack0|op_buffer_i I0[59] -pin unpack0|v_buffer_reg[63:0] D[59]
load net dout_bs2polvecp[40] -attr @rip write_data[40] -pin BC2PVEC write_data[40] -pin dina3_i I0[40]
load net dout_cmov[60] -attr @rip write_data[60] -pin CMOV1 write_data[60] -pin dina7_i I0[60]
load net dout_shake[9] -attr @rip dout[9] -pin SH dout[9] -pin dina_i I0[9]
load net dout_vmul[40] -attr @rip coeff4x_out[40] -pin VMUL0 coeff4x_out[40] -pin dina0_i I0[40]
load net doutb_ext[60] -attr @rip 60 -port doutb_ext[60] -pin doutb_ext[63:0]_OBUF_inst O[60]
load net dout_copy[30] -attr @rip write_data[30] -pin copy write_data[30] -pin dina5_i I0[30]
load net dina[39] -attr @rip O[39] -pin BR dina[39] -pin dina_i O[39]
load net dout_bs2polvecp[4] -attr @rip write_data[4] -pin BC2PVEC write_data[4] -pin dina3_i I0[4]
load net dout_unpack[19] -attr @rip write_data[19] -pin dina4_i I0[19] -pin unpack0 write_data[19]
load net OP1_or_OP2[2] -attr @rip O[2] -pin OP1_or_OP2_i O[2] -pin addrb_i I0[2]
load net dout_sampler[30] -attr @rip sample_pack[30] -pin Sampler sample_pack[30] -pin dina6_i I0[30]
load net wt_address[9] -attr @rip O[9] -pin addra_i I1[9] -pin wt_address_i O[9]
load net rd_address_verify[5] -attr @rip rd_address[5] -pin VERIFY1 rd_address[5] -pin rd_address7_i I0[5]
load net dina5_i_n_0 -attr @rip O[63] -pin dina4_i I1[63] -pin dina5_i O[63]
load net command_in[27] -attr @rip command_in[27] -port command_in[27] -pin command_reg0_reg[34:0] D[27] -pin command_reg1_reg[34:0] D[27]
load net dina5_i_n_1 -attr @rip O[62] -pin dina4_i I1[62] -pin dina5_i O[62]
load net done_bs2polvecp -pin BC2PVEC done -port done_bs2polvecp
netloc done_bs2polvecp 1 11 9 NJ 140 NJ 140 NJ 140 NJ 140 NJ 140 NJ 140 NJ 140 NJ 140 NJ
load net dout_unpack[27] -attr @rip write_data[27] -pin dina4_i I0[27] -pin unpack0 write_data[27]
load net rst_addpack -pin AddPack0 rst -pin dina2_i S -pin op2_sel_i S -pin rd_address2_i S -pin rst_addpack_i O -pin wea2_i S -pin wt_address2_i S
netloc rst_addpack 1 12 7 5630 N 6210 N 6730 N NJ 1420 NJ 1420 NJ 1420 8550
load net wt_address_cmov[3] -attr @rip write_address[3] -pin CMOV1 write_address[3] -pin wt_address7_i I0[3]
load net wt_address_vmul[4] -attr @rip write_address[4] -pin VMUL0 write_address[4] -pin wt_address0_i I0[4]
load net dina5_i_n_2 -attr @rip O[61] -pin dina4_i I1[61] -pin dina5_i O[61]
load net dina_ext[33] -attr @rip dina_ext[33] -pin dina7_i I1[33] -port dina_ext[33]
load net wt_address_shake[7] -attr @rip wt_address[7] -pin SH wt_address[7] -pin wt_address_i I0[7]
load net dina5_i_n_3 -attr @rip O[60] -pin dina4_i I1[60] -pin dina5_i O[60]
load net doutb_ext[25] -attr @rip 25 -port doutb_ext[25] -pin doutb_ext[63:0]_OBUF_inst O[25]
load net dina5_i_n_4 -attr @rip O[59] -pin dina4_i I1[59] -pin dina5_i O[59]
load net dout_bs2polvecp[53] -attr @rip write_data[53] -pin BC2PVEC write_data[53] -pin dina3_i I0[53]
load net dout_copy[42] -attr @rip write_data[42] -pin copy write_data[42] -pin dina5_i I0[42]
load net doutb_ext[5] -attr @rip 5 -port doutb_ext[5] -pin doutb_ext[63:0]_OBUF_inst O[5]
load net dina5_i_n_5 -attr @rip O[58] -pin dina4_i I1[58] -pin dina5_i O[58]
load net dout_unpack[5] -attr @rip write_data[5] -pin dina4_i I0[5] -pin unpack0 write_data[5]
load net doutb_ext_OBUF[48] -attr @rip doutb[48] -pin AddPack0 read_data[48] -pin AddRound0 read_data[48] -pin BC2PVEC read_data[48] -pin BR doutb[48] -pin CMOV1 read_data[48] -pin SH din[48] -pin Sampler data_in[48] -pin VERIFY1 din[48] -pin VMUL0 ram_data_out[48] -pin copy read_data[48] -pin doutb_ext[63:0]_OBUF_inst I[48] -pin unpack0 read_data[48]
load net unpack0|read_data[58] -attr @rip read_data[58] -attr @name read_data[58] -hierPin unpack0 read_data[58] -pin unpack0|op_buffer_i I0[58] -pin unpack0|v_buffer_reg[63:0] D[58]
load net dina5_i_n_6 -attr @rip O[57] -pin dina4_i I1[57] -pin dina5_i O[57]
load net dout_shake[8] -attr @rip dout[8] -pin SH dout[8] -pin dina_i I0[8]
load net dina5_i_n_7 -attr @rip O[56] -pin dina4_i I1[56] -pin dina5_i O[56]
load net dina5_i_n_8 -attr @rip O[55] -pin dina4_i I1[55] -pin dina5_i O[55]
load net dina5_i_n_9 -attr @rip O[54] -pin dina4_i I1[54] -pin dina5_i O[54]
load net dout_vmul[17] -attr @rip coeff4x_out[17] -pin VMUL0 coeff4x_out[17] -pin dina0_i I0[17]
load net dina[38] -attr @rip O[38] -pin BR dina[38] -pin dina_i O[38]
load net dout_unpack[43] -attr @rip write_data[43] -pin dina4_i I0[43] -pin unpack0 write_data[43]
load net dout_vmul[41] -attr @rip coeff4x_out[41] -pin VMUL0 coeff4x_out[41] -pin dina0_i I0[41]
load net dout_copy[31] -attr @rip write_data[31] -pin copy write_data[31] -pin dina5_i I0[31]
load net dout_shake[50] -attr @rip dout[50] -pin SH dout[50] -pin dina_i I0[50]
load net mlen[0] -attr @rip 0 -pin SH mlen[0] -pin VERIFY1 ilen[0] -pin command_reg1_reg[34:0] Q[0]
load net OP1_or_OP2[1] -attr @rip O[1] -pin OP1_or_OP2_i O[1] -pin addrb_i I0[1]
load net dout_bs2polvecp[5] -attr @rip write_data[5] -pin BC2PVEC write_data[5] -pin dina3_i I0[5]
load net rd_address_verify[4] -attr @rip rd_address[4] -pin VERIFY1 rd_address[4] -pin rd_address7_i I0[4]
load net dout_sampler[31] -attr @rip sample_pack[31] -pin Sampler sample_pack[31] -pin dina6_i I0[31]
load net dout_addpack[39] -attr @rip write_data[39] -pin AddPack0 write_data[39] -pin dina2_i I0[39]
load net rd_address_copy[5] -attr @rip read_address[5] -pin copy read_address[5] -pin rd_address5_i I0[5]
load net dout_copy[9] -attr @rip write_data[9] -pin copy write_data[9] -pin dina5_i I0[9]
load net wt_address_cmov[2] -attr @rip write_address[2] -pin CMOV1 write_address[2] -pin wt_address7_i I0[2]
load net wt_address_vmul[3] -attr @rip write_address[3] -pin VMUL0 write_address[3] -pin wt_address0_i I0[3]
load net dina_ext[34] -attr @rip dina_ext[34] -pin dina7_i I1[34] -port dina_ext[34]
load net dina3_i_n_50 -attr @rip O[13] -pin dina2_i I1[13] -pin dina3_i O[13]
load net dina_ext[63] -attr @rip dina_ext[63] -pin dina7_i I1[63] -port dina_ext[63]
load net dout_copy[41] -attr @rip write_data[41] -pin copy write_data[41] -pin dina5_i I0[41]
load net olen[11] -attr @rip 11 -pin SH olen[11] -pin command_reg1_reg[34:0] Q[27]
load net dina3_i_n_51 -attr @rip O[12] -pin dina2_i I1[12] -pin dina3_i O[12]
load net dout_sampler[2] -attr @rip sample_pack[2] -pin Sampler sample_pack[2] -pin dina6_i I0[2]
load net unpack0|read_data[57] -attr @rip read_data[57] -attr @name read_data[57] -hierPin unpack0 read_data[57] -pin unpack0|op_buffer_i I0[57] -pin unpack0|v_buffer_reg[63:0] D[57]
load net unpack0|read_data[32] -attr @rip read_data[32] -attr @name read_data[32] -hierPin unpack0 read_data[32] -pin unpack0|op_buffer_i I0[32] -pin unpack0|v_buffer_reg[63:0] D[32]
load net dina3_i_n_52 -attr @rip O[11] -pin dina2_i I1[11] -pin dina3_i O[11]
load net dout_bs2polvecp[54] -attr @rip write_data[54] -pin BC2PVEC write_data[54] -pin dina3_i I0[54]
load net doutb_ext[6] -attr @rip 6 -port doutb_ext[6] -pin doutb_ext[63:0]_OBUF_inst O[6]
load net dina3_i_n_53 -attr @rip O[10] -pin dina2_i I1[10] -pin dina3_i O[10]
load net dout_unpack[6] -attr @rip write_data[6] -pin dina4_i I0[6] -pin unpack0 write_data[6]
load net dina3_i_n_0 -attr @rip O[63] -pin dina2_i I1[63] -pin dina3_i O[63]
load net dina3_i_n_54 -attr @rip O[9] -pin dina2_i I1[9] -pin dina3_i O[9]
load net dina3_i_n_1 -attr @rip O[62] -pin dina2_i I1[62] -pin dina3_i O[62]
load net dina3_i_n_55 -attr @rip O[8] -pin dina2_i I1[8] -pin dina3_i O[8]
load net doutb_ext_OBUF[1] -attr @rip doutb[1] -pin AddPack0 read_data[1] -pin AddRound0 read_data[1] -pin BC2PVEC read_data[1] -pin BR doutb[1] -pin CMOV1 read_data[1] -pin SH din[1] -pin Sampler data_in[1] -pin VERIFY1 din[1] -pin VMUL0 ram_data_out[1] -pin copy read_data[1] -pin doutb_ext[63:0]_OBUF_inst I[1] -pin unpack0 read_data[1]
load net dina3_i_n_2 -attr @rip O[61] -pin dina2_i I1[61] -pin dina3_i O[61]
load net dina3_i_n_56 -attr @rip O[7] -pin dina2_i I1[7] -pin dina3_i O[7]
load net dout_bs2polvecp[2] -attr @rip write_data[2] -pin BC2PVEC write_data[2] -pin dina3_i I0[2]
load net dout_unpack[42] -attr @rip write_data[42] -pin dina4_i I0[42] -pin unpack0 write_data[42]
load net dina3_i_n_3 -attr @rip O[60] -pin dina2_i I1[60] -pin dina3_i O[60]
load net dina3_i_n_57 -attr @rip O[6] -pin dina2_i I1[6] -pin dina3_i O[6]
load net dout_vmul[18] -attr @rip coeff4x_out[18] -pin VMUL0 coeff4x_out[18] -pin dina0_i I0[18]
load net dina3_i_n_4 -attr @rip O[59] -pin dina2_i I1[59] -pin dina3_i O[59]
load net dina3_i_n_58 -attr @rip O[5] -pin dina2_i I1[5] -pin dina3_i O[5]
load net wt_address[7] -attr @rip O[7] -pin addra_i I1[7] -pin wt_address_i O[7]
load net dina3_i_n_5 -attr @rip O[58] -pin dina2_i I1[58] -pin dina3_i O[58]
load net dina3_i_n_59 -attr @rip O[4] -pin dina2_i I1[4] -pin dina3_i O[4]
load net doutb_ext[54] -attr @rip 54 -port doutb_ext[54] -pin doutb_ext[63:0]_OBUF_inst O[54]
load net rd_address_verify[3] -attr @rip rd_address[3] -pin VERIFY1 rd_address[3] -pin rd_address7_i I0[3]
load net dina3_i_n_6 -attr @rip O[57] -pin dina2_i I1[57] -pin dina3_i O[57]
load net dina3_i_n_7 -attr @rip O[56] -pin dina2_i I1[56] -pin dina3_i O[56]
load net dout_addpack[38] -attr @rip write_data[38] -pin AddPack0 write_data[38] -pin dina2_i I0[38]
load net rd_address_copy[4] -attr @rip read_address[4] -pin copy read_address[4] -pin rd_address5_i I0[4]
load net rst_unpack -pin dina4_i S -pin op2_sel0_i S -pin rd_address4_i S -pin rst_unpack_i O -pin unpack0 rst -pin wea4_i S -pin wt_address4_i S
netloc rst_unpack 1 4 10 1260 1680 2040J 1630 NJ 1630 NJ 1630 NJ 1630 NJ 1630 4570 N 5150 N 5590 1290 6070J
load net dout_addpack[59] -attr @rip write_data[59] -pin AddPack0 write_data[59] -pin dina2_i I0[59]
load net dina3_i_n_8 -attr @rip O[55] -pin dina2_i I1[55] -pin dina3_i O[55]
load net OP1_or_OP2[4] -attr @rip O[4] -pin OP1_or_OP2_i O[4] -pin addrb_i I0[4]
load net dout_copy[8] -attr @rip write_data[8] -pin copy write_data[8] -pin dina5_i I0[8]
load net dout_sampler[32] -attr @rip sample_pack[32] -pin Sampler sample_pack[32] -pin dina6_i I0[32]
load net wt_address_cmov[1] -attr @rip write_address[1] -pin CMOV1 write_address[1] -pin wt_address7_i I0[1]
load net wt_address_vmul[2] -attr @rip write_address[2] -pin VMUL0 write_address[2] -pin wt_address0_i I0[2]
load net unpack0|read_data[9] -attr @rip(#000000) read_data[9] -attr @name read_data[9] -hierPin unpack0 read_data[9] -pin unpack0|op_buffer_i I0[9] -pin unpack0|v_buffer_reg[63:0] D[9]
load net dina3_i_n_9 -attr @rip O[54] -pin dina2_i I1[54] -pin dina3_i O[54]
load net dout_vmul[50] -attr @rip coeff4x_out[50] -pin VMUL0 coeff4x_out[50] -pin dina0_i I0[50]
load net doutb_ext[33] -attr @rip 33 -port doutb_ext[33] -pin doutb_ext[63:0]_OBUF_inst O[33]
load net olen[10] -attr @rip 10 -pin SH olen[10] -pin command_reg1_reg[34:0] Q[26]
load net unpack0|read_data[56] -attr @rip read_data[56] -attr @name read_data[56] -hierPin unpack0 read_data[56] -pin unpack0|op_buffer_i I0[56] -pin unpack0|v_buffer_reg[63:0] D[56]
load net unpack0|read_data[31] -attr @rip read_data[31] -attr @name read_data[31] -hierPin unpack0 read_data[31] -pin unpack0|op_buffer_i I0[31] -pin unpack0|v_buffer_reg[63:0] D[31]
load net dina[32] -attr @rip O[32] -pin BR dina[32] -pin dina_i O[32]
load net dina_ext[35] -attr @rip dina_ext[35] -pin dina7_i I1[35] -port dina_ext[35]
load net dina3_i_n_60 -attr @rip O[3] -pin dina2_i I1[3] -pin dina3_i O[3]
load net dina_ext[45] -attr @rip dina_ext[45] -pin dina7_i I1[45] -port dina_ext[45]
load net dina3_i_n_61 -attr @rip O[2] -pin dina2_i I1[2] -pin dina3_i O[2]
load net dout_sampler[3] -attr @rip sample_pack[3] -pin Sampler sample_pack[3] -pin dina6_i I0[3]
load net dina3_i_n_62 -attr @rip O[1] -pin dina2_i I1[1] -pin dina3_i O[1]
load net dina3_i_n_63 -attr @rip O[0] -pin dina2_i I1[0] -pin dina3_i O[0]
load net dout_unpack[7] -attr @rip write_data[7] -pin dina4_i I0[7] -pin unpack0 write_data[7]
load net dout_vmul[15] -attr @rip coeff4x_out[15] -pin VMUL0 coeff4x_out[15] -pin dina0_i I0[15]
load net doutb_ext_OBUF[0] -attr @rip doutb[0] -pin AddPack0 read_data[0] -pin AddRound0 read_data[0] -pin BC2PVEC read_data[0] -pin BR doutb[0] -pin CMOV1 read_data[0] -pin SH din[0] -pin Sampler data_in[0] -pin VERIFY1 din[0] -pin VMUL0 ram_data_out[0] -pin copy read_data[0] -pin doutb_ext[63:0]_OBUF_inst I[0] -pin unpack0 read_data[0]
load net trigger -pin CMOV1 verify_true -pin unpack0 trigger
netloc trigger 1 5 1 1980
load net dout_unpack[41] -attr @rip write_data[41] -pin dina4_i I0[41] -pin unpack0 write_data[41]
load net dout_bs2polvecp[3] -attr @rip write_data[3] -pin BC2PVEC write_data[3] -pin dina3_i I0[3]
load net doutb_ext_OBUF[39] -attr @rip doutb[39] -pin AddPack0 read_data[39] -pin AddRound0 read_data[39] -pin BC2PVEC read_data[39] -pin BR doutb[39] -pin CMOV1 read_data[39] -pin SH din[39] -pin Sampler data_in[39] -pin VERIFY1 din[39] -pin VMUL0 ram_data_out[39] -pin copy read_data[39] -pin doutb_ext[63:0]_OBUF_inst I[39] -pin unpack0 read_data[39]
load net rd_address_verify[2] -attr @rip rd_address[2] -pin VERIFY1 rd_address[2] -pin rd_address7_i I0[2]
load net dout_bs2polvecp[45] -attr @rip write_data[45] -pin BC2PVEC write_data[45] -pin dina3_i I0[45]
load net wt_address[8] -attr @rip O[8] -pin addra_i I1[8] -pin wt_address_i O[8]
load net dout_addpack[37] -attr @rip write_data[37] -pin AddPack0 write_data[37] -pin dina2_i I0[37]
load net dout_vmul[53] -attr @rip coeff4x_out[53] -pin VMUL0 coeff4x_out[53] -pin dina0_i I0[53]
load net doutb_ext[55] -attr @rip 55 -port doutb_ext[55] -pin doutb_ext[63:0]_OBUF_inst O[55]
load net OP1_or_OP2[3] -attr @rip O[3] -pin OP1_or_OP2_i O[3] -pin addrb_i I0[3]
load net dout_copy[7] -attr @rip write_data[7] -pin copy write_data[7] -pin dina5_i I0[7]
load net unpack0|read_data[8] -attr @rip(#000000) read_data[8] -attr @name read_data[8] -hierPin unpack0 read_data[8] -pin unpack0|op_buffer_i I0[8] -pin unpack0|v_buffer_reg[63:0] D[8]
load net rd_address_vmul[0] -attr @rip read_address[0] -pin VMUL0 read_address[0] -pin rd_address0_i I0[0]
load net dout_unpack[0] -attr @rip write_data[0] -pin dina4_i I0[0] -pin unpack0 write_data[0]
load net dout_unpack[48] -attr @rip write_data[48] -pin dina4_i I0[48] -pin unpack0 write_data[48]
load net doutb_ext[32] -attr @rip 32 -port doutb_ext[32] -pin doutb_ext[63:0]_OBUF_inst O[32]
load net olen[0] -attr @rip 0 -pin SH olen[0] -pin command_reg1_reg[34:0] Q[16]
load net rd_address_copy[7] -attr @rip read_address[7] -pin copy read_address[7] -pin rd_address5_i I0[7]
load net unpack0|read_data[55] -attr @rip read_data[55] -attr @name read_data[55] -hierPin unpack0 read_data[55] -pin unpack0|op_buffer_i I0[55] -pin unpack0|v_buffer_reg[63:0] D[55]
load net dout_vmul[25] -attr @rip coeff4x_out[25] -pin VMUL0 coeff4x_out[25] -pin dina0_i I0[25]
load net rd_address5_i_n_0 -attr @rip O[9] -pin rd_address4_i I1[9] -pin rd_address5_i O[9]
load net dina[33] -attr @rip O[33] -pin BR dina[33] -pin dina_i O[33]
load net rd_address5_i_n_1 -attr @rip O[8] -pin rd_address4_i I1[8] -pin rd_address5_i O[8]
load net dina_ext[46] -attr @rip dina_ext[46] -pin dina7_i I1[46] -port dina_ext[46]
load net dout_sampler[4] -attr @rip sample_pack[4] -pin Sampler sample_pack[4] -pin dina6_i I0[4]
load net rd_address5_i_n_2 -attr @rip O[7] -pin rd_address4_i I1[7] -pin rd_address5_i O[7]
load net wt_address_cmov[8] -attr @rip write_address[8] -pin CMOV1 write_address[8] -pin wt_address7_i I0[8]
load net unpack0|read_data[34] -attr @rip read_data[34] -attr @name read_data[34] -hierPin unpack0 read_data[34] -pin unpack0|op_buffer_i I0[34] -pin unpack0|v_buffer_reg[63:0] D[34]
load net dout_unpack[40] -attr @rip write_data[40] -pin dina4_i I0[40] -pin unpack0 write_data[40]
load net rd_address5_i_n_3 -attr @rip O[6] -pin rd_address4_i I1[6] -pin rd_address5_i O[6]
load net dout_vmul[16] -attr @rip coeff4x_out[16] -pin VMUL0 coeff4x_out[16] -pin dina0_i I0[16]
load net rd_address5_i_n_4 -attr @rip O[5] -pin rd_address4_i I1[5] -pin rd_address5_i O[5]
load net dina_ext[60] -attr @rip dina_ext[60] -pin dina7_i I1[60] -port dina_ext[60]
load net dout_shake[32] -attr @rip dout[32] -pin SH dout[32] -pin dina_i I0[32]
load net rd_address5_i_n_5 -attr @rip O[4] -pin rd_address4_i I1[4] -pin rd_address5_i O[4]
load net wt_address[5] -attr @rip O[5] -pin addra_i I1[5] -pin wt_address_i O[5]
load net doutb_ext[52] -attr @rip 52 -port doutb_ext[52] -pin doutb_ext[63:0]_OBUF_inst O[52]
load net doutb_ext_OBUF[3] -attr @rip doutb[3] -pin AddPack0 read_data[3] -pin AddRound0 read_data[3] -pin BC2PVEC read_data[3] -pin BR doutb[3] -pin CMOV1 read_data[3] -pin SH din[3] -pin Sampler data_in[3] -pin VERIFY1 din[3] -pin VMUL0 ram_data_out[3] -pin copy read_data[3] -pin doutb_ext[63:0]_OBUF_inst I[3] -pin unpack0 read_data[3]
load net rd_address5_i_n_6 -attr @rip O[3] -pin rd_address4_i I1[3] -pin rd_address5_i O[3]
load net dout_bs2polvecp[44] -attr @rip write_data[44] -pin BC2PVEC write_data[44] -pin dina3_i I0[44]
load net rd_address5_i_n_7 -attr @rip O[2] -pin rd_address4_i I1[2] -pin rd_address5_i O[2]
load net rd_address5_i_n_8 -attr @rip O[1] -pin rd_address4_i I1[1] -pin rd_address5_i O[1]
load net dina7_i_n_50 -attr @rip O[13] -pin dina6_i I1[13] -pin dina7_i O[13]
load net rd_address5_i_n_9 -attr @rip O[0] -pin rd_address4_i I1[0] -pin rd_address5_i O[0]
load net unpack0|read_data[7] -attr @rip(#000000) read_data[7] -attr @name read_data[7] -hierPin unpack0 read_data[7] -pin unpack0|op_buffer_i I0[7] -pin unpack0|v_buffer_reg[63:0] D[7]
load net dina7_i_n_51 -attr @rip O[12] -pin dina6_i I1[12] -pin dina7_i O[12]
load net dout_vmul[54] -attr @rip coeff4x_out[54] -pin VMUL0 coeff4x_out[54] -pin dina0_i I0[54]
load net dina7_i_n_52 -attr @rip O[11] -pin dina6_i I1[11] -pin dina7_i O[11]
load net dout_bs2polvecp[8] -attr @rip write_data[8] -pin BC2PVEC write_data[8] -pin dina3_i I0[8]
load net dina7_i_n_53 -attr @rip O[10] -pin dina6_i I1[10] -pin dina7_i O[10]
load net doutb_ext[31] -attr @rip 31 -port doutb_ext[31] -pin doutb_ext[63:0]_OBUF_inst O[31]
load net rd_address_copy[6] -attr @rip read_address[6] -pin copy read_address[6] -pin rd_address5_i I0[6]
load net dina7_i_n_54 -attr @rip O[9] -pin dina6_i I1[9] -pin dina7_i O[9]
load net dina_ext[52] -attr @rip dina_ext[52] -pin dina7_i I1[52] -port dina_ext[52]
load net dout_unpack[1] -attr @rip write_data[1] -pin dina4_i I0[1] -pin unpack0 write_data[1]
load net rd_address_bs2polvecp[1] -attr @rip read_address[1] -pin BC2PVEC read_address[1] -pin rd_address3_i I0[1]
load net unpack0|read_data[54] -attr @rip read_data[54] -attr @name read_data[54] -hierPin unpack0 read_data[54] -pin unpack0|op_buffer_i I0[54] -pin unpack0|v_buffer_reg[63:0] D[54]
load net dina7_i_n_55 -attr @rip O[8] -pin dina6_i I1[8] -pin dina7_i O[8]
load net dout_unpack[49] -attr @rip write_data[49] -pin dina4_i I0[49] -pin unpack0 write_data[49]
load net dout_vmul[24] -attr @rip coeff4x_out[24] -pin VMUL0 coeff4x_out[24] -pin dina0_i I0[24]
load net olen[1] -attr @rip 1 -pin SH olen[1] -pin command_reg1_reg[34:0] Q[17]
load net p_2_in -attr @rip O[5] -pin INS_i O[5] -pin enable_sha0_i I1
load net wt_address4_i_n_0 -attr @rip O[9] -pin wt_address3_i I1[9] -pin wt_address4_i O[9]
load net dina7_i_n_56 -attr @rip O[7] -pin dina6_i I1[7] -pin dina7_i O[7]
load net dina0_i_n_0 -attr @rip O[63] -pin dina0_i O[63] -pin dina_i I1[63]
load net wt_address4_i_n_1 -attr @rip O[8] -pin wt_address3_i I1[8] -pin wt_address4_i O[8]
load net dina7_i_n_57 -attr @rip O[6] -pin dina6_i I1[6] -pin dina7_i O[6]
load net dina0_i_n_1 -attr @rip O[62] -pin dina0_i O[62] -pin dina_i I1[62]
load net wt_address4_i_n_2 -attr @rip O[7] -pin wt_address3_i I1[7] -pin wt_address4_i O[7]
load net dina7_i_n_58 -attr @rip O[5] -pin dina6_i I1[5] -pin dina7_i O[5]
load net dina0_i_n_2 -attr @rip O[61] -pin dina0_i O[61] -pin dina_i I1[61]
load net wt_address4_i_n_3 -attr @rip O[6] -pin wt_address3_i I1[6] -pin wt_address4_i O[6]
load net wt_address_cmov[7] -attr @rip write_address[7] -pin CMOV1 write_address[7] -pin wt_address7_i I0[7]
load net wt_address_vmul[8] -attr @rip write_address[8] -pin VMUL0 write_address[8] -pin wt_address0_i I0[8]
load net unpack0|read_data[33] -attr @rip read_data[33] -attr @name read_data[33] -hierPin unpack0 read_data[33] -pin unpack0|op_buffer_i I0[33] -pin unpack0|v_buffer_reg[63:0] D[33]
load net dina7_i_n_59 -attr @rip O[4] -pin dina6_i I1[4] -pin dina7_i O[4]
load net dout_addpack[48] -attr @rip write_data[48] -pin AddPack0 write_data[48] -pin dina2_i I0[48]
load net dina0_i_n_3 -attr @rip O[60] -pin dina0_i O[60] -pin dina_i I1[60]
load net dina[34] -attr @rip O[34] -pin BR dina[34] -pin dina_i O[34]
load net wt_address4_i_n_4 -attr @rip O[5] -pin wt_address3_i I1[5] -pin wt_address4_i O[5]
load net dina0_i_n_4 -attr @rip O[59] -pin dina0_i O[59] -pin dina_i I1[59]
load net dina_ext[47] -attr @rip dina_ext[47] -pin dina7_i I1[47] -port dina_ext[47]
load net dout_sampler[5] -attr @rip sample_pack[5] -pin Sampler sample_pack[5] -pin dina6_i I0[5]
load net rst -pin command_reg0_reg[34:0] RST -pin command_reg1_reg[34:0] RST -port rst
netloc rst 1 0 3 NJ 1560 140J N 490
load net wt_address4_i_n_5 -attr @rip O[4] -pin wt_address3_i I1[4] -pin wt_address4_i O[4]
load net dina0_i_n_5 -attr @rip O[58] -pin dina0_i O[58] -pin dina_i I1[58]
load net dout_shake[31] -attr @rip dout[31] -pin SH dout[31] -pin dina_i I0[31]
load net wt_address4_i_n_6 -attr @rip O[3] -pin wt_address3_i I1[3] -pin wt_address4_i O[3]
load net dina0_i_n_6 -attr @rip O[57] -pin dina0_i O[57] -pin dina_i I1[57]
load net doutb_ext_OBUF[2] -attr @rip doutb[2] -pin AddPack0 read_data[2] -pin AddRound0 read_data[2] -pin BC2PVEC read_data[2] -pin BR doutb[2] -pin CMOV1 read_data[2] -pin SH din[2] -pin Sampler data_in[2] -pin VERIFY1 din[2] -pin VMUL0 ram_data_out[2] -pin copy read_data[2] -pin doutb_ext[63:0]_OBUF_inst I[2] -pin unpack0 read_data[2]
load net wt_address4_i_n_7 -attr @rip O[2] -pin wt_address3_i I1[2] -pin wt_address4_i O[2]
load net dina0_i_n_7 -attr @rip O[56] -pin dina0_i O[56] -pin dina_i I1[56]
load net dout_bs2polvecp[43] -attr @rip write_data[43] -pin BC2PVEC write_data[43] -pin dina3_i I0[43]
load net dout_cmov[49] -attr @rip write_data[49] -pin CMOV1 write_data[49] -pin dina7_i I0[49]
load net wt_address4_i_n_8 -attr @rip O[1] -pin wt_address3_i I1[1] -pin wt_address4_i O[1]
load net wt_address[6] -attr @rip O[6] -pin addra_i I1[6] -pin wt_address_i O[6]
load net dina0_i_n_8 -attr @rip O[55] -pin dina0_i O[55] -pin dina_i I1[55]
load net dout_vmul[51] -attr @rip coeff4x_out[51] -pin VMUL0 coeff4x_out[51] -pin dina0_i I0[51]
load net doutb_ext[53] -attr @rip 53 -port doutb_ext[53] -pin doutb_ext[63:0]_OBUF_inst O[53]
load net rd_address_copy[1] -attr @rip read_address[1] -pin copy read_address[1] -pin rd_address5_i I0[1]
load net wt_address4_i_n_9 -attr @rip O[0] -pin wt_address3_i I1[0] -pin wt_address4_i O[0]
load net wt_address_shake[0] -attr @rip wt_address[0] -pin SH wt_address[0] -pin wt_address_i I0[0]
load net dina0_i_n_9 -attr @rip O[54] -pin dina0_i O[54] -pin dina_i I1[54]
load net dout_addpack[56] -attr @rip write_data[56] -pin AddPack0 write_data[56] -pin dina2_i I0[56]
load net unpack0|read_data[6] -attr @rip(#000000) read_data[6] -attr @name read_data[6] -hierPin unpack0 read_data[6] -pin unpack0|op_buffer_i I0[6] -pin unpack0|v_buffer_reg[63:0] D[6]
load net dina7_i_n_60 -attr @rip O[3] -pin dina6_i I1[3] -pin dina7_i O[3]
load net dina7_i_n_61 -attr @rip O[2] -pin dina6_i I1[2] -pin dina7_i O[2]
load net dout_cmov[59] -attr @rip write_data[59] -pin CMOV1 write_data[59] -pin dina7_i I0[59]
load net doutb_ext[30] -attr @rip 30 -port doutb_ext[30] -pin doutb_ext[63:0]_OBUF_inst O[30]
load net dout_addpack[19] -attr @rip write_data[19] -pin AddPack0 write_data[19] -pin dina2_i I0[19]
load net dina7_i_n_62 -attr @rip O[1] -pin dina6_i I1[1] -pin dina7_i O[1]
load net dout_bs2polvecp[9] -attr @rip write_data[9] -pin BC2PVEC write_data[9] -pin dina3_i I0[9]
load net dout_shake[60] -attr @rip dout[60] -pin SH dout[60] -pin dina_i I0[60]
load net rst_cmov -pin CMOV1 rst -pin dina7_i S -pin op2_sel3_i S -pin rd_address8_i S -pin rst_cmov_i O -pin wea7_i S -pin wt_address7_i S
netloc rst_cmov 1 5 6 2020 1540 NJ N 2830 N 3500 N NJ 1170 4470
load net unpack0|read_data[53] -attr @rip read_data[53] -attr @name read_data[53] -hierPin unpack0 read_data[53] -pin unpack0|op_buffer_i I0[53] -pin unpack0|v_buffer_reg[63:0] D[53]
load net dina7_i_n_63 -attr @rip O[0] -pin dina6_i I1[0] -pin dina7_i O[0]
load net dout_bs2polvecp[50] -attr @rip write_data[50] -pin BC2PVEC write_data[50] -pin dina3_i I0[50]
load net rd_address_vmul[2] -attr @rip read_address[2] -pin VMUL0 read_address[2] -pin rd_address0_i I0[2]
load net dina_ext[53] -attr @rip dina_ext[53] -pin dina7_i I1[53] -port dina_ext[53]
load net dout_unpack[2] -attr @rip write_data[2] -pin dina4_i I0[2] -pin unpack0 write_data[2]
load net rd_address_bs2polvecp[2] -attr @rip read_address[2] -pin BC2PVEC read_address[2] -pin rd_address3_i I0[2]
load net olen[2] -attr @rip 2 -pin SH olen[2] -pin command_reg1_reg[34:0] Q[18]
load net wt_address_cmov[6] -attr @rip write_address[6] -pin CMOV1 write_address[6] -pin wt_address7_i I0[6]
load net wt_address_vmul[7] -attr @rip write_address[7] -pin VMUL0 write_address[7] -pin wt_address0_i I0[7]
load net dout_vmul[27] -attr @rip coeff4x_out[27] -pin VMUL0 coeff4x_out[27] -pin dina0_i I0[27]
load net rst_bs2polvecp -pin BC2PVEC rst -pin dina3_i S -pin rd_address3_i S -pin rst_bs2polvecp_i O -pin wea3_i S -pin wt_address3_i S
netloc rst_bs2polvecp 1 10 3 4650 410 5090 N 5530
load net wt_address_unpack[6] -attr @rip write_address[6] -pin unpack0 write_address[6] -pin wt_address4_i I0[6]
load net dout_addpack[49] -attr @rip write_data[49] -pin AddPack0 write_data[49] -pin dina2_i I0[49]
load net dina[35] -attr @rip O[35] -pin BR dina[35] -pin dina_i O[35]
load net dout_shake[30] -attr @rip dout[30] -pin SH dout[30] -pin dina_i I0[30]
load net dina_ext[48] -attr @rip dina_ext[48] -pin dina7_i I1[48] -port dina_ext[48]
load net unpack0|read_data[36] -attr @rip read_data[36] -attr @name read_data[36] -hierPin unpack0 read_data[36] -pin unpack0|op_buffer_i I0[36] -pin unpack0|v_buffer_reg[63:0] D[36]
load net dout_addpack[3] -attr @rip write_data[3] -pin AddPack0 write_data[3] -pin dina2_i I0[3]
load net dout_bs2polvecp[42] -attr @rip write_data[42] -pin BC2PVEC write_data[42] -pin dina3_i I0[42]
load net doutb_ext_OBUF[28] -attr @rip doutb[28] -pin AddPack0 read_data[28] -pin AddRound0 read_data[28] -pin BC2PVEC read_data[28] -pin BR doutb[28] -pin CMOV1 read_data[28] -pin SH din[28] -pin Sampler data_in[28] -pin VERIFY1 din[28] -pin VMUL0 ram_data_out[28] -pin copy read_data[28] -pin doutb_ext[63:0]_OBUF_inst I[28] -pin unpack0 read_data[28]
load net rd_address_copy[0] -attr @rip read_address[0] -pin copy read_address[0] -pin rd_address5_i I0[0]
load net OP1_or_OP2[0] -attr @rip O[0] -pin OP1_or_OP2_i O[0] -pin addrb_i I0[0]
load net dina7_i_n_30 -attr @rip O[33] -pin dina6_i I1[33] -pin dina7_i O[33]
load net dout_addpack[55] -attr @rip write_data[55] -pin AddPack0 write_data[55] -pin dina2_i I0[55]
load net dina_ext[62] -attr @rip dina_ext[62] -pin dina7_i I1[62] -port dina_ext[62]
load net dout_vmul[12] -attr @rip coeff4x_out[12] -pin VMUL0 coeff4x_out[12] -pin dina0_i I0[12]
load net unpack0|read_data[5] -attr @rip(#000000) read_data[5] -attr @name read_data[5] -hierPin unpack0 read_data[5] -pin unpack0|op_buffer_i I0[5] -pin unpack0|v_buffer_reg[63:0] D[5]
load net dina7_i_n_31 -attr @rip O[32] -pin dina6_i I1[32] -pin dina7_i O[32]
load net dout_vmul[52] -attr @rip coeff4x_out[52] -pin VMUL0 coeff4x_out[52] -pin dina0_i I0[52]
load net wt_address_shake[1] -attr @rip wt_address[1] -pin SH wt_address[1] -pin wt_address_i I0[1]
load net dina7_i_n_32 -attr @rip O[31] -pin dina6_i I1[31] -pin dina7_i O[31]
load net dout_bs2polvecp[6] -attr @rip write_data[6] -pin BC2PVEC write_data[6] -pin dina3_i I0[6]
load net dina7_i_n_33 -attr @rip O[30] -pin dina6_i I1[30] -pin dina7_i O[30]
load net dina7_i_n_0 -attr @rip O[63] -pin dina6_i I1[63] -pin dina7_i O[63]
load net dout_cmov[58] -attr @rip write_data[58] -pin CMOV1 write_data[58] -pin dina7_i I0[58]
load net dina7_i_n_34 -attr @rip O[29] -pin dina6_i I1[29] -pin dina7_i O[29]
load net dina_ext[50] -attr @rip dina_ext[50] -pin dina7_i I1[50] -port dina_ext[50]
load net dina7_i_n_1 -attr @rip O[62] -pin dina6_i I1[62] -pin dina7_i O[62]
load net dout_sampler[59] -attr @rip sample_pack[59] -pin Sampler sample_pack[59] -pin dina6_i I0[59]
load net unpack0|read_data[52] -attr @rip read_data[52] -attr @name read_data[52] -hierPin unpack0 read_data[52] -pin unpack0|op_buffer_i I0[52] -pin unpack0|v_buffer_reg[63:0] D[52]
load net dina7_i_n_35 -attr @rip O[28] -pin dina6_i I1[28] -pin dina7_i O[28]
load net dina7_i_n_2 -attr @rip O[61] -pin dina6_i I1[61] -pin dina7_i O[61]
load net doutb_ext[58] -attr @rip 58 -port doutb_ext[58] -pin doutb_ext[63:0]_OBUF_inst O[58]
load net rd_address_vmul[1] -attr @rip read_address[1] -pin VMUL0 read_address[1] -pin rd_address0_i I0[1]
load net dina7_i_n_36 -attr @rip O[27] -pin dina6_i I1[27] -pin dina7_i O[27]
load net dina7_i_n_3 -attr @rip O[60] -pin dina6_i I1[60] -pin dina7_i O[60]
load net dout_shake[61] -attr @rip dout[61] -pin SH dout[61] -pin dina_i I0[61]
load net wt_address_addround[8] -attr @rip write_address[8] -pin AddRound0 write_address[8] -pin wt_address1_i I0[8]
load net dina7_i_n_37 -attr @rip O[26] -pin dina6_i I1[26] -pin dina7_i O[26]
load net dina7_i_n_4 -attr @rip O[59] -pin dina6_i I1[59] -pin dina7_i O[59]
load net dout_unpack[10] -attr @rip write_data[10] -pin dina4_i I0[10] -pin unpack0 write_data[10]
load net dina7_i_n_38 -attr @rip O[25] -pin dina6_i I1[25] -pin dina7_i O[25]
load net dina7_i_n_5 -attr @rip O[58] -pin dina6_i I1[58] -pin dina7_i O[58]
load net dout_unpack[3] -attr @rip write_data[3] -pin dina4_i I0[3] -pin unpack0 write_data[3]
load net wt_address_cmov[5] -attr @rip write_address[5] -pin CMOV1 write_address[5] -pin wt_address7_i I0[5]
load net wt_address_vmul[6] -attr @rip write_address[6] -pin VMUL0 write_address[6] -pin wt_address0_i I0[6]
load net dina7_i_n_39 -attr @rip O[24] -pin dina6_i I1[24] -pin dina7_i O[24]
load net dout_addpack[46] -attr @rip write_data[46] -pin AddPack0 write_data[46] -pin dina2_i I0[46]
load net dina7_i_n_6 -attr @rip O[57] -pin dina6_i I1[57] -pin dina7_i O[57]
load net OP2[2] -attr @rip 2 -pin OP1_or_OP2_i I0[2] -pin command_reg0_reg[34:0] Q[17] -pin copy number_words[2]
load net dout_sampler[28] -attr @rip sample_pack[28] -pin Sampler sample_pack[28] -pin dina6_i I0[28]
load net dout_vmul[26] -attr @rip coeff4x_out[26] -pin VMUL0 coeff4x_out[26] -pin dina0_i I0[26]
load net olen[3] -attr @rip 3 -pin SH olen[3] -pin command_reg1_reg[34:0] Q[19]
load net dina7_i_n_7 -attr @rip O[56] -pin dina6_i I1[56] -pin dina7_i O[56]
load net mlen[15] -attr @rip 15 -pin SH mlen[15] -pin command_reg1_reg[34:0] Q[15]
load net dina7_i_n_8 -attr @rip O[55] -pin dina6_i I1[55] -pin dina7_i O[55]
load net wea0 -pin wea0_i O -pin wea_i I1
netloc wea0 1 16 1 N
load net dina7_i_n_9 -attr @rip O[54] -pin dina6_i I1[54] -pin dina7_i O[54]
load net wea1 -pin wea0_i I1 -pin wea1_i O
netloc wea1 1 15 1 7560
load net wt_address_unpack[7] -attr @rip write_address[7] -pin unpack0 write_address[7] -pin wt_address4_i I0[7]
load net unpack0|read_data[35] -attr @rip read_data[35] -attr @name read_data[35] -hierPin unpack0 read_data[35] -pin unpack0|op_buffer_i I0[35] -pin unpack0|v_buffer_reg[63:0] D[35]
load net dout_addround[27] -attr @rip write_data[27] -pin AddRound0 write_data[27] -pin dina1_i I0[27]
load net dout_addround[9] -attr @rip write_data[9] -pin AddRound0 write_data[9] -pin dina1_i I0[9]
load net dout_addpack[2] -attr @rip write_data[2] -pin AddPack0 write_data[2] -pin dina2_i I0[2]
load net wea2 -pin wea1_i I1 -pin wea2_i O
netloc wea2 1 14 1 6950
load net dina_ext[49] -attr @rip dina_ext[49] -pin dina7_i I1[49] -port dina_ext[49]
load net wea3 -pin wea2_i I1 -pin wea3_i O
netloc wea3 1 13 1 6210
load net dina_ext[61] -attr @rip dina_ext[61] -pin dina7_i I1[61] -port dina_ext[61]
load net dout_copy[48] -attr @rip write_data[48] -pin copy write_data[48] -pin dina5_i I0[48]
load net dout_vmul[11] -attr @rip coeff4x_out[11] -pin VMUL0 coeff4x_out[11] -pin dina0_i I0[11]
load net doutb_ext_OBUF[29] -attr @rip doutb[29] -pin AddPack0 read_data[29] -pin AddRound0 read_data[29] -pin BC2PVEC read_data[29] -pin BR doutb[29] -pin CMOV1 read_data[29] -pin SH din[29] -pin Sampler data_in[29] -pin VERIFY1 din[29] -pin VMUL0 ram_data_out[29] -pin copy read_data[29] -pin doutb_ext[63:0]_OBUF_inst I[29] -pin unpack0 read_data[29]
load net wea4 -pin wea3_i I1 -pin wea4_i O
netloc wea4 1 12 1 5590
load net unpack0|read_data[4] -attr @rip(#000000) read_data[4] -attr @name read_data[4] -hierPin unpack0 read_data[4] -pin unpack0|op_buffer_i I0[4] -pin unpack0|v_buffer_reg[63:0] D[4]
load net wea5 -pin wea4_i I1 -pin wea5_i O
netloc wea5 1 11 1 5090
load net dina5_i_n_50 -attr @rip O[13] -pin dina4_i I1[13] -pin dina5_i O[13]
load net dina7_i_n_40 -attr @rip O[23] -pin dina6_i I1[23] -pin dina7_i O[23]
load net wea6 -pin wea5_i I1 -pin wea6_i O
netloc wea6 1 10 1 4410
load net dina5_i_n_51 -attr @rip O[12] -pin dina4_i I1[12] -pin dina5_i O[12]
load net dina7_i_n_41 -attr @rip O[22] -pin dina6_i I1[22] -pin dina7_i O[22]
load net dout_unpack[44] -attr @rip write_data[44] -pin dina4_i I0[44] -pin unpack0 write_data[44]
load net rd_address_copy[3] -attr @rip read_address[3] -pin copy read_address[3] -pin rd_address5_i I0[3]
load net wea7 -pin wea6_i I1 -pin wea7_i O
netloc wea7 1 9 1 4000
load net dina5_i_n_52 -attr @rip O[11] -pin dina4_i I1[11] -pin dina5_i O[11]
load net dina7_i_n_42 -attr @rip O[21] -pin dina6_i I1[21] -pin dina7_i O[21]
load net dout_addpack[58] -attr @rip write_data[58] -pin AddPack0 write_data[58] -pin dina2_i I0[58]
load net dout_bs2polvecp[7] -attr @rip write_data[7] -pin BC2PVEC write_data[7] -pin dina3_i I0[7]
load net dout_sampler[58] -attr @rip sample_pack[58] -pin Sampler sample_pack[58] -pin dina6_i I0[58]
load net unpack0|read_data[51] -attr @rip read_data[51] -attr @name read_data[51] -hierPin unpack0 read_data[51] -pin unpack0|op_buffer_i I0[51] -pin unpack0|v_buffer_reg[63:0] D[51]
load net dina5_i_n_53 -attr @rip O[10] -pin dina4_i I1[10] -pin dina5_i O[10]
load net dina7_i_n_43 -attr @rip O[20] -pin dina6_i I1[20] -pin dina7_i O[20]
load net rd_address_verify[6] -attr @rip rd_address[6] -pin VERIFY1 rd_address[6] -pin rd_address7_i I0[6]
load net dina5_i_n_54 -attr @rip O[9] -pin dina4_i I1[9] -pin dina5_i O[9]
load net dina7_i_n_44 -attr @rip O[19] -pin dina6_i I1[19] -pin dina7_i O[19]
load net dina_ext[51] -attr @rip dina_ext[51] -pin dina7_i I1[51] -port dina_ext[51]
load net dout_cmov[30] -attr @rip write_data[30] -pin CMOV1 write_data[30] -pin dina7_i I0[30]
load net rd_address_bs2polvecp[0] -attr @rip read_address[0] -pin BC2PVEC read_address[0] -pin rd_address3_i I0[0]
load net wt_address_addround[7] -attr @rip write_address[7] -pin AddRound0 write_address[7] -pin wt_address1_i I0[7]
load net dina5_i_n_55 -attr @rip O[8] -pin dina4_i I1[8] -pin dina5_i O[8]
load net dina7_i_n_45 -attr @rip O[18] -pin dina6_i I1[18] -pin dina7_i O[18]
load net dout_shake[56] -attr @rip dout[56] -pin SH dout[56] -pin dina_i I0[56]
load net dout_vmul[57] -attr @rip coeff4x_out[57] -pin VMUL0 coeff4x_out[57] -pin dina0_i I0[57]
load net doutb_ext[59] -attr @rip 59 -port doutb_ext[59] -pin doutb_ext[63:0]_OBUF_inst O[59]
load net dina5_i_n_56 -attr @rip O[7] -pin dina4_i I1[7] -pin dina5_i O[7]
load net dina7_i_n_46 -attr @rip O[17] -pin dina6_i I1[17] -pin dina7_i O[17]
load net dout_sampler[0] -attr @rip sample_pack[0] -pin Sampler sample_pack[0] -pin dina6_i I0[0]
load net dout_shake[62] -attr @rip dout[62] -pin SH dout[62] -pin dina_i I0[62]
load net dina5_i_n_57 -attr @rip O[6] -pin dina4_i I1[6] -pin dina5_i O[6]
load net dina7_i_n_47 -attr @rip O[16] -pin dina6_i I1[16] -pin dina7_i O[16]
load net dout_unpack[11] -attr @rip write_data[11] -pin dina4_i I0[11] -pin unpack0 write_data[11]
load net rd_address_vmul[4] -attr @rip read_address[4] -pin VMUL0 read_address[4] -pin rd_address0_i I0[4]
load net dina5_i_n_58 -attr @rip O[5] -pin dina4_i I1[5] -pin dina5_i O[5]
load net dina7_i_n_48 -attr @rip O[15] -pin dina6_i I1[15] -pin dina7_i O[15]
load net dina1_i_n_0 -attr @rip O[63] -pin dina0_i I1[63] -pin dina1_i O[63]
load net mlen[14] -attr @rip 14 -pin SH mlen[14] -pin command_reg1_reg[34:0] Q[14]
load net wt_address_unpack[4] -attr @rip write_address[4] -pin unpack0 write_address[4] -pin wt_address4_i I0[4]
load net dina5_i_n_59 -attr @rip O[4] -pin dina4_i I1[4] -pin dina5_i O[4]
load net dina7_i_n_49 -attr @rip O[14] -pin dina6_i I1[14] -pin dina7_i O[14]
load net dout_addpack[47] -attr @rip write_data[47] -pin AddPack0 write_data[47] -pin dina2_i I0[47]
load net dina1_i_n_1 -attr @rip O[62] -pin dina0_i I1[62] -pin dina1_i O[62]
load net OP2[3] -attr @rip 3 -pin OP1_or_OP2_i I0[3] -pin command_reg0_reg[34:0] Q[18] -pin copy number_words[3]
load net dout_sampler[29] -attr @rip sample_pack[29] -pin Sampler sample_pack[29] -pin dina6_i I0[29]
load net olen[4] -attr @rip 4 -pin SH olen[4] -pin command_reg1_reg[34:0] Q[20]
load net dina1_i_n_2 -attr @rip O[61] -pin dina0_i I1[61] -pin dina1_i O[61]
load net dina1_i_n_3 -attr @rip O[60] -pin dina0_i I1[60] -pin dina1_i O[60]
load net dout_vmul[29] -attr @rip coeff4x_out[29] -pin VMUL0 coeff4x_out[29] -pin dina0_i I0[29]
load net doutb_ext_OBUF[26] -attr @rip doutb[26] -pin AddPack0 read_data[26] -pin AddRound0 read_data[26] -pin BC2PVEC read_data[26] -pin BR doutb[26] -pin CMOV1 read_data[26] -pin SH din[26] -pin Sampler data_in[26] -pin VERIFY1 din[26] -pin VMUL0 ram_data_out[26] -pin copy read_data[26] -pin doutb_ext[63:0]_OBUF_inst I[26] -pin unpack0 read_data[26]
load net dout_addpack[32] -attr @rip write_data[32] -pin AddPack0 write_data[32] -pin dina2_i I0[32]
load net dina1_i_n_4 -attr @rip O[59] -pin dina0_i I1[59] -pin dina1_i O[59]
load net dout_addround[28] -attr @rip write_data[28] -pin AddRound0 write_data[28] -pin dina1_i I0[28]
load net dina7_i_n_10 -attr @rip O[53] -pin dina6_i I1[53] -pin dina7_i O[53]
load net dina1_i_n_5 -attr @rip O[58] -pin dina0_i I1[58] -pin dina1_i O[58]
load net dout_copy[47] -attr @rip write_data[47] -pin copy write_data[47] -pin dina5_i I0[47]
load net unpack0|read_data[3] -attr @rip(#000000) read_data[3] -attr @name read_data[3] -hierPin unpack0 read_data[3] -pin unpack0|op_buffer_i I0[3] -pin unpack0|v_buffer_reg[63:0] D[3]
load net dina7_i_n_11 -attr @rip O[52] -pin dina6_i I1[52] -pin dina7_i O[52]
load net dina1_i_n_6 -attr @rip O[57] -pin dina0_i I1[57] -pin dina1_i O[57]
load net unpack0|read_data[38] -attr @rip read_data[38] -attr @name read_data[38] -hierPin unpack0 read_data[38] -pin unpack0|op_buffer_i I0[38] -pin unpack0|v_buffer_reg[63:0] D[38]
load net dout_addpack[5] -attr @rip write_data[5] -pin AddPack0 write_data[5] -pin dina2_i I0[5]
load net dina7_i_n_12 -attr @rip O[51] -pin dina6_i I1[51] -pin dina7_i O[51]
load net dina1_i_n_7 -attr @rip O[56] -pin dina0_i I1[56] -pin dina1_i O[56]
load net dina7_i_n_13 -attr @rip O[50] -pin dina6_i I1[50] -pin dina7_i O[50]
load net dina1_i_n_8 -attr @rip O[55] -pin dina0_i I1[55] -pin dina1_i O[55]
load net rd_address_copy[2] -attr @rip read_address[2] -pin copy read_address[2] -pin rd_address5_i I0[2]
load net dina5_i_n_60 -attr @rip O[3] -pin dina4_i I1[3] -pin dina5_i O[3]
load net dina7_i_n_14 -attr @rip O[49] -pin dina6_i I1[49] -pin dina7_i O[49]
load net dina1_i_n_9 -attr @rip O[54] -pin dina0_i I1[54] -pin dina1_i O[54]
load net dout_addpack[57] -attr @rip write_data[57] -pin AddPack0 write_data[57] -pin dina2_i I0[57]
load net dout_sampler[57] -attr @rip sample_pack[57] -pin Sampler sample_pack[57] -pin dina6_i I0[57]
load net dout_shake[36] -attr @rip dout[36] -pin SH dout[36] -pin dina_i I0[36]
load net dout_vmul[14] -attr @rip coeff4x_out[14] -pin VMUL0 coeff4x_out[14] -pin dina0_i I0[14]
load net unpack0|read_data[50] -attr @rip read_data[50] -attr @name read_data[50] -hierPin unpack0 read_data[50] -pin unpack0|op_buffer_i I0[50] -pin unpack0|v_buffer_reg[63:0] D[50]
load net dina5_i_n_61 -attr @rip O[2] -pin dina4_i I1[2] -pin dina5_i O[2]
load net dina7_i_n_15 -attr @rip O[48] -pin dina6_i I1[48] -pin dina7_i O[48]
load net dout_unpack[45] -attr @rip write_data[45] -pin dina4_i I0[45] -pin unpack0 write_data[45]
load net doutb_ext[56] -attr @rip 56 -port doutb_ext[56] -pin doutb_ext[63:0]_OBUF_inst O[56]
load net dina5_i_n_62 -attr @rip O[1] -pin dina4_i I1[1] -pin dina5_i O[1]
load net dina7_i_n_16 -attr @rip O[47] -pin dina6_i I1[47] -pin dina7_i O[47]
load net wt_address_addround[6] -attr @rip write_address[6] -pin AddRound0 write_address[6] -pin wt_address1_i I0[6]
load net dina5_i_n_63 -attr @rip O[0] -pin dina4_i I1[0] -pin dina5_i O[0]
load net dina7_i_n_17 -attr @rip O[46] -pin dina6_i I1[46] -pin dina7_i O[46]
load net dout_shake[55] -attr @rip dout[55] -pin SH dout[55] -pin dina_i I0[55]
load net rd_address_verify[7] -attr @rip rd_address[7] -pin VERIFY1 rd_address[7] -pin rd_address7_i I0[7]
load net dina7_i_n_18 -attr @rip O[45] -pin dina6_i I1[45] -pin dina7_i O[45]
load net dout_cmov[31] -attr @rip write_data[31] -pin CMOV1 write_data[31] -pin dina7_i I0[31]
load net p_0_in -attr @rip O[3] -pin INS_i O[3] -pin enable_sha2_i I1
load net dina7_i_n_19 -attr @rip O[44] -pin dina6_i I1[44] -pin dina7_i O[44]
load net dout_addpack[44] -attr @rip write_data[44] -pin AddPack0 write_data[44] -pin dina2_i I0[44]
load net dina[30] -attr @rip O[30] -pin BR dina[30] -pin dina_i O[30]
load net OP2[0] -attr @rip 0 -pin OP1_or_OP2_i I0[0] -pin command_reg0_reg[34:0] Q[15] -pin copy number_words[0]
load net dout_copy[38] -attr @rip write_data[38] -pin copy write_data[38] -pin dina5_i I0[38]
load net dout_vmul[58] -attr @rip coeff4x_out[58] -pin VMUL0 coeff4x_out[58] -pin dina0_i I0[58]
load net rd_address_vmul[3] -attr @rip read_address[3] -pin VMUL0 read_address[3] -pin rd_address0_i I0[3]
load net wea_addround -pin AddRound0 write_en -pin wea1_i I0
netloc wea_addround 1 13 2 6150 440 NJ
load net dout_sampler[1] -attr @rip sample_pack[1] -pin Sampler sample_pack[1] -pin dina6_i I0[1]
load net dout_shake[63] -attr @rip dout[63] -pin SH dout[63] -pin dina_i I0[63]
load net dout_unpack[12] -attr @rip write_data[12] -pin dina4_i I0[12] -pin unpack0 write_data[12]
load net wt_address_unpack[5] -attr @rip write_address[5] -pin unpack0 write_address[5] -pin wt_address4_i I0[5]
load net dout_vmul[28] -attr @rip coeff4x_out[28] -pin VMUL0 coeff4x_out[28] -pin dina0_i I0[28]
load net doutb_ext_OBUF[60] -attr @rip doutb[60] -pin AddPack0 read_data[60] -pin AddRound0 read_data[60] -pin BC2PVEC read_data[60] -pin BR doutb[60] -pin CMOV1 read_data[60] -pin SH din[60] -pin Sampler data_in[60] -pin VERIFY1 din[60] -pin VMUL0 ram_data_out[60] -pin copy read_data[60] -pin doutb_ext[63:0]_OBUF_inst I[60] -pin unpack0 read_data[60]
load net olen[5] -attr @rip 5 -pin SH olen[5] -pin command_reg1_reg[34:0] Q[21]
load net dout_addpack[31] -attr @rip write_data[31] -pin AddPack0 write_data[31] -pin dina2_i I0[31]
load net dout_addpack[52] -attr @rip write_data[52] -pin AddPack0 write_data[52] -pin dina2_i I0[52]
load net doutb_ext_OBUF[27] -attr @rip doutb[27] -pin AddPack0 read_data[27] -pin AddRound0 read_data[27] -pin BC2PVEC read_data[27] -pin BR doutb[27] -pin CMOV1 read_data[27] -pin SH din[27] -pin Sampler data_in[27] -pin VERIFY1 din[27] -pin VMUL0 ram_data_out[27] -pin copy read_data[27] -pin doutb_ext[63:0]_OBUF_inst I[27] -pin unpack0 read_data[27]
load net unpack0|read_data[2] -attr @rip(#000000) read_data[2] -attr @name read_data[2] -hierPin unpack0 read_data[2] -pin unpack0|op_buffer_i I0[2] -pin unpack0|v_buffer_reg[63:0] D[2]
load net unpack0|read_data[37] -attr @rip read_data[37] -attr @name read_data[37] -hierPin unpack0 read_data[37] -pin unpack0|op_buffer_i I0[37] -pin unpack0|v_buffer_reg[63:0] D[37]
load net dout_addpack[4] -attr @rip write_data[4] -pin AddPack0 write_data[4] -pin dina2_i I0[4]
load net dout_addround[29] -attr @rip write_data[29] -pin AddRound0 write_data[29] -pin dina1_i I0[29]
load net dina5_i_n_30 -attr @rip O[33] -pin dina4_i I1[33] -pin dina5_i O[33]
load net dina7_i_n_20 -attr @rip O[43] -pin dina6_i I1[43] -pin dina7_i O[43]
load net dina5_i_n_31 -attr @rip O[32] -pin dina4_i I1[32] -pin dina5_i O[32]
load net INS_i_n_0 -attr @rip O[7] -pin INS_i O[7] -pin clear_sha_i I0
load net dina7_i_n_21 -attr @rip O[42] -pin dina6_i I1[42] -pin dina7_i O[42]
load net dout_cmov[55] -attr @rip write_data[55] -pin CMOV1 write_data[55] -pin dina7_i I0[55]
load net dina5_i_n_32 -attr @rip O[31] -pin dina4_i I1[31] -pin dina5_i O[31]
load net dina7_i_n_22 -attr @rip O[41] -pin dina6_i I1[41] -pin dina7_i O[41]
load net dout_sampler[56] -attr @rip sample_pack[56] -pin Sampler sample_pack[56] -pin dina6_i I0[56]
load net dout_shake[35] -attr @rip dout[35] -pin SH dout[35] -pin dina_i I0[35]
load net dout_vmul[13] -attr @rip coeff4x_out[13] -pin VMUL0 coeff4x_out[13] -pin dina0_i I0[13]
load net dina5_i_n_33 -attr @rip O[30] -pin dina4_i I1[30] -pin dina5_i O[30]
load net dina7_i_n_23 -attr @rip O[40] -pin dina6_i I1[40] -pin dina7_i O[40]
load net OP1[9] -attr @rip 9 -pin OP1_or_OP2_i I1[9] -pin command_reg0_reg[34:0] Q[14]
load net dina5_i_n_34 -attr @rip O[29] -pin dina4_i I1[29] -pin dina5_i O[29]
load net dina7_i_n_24 -attr @rip O[39] -pin dina6_i I1[39] -pin dina7_i O[39]
load net wt_address_addround[5] -attr @rip write_address[5] -pin AddRound0 write_address[5] -pin wt_address1_i I0[5]
load net dina0_i_n_60 -attr @rip O[3] -pin dina0_i O[3] -pin dina_i I1[3]
load net dina5_i_n_35 -attr @rip O[28] -pin dina4_i I1[28] -pin dina5_i O[28]
load net dina7_i_n_25 -attr @rip O[38] -pin dina6_i I1[38] -pin dina7_i O[38]
load net dout_unpack[46] -attr @rip write_data[46] -pin dina4_i I0[46] -pin unpack0 write_data[46]
load net dout_vmul[55] -attr @rip coeff4x_out[55] -pin VMUL0 coeff4x_out[55] -pin dina0_i I0[55]
load net doutb_ext[57] -attr @rip 57 -port doutb_ext[57] -pin doutb_ext[63:0]_OBUF_inst O[57]
load net dout_addround[50] -attr @rip write_data[50] -pin AddRound0 write_data[50] -pin dina1_i I0[50]
load net dina0_i_n_61 -attr @rip O[2] -pin dina0_i O[2] -pin dina_i I1[2]
load net dina5_i_n_36 -attr @rip O[27] -pin dina4_i I1[27] -pin dina5_i O[27]
load net INS_i_n_5 -attr @rip O[2] -pin INS_i O[2] -pin enable_sha2_i I0
load net dina7_i_n_26 -attr @rip O[37] -pin dina6_i I1[37] -pin dina7_i O[37]
load net dina0_i_n_62 -attr @rip O[1] -pin dina0_i O[1] -pin dina_i I1[1]
load net dina5_i_n_37 -attr @rip O[26] -pin dina4_i I1[26] -pin dina5_i O[26]
load net INS_i_n_6 -attr @rip O[1] -pin INS_i O[1] -pin rst_vmul1_i I1
load net dina7_i_n_27 -attr @rip O[36] -pin dina6_i I1[36] -pin dina7_i O[36]
load net dout_sampler[60] -attr @rip sample_pack[60] -pin Sampler sample_pack[60] -pin dina6_i I0[60]
load net rd_address_verify[8] -attr @rip rd_address[8] -pin VERIFY1 rd_address[8] -pin rd_address7_i I0[8]
load net dina0_i_n_63 -attr @rip O[0] -pin dina0_i O[0] -pin dina_i I1[0]
load net dina5_i_n_38 -attr @rip O[25] -pin dina4_i I1[25] -pin dina5_i O[25]
load net INS_i_n_7 -attr @rip O[0] -pin INS_i O[0]
load net dina7_i_n_28 -attr @rip O[35] -pin dina6_i I1[35] -pin dina7_i O[35]
load net dina[31] -attr @rip O[31] -pin BR dina[31] -pin dina_i O[31]
load net OP2[1] -attr @rip 1 -pin OP1_or_OP2_i I0[1] -pin command_reg0_reg[34:0] Q[16] -pin copy number_words[1]
load net dina5_i_n_39 -attr @rip O[24] -pin dina4_i I1[24] -pin dina5_i O[24]
load net dina7_i_n_29 -attr @rip O[34] -pin dina6_i I1[34] -pin dina7_i O[34]
load net dout_addpack[45] -attr @rip write_data[45] -pin AddPack0 write_data[45] -pin dina2_i I0[45]
load net dout_copy[39] -attr @rip write_data[39] -pin copy write_data[39] -pin dina5_i I0[39]
load net dout_shake[58] -attr @rip dout[58] -pin SH dout[58] -pin dina_i I0[58]
load net clk_IBUF -pin AddPack0 clk -pin AddRound0 clk -pin BC2PVEC clk -pin BR clka -pin BR clkb -pin CMOV1 clk -pin SH clk -pin Sampler clk -pin VERIFY1 clk -pin VMUL0 clk -pin clk_IBUF_inst O -pin command_reg0_reg[34:0] C -pin command_reg1_reg[34:0] C -pin copy clk -pin unpack0 clk
netloc clk_IBUF 1 1 18 140 1720 510 1570 840 1430 1180 1230 2020 880 NJ 880 2810 710 3380 800 NJ 800 4390 990 5150 980 5630 810 NJ 810 6930 810 NJ 810 NJ 810 8260 1040 N
load net dout_unpack[13] -attr @rip write_data[13] -pin dina4_i I0[13] -pin unpack0 write_data[13]
load net doutb_ext_OBUF[24] -attr @rip doutb[24] -pin AddPack0 read_data[24] -pin AddRound0 read_data[24] -pin BC2PVEC read_data[24] -pin BR doutb[24] -pin CMOV1 read_data[24] -pin SH din[24] -pin Sampler data_in[24] -pin VERIFY1 din[24] -pin VMUL0 ram_data_out[24] -pin copy read_data[24] -pin doutb_ext[63:0]_OBUF_inst I[24] -pin unpack0 read_data[24]
load net rd_address_vmul[6] -attr @rip read_address[6] -pin VMUL0 read_address[6] -pin rd_address0_i I0[6]
load net dout_addpack[30] -attr @rip write_data[30] -pin AddPack0 write_data[30] -pin dina2_i I0[30]
load net dout_bs2polvecp[46] -attr @rip write_data[46] -pin BC2PVEC write_data[46] -pin dina3_i I0[46]
load net dout_addpack[51] -attr @rip write_data[51] -pin AddPack0 write_data[51] -pin dina2_i I0[51]
load net doutb_ext_OBUF[61] -attr @rip doutb[61] -pin AddPack0 read_data[61] -pin AddRound0 read_data[61] -pin BC2PVEC read_data[61] -pin BR doutb[61] -pin CMOV1 read_data[61] -pin SH din[61] -pin Sampler data_in[61] -pin VERIFY1 din[61] -pin VMUL0 ram_data_out[61] -pin copy read_data[61] -pin doutb_ext[63:0]_OBUF_inst I[61] -pin unpack0 read_data[61]
load net olen[6] -attr @rip 6 -pin SH olen[6] -pin command_reg1_reg[34:0] Q[22]
load net dout_cmov[54] -attr @rip write_data[54] -pin CMOV1 write_data[54] -pin dina7_i I0[54]
load net dina5_i_n_40 -attr @rip O[23] -pin dina4_i I1[23] -pin dina5_i O[23]
load net dout_addpack[14] -attr @rip write_data[14] -pin AddPack0 write_data[14] -pin dina2_i I0[14]
load net dout_copy[49] -attr @rip write_data[49] -pin copy write_data[49] -pin dina5_i I0[49]
load net dout_sampler[55] -attr @rip sample_pack[55] -pin Sampler sample_pack[55] -pin dina6_i I0[55]
load net dout_shake[34] -attr @rip dout[34] -pin SH dout[34] -pin dina_i I0[34]
load net dina[49] -attr @rip O[49] -pin BR dina[49] -pin dina_i O[49]
load net dina5_i_n_41 -attr @rip O[22] -pin dina4_i I1[22] -pin dina5_i O[22]
load net OP1[8] -attr @rip 8 -pin OP1_or_OP2_i I1[8] -pin command_reg0_reg[34:0] Q[13]
load net dout_addpack[7] -attr @rip write_data[7] -pin AddPack0 write_data[7] -pin dina2_i I0[7]
load net dina5_i_n_42 -attr @rip O[21] -pin dina4_i I1[21] -pin dina5_i O[21]
load net wea_copy -pin copy write_en -pin wea5_i I0
netloc wea_copy 1 9 2 3960J 660 4450
load net dina5_i_n_43 -attr @rip O[20] -pin dina4_i I1[20] -pin dina5_i O[20]
load net dout_sampler[10] -attr @rip sample_pack[10] -pin Sampler sample_pack[10] -pin dina6_i I0[10]
load net rd_address6_i_n_0 -attr @rip O[9] -pin rd_address5_i I1[9] -pin rd_address6_i O[9]
load net dina5_i_n_44 -attr @rip O[19] -pin dina4_i I1[19] -pin dina5_i O[19]
load net rd_address6_i_n_1 -attr @rip O[8] -pin rd_address5_i I1[8] -pin rd_address6_i O[8]
load net dina5_i_n_45 -attr @rip O[18] -pin dina4_i I1[18] -pin dina5_i O[18]
load net dout_addpack[42] -attr @rip write_data[42] -pin AddPack0 write_data[42] -pin dina2_i I0[42]
load net dout_copy[36] -attr @rip write_data[36] -pin copy write_data[36] -pin dina5_i I0[36]
load net dout_sampler[24] -attr @rip sample_pack[24] -pin Sampler sample_pack[24] -pin dina6_i I0[24]
load net dout_unpack[47] -attr @rip write_data[47] -pin dina4_i I0[47] -pin unpack0 write_data[47]
load net dout_vmul[56] -attr @rip coeff4x_out[56] -pin VMUL0 coeff4x_out[56] -pin dina0_i I0[56]
load net doutb_ext_OBUF[9] -attr @rip doutb[9] -pin AddPack0 read_data[9] -pin AddRound0 read_data[9] -pin BC2PVEC read_data[9] -pin BR doutb[9] -pin CMOV1 read_data[9] -pin SH din[9] -pin Sampler data_in[9] -pin VERIFY1 din[9] -pin VMUL0 ram_data_out[9] -pin copy read_data[9] -pin doutb_ext[63:0]_OBUF_inst I[9] -pin unpack0 read_data[9]
load net rd_address6_i_n_2 -attr @rip O[7] -pin rd_address5_i I1[7] -pin rd_address6_i O[7]
load net dout_addround[51] -attr @rip write_data[51] -pin AddRound0 write_data[51] -pin dina1_i I0[51]
load net dina5_i_n_46 -attr @rip O[17] -pin dina4_i I1[17] -pin dina5_i O[17]
load net mlen[11] -attr @rip 11 -pin SH mlen[11] -pin command_reg1_reg[34:0] Q[11]
load net rd_address6_i_n_3 -attr @rip O[6] -pin rd_address5_i I1[6] -pin rd_address6_i O[6]
load net dina5_i_n_47 -attr @rip O[16] -pin dina4_i I1[16] -pin dina5_i O[16]
load net dout_sampler[61] -attr @rip sample_pack[61] -pin Sampler sample_pack[61] -pin dina6_i I0[61]
load net dout_shake[57] -attr @rip dout[57] -pin SH dout[57] -pin dina_i I0[57]
load net rd_address6_i_n_4 -attr @rip O[5] -pin rd_address5_i I1[5] -pin rd_address6_i O[5]
load net dina5_i_n_48 -attr @rip O[15] -pin dina4_i I1[15] -pin dina5_i O[15]
load net rd_address6_i_n_5 -attr @rip O[4] -pin rd_address5_i I1[4] -pin rd_address6_i O[4]
load net dina5_i_n_49 -attr @rip O[14] -pin dina4_i I1[14] -pin dina5_i O[14]
load net dout_cmov[43] -attr @rip write_data[43] -pin CMOV1 write_data[43] -pin dina7_i I0[43]
load net rd_address6_i_n_6 -attr @rip O[3] -pin rd_address5_i I1[3] -pin rd_address6_i O[3]
load net rd_address_vmul[5] -attr @rip read_address[5] -pin VMUL0 read_address[5] -pin rd_address0_i I0[5]
load net rd_address6_i_n_7 -attr @rip O[2] -pin rd_address5_i I1[2] -pin rd_address6_i O[2]
load net dout_copy[44] -attr @rip write_data[44] -pin copy write_data[44] -pin dina5_i I0[44]
load net dout_unpack[14] -attr @rip write_data[14] -pin dina4_i I0[14] -pin unpack0 write_data[14]
load net doutb_ext_OBUF[25] -attr @rip doutb[25] -pin AddPack0 read_data[25] -pin AddRound0 read_data[25] -pin BC2PVEC read_data[25] -pin BR doutb[25] -pin CMOV1 read_data[25] -pin SH din[25] -pin Sampler data_in[25] -pin VERIFY1 din[25] -pin VMUL0 ram_data_out[25] -pin copy read_data[25] -pin doutb_ext[63:0]_OBUF_inst I[25] -pin unpack0 read_data[25]
load net rd_address6_i_n_8 -attr @rip O[1] -pin rd_address5_i I1[1] -pin rd_address6_i O[1]
load net dout_bs2polvecp[47] -attr @rip write_data[47] -pin BC2PVEC write_data[47] -pin dina3_i I0[47]
load net rd_address6_i_n_9 -attr @rip O[0] -pin rd_address5_i I1[0] -pin rd_address6_i O[0]
load net dina5_i_n_10 -attr @rip O[53] -pin dina4_i I1[53] -pin dina5_i O[53]
load net dina5_i_n_11 -attr @rip O[52] -pin dina4_i I1[52] -pin dina5_i O[52]
load net dina5_i_n_12 -attr @rip O[51] -pin dina4_i I1[51] -pin dina5_i O[51]
load net dout_addpack[13] -attr @rip write_data[13] -pin AddPack0 write_data[13] -pin dina2_i I0[13]
load net dout_addpack[54] -attr @rip write_data[54] -pin AddPack0 write_data[54] -pin dina2_i I0[54]
load net dout_cmov[22] -attr @rip write_data[22] -pin CMOV1 write_data[22] -pin dina7_i I0[22]
load net dout_sampler[54] -attr @rip sample_pack[54] -pin Sampler sample_pack[54] -pin dina6_i I0[54]
load net dout_shake[33] -attr @rip dout[33] -pin SH dout[33] -pin dina_i I0[33]
load net dina5_i_n_13 -attr @rip O[50] -pin dina4_i I1[50] -pin dina5_i O[50]
load net OP1[7] -attr @rip 7 -pin OP1_or_OP2_i I1[7] -pin command_reg0_reg[34:0] Q[12]
load net unpack0|read_data[39] -attr @rip read_data[39] -attr @name read_data[39] -hierPin unpack0 read_data[39] -pin unpack0|op_buffer_i I0[39] -pin unpack0|v_buffer_reg[63:0] D[39]
load net dout_addpack[6] -attr @rip write_data[6] -pin AddPack0 write_data[6] -pin dina2_i I0[6]
load net dina5_i_n_14 -attr @rip O[49] -pin dina4_i I1[49] -pin dina5_i O[49]
load net dina0_i_n_40 -attr @rip O[23] -pin dina0_i O[23] -pin dina_i I1[23]
load net dina5_i_n_15 -attr @rip O[48] -pin dina4_i I1[48] -pin dina5_i O[48]
load net dout_cmov[57] -attr @rip write_data[57] -pin CMOV1 write_data[57] -pin dina7_i I0[57]
load net dout_shake[52] -attr @rip dout[52] -pin SH dout[52] -pin dina_i I0[52]
load net dina0_i_n_41 -attr @rip O[22] -pin dina0_i O[22] -pin dina_i I1[22]
load net dina5_i_n_16 -attr @rip O[47] -pin dina4_i I1[47] -pin dina5_i O[47]
load net dina0_i_n_42 -attr @rip O[21] -pin dina0_i O[21] -pin dina_i I1[21]
load net dina5_i_n_17 -attr @rip O[46] -pin dina4_i I1[46] -pin dina5_i O[46]
load net doutb_ext_OBUF[8] -attr @rip doutb[8] -pin AddPack0 read_data[8] -pin AddRound0 read_data[8] -pin BC2PVEC read_data[8] -pin BR doutb[8] -pin CMOV1 read_data[8] -pin SH din[8] -pin Sampler data_in[8] -pin VERIFY1 din[8] -pin VMUL0 ram_data_out[8] -pin copy read_data[8] -pin doutb_ext[63:0]_OBUF_inst I[8] -pin unpack0 read_data[8]
load net dina0_i_n_43 -attr @rip O[20] -pin dina0_i O[20] -pin dina_i I1[20]
load net dina5_i_n_18 -attr @rip O[45] -pin dina4_i I1[45] -pin dina5_i O[45]
load net mlen[10] -attr @rip 10 -pin SH mlen[10] -pin command_reg1_reg[34:0] Q[10]
load net wt_address_bs2polvecp[6] -attr @rip write_address[6] -pin BC2PVEC write_address[6] -pin wt_address3_i I0[6]
load net dina0_i_n_44 -attr @rip O[19] -pin dina0_i O[19] -pin dina_i I1[19]
load net dina5_i_n_19 -attr @rip O[44] -pin dina4_i I1[44] -pin dina5_i O[44]
load net dout_addpack[43] -attr @rip write_data[43] -pin AddPack0 write_data[43] -pin dina2_i I0[43]
load net dout_copy[37] -attr @rip write_data[37] -pin copy write_data[37] -pin dina5_i I0[37]
load net dout_sampler[25] -attr @rip sample_pack[25] -pin Sampler sample_pack[25] -pin dina6_i I0[25]
load net dout_addround[52] -attr @rip write_data[52] -pin AddRound0 write_data[52] -pin dina1_i I0[52]
load net dina0_i_n_45 -attr @rip O[18] -pin dina0_i O[18] -pin dina_i I1[18]
load net dina0_i_n_46 -attr @rip O[17] -pin dina0_i O[17] -pin dina_i I1[17]
load net dout_sampler[62] -attr @rip sample_pack[62] -pin Sampler sample_pack[62] -pin dina6_i I0[62]
load net doutb_ext_OBUF[22] -attr @rip doutb[22] -pin AddPack0 read_data[22] -pin AddRound0 read_data[22] -pin BC2PVEC read_data[22] -pin BR doutb[22] -pin CMOV1 read_data[22] -pin SH din[22] -pin Sampler data_in[22] -pin VERIFY1 din[22] -pin VMUL0 ram_data_out[22] -pin copy read_data[22] -pin doutb_ext[63:0]_OBUF_inst I[22] -pin unpack0 read_data[22]
load net dout_addround[14] -attr @rip write_data[14] -pin AddRound0 write_data[14] -pin dina1_i I0[14]
load net dina0_i_n_47 -attr @rip O[16] -pin dina0_i O[16] -pin dina_i I1[16]
load net dina0_i_n_48 -attr @rip O[15] -pin dina0_i O[15] -pin dina_i I1[15]
load net dout_cmov[44] -attr @rip write_data[44] -pin CMOV1 write_data[44] -pin dina7_i I0[44]
load net dout_copy[43] -attr @rip write_data[43] -pin copy write_data[43] -pin dina5_i I0[43]
load net dina0_i_n_49 -attr @rip O[14] -pin dina0_i O[14] -pin dina_i I1[14]
load net dout_unpack[15] -attr @rip write_data[15] -pin dina4_i I0[15] -pin unpack0 write_data[15]
load net dout_bs2polvecp[48] -attr @rip write_data[48] -pin BC2PVEC write_data[48] -pin dina3_i I0[48]
load net wt_address_unpack[8] -attr @rip write_address[8] -pin unpack0 write_address[8] -pin wt_address4_i I0[8]
load net dout_addpack[53] -attr @rip write_data[53] -pin AddPack0 write_data[53] -pin dina2_i I0[53]
load net dina5_i_n_20 -attr @rip O[43] -pin dina4_i I1[43] -pin dina5_i O[43]
load net dout_addpack[12] -attr @rip write_data[12] -pin AddPack0 write_data[12] -pin dina2_i I0[12]
load net dout_cmov[21] -attr @rip write_data[21] -pin CMOV1 write_data[21] -pin dina7_i I0[21]
load net dout_sampler[53] -attr @rip sample_pack[53] -pin Sampler sample_pack[53] -pin dina6_i I0[53]
load net dout_vmul[10] -attr @rip coeff4x_out[10] -pin VMUL0 coeff4x_out[10] -pin dina0_i I0[10]
load net dina5_i_n_21 -attr @rip O[42] -pin dina4_i I1[42] -pin dina5_i O[42]
load net dout_addround[22] -attr @rip write_data[22] -pin AddRound0 write_data[22] -pin dina1_i I0[22]
load net OP1[6] -attr @rip 6 -pin OP1_or_OP2_i I1[6] -pin command_reg0_reg[34:0] Q[11]
load net dina5_i_n_22 -attr @rip O[41] -pin dina4_i I1[41] -pin dina5_i O[41]
load net dina5_i_n_23 -attr @rip O[40] -pin dina4_i I1[40] -pin dina5_i O[40]
load net dout_addpack[36] -attr @rip write_data[36] -pin AddPack0 write_data[36] -pin dina2_i I0[36]
load net dout_cmov[56] -attr @rip write_data[56] -pin CMOV1 write_data[56] -pin dina7_i I0[56]
load net dout_shake[51] -attr @rip dout[51] -pin SH dout[51] -pin dina_i I0[51]
load net pol_load_coeff4x -pin VMUL0 pol_load_coeff4x -pin pol_load_coeff4x_i O
netloc pol_load_coeff4x 1 11 1 5050J
load net dina5_i_n_24 -attr @rip O[39] -pin dina4_i I1[39] -pin dina5_i O[39]
load net wt_address_vmul[0] -attr @rip write_address[0] -pin VMUL0 write_address[0] -pin wt_address0_i I0[0]
load net dina0_i_n_50 -attr @rip O[13] -pin dina0_i O[13] -pin dina_i I1[13]
load net dina5_i_n_25 -attr @rip O[38] -pin dina4_i I1[38] -pin dina5_i O[38]
load net dout_addpack[40] -attr @rip write_data[40] -pin AddPack0 write_data[40] -pin dina2_i I0[40]
load net dout_copy[34] -attr @rip write_data[34] -pin copy write_data[34] -pin dina5_i I0[34]
load net dout_addpack[9] -attr @rip write_data[9] -pin AddPack0 write_data[9] -pin dina2_i I0[9]
load net dina0_i_n_51 -attr @rip O[12] -pin dina0_i O[12] -pin dina_i I1[12]
load net dina5_i_n_26 -attr @rip O[37] -pin dina4_i I1[37] -pin dina5_i O[37]
load net dina0_i_n_52 -attr @rip O[11] -pin dina0_i O[11] -pin dina_i I1[11]
load net dina5_i_n_27 -attr @rip O[36] -pin dina4_i I1[36] -pin dina5_i O[36]
load net command_in[1] -attr @rip command_in[1] -port command_in[1] -pin command_reg0_reg[34:0] D[1] -pin command_reg1_reg[34:0] D[1]
load net dina0_i_n_53 -attr @rip O[10] -pin dina0_i O[10] -pin dina_i I1[10]
load net dina5_i_n_28 -attr @rip O[35] -pin dina4_i I1[35] -pin dina5_i O[35]
load net wt_address_bs2polvecp[7] -attr @rip write_address[7] -pin BC2PVEC write_address[7] -pin wt_address3_i I0[7]
load net dina0_i_n_54 -attr @rip O[9] -pin dina0_i O[9] -pin dina_i I1[9]
load net dina5_i_n_29 -attr @rip O[34] -pin dina4_i I1[34] -pin dina5_i O[34]
load net dout_cmov[41] -attr @rip write_data[41] -pin CMOV1 write_data[41] -pin dina7_i I0[41]
load net dout_sampler[26] -attr @rip sample_pack[26] -pin Sampler sample_pack[26] -pin dina6_i I0[26]
load net dout_addround[53] -attr @rip write_data[53] -pin AddRound0 write_data[53] -pin dina1_i I0[53]
load net dina0_i_n_55 -attr @rip O[8] -pin dina0_i O[8] -pin dina_i I1[8]
load net mlen[13] -attr @rip 13 -pin SH mlen[13] -pin command_reg1_reg[34:0] Q[13]
load net dout_addround[63] -attr @rip write_data[63] -pin AddRound0 write_data[63] -pin dina1_i I0[63]
load net dina0_i_n_56 -attr @rip O[7] -pin dina0_i O[7] -pin dina_i I1[7]
load net dout_sampler[63] -attr @rip sample_pack[63] -pin Sampler sample_pack[63] -pin dina6_i I0[63]
load net doutb_ext_OBUF[23] -attr @rip doutb[23] -pin AddPack0 read_data[23] -pin AddRound0 read_data[23] -pin BC2PVEC read_data[23] -pin BR doutb[23] -pin CMOV1 read_data[23] -pin SH din[23] -pin Sampler data_in[23] -pin VERIFY1 din[23] -pin VMUL0 ram_data_out[23] -pin copy read_data[23] -pin doutb_ext[63:0]_OBUF_inst I[23] -pin unpack0 read_data[23]
load net dout_addround[15] -attr @rip write_data[15] -pin AddRound0 write_data[15] -pin dina1_i I0[15]
load net dina0_i_n_57 -attr @rip O[6] -pin dina0_i O[6] -pin dina_i I1[6]
load net rd_address_unpack[1] -attr @rip read_address[1] -pin rd_address4_i I0[1] -pin unpack0 read_address[1]
load net dina0_i_n_58 -attr @rip O[5] -pin dina0_i O[5] -pin dina_i I1[5]
load net dina0_i_n_59 -attr @rip O[4] -pin dina0_i O[4] -pin dina_i I1[4]
load net dout_cmov[51] -attr @rip write_data[51] -pin CMOV1 write_data[51] -pin dina7_i I0[51]
load net dout_addpack[11] -attr @rip write_data[11] -pin AddPack0 write_data[11] -pin dina2_i I0[11]
load net dout_cmov[20] -attr @rip write_data[20] -pin CMOV1 write_data[20] -pin dina7_i I0[20]
load net dout_copy[46] -attr @rip write_data[46] -pin copy write_data[46] -pin dina5_i I0[46]
load net dout_sampler[52] -attr @rip sample_pack[52] -pin Sampler sample_pack[52] -pin dina6_i I0[52]
load net dout_unpack[16] -attr @rip write_data[16] -pin dina4_i I0[16] -pin unpack0 write_data[16]
load net dout_addround[21] -attr @rip write_data[21] -pin AddRound0 write_data[21] -pin dina1_i I0[21]
load net OP1[5] -attr @rip 5 -pin OP1_or_OP2_i I1[5] -pin command_reg0_reg[34:0] Q[10]
load net dout_bs2polvecp[49] -attr @rip write_data[49] -pin BC2PVEC write_data[49] -pin dina3_i I0[49]
load net dout_sampler[7] -attr @rip sample_pack[7] -pin Sampler sample_pack[7] -pin dina6_i I0[7]
load net dout_unpack[50] -attr @rip write_data[50] -pin dina4_i I0[50] -pin unpack0 write_data[50]
load net dina0_i_n_20 -attr @rip O[43] -pin dina0_i O[43] -pin dina_i I1[43]
load net dout_addpack[35] -attr @rip write_data[35] -pin AddPack0 write_data[35] -pin dina2_i I0[35]
load net dina0_i_n_21 -attr @rip O[42] -pin dina0_i O[42] -pin dina_i I1[42]
load net dina0_i_n_22 -attr @rip O[41] -pin dina0_i O[41] -pin dina_i I1[41]
load net dout_addpack[8] -attr @rip write_data[8] -pin AddPack0 write_data[8] -pin dina2_i I0[8]
load net dina0_i_n_23 -attr @rip O[40] -pin dina0_i O[40] -pin dina_i I1[40]
load net wt_address_vmul[1] -attr @rip write_address[1] -pin VMUL0 write_address[1] -pin wt_address0_i I0[1]
load net dina0_i_n_24 -attr @rip O[39] -pin dina0_i O[39] -pin dina_i I1[39]
load net command_in[0] -attr @rip command_in[0] -port command_in[0] -pin command_reg0_reg[34:0] D[0] -pin command_reg1_reg[34:0] D[0]
load net dout_addpack[41] -attr @rip write_data[41] -pin AddPack0 write_data[41] -pin dina2_i I0[41]
load net dout_copy[35] -attr @rip write_data[35] -pin copy write_data[35] -pin dina5_i I0[35]
load net dout_shake[54] -attr @rip dout[54] -pin SH dout[54] -pin dina_i I0[54]
load net dina0_i_n_25 -attr @rip O[38] -pin dina0_i O[38] -pin dina_i I1[38]
load net dout_shake[39] -attr @rip dout[39] -pin SH dout[39] -pin dina_i I0[39]
load net dina0_i_n_26 -attr @rip O[37] -pin dina0_i O[37] -pin dina_i I1[37]
load net dout_addround[2] -attr @rip write_data[2] -pin AddRound0 write_data[2] -pin dina1_i I0[2]
load net dout_sampler[13] -attr @rip sample_pack[13] -pin Sampler sample_pack[13] -pin dina6_i I0[13]
load net dina0_i_n_27 -attr @rip O[36] -pin dina0_i O[36] -pin dina_i I1[36]
load net mlen[12] -attr @rip 12 -pin SH mlen[12] -pin command_reg1_reg[34:0] Q[12]
load net s_load_happens_now -pin VMUL0 s_load_happens_now -pin op2_sel1_i I0
netloc s_load_happens_now 1 12 1 5550
load net wt_address_bs2polvecp[8] -attr @rip write_address[8] -pin BC2PVEC write_address[8] -pin wt_address3_i I0[8]
load net dina0_i_n_28 -attr @rip O[35] -pin dina0_i O[35] -pin dina_i I1[35]
load net dina2_i_n_10 -attr @rip O[53] -pin dina1_i I1[53] -pin dina2_i O[53]
load net dout_cmov[42] -attr @rip write_data[42] -pin CMOV1 write_data[42] -pin dina7_i I0[42]
load net dout_sampler[27] -attr @rip sample_pack[27] -pin Sampler sample_pack[27] -pin dina6_i I0[27]
load net dina0_i_n_29 -attr @rip O[34] -pin dina0_i O[34] -pin dina_i I1[34]
load net dina2_i_n_11 -attr @rip O[52] -pin dina1_i I1[52] -pin dina2_i O[52]
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ
load net dina2_i_n_12 -attr @rip O[51] -pin dina1_i I1[51] -pin dina2_i O[51]
load net dout_addround[16] -attr @rip write_data[16] -pin AddRound0 write_data[16] -pin dina1_i I0[16]
load net dina2_i_n_13 -attr @rip O[50] -pin dina1_i I1[50] -pin dina2_i O[50]
load net dout_cmov[50] -attr @rip write_data[50] -pin CMOV1 write_data[50] -pin dina7_i I0[50]
load net rd_address_unpack[2] -attr @rip read_address[2] -pin rd_address4_i I0[2] -pin unpack0 read_address[2]
load net dina2_i_n_14 -attr @rip O[49] -pin dina1_i I1[49] -pin dina2_i O[49]
load net dout_copy[45] -attr @rip write_data[45] -pin copy write_data[45] -pin dina5_i I0[45]
load net dout_sampler[51] -attr @rip sample_pack[51] -pin Sampler sample_pack[51] -pin dina6_i I0[51]
load net dina[45] -attr @rip O[45] -pin BR dina[45] -pin dina_i O[45]
load net dout_addround[20] -attr @rip write_data[20] -pin AddRound0 write_data[20] -pin dina1_i I0[20]
load net dina2_i_n_15 -attr @rip O[48] -pin dina1_i I1[48] -pin dina2_i O[48]
load net dout_sampler[6] -attr @rip sample_pack[6] -pin Sampler sample_pack[6] -pin dina6_i I0[6]
load net dina2_i_n_16 -attr @rip O[47] -pin dina1_i I1[47] -pin dina2_i O[47]
load net dout_addpack[34] -attr @rip write_data[34] -pin AddPack0 write_data[34] -pin dina2_i I0[34]
load net dina2_i_n_17 -attr @rip O[46] -pin dina1_i I1[46] -pin dina2_i O[46]
load net dina2_i_n_18 -attr @rip O[45] -pin dina1_i I1[45] -pin dina2_i O[45]
load net dout_unpack[51] -attr @rip write_data[51] -pin dina4_i I0[51] -pin unpack0 write_data[51]
load net dina0_i_n_30 -attr @rip O[33] -pin dina0_i O[33] -pin dina_i I1[33]
load net dina2_i_n_19 -attr @rip O[44] -pin dina1_i I1[44] -pin dina2_i O[44]
load net doutb_ext_OBUF[5] -attr @rip doutb[5] -pin AddPack0 read_data[5] -pin AddRound0 read_data[5] -pin BC2PVEC read_data[5] -pin BR doutb[5] -pin CMOV1 read_data[5] -pin SH din[5] -pin Sampler data_in[5] -pin VERIFY1 din[5] -pin VMUL0 ram_data_out[5] -pin copy read_data[5] -pin doutb_ext[63:0]_OBUF_inst I[5] -pin unpack0 read_data[5]
load net dina0_i_n_31 -attr @rip O[32] -pin dina0_i O[32] -pin dina_i I1[32]
load net dout_bs2polvecp[35] -attr @rip write_data[35] -pin BC2PVEC write_data[35] -pin dina3_i I0[35]
load net dout_copy[24] -attr @rip write_data[24] -pin copy write_data[24] -pin dina5_i I0[24]
load net dina0_i_n_32 -attr @rip O[31] -pin dina0_i O[31] -pin dina_i I1[31]
load net dout_shake[53] -attr @rip dout[53] -pin SH dout[53] -pin dina_i I0[53]
load net dina0_i_n_33 -attr @rip O[30] -pin dina0_i O[30] -pin dina_i I1[30]
load net dout_addpack[18] -attr @rip write_data[18] -pin AddPack0 write_data[18] -pin dina2_i I0[18]
load net dout_shake[38] -attr @rip dout[38] -pin SH dout[38] -pin dina_i I0[38]
load net rst_copy -pin copy rst -pin dina5_i S -pin rd_address5_i S -pin rst_copy_i O -pin wea5_i S -pin wt_address5_i S
netloc rst_copy 1 8 3 3400 1020 3880 N 4410
load net dout_addround[1] -attr @rip write_data[1] -pin AddRound0 write_data[1] -pin dina1_i I0[1]
load net dina0_i_n_34 -attr @rip O[29] -pin dina0_i O[29] -pin dina_i I1[29]
load net clear_sha0 -pin clear_sha0_i O -pin clear_sha_i I1
netloc clear_sha0 1 13 1 6070J
load net dina0_i_n_35 -attr @rip O[28] -pin dina0_i O[28] -pin dina_i I1[28]
load net dina0_i_n_36 -attr @rip O[27] -pin dina0_i O[27] -pin dina_i I1[27]
load net command_in[3] -attr @rip command_in[3] -port command_in[3] -pin command_reg0_reg[34:0] D[3] -pin command_reg1_reg[34:0] D[3]
load net dout_sampler[14] -attr @rip sample_pack[14] -pin Sampler sample_pack[14] -pin dina6_i I0[14]
load net dina0_i_n_37 -attr @rip O[26] -pin dina0_i O[26] -pin dina_i I1[26]
load net dout_bs2polvecp[25] -attr @rip write_data[25] -pin BC2PVEC write_data[25] -pin dina3_i I0[25]
load net dina0_i_n_38 -attr @rip O[25] -pin dina0_i O[25] -pin dina_i I1[25]
load net rd_address_sampler[7] -attr @rip rd_address[7] -pin Sampler rd_address[7] -pin rd_address6_i I0[7]
load net dout_bs2polvecp[11] -attr @rip write_data[11] -pin BC2PVEC write_data[11] -pin dina3_i I0[11]
load net dina0_i_n_39 -attr @rip O[24] -pin dina0_i O[24] -pin dina_i I1[24]
load net dout_addpack[50] -attr @rip write_data[50] -pin AddPack0 write_data[50] -pin dina2_i I0[50]
load net dout_addround[17] -attr @rip write_data[17] -pin AddRound0 write_data[17] -pin dina1_i I0[17]
load net rd_address_bs2polvecp[7] -attr @rip read_address[7] -pin BC2PVEC read_address[7] -pin rd_address3_i I0[7]
load net rd_address_unpack[3] -attr @rip read_address[3] -pin rd_address4_i I0[3] -pin unpack0 read_address[3]
load net dout_cmov[47] -attr @rip write_data[47] -pin CMOV1 write_data[47] -pin dina7_i I0[47]
load net doutb_ext_OBUF[62] -attr @rip doutb[62] -pin AddPack0 read_data[62] -pin AddRound0 read_data[62] -pin BC2PVEC read_data[62] -pin BR doutb[62] -pin CMOV1 read_data[62] -pin SH din[62] -pin Sampler data_in[62] -pin VERIFY1 din[62] -pin VMUL0 ram_data_out[62] -pin copy read_data[62] -pin doutb_ext[63:0]_OBUF_inst I[62] -pin unpack0 read_data[62]
load net dina[46] -attr @rip O[46] -pin BR dina[46] -pin dina_i O[46]
load net dout_addpack[33] -attr @rip write_data[33] -pin AddPack0 write_data[33] -pin dina2_i I0[33]
load net dout_cmov[53] -attr @rip write_data[53] -pin CMOV1 write_data[53] -pin dina7_i I0[53]
load net enable_sha0 -pin enable_sha0_i O -pin enable_sha_i I0
netloc enable_sha0 1 11 1 5070
load net dout_shake[40] -attr @rip dout[40] -pin SH dout[40] -pin dina_i I0[40]
load net enable_sha1 -pin enable_sha0_i I0 -pin enable_sha1_i O
netloc enable_sha1 1 10 1 4590
load net dout_sampler[9] -attr @rip sample_pack[9] -pin Sampler sample_pack[9] -pin dina6_i I0[9]
load net doutb_ext_OBUF[4] -attr @rip doutb[4] -pin AddPack0 read_data[4] -pin AddRound0 read_data[4] -pin BC2PVEC read_data[4] -pin BR doutb[4] -pin CMOV1 read_data[4] -pin SH din[4] -pin Sampler data_in[4] -pin VERIFY1 din[4] -pin VMUL0 ram_data_out[4] -pin copy read_data[4] -pin doutb_ext[63:0]_OBUF_inst I[4] -pin unpack0 read_data[4]
load net enable_sha2 -pin enable_sha1_i I0 -pin enable_sha2_i O
netloc enable_sha2 1 9 1 3940J
load net done_addpack -pin AddPack0 done -port done_addpack
netloc done_addpack 1 19 1 NJ
load net dout_copy[23] -attr @rip write_data[23] -pin copy write_data[23] -pin dina5_i I0[23]
load net dout_unpack[52] -attr @rip write_data[52] -pin dina4_i I0[52] -pin unpack0 write_data[52]
load net dout_addpack[17] -attr @rip write_data[17] -pin AddPack0 write_data[17] -pin dina2_i I0[17]
load net dout_bs2polvecp[36] -attr @rip write_data[36] -pin BC2PVEC write_data[36] -pin dina3_i I0[36]
load net dout_shake[37] -attr @rip dout[37] -pin SH dout[37] -pin dina_i I0[37]
load net dout_sampler[11] -attr @rip sample_pack[11] -pin Sampler sample_pack[11] -pin dina6_i I0[11]
load net dout_addround[10] -attr @rip write_data[10] -pin AddRound0 write_data[10] -pin dina1_i I0[10]
load net doutb_ext[40] -attr @rip 40 -port doutb_ext[40] -pin doutb_ext[63:0]_OBUF_inst O[40]
load net rd_address_addpack[7] -attr @rip read_address[7] -pin AddPack0 read_address[7] -pin rd_address2_i I0[7]
load net command_in[2] -attr @rip command_in[2] -port command_in[2] -pin command_reg0_reg[34:0] D[2] -pin command_reg1_reg[34:0] D[2]
load net dina[19] -attr @rip O[19] -pin BR dina[19] -pin dina_i O[19]
load net dout_bs2polvecp[24] -attr @rip write_data[24] -pin BC2PVEC write_data[24] -pin dina3_i I0[24]
load net dout_addround[4] -attr @rip write_data[4] -pin AddRound0 write_data[4] -pin dina1_i I0[4]
load net unpack0|read_data[22] -attr @rip read_data[22] -attr @name read_data[22] -hierPin unpack0 read_data[22] -pin unpack0|op_buffer_i I0[22] -pin unpack0|v_buffer_reg[63:0] D[22]
load net doutb_ext_OBUF[57] -attr @rip doutb[57] -pin AddPack0 read_data[57] -pin AddRound0 read_data[57] -pin BC2PVEC read_data[57] -pin BR doutb[57] -pin CMOV1 read_data[57] -pin SH din[57] -pin Sampler data_in[57] -pin VERIFY1 din[57] -pin VMUL0 ram_data_out[57] -pin copy read_data[57] -pin doutb_ext[63:0]_OBUF_inst I[57] -pin unpack0 read_data[57]
load net rd_address_sampler[8] -attr @rip rd_address[8] -pin Sampler rd_address[8] -pin rd_address6_i I0[8]
load net dout_bs2polvecp[12] -attr @rip write_data[12] -pin BC2PVEC write_data[12] -pin dina3_i I0[12]
load net wea_unpack -pin unpack0 write_en -pin wea4_i I0
netloc wea_unpack 1 5 7 1940J 1100 NJ 1100 NJ 1100 3440J 1050 3900J 1150 4490J 1240 5070
load net dout_cmov[52] -attr @rip write_data[52] -pin CMOV1 write_data[52] -pin dina7_i I0[52]
load net rd_address_bs2polvecp[8] -attr @rip read_address[8] -pin BC2PVEC read_address[8] -pin rd_address3_i I0[8]
load net rd_address_unpack[4] -attr @rip read_address[4] -pin rd_address4_i I0[4] -pin unpack0 read_address[4]
load net dout_cmov[48] -attr @rip write_data[48] -pin CMOV1 write_data[48] -pin dina7_i I0[48]
load net doutb_ext_OBUF[63] -attr @rip doutb[63] -pin AddPack0 read_data[63] -pin AddRound0 read_data[63] -pin BC2PVEC read_data[63] -pin BR doutb[63] -pin CMOV1 read_data[63] -pin SH din[63] -pin Sampler data_in[63] -pin VERIFY1 din[63] -pin VMUL0 ram_data_out[63] -pin copy read_data[63] -pin doutb_ext[63:0]_OBUF_inst I[63] -pin unpack0 read_data[63]
load net dina[47] -attr @rip O[47] -pin BR dina[47] -pin dina_i O[47]
load net dina0_i_n_10 -attr @rip O[53] -pin dina0_i O[53] -pin dina_i I1[53]
load net dout_sampler[8] -attr @rip sample_pack[8] -pin Sampler sample_pack[8] -pin dina6_i I0[8]
load net dina0_i_n_11 -attr @rip O[52] -pin dina0_i O[52] -pin dina_i I1[52]
load net dout_bs2polvecp[33] -attr @rip write_data[33] -pin BC2PVEC write_data[33] -pin dina3_i I0[33]
load net dout_copy[22] -attr @rip write_data[22] -pin copy write_data[22] -pin dina5_i I0[22]
load net dout_shake[41] -attr @rip dout[41] -pin SH dout[41] -pin dina_i I0[41]
load net dina0_i_n_12 -attr @rip O[51] -pin dina0_i O[51] -pin dina_i I1[51]
load net dout_addpack[16] -attr @rip write_data[16] -pin AddPack0 write_data[16] -pin dina2_i I0[16]
load net dina0_i_n_13 -attr @rip O[50] -pin dina0_i O[50] -pin dina_i I1[50]
load net dout_addround[26] -attr @rip write_data[26] -pin AddRound0 write_data[26] -pin dina1_i I0[26]
load net dina0_i_n_14 -attr @rip O[49] -pin dina0_i O[49] -pin dina_i I1[49]
load net doutb_ext_OBUF[7] -attr @rip doutb[7] -pin AddPack0 read_data[7] -pin AddRound0 read_data[7] -pin BC2PVEC read_data[7] -pin BR doutb[7] -pin CMOV1 read_data[7] -pin SH din[7] -pin Sampler data_in[7] -pin VERIFY1 din[7] -pin VMUL0 ram_data_out[7] -pin copy read_data[7] -pin doutb_ext[63:0]_OBUF_inst I[7] -pin unpack0 read_data[7]
load net dina0_i_n_15 -attr @rip O[48] -pin dina0_i O[48] -pin dina_i I1[48]
load net dina0_i_n_16 -attr @rip O[47] -pin dina0_i O[47] -pin dina_i I1[47]
load net dout_sampler[12] -attr @rip sample_pack[12] -pin Sampler sample_pack[12] -pin dina6_i I0[12]
load net dina[18] -attr @rip O[18] -pin BR dina[18] -pin dina_i O[18]
load net dout_addround[11] -attr @rip write_data[11] -pin AddRound0 write_data[11] -pin dina1_i I0[11]
load net dina0_i_n_17 -attr @rip O[46] -pin dina0_i O[46] -pin dina_i I1[46]
load net doutb_ext[41] -attr @rip 41 -port doutb_ext[41] -pin doutb_ext[63:0]_OBUF_inst O[41]
load net rd_address_addpack[8] -attr @rip read_address[8] -pin AddPack0 read_address[8] -pin rd_address2_i I0[8]
load net dout_addround[3] -attr @rip write_data[3] -pin AddRound0 write_data[3] -pin dina1_i I0[3]
load net dina0_i_n_18 -attr @rip O[45] -pin dina0_i O[45] -pin dina_i I1[45]
load net dina0_i_n_19 -attr @rip O[44] -pin dina0_i O[44] -pin dina_i I1[44]
load net command_in[5] -attr @rip command_in[5] -port command_in[5] -pin command_reg0_reg[34:0] D[5] -pin command_reg1_reg[34:0] D[5]
load net dout_cmov[0] -attr @rip write_data[0] -pin CMOV1 write_data[0] -pin dina7_i I0[0]
load net unpack0|read_data[23] -attr @rip read_data[23] -attr @name read_data[23] -hierPin unpack0 read_data[23] -pin unpack0|op_buffer_i I0[23] -pin unpack0|v_buffer_reg[63:0] D[23]
load net dout_bs2polvecp[27] -attr @rip write_data[27] -pin BC2PVEC write_data[27] -pin dina3_i I0[27]
load net rd_address_bs2polvecp[5] -attr @rip read_address[5] -pin BC2PVEC read_address[5] -pin rd_address3_i I0[5]
load net dina2_i_n_40 -attr @rip O[23] -pin dina1_i I1[23] -pin dina2_i O[23]
load net command_in[32] -attr @rip command_in[32] -port command_in[32] -pin command_reg0_reg[34:0] D[32] -pin command_reg1_reg[34:0] D[32]
load net dout_cmov[45] -attr @rip write_data[45] -pin CMOV1 write_data[45] -pin dina7_i I0[45]
load net doutb_ext_OBUF[58] -attr @rip doutb[58] -pin AddPack0 read_data[58] -pin AddRound0 read_data[58] -pin BC2PVEC read_data[58] -pin BR doutb[58] -pin CMOV1 read_data[58] -pin SH din[58] -pin Sampler data_in[58] -pin VERIFY1 din[58] -pin VMUL0 ram_data_out[58] -pin copy read_data[58] -pin doutb_ext[63:0]_OBUF_inst I[58] -pin unpack0 read_data[58]
load net dina2_i_n_41 -attr @rip O[22] -pin dina1_i I1[22] -pin dina2_i O[22]
load net dout_bs2polvecp[13] -attr @rip write_data[13] -pin BC2PVEC write_data[13] -pin dina3_i I0[13]
load net dina2_i_n_42 -attr @rip O[21] -pin dina1_i I1[21] -pin dina2_i O[21]
load net dina2_i_n_43 -attr @rip O[20] -pin dina1_i I1[20] -pin dina2_i O[20]
load net rd_address_unpack[5] -attr @rip read_address[5] -pin rd_address4_i I0[5] -pin unpack0 read_address[5]
load net dina2_i_n_44 -attr @rip O[19] -pin dina1_i I1[19] -pin dina2_i O[19]
load net dout_copy[21] -attr @rip write_data[21] -pin copy write_data[21] -pin dina5_i I0[21]
load net rd_address_sampler[4] -attr @rip rd_address[4] -pin Sampler rd_address[4] -pin rd_address6_i I0[4]
load net dina2_i_n_45 -attr @rip O[18] -pin dina1_i I1[18] -pin dina2_i O[18]
load net dina[48] -attr @rip O[48] -pin BR dina[48] -pin dina_i O[48]
load net rst_sampler -pin Sampler rst -pin dina6_i S -pin rd_address6_i S -pin rst_sampler_i O -pin wea6_i S -pin wt_address6_i S
netloc rst_sampler 1 7 3 2790 530 3440 N 4100
load net dout_addpack[15] -attr @rip write_data[15] -pin AddPack0 write_data[15] -pin dina2_i I0[15]
load net dina2_i_n_46 -attr @rip O[17] -pin dina1_i I1[17] -pin dina2_i O[17]
load net dout_bs2polvecp[34] -attr @rip write_data[34] -pin BC2PVEC write_data[34] -pin dina3_i I0[34]
load net dout_addround[25] -attr @rip write_data[25] -pin AddRound0 write_data[25] -pin dina1_i I0[25]
load net dina2_i_n_47 -attr @rip O[16] -pin dina1_i I1[16] -pin dina2_i O[16]
load net doutb_ext_OBUF[6] -attr @rip doutb[6] -pin AddPack0 read_data[6] -pin AddRound0 read_data[6] -pin BC2PVEC read_data[6] -pin BR doutb[6] -pin CMOV1 read_data[6] -pin SH din[6] -pin Sampler data_in[6] -pin VERIFY1 din[6] -pin VMUL0 ram_data_out[6] -pin copy read_data[6] -pin doutb_ext[63:0]_OBUF_inst I[6] -pin unpack0 read_data[6]
load net dina2_i_n_48 -attr @rip O[15] -pin dina1_i I1[15] -pin dina2_i O[15]
load net dina2_i_n_49 -attr @rip O[14] -pin dina1_i I1[14] -pin dina2_i O[14]
load net dout_sampler[41] -attr @rip sample_pack[41] -pin Sampler sample_pack[41] -pin dina6_i I0[41]
load net unpack0|read_data[20] -attr @rip read_data[20] -attr @name read_data[20] -hierPin unpack0 read_data[20] -pin unpack0|op_buffer_i I0[20] -pin unpack0|v_buffer_reg[63:0] D[20]
load net command_in[12] -attr @rip command_in[12] -port command_in[12] -pin command_reg0_reg[34:0] D[12] -pin command_reg1_reg[34:0] D[12]
load net dout_addround[12] -attr @rip write_data[12] -pin AddRound0 write_data[12] -pin dina1_i I0[12]
load net doutb_ext[42] -attr @rip 42 -port doutb_ext[42] -pin doutb_ext[63:0]_OBUF_inst O[42]
load net command_in[4] -attr @rip command_in[4] -port command_in[4] -pin command_reg0_reg[34:0] D[4] -pin command_reg1_reg[34:0] D[4]
load net doutb_ext[34] -attr @rip 34 -port doutb_ext[34] -pin doutb_ext[63:0]_OBUF_inst O[34]
load net dout_bs2polvecp[26] -attr @rip write_data[26] -pin BC2PVEC write_data[26] -pin dina3_i I0[26]
load net command_in[31] -attr @rip command_in[31] -port command_in[31] -pin command_reg0_reg[34:0] D[31] -pin command_reg1_reg[34:0] D[31]
load net dout_addround[6] -attr @rip write_data[6] -pin AddRound0 write_data[6] -pin dina1_i I0[6]
load net addrb[8] -attr @rip O[8] -pin BR addrb[8] -pin addrb_i O[8]
load net rd_address_bs2polvecp[6] -attr @rip read_address[6] -pin BC2PVEC read_address[6] -pin rd_address3_i I0[6]
load net dina2_i_n_50 -attr @rip O[13] -pin dina1_i I1[13] -pin dina2_i O[13]
load net dout_cmov[46] -attr @rip write_data[46] -pin CMOV1 write_data[46] -pin dina7_i I0[46]
load net doutb_ext[8] -attr @rip 8 -port doutb_ext[8] -pin doutb_ext[63:0]_OBUF_inst O[8]
load net doutb_ext_OBUF[59] -attr @rip doutb[59] -pin AddPack0 read_data[59] -pin AddRound0 read_data[59] -pin BC2PVEC read_data[59] -pin BR doutb[59] -pin CMOV1 read_data[59] -pin SH din[59] -pin Sampler data_in[59] -pin VERIFY1 din[59] -pin VMUL0 ram_data_out[59] -pin copy read_data[59] -pin doutb_ext[63:0]_OBUF_inst I[59] -pin unpack0 read_data[59]
load netBundle @rd_address3_i_n_0 10 rd_address3_i_n_0 rd_address3_i_n_1 rd_address3_i_n_2 rd_address3_i_n_3 rd_address3_i_n_4 rd_address3_i_n_5 rd_address3_i_n_6 rd_address3_i_n_7 rd_address3_i_n_8 rd_address3_i_n_9 -autobundled
netbloc @rd_address3_i_n_0 1 12 1 5630
load netBundle @dina7_i_n_0,dina7_i_n_1 64 dina7_i_n_0 dina7_i_n_1 dina7_i_n_2 dina7_i_n_3 dina7_i_n_4 dina7_i_n_5 dina7_i_n_6 dina7_i_n_7 dina7_i_n_8 dina7_i_n_9 dina7_i_n_10 dina7_i_n_11 dina7_i_n_12 dina7_i_n_13 dina7_i_n_14 dina7_i_n_15 dina7_i_n_16 dina7_i_n_17 dina7_i_n_18 dina7_i_n_19 dina7_i_n_20 dina7_i_n_21 dina7_i_n_22 dina7_i_n_23 dina7_i_n_24 dina7_i_n_25 dina7_i_n_26 dina7_i_n_27 dina7_i_n_28 dina7_i_n_29 dina7_i_n_30 dina7_i_n_31 dina7_i_n_32 dina7_i_n_33 dina7_i_n_34 dina7_i_n_35 dina7_i_n_36 dina7_i_n_37 dina7_i_n_38 dina7_i_n_39 dina7_i_n_40 dina7_i_n_41 dina7_i_n_42 dina7_i_n_43 dina7_i_n_44 dina7_i_n_45 dina7_i_n_46 dina7_i_n_47 dina7_i_n_48 dina7_i_n_49 dina7_i_n_50 dina7_i_n_51 dina7_i_n_52 dina7_i_n_53 dina7_i_n_54 dina7_i_n_55 dina7_i_n_56 dina7_i_n_57 dina7_i_n_58 dina7_i_n_59 dina7_i_n_60 dina7_i_n_61 dina7_i_n_62 dina7_i_n_63 -autobundled
netbloc @dina7_i_n_0,dina7_i_n_1 1 9 1 3860
load netBundle @addra 10 addra[9] addra[8] addra[7] addra[6] addra[5] addra[4] addra[3] addra[2] addra[1] addra[0] -autobundled
netbloc @addra 1 17 1 8240
load netBundle @dina4_i_n_0,dina4_i_n_1 64 dina4_i_n_0 dina4_i_n_1 dina4_i_n_2 dina4_i_n_3 dina4_i_n_4 dina4_i_n_5 dina4_i_n_6 dina4_i_n_7 dina4_i_n_8 dina4_i_n_9 dina4_i_n_10 dina4_i_n_11 dina4_i_n_12 dina4_i_n_13 dina4_i_n_14 dina4_i_n_15 dina4_i_n_16 dina4_i_n_17 dina4_i_n_18 dina4_i_n_19 dina4_i_n_20 dina4_i_n_21 dina4_i_n_22 dina4_i_n_23 dina4_i_n_24 dina4_i_n_25 dina4_i_n_26 dina4_i_n_27 dina4_i_n_28 dina4_i_n_29 dina4_i_n_30 dina4_i_n_31 dina4_i_n_32 dina4_i_n_33 dina4_i_n_34 dina4_i_n_35 dina4_i_n_36 dina4_i_n_37 dina4_i_n_38 dina4_i_n_39 dina4_i_n_40 dina4_i_n_41 dina4_i_n_42 dina4_i_n_43 dina4_i_n_44 dina4_i_n_45 dina4_i_n_46 dina4_i_n_47 dina4_i_n_48 dina4_i_n_49 dina4_i_n_50 dina4_i_n_51 dina4_i_n_52 dina4_i_n_53 dina4_i_n_54 dina4_i_n_55 dina4_i_n_56 dina4_i_n_57 dina4_i_n_58 dina4_i_n_59 dina4_i_n_60 dina4_i_n_61 dina4_i_n_62 dina4_i_n_63 -autobundled
netbloc @dina4_i_n_0,dina4_i_n_1 1 12 1 5570
load netBundle @rd_address_verify 9 rd_address_verify[8] rd_address_verify[7] rd_address_verify[6] rd_address_verify[5] rd_address_verify[4] rd_address_verify[3] rd_address_verify[2] rd_address_verify[1] rd_address_verify[0] -autobundled
netbloc @rd_address_verify 1 4 4 1180 1700 2060J 1680 NJ 1680 2810J
load netBundle @rd_address_copy 9 rd_address_copy[8] rd_address_copy[7] rd_address_copy[6] rd_address_copy[5] rd_address_copy[4] rd_address_copy[3] rd_address_copy[2] rd_address_copy[1] rd_address_copy[0] -autobundled
netbloc @rd_address_copy 1 9 1 4040
load netBundle @addrb 10 addrb[9] addrb[8] addrb[7] addrb[6] addrb[5] addrb[4] addrb[3] addrb[2] addrb[1] addrb[0] -autobundled
netbloc @addrb 1 17 1 8200
load netBundle @wt_address1_i_n_0 10 wt_address1_i_n_0 wt_address1_i_n_1 wt_address1_i_n_2 wt_address1_i_n_3 wt_address1_i_n_4 wt_address1_i_n_5 wt_address1_i_n_6 wt_address1_i_n_7 wt_address1_i_n_8 wt_address1_i_n_9 -autobundled
netbloc @wt_address1_i_n_0 1 14 1 6770
load netBundle @OP3,OP2,OP1,INS 35 OP3[9] OP3[8] OP3[7] OP3[6] OP3[5] OP3[4] OP3[3] OP3[2] OP3[1] OP3[0] OP2[9] OP2[8] OP2[7] OP2[6] OP2[5] OP2[4] OP2[3] OP2[2] OP2[1] OP2[0] OP1[9] OP1[8] OP1[7] OP1[6] OP1[5] OP1[4] OP1[3] OP1[2] OP1[1] OP1[0] INS[4] INS[3] INS[2] INS[1] INS[0] -autobundled
netbloc @OP3,OP2,OP1,INS 1 2 15 470 1550 820 1410 1240 1030 NJ 1030 2500 1030 2810 N 3320 1000 4060 1130 4550 1140 5110 960 5610 1140 6090 N 6710 1150 7420 1440 7860J
load netBundle @rd_address_vmul 9 rd_address_vmul[8] rd_address_vmul[7] rd_address_vmul[6] rd_address_vmul[5] rd_address_vmul[4] rd_address_vmul[3] rd_address_vmul[2] rd_address_vmul[1] rd_address_vmul[0] -autobundled
netbloc @rd_address_vmul 1 12 3 5570 1250 NJ 1250 6870J
load netBundle @rd_address_sampler 9 rd_address_sampler[8] rd_address_sampler[7] rd_address_sampler[6] rd_address_sampler[5] rd_address_sampler[4] rd_address_sampler[3] rd_address_sampler[2] rd_address_sampler[1] rd_address_sampler[0] -autobundled
netbloc @rd_address_sampler 1 8 1 3380
load netBundle @rd_address4_i_n_0 10 rd_address4_i_n_0 rd_address4_i_n_1 rd_address4_i_n_2 rd_address4_i_n_3 rd_address4_i_n_4 rd_address4_i_n_5 rd_address4_i_n_6 rd_address4_i_n_7 rd_address4_i_n_8 rd_address4_i_n_9 -autobundled
netbloc @rd_address4_i_n_0 1 11 1 5010
load netBundle @dina 64 dina[63] dina[62] dina[61] dina[60] dina[59] dina[58] dina[57] dina[56] dina[55] dina[54] dina[53] dina[52] dina[51] dina[50] dina[49] dina[48] dina[47] dina[46] dina[45] dina[44] dina[43] dina[42] dina[41] dina[40] dina[39] dina[38] dina[37] dina[36] dina[35] dina[34] dina[33] dina[32] dina[31] dina[30] dina[29] dina[28] dina[27] dina[26] dina[25] dina[24] dina[23] dina[22] dina[21] dina[20] dina[19] dina[18] dina[17] dina[16] dina[15] dina[14] dina[13] dina[12] dina[11] dina[10] dina[9] dina[8] dina[7] dina[6] dina[5] dina[4] dina[3] dina[2] dina[1] dina[0] -autobundled
netbloc @dina 1 17 1 8220
load netBundle @dout_copy 64 dout_copy[63] dout_copy[62] dout_copy[61] dout_copy[60] dout_copy[59] dout_copy[58] dout_copy[57] dout_copy[56] dout_copy[55] dout_copy[54] dout_copy[53] dout_copy[52] dout_copy[51] dout_copy[50] dout_copy[49] dout_copy[48] dout_copy[47] dout_copy[46] dout_copy[45] dout_copy[44] dout_copy[43] dout_copy[42] dout_copy[41] dout_copy[40] dout_copy[39] dout_copy[38] dout_copy[37] dout_copy[36] dout_copy[35] dout_copy[34] dout_copy[33] dout_copy[32] dout_copy[31] dout_copy[30] dout_copy[29] dout_copy[28] dout_copy[27] dout_copy[26] dout_copy[25] dout_copy[24] dout_copy[23] dout_copy[22] dout_copy[21] dout_copy[20] dout_copy[19] dout_copy[18] dout_copy[17] dout_copy[16] dout_copy[15] dout_copy[14] dout_copy[13] dout_copy[12] dout_copy[11] dout_copy[10] dout_copy[9] dout_copy[8] dout_copy[7] dout_copy[6] dout_copy[5] dout_copy[4] dout_copy[3] dout_copy[2] dout_copy[1] dout_copy[0] -autobundled
netbloc @dout_copy 1 9 2 3880J 840 4650
load netBundle @OP1_or_OP2 10 OP1_or_OP2[9] OP1_or_OP2[8] OP1_or_OP2[7] OP1_or_OP2[6] OP1_or_OP2[5] OP1_or_OP2[4] OP1_or_OP2[3] OP1_or_OP2[2] OP1_or_OP2[1] OP1_or_OP2[0] -autobundled
netbloc @OP1_or_OP2 1 16 1 N
load netBundle @wt_address4_i_n_0 10 wt_address4_i_n_0 wt_address4_i_n_1 wt_address4_i_n_2 wt_address4_i_n_3 wt_address4_i_n_4 wt_address4_i_n_5 wt_address4_i_n_6 wt_address4_i_n_7 wt_address4_i_n_8 wt_address4_i_n_9 -autobundled
netbloc @wt_address4_i_n_0 1 11 1 5030
load netBundle @rd_address_unpack 9 rd_address_unpack[8] rd_address_unpack[7] rd_address_unpack[6] rd_address_unpack[5] rd_address_unpack[4] rd_address_unpack[3] rd_address_unpack[2] rd_address_unpack[1] rd_address_unpack[0] -autobundled
netbloc @rd_address_unpack 1 5 6 1900J 1340 NJ 1340 2810J 1350 NJ 1350 NJ 1350 4510
load netBundle @rd_address7_i_n_0 10 rd_address7_i_n_0 rd_address7_i_n_1 rd_address7_i_n_2 rd_address7_i_n_3 rd_address7_i_n_4 rd_address7_i_n_5 rd_address7_i_n_6 rd_address7_i_n_7 rd_address7_i_n_8 rd_address7_i_n_9 -autobundled
netbloc @rd_address7_i_n_0 1 8 1 3460
load netBundle @dout_sampler 64 dout_sampler[63] dout_sampler[62] dout_sampler[61] dout_sampler[60] dout_sampler[59] dout_sampler[58] dout_sampler[57] dout_sampler[56] dout_sampler[55] dout_sampler[54] dout_sampler[53] dout_sampler[52] dout_sampler[51] dout_sampler[50] dout_sampler[49] dout_sampler[48] dout_sampler[47] dout_sampler[46] dout_sampler[45] dout_sampler[44] dout_sampler[43] dout_sampler[42] dout_sampler[41] dout_sampler[40] dout_sampler[39] dout_sampler[38] dout_sampler[37] dout_sampler[36] dout_sampler[35] dout_sampler[34] dout_sampler[33] dout_sampler[32] dout_sampler[31] dout_sampler[30] dout_sampler[29] dout_sampler[28] dout_sampler[27] dout_sampler[26] dout_sampler[25] dout_sampler[24] dout_sampler[23] dout_sampler[22] dout_sampler[21] dout_sampler[20] dout_sampler[19] dout_sampler[18] dout_sampler[17] dout_sampler[16] dout_sampler[15] dout_sampler[14] dout_sampler[13] dout_sampler[12] dout_sampler[11] dout_sampler[10] dout_sampler[9] dout_sampler[8] dout_sampler[7] dout_sampler[6] dout_sampler[5] dout_sampler[4] dout_sampler[3] dout_sampler[2] dout_sampler[1] dout_sampler[0] -autobundled
netbloc @dout_sampler 1 8 2 NJ 630 4080
load netBundle @command_in 35 command_in[34] command_in[33] command_in[32] command_in[31] command_in[30] command_in[29] command_in[28] command_in[27] command_in[26] command_in[25] command_in[24] command_in[23] command_in[22] command_in[21] command_in[20] command_in[19] command_in[18] command_in[17] command_in[16] command_in[15] command_in[14] command_in[13] command_in[12] command_in[11] command_in[10] command_in[9] command_in[8] command_in[7] command_in[6] command_in[5] command_in[4] command_in[3] command_in[2] command_in[1] command_in[0] -autobundled
netbloc @command_in 1 0 3 NJ 1680 160 1760 NJ
load netBundle @dina2_i_n_0,dina2_i_n_1 64 dina2_i_n_0 dina2_i_n_1 dina2_i_n_2 dina2_i_n_3 dina2_i_n_4 dina2_i_n_5 dina2_i_n_6 dina2_i_n_7 dina2_i_n_8 dina2_i_n_9 dina2_i_n_10 dina2_i_n_11 dina2_i_n_12 dina2_i_n_13 dina2_i_n_14 dina2_i_n_15 dina2_i_n_16 dina2_i_n_17 dina2_i_n_18 dina2_i_n_19 dina2_i_n_20 dina2_i_n_21 dina2_i_n_22 dina2_i_n_23 dina2_i_n_24 dina2_i_n_25 dina2_i_n_26 dina2_i_n_27 dina2_i_n_28 dina2_i_n_29 dina2_i_n_30 dina2_i_n_31 dina2_i_n_32 dina2_i_n_33 dina2_i_n_34 dina2_i_n_35 dina2_i_n_36 dina2_i_n_37 dina2_i_n_38 dina2_i_n_39 dina2_i_n_40 dina2_i_n_41 dina2_i_n_42 dina2_i_n_43 dina2_i_n_44 dina2_i_n_45 dina2_i_n_46 dina2_i_n_47 dina2_i_n_48 dina2_i_n_49 dina2_i_n_50 dina2_i_n_51 dina2_i_n_52 dina2_i_n_53 dina2_i_n_54 dina2_i_n_55 dina2_i_n_56 dina2_i_n_57 dina2_i_n_58 dina2_i_n_59 dina2_i_n_60 dina2_i_n_61 dina2_i_n_62 dina2_i_n_63 -autobundled
netbloc @dina2_i_n_0,dina2_i_n_1 1 14 1 N
load netBundle @dina3_i_n_0,dina3_i_n_1 64 dina3_i_n_0 dina3_i_n_1 dina3_i_n_2 dina3_i_n_3 dina3_i_n_4 dina3_i_n_5 dina3_i_n_6 dina3_i_n_7 dina3_i_n_8 dina3_i_n_9 dina3_i_n_10 dina3_i_n_11 dina3_i_n_12 dina3_i_n_13 dina3_i_n_14 dina3_i_n_15 dina3_i_n_16 dina3_i_n_17 dina3_i_n_18 dina3_i_n_19 dina3_i_n_20 dina3_i_n_21 dina3_i_n_22 dina3_i_n_23 dina3_i_n_24 dina3_i_n_25 dina3_i_n_26 dina3_i_n_27 dina3_i_n_28 dina3_i_n_29 dina3_i_n_30 dina3_i_n_31 dina3_i_n_32 dina3_i_n_33 dina3_i_n_34 dina3_i_n_35 dina3_i_n_36 dina3_i_n_37 dina3_i_n_38 dina3_i_n_39 dina3_i_n_40 dina3_i_n_41 dina3_i_n_42 dina3_i_n_43 dina3_i_n_44 dina3_i_n_45 dina3_i_n_46 dina3_i_n_47 dina3_i_n_48 dina3_i_n_49 dina3_i_n_50 dina3_i_n_51 dina3_i_n_52 dina3_i_n_53 dina3_i_n_54 dina3_i_n_55 dina3_i_n_56 dina3_i_n_57 dina3_i_n_58 dina3_i_n_59 dina3_i_n_60 dina3_i_n_61 dina3_i_n_62 dina3_i_n_63 -autobundled
netbloc @dina3_i_n_0,dina3_i_n_1 1 13 1 6190
load netBundle @dina5_i_n_0,dina5_i_n_1 64 dina5_i_n_0 dina5_i_n_1 dina5_i_n_2 dina5_i_n_3 dina5_i_n_4 dina5_i_n_5 dina5_i_n_6 dina5_i_n_7 dina5_i_n_8 dina5_i_n_9 dina5_i_n_10 dina5_i_n_11 dina5_i_n_12 dina5_i_n_13 dina5_i_n_14 dina5_i_n_15 dina5_i_n_16 dina5_i_n_17 dina5_i_n_18 dina5_i_n_19 dina5_i_n_20 dina5_i_n_21 dina5_i_n_22 dina5_i_n_23 dina5_i_n_24 dina5_i_n_25 dina5_i_n_26 dina5_i_n_27 dina5_i_n_28 dina5_i_n_29 dina5_i_n_30 dina5_i_n_31 dina5_i_n_32 dina5_i_n_33 dina5_i_n_34 dina5_i_n_35 dina5_i_n_36 dina5_i_n_37 dina5_i_n_38 dina5_i_n_39 dina5_i_n_40 dina5_i_n_41 dina5_i_n_42 dina5_i_n_43 dina5_i_n_44 dina5_i_n_45 dina5_i_n_46 dina5_i_n_47 dina5_i_n_48 dina5_i_n_49 dina5_i_n_50 dina5_i_n_51 dina5_i_n_52 dina5_i_n_53 dina5_i_n_54 dina5_i_n_55 dina5_i_n_56 dina5_i_n_57 dina5_i_n_58 dina5_i_n_59 dina5_i_n_60 dina5_i_n_61 dina5_i_n_62 dina5_i_n_63 -autobundled
netbloc @dina5_i_n_0,dina5_i_n_1 1 11 1 5050
load netBundle @wt_address_bs2polvecp 9 wt_address_bs2polvecp[8] wt_address_bs2polvecp[7] wt_address_bs2polvecp[6] wt_address_bs2polvecp[5] wt_address_bs2polvecp[4] wt_address_bs2polvecp[3] wt_address_bs2polvecp[2] wt_address_bs2polvecp[1] wt_address_bs2polvecp[0] -autobundled
netbloc @wt_address_bs2polvecp 1 11 1 5110
load netBundle @wt_address_addround 9 wt_address_addround[8] wt_address_addround[7] wt_address_addround[6] wt_address_addround[5] wt_address_addround[4] wt_address_addround[3] wt_address_addround[2] wt_address_addround[1] wt_address_addround[0] -autobundled
netbloc @wt_address_addround 1 13 1 6130
load netBundle @dout_addround 64 dout_addround[63] dout_addround[62] dout_addround[61] dout_addround[60] dout_addround[59] dout_addround[58] dout_addround[57] dout_addround[56] dout_addround[55] dout_addround[54] dout_addround[53] dout_addround[52] dout_addround[51] dout_addround[50] dout_addround[49] dout_addround[48] dout_addround[47] dout_addround[46] dout_addround[45] dout_addround[44] dout_addround[43] dout_addround[42] dout_addround[41] dout_addround[40] dout_addround[39] dout_addround[38] dout_addround[37] dout_addround[36] dout_addround[35] dout_addround[34] dout_addround[33] dout_addround[32] dout_addround[31] dout_addround[30] dout_addround[29] dout_addround[28] dout_addround[27] dout_addround[26] dout_addround[25] dout_addround[24] dout_addround[23] dout_addround[22] dout_addround[21] dout_addround[20] dout_addround[19] dout_addround[18] dout_addround[17] dout_addround[16] dout_addround[15] dout_addround[14] dout_addround[13] dout_addround[12] dout_addround[11] dout_addround[10] dout_addround[9] dout_addround[8] dout_addround[7] dout_addround[6] dout_addround[5] dout_addround[4] dout_addround[3] dout_addround[2] dout_addround[1] dout_addround[0] -autobundled
netbloc @dout_addround 1 13 2 6170J 630 6910
load netBundle @wt_address_copy 9 wt_address_copy[8] wt_address_copy[7] wt_address_copy[6] wt_address_copy[5] wt_address_copy[4] wt_address_copy[3] wt_address_copy[2] wt_address_copy[1] wt_address_copy[0] -autobundled
netbloc @wt_address_copy 1 9 1 3900
load netBundle @rd_address1_i_n_0 10 rd_address1_i_n_0 rd_address1_i_n_1 rd_address1_i_n_2 rd_address1_i_n_3 rd_address1_i_n_4 rd_address1_i_n_5 rd_address1_i_n_6 rd_address1_i_n_7 rd_address1_i_n_8 rd_address1_i_n_9 -autobundled
netbloc @rd_address1_i_n_0 1 14 1 6890
load netBundle @wt_address_sampler 9 wt_address_sampler[8] wt_address_sampler[7] wt_address_sampler[6] wt_address_sampler[5] wt_address_sampler[4] wt_address_sampler[3] wt_address_sampler[2] wt_address_sampler[1] wt_address_sampler[0] -autobundled
netbloc @wt_address_sampler 1 8 1 3480
load netBundle @doutb_ext 64 doutb_ext[63] doutb_ext[62] doutb_ext[61] doutb_ext[60] doutb_ext[59] doutb_ext[58] doutb_ext[57] doutb_ext[56] doutb_ext[55] doutb_ext[54] doutb_ext[53] doutb_ext[52] doutb_ext[51] doutb_ext[50] doutb_ext[49] doutb_ext[48] doutb_ext[47] doutb_ext[46] doutb_ext[45] doutb_ext[44] doutb_ext[43] doutb_ext[42] doutb_ext[41] doutb_ext[40] doutb_ext[39] doutb_ext[38] doutb_ext[37] doutb_ext[36] doutb_ext[35] doutb_ext[34] doutb_ext[33] doutb_ext[32] doutb_ext[31] doutb_ext[30] doutb_ext[29] doutb_ext[28] doutb_ext[27] doutb_ext[26] doutb_ext[25] doutb_ext[24] doutb_ext[23] doutb_ext[22] doutb_ext[21] doutb_ext[20] doutb_ext[19] doutb_ext[18] doutb_ext[17] doutb_ext[16] doutb_ext[15] doutb_ext[14] doutb_ext[13] doutb_ext[12] doutb_ext[11] doutb_ext[10] doutb_ext[9] doutb_ext[8] doutb_ext[7] doutb_ext[6] doutb_ext[5] doutb_ext[4] doutb_ext[3] doutb_ext[2] doutb_ext[1] doutb_ext[0] -autobundled
netbloc @doutb_ext 1 19 1 NJ
load netBundle @wt_address_unpack 9 wt_address_unpack[8] wt_address_unpack[7] wt_address_unpack[6] wt_address_unpack[5] wt_address_unpack[4] wt_address_unpack[3] wt_address_unpack[2] wt_address_unpack[1] wt_address_unpack[0] -autobundled
netbloc @wt_address_unpack 1 5 6 1900J 1580 2400J 1610 NJ 1610 NJ 1610 NJ 1610 4410
load netBundle @dout_vmul 64 dout_vmul[63] dout_vmul[62] dout_vmul[61] dout_vmul[60] dout_vmul[59] dout_vmul[58] dout_vmul[57] dout_vmul[56] dout_vmul[55] dout_vmul[54] dout_vmul[53] dout_vmul[52] dout_vmul[51] dout_vmul[50] dout_vmul[49] dout_vmul[48] dout_vmul[47] dout_vmul[46] dout_vmul[45] dout_vmul[44] dout_vmul[43] dout_vmul[42] dout_vmul[41] dout_vmul[40] dout_vmul[39] dout_vmul[38] dout_vmul[37] dout_vmul[36] dout_vmul[35] dout_vmul[34] dout_vmul[33] dout_vmul[32] dout_vmul[31] dout_vmul[30] dout_vmul[29] dout_vmul[28] dout_vmul[27] dout_vmul[26] dout_vmul[25] dout_vmul[24] dout_vmul[23] dout_vmul[22] dout_vmul[21] dout_vmul[20] dout_vmul[19] dout_vmul[18] dout_vmul[17] dout_vmul[16] dout_vmul[15] dout_vmul[14] dout_vmul[13] dout_vmul[12] dout_vmul[11] dout_vmul[10] dout_vmul[9] dout_vmul[8] dout_vmul[7] dout_vmul[6] dout_vmul[5] dout_vmul[4] dout_vmul[3] dout_vmul[2] dout_vmul[1] dout_vmul[0] -autobundled
netbloc @dout_vmul 1 12 4 NJ 1190 NJ 1190 6810J 1110 7400
load netBundle @dout_bs2polvecp 64 dout_bs2polvecp[63] dout_bs2polvecp[62] dout_bs2polvecp[61] dout_bs2polvecp[60] dout_bs2polvecp[59] dout_bs2polvecp[58] dout_bs2polvecp[57] dout_bs2polvecp[56] dout_bs2polvecp[55] dout_bs2polvecp[54] dout_bs2polvecp[53] dout_bs2polvecp[52] dout_bs2polvecp[51] dout_bs2polvecp[50] dout_bs2polvecp[49] dout_bs2polvecp[48] dout_bs2polvecp[47] dout_bs2polvecp[46] dout_bs2polvecp[45] dout_bs2polvecp[44] dout_bs2polvecp[43] dout_bs2polvecp[42] dout_bs2polvecp[41] dout_bs2polvecp[40] dout_bs2polvecp[39] dout_bs2polvecp[38] dout_bs2polvecp[37] dout_bs2polvecp[36] dout_bs2polvecp[35] dout_bs2polvecp[34] dout_bs2polvecp[33] dout_bs2polvecp[32] dout_bs2polvecp[31] dout_bs2polvecp[30] dout_bs2polvecp[29] dout_bs2polvecp[28] dout_bs2polvecp[27] dout_bs2polvecp[26] dout_bs2polvecp[25] dout_bs2polvecp[24] dout_bs2polvecp[23] dout_bs2polvecp[22] dout_bs2polvecp[21] dout_bs2polvecp[20] dout_bs2polvecp[19] dout_bs2polvecp[18] dout_bs2polvecp[17] dout_bs2polvecp[16] dout_bs2polvecp[15] dout_bs2polvecp[14] dout_bs2polvecp[13] dout_bs2polvecp[12] dout_bs2polvecp[11] dout_bs2polvecp[10] dout_bs2polvecp[9] dout_bs2polvecp[8] dout_bs2polvecp[7] dout_bs2polvecp[6] dout_bs2polvecp[5] dout_bs2polvecp[4] dout_bs2polvecp[3] dout_bs2polvecp[2] dout_bs2polvecp[1] dout_bs2polvecp[0] -autobundled
netbloc @dout_bs2polvecp 1 11 2 5010 50 NJ
load netBundle @wt_address7_i_n_0 10 wt_address7_i_n_0 wt_address7_i_n_1 wt_address7_i_n_2 wt_address7_i_n_3 wt_address7_i_n_4 wt_address7_i_n_5 wt_address7_i_n_6 wt_address7_i_n_7 wt_address7_i_n_8 wt_address7_i_n_9 -autobundled
netbloc @wt_address7_i_n_0 1 8 1 3420
load netBundle @rd_address 10 rd_address[9] rd_address[8] rd_address[7] rd_address[6] rd_address[5] rd_address[4] rd_address[3] rd_address[2] rd_address[1] rd_address[0] -autobundled
netbloc @rd_address 1 16 1 7880
load netBundle @rate_type 2 rate_type[1] rate_type[0] -autobundled
netbloc @rate_type 1 14 1 6710
load netBundle @rate_type0_i_n_0 2 rate_type0_i_n_0 rate_type0_i_n_1 -autobundled
netbloc @rate_type0_i_n_0 1 13 1 NJ
load netBundle @rd_address2_i_n_0 10 rd_address2_i_n_0 rd_address2_i_n_1 rd_address2_i_n_2 rd_address2_i_n_3 rd_address2_i_n_4 rd_address2_i_n_5 rd_address2_i_n_6 rd_address2_i_n_7 rd_address2_i_n_8 rd_address2_i_n_9 -autobundled
netbloc @rd_address2_i_n_0 1 13 1 6070
load netBundle @wt_address 10 wt_address[9] wt_address[8] wt_address[7] wt_address[6] wt_address[5] wt_address[4] wt_address[3] wt_address[2] wt_address[1] wt_address[0] -autobundled
netbloc @wt_address 1 16 1 7860
load netBundle @INS_i_n_0,p_3_in,p_2_in 8 INS_i_n_0 p_3_in p_2_in p_1_in p_0_in INS_i_n_5 INS_i_n_6 INS_i_n_7 -autobundled
netbloc @INS_i_n_0,p_3_in,p_2_in 1 8 6 3360 1450 4080 1450 4610 1560 5090 1560 NJ 1560 6270
load netBundle @dina_ext 64 dina_ext[63] dina_ext[62] dina_ext[61] dina_ext[60] dina_ext[59] dina_ext[58] dina_ext[57] dina_ext[56] dina_ext[55] dina_ext[54] dina_ext[53] dina_ext[52] dina_ext[51] dina_ext[50] dina_ext[49] dina_ext[48] dina_ext[47] dina_ext[46] dina_ext[45] dina_ext[44] dina_ext[43] dina_ext[42] dina_ext[41] dina_ext[40] dina_ext[39] dina_ext[38] dina_ext[37] dina_ext[36] dina_ext[35] dina_ext[34] dina_ext[33] dina_ext[32] dina_ext[31] dina_ext[30] dina_ext[29] dina_ext[28] dina_ext[27] dina_ext[26] dina_ext[25] dina_ext[24] dina_ext[23] dina_ext[22] dina_ext[21] dina_ext[20] dina_ext[19] dina_ext[18] dina_ext[17] dina_ext[16] dina_ext[15] dina_ext[14] dina_ext[13] dina_ext[12] dina_ext[11] dina_ext[10] dina_ext[9] dina_ext[8] dina_ext[7] dina_ext[6] dina_ext[5] dina_ext[4] dina_ext[3] dina_ext[2] dina_ext[1] dina_ext[0] -autobundled
netbloc @dina_ext 1 0 9 NJ 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 3500J
load netBundle @wt_address_vmul 9 wt_address_vmul[8] wt_address_vmul[7] wt_address_vmul[6] wt_address_vmul[5] wt_address_vmul[4] wt_address_vmul[3] wt_address_vmul[2] wt_address_vmul[1] wt_address_vmul[0] -autobundled
netbloc @wt_address_vmul 1 12 3 5570J 1490 NJ 1490 6710
load netBundle @olen,mlen 32 olen[15] olen[14] olen[13] olen[12] olen[11] olen[10] olen[9] olen[8] olen[7] olen[6] olen[5] olen[4] olen[3] olen[2] olen[1] olen[0] mlen[15] mlen[14] mlen[13] mlen[12] mlen[11] mlen[10] mlen[9] mlen[8] mlen[7] mlen[6] mlen[5] mlen[4] mlen[3] mlen[2] mlen[1] mlen[0] -autobundled
netbloc @olen,mlen 1 3 12 860 1820 NJ 1820 NJ 1820 NJ 1820 NJ 1820 NJ 1820 NJ 1820 NJ 1820 NJ 1820 NJ 1820 NJ 1820 6830
load netBundle @wt_address_shake 9 wt_address_shake[8] wt_address_shake[7] wt_address_shake[6] wt_address_shake[5] wt_address_shake[4] wt_address_shake[3] wt_address_shake[2] wt_address_shake[1] wt_address_shake[0] -autobundled
netbloc @wt_address_shake 1 15 1 7440
load netBundle @rd_address_addpack 9 rd_address_addpack[8] rd_address_addpack[7] rd_address_addpack[6] rd_address_addpack[5] rd_address_addpack[4] rd_address_addpack[3] rd_address_addpack[2] rd_address_addpack[1] rd_address_addpack[0] -autobundled
netbloc @rd_address_addpack 1 12 8 5690 280 NJ 280 NJ 280 NJ 280 NJ 280 NJ 280 NJ 280 8960
load netBundle @dout_cmov 64 dout_cmov[63] dout_cmov[62] dout_cmov[61] dout_cmov[60] dout_cmov[59] dout_cmov[58] dout_cmov[57] dout_cmov[56] dout_cmov[55] dout_cmov[54] dout_cmov[53] dout_cmov[52] dout_cmov[51] dout_cmov[50] dout_cmov[49] dout_cmov[48] dout_cmov[47] dout_cmov[46] dout_cmov[45] dout_cmov[44] dout_cmov[43] dout_cmov[42] dout_cmov[41] dout_cmov[40] dout_cmov[39] dout_cmov[38] dout_cmov[37] dout_cmov[36] dout_cmov[35] dout_cmov[34] dout_cmov[33] dout_cmov[32] dout_cmov[31] dout_cmov[30] dout_cmov[29] dout_cmov[28] dout_cmov[27] dout_cmov[26] dout_cmov[25] dout_cmov[24] dout_cmov[23] dout_cmov[22] dout_cmov[21] dout_cmov[20] dout_cmov[19] dout_cmov[18] dout_cmov[17] dout_cmov[16] dout_cmov[15] dout_cmov[14] dout_cmov[13] dout_cmov[12] dout_cmov[11] dout_cmov[10] dout_cmov[9] dout_cmov[8] dout_cmov[7] dout_cmov[6] dout_cmov[5] dout_cmov[4] dout_cmov[3] dout_cmov[2] dout_cmov[1] dout_cmov[0] -autobundled
netbloc @dout_cmov 1 6 3 2420 1120 NJ 1120 3480J
load netBundle @rd_address_addround 9 rd_address_addround[8] rd_address_addround[7] rd_address_addround[6] rd_address_addround[5] rd_address_addround[4] rd_address_addround[3] rd_address_addround[2] rd_address_addround[1] rd_address_addround[0] -autobundled
netbloc @rd_address_addround 1 13 1 6090
load netBundle @dout_unpack 64 dout_unpack[63] dout_unpack[62] dout_unpack[61] dout_unpack[60] dout_unpack[59] dout_unpack[58] dout_unpack[57] dout_unpack[56] dout_unpack[55] dout_unpack[54] dout_unpack[53] dout_unpack[52] dout_unpack[51] dout_unpack[50] dout_unpack[49] dout_unpack[48] dout_unpack[47] dout_unpack[46] dout_unpack[45] dout_unpack[44] dout_unpack[43] dout_unpack[42] dout_unpack[41] dout_unpack[40] dout_unpack[39] dout_unpack[38] dout_unpack[37] dout_unpack[36] dout_unpack[35] dout_unpack[34] dout_unpack[33] dout_unpack[32] dout_unpack[31] dout_unpack[30] dout_unpack[29] dout_unpack[28] dout_unpack[27] dout_unpack[26] dout_unpack[25] dout_unpack[24] dout_unpack[23] dout_unpack[22] dout_unpack[21] dout_unpack[20] dout_unpack[19] dout_unpack[18] dout_unpack[17] dout_unpack[16] dout_unpack[15] dout_unpack[14] dout_unpack[13] dout_unpack[12] dout_unpack[11] dout_unpack[10] dout_unpack[9] dout_unpack[8] dout_unpack[7] dout_unpack[6] dout_unpack[5] dout_unpack[4] dout_unpack[3] dout_unpack[2] dout_unpack[1] dout_unpack[0] -autobundled
netbloc @dout_unpack 1 5 7 1960J 1180 NJ 1180 NJ 1180 3320J 1310 NJ 1310 4530J 1290 5130
load netBundle @wt_address6_i_n_0 10 wt_address6_i_n_0 wt_address6_i_n_1 wt_address6_i_n_2 wt_address6_i_n_3 wt_address6_i_n_4 wt_address6_i_n_5 wt_address6_i_n_6 wt_address6_i_n_7 wt_address6_i_n_8 wt_address6_i_n_9 -autobundled
netbloc @wt_address6_i_n_0 1 9 1 4020
load netBundle @doutb_ext_OBUF 64 doutb_ext_OBUF[63] doutb_ext_OBUF[62] doutb_ext_OBUF[61] doutb_ext_OBUF[60] doutb_ext_OBUF[59] doutb_ext_OBUF[58] doutb_ext_OBUF[57] doutb_ext_OBUF[56] doutb_ext_OBUF[55] doutb_ext_OBUF[54] doutb_ext_OBUF[53] doutb_ext_OBUF[52] doutb_ext_OBUF[51] doutb_ext_OBUF[50] doutb_ext_OBUF[49] doutb_ext_OBUF[48] doutb_ext_OBUF[47] doutb_ext_OBUF[46] doutb_ext_OBUF[45] doutb_ext_OBUF[44] doutb_ext_OBUF[43] doutb_ext_OBUF[42] doutb_ext_OBUF[41] doutb_ext_OBUF[40] doutb_ext_OBUF[39] doutb_ext_OBUF[38] doutb_ext_OBUF[37] doutb_ext_OBUF[36] doutb_ext_OBUF[35] doutb_ext_OBUF[34] doutb_ext_OBUF[33] doutb_ext_OBUF[32] doutb_ext_OBUF[31] doutb_ext_OBUF[30] doutb_ext_OBUF[29] doutb_ext_OBUF[28] doutb_ext_OBUF[27] doutb_ext_OBUF[26] doutb_ext_OBUF[25] doutb_ext_OBUF[24] doutb_ext_OBUF[23] doutb_ext_OBUF[22] doutb_ext_OBUF[21] doutb_ext_OBUF[20] doutb_ext_OBUF[19] doutb_ext_OBUF[18] doutb_ext_OBUF[17] doutb_ext_OBUF[16] doutb_ext_OBUF[15] doutb_ext_OBUF[14] doutb_ext_OBUF[13] doutb_ext_OBUF[12] doutb_ext_OBUF[11] doutb_ext_OBUF[10] doutb_ext_OBUF[9] doutb_ext_OBUF[8] doutb_ext_OBUF[7] doutb_ext_OBUF[6] doutb_ext_OBUF[5] doutb_ext_OBUF[4] doutb_ext_OBUF[3] doutb_ext_OBUF[2] doutb_ext_OBUF[1] doutb_ext_OBUF[0] -autobundled
netbloc @doutb_ext_OBUF 1 3 16 860 1550 1280 1560 1920 930 NJ 930 2830 1080 3380 980 NJ 980 4470 970 5090 1000 5650 830 NJ 830 6690 1590 NJ 1590 NJ 1590 NJ 1590 8530
load netBundle @rd_address_bs2polvecp 9 rd_address_bs2polvecp[8] rd_address_bs2polvecp[7] rd_address_bs2polvecp[6] rd_address_bs2polvecp[5] rd_address_bs2polvecp[4] rd_address_bs2polvecp[3] rd_address_bs2polvecp[2] rd_address_bs2polvecp[1] rd_address_bs2polvecp[0] -autobundled
netbloc @rd_address_bs2polvecp 1 11 1 5150
load netBundle @rd_address_shake 9 rd_address_shake[8] rd_address_shake[7] rd_address_shake[6] rd_address_shake[5] rd_address_shake[4] rd_address_shake[3] rd_address_shake[2] rd_address_shake[1] rd_address_shake[0] -autobundled
netbloc @rd_address_shake 1 15 1 7520
load netBundle @dout_addpack 64 dout_addpack[63] dout_addpack[62] dout_addpack[61] dout_addpack[60] dout_addpack[59] dout_addpack[58] dout_addpack[57] dout_addpack[56] dout_addpack[55] dout_addpack[54] dout_addpack[53] dout_addpack[52] dout_addpack[51] dout_addpack[50] dout_addpack[49] dout_addpack[48] dout_addpack[47] dout_addpack[46] dout_addpack[45] dout_addpack[44] dout_addpack[43] dout_addpack[42] dout_addpack[41] dout_addpack[40] dout_addpack[39] dout_addpack[38] dout_addpack[37] dout_addpack[36] dout_addpack[35] dout_addpack[34] dout_addpack[33] dout_addpack[32] dout_addpack[31] dout_addpack[30] dout_addpack[29] dout_addpack[28] dout_addpack[27] dout_addpack[26] dout_addpack[25] dout_addpack[24] dout_addpack[23] dout_addpack[22] dout_addpack[21] dout_addpack[20] dout_addpack[19] dout_addpack[18] dout_addpack[17] dout_addpack[16] dout_addpack[15] dout_addpack[14] dout_addpack[13] dout_addpack[12] dout_addpack[11] dout_addpack[10] dout_addpack[9] dout_addpack[8] dout_addpack[7] dout_addpack[6] dout_addpack[5] dout_addpack[4] dout_addpack[3] dout_addpack[2] dout_addpack[1] dout_addpack[0] -autobundled
netbloc @dout_addpack 1 13 7 6250 770 NJ 770 NJ 770 NJ 770 NJ 770 NJ 770 8920
load netBundle @rd_address_cmov 9 rd_address_cmov[8] rd_address_cmov[7] rd_address_cmov[6] rd_address_cmov[5] rd_address_cmov[4] rd_address_cmov[3] rd_address_cmov[2] rd_address_cmov[1] rd_address_cmov[0] -autobundled
netbloc @rd_address_cmov 1 6 1 2520
load netBundle @address_ext 10 address_ext[9] address_ext[8] address_ext[7] address_ext[6] address_ext[5] address_ext[4] address_ext[3] address_ext[2] address_ext[1] address_ext[0] -autobundled
netbloc @address_ext 1 0 8 NJ 1530 NJ 1530 NJ 1530 NJ 1530 1220J 1580 1880J 1600 2500 1250 NJ
load netBundle @dout_shake 64 dout_shake[63] dout_shake[62] dout_shake[61] dout_shake[60] dout_shake[59] dout_shake[58] dout_shake[57] dout_shake[56] dout_shake[55] dout_shake[54] dout_shake[53] dout_shake[52] dout_shake[51] dout_shake[50] dout_shake[49] dout_shake[48] dout_shake[47] dout_shake[46] dout_shake[45] dout_shake[44] dout_shake[43] dout_shake[42] dout_shake[41] dout_shake[40] dout_shake[39] dout_shake[38] dout_shake[37] dout_shake[36] dout_shake[35] dout_shake[34] dout_shake[33] dout_shake[32] dout_shake[31] dout_shake[30] dout_shake[29] dout_shake[28] dout_shake[27] dout_shake[26] dout_shake[25] dout_shake[24] dout_shake[23] dout_shake[22] dout_shake[21] dout_shake[20] dout_shake[19] dout_shake[18] dout_shake[17] dout_shake[16] dout_shake[15] dout_shake[14] dout_shake[13] dout_shake[12] dout_shake[11] dout_shake[10] dout_shake[9] dout_shake[8] dout_shake[7] dout_shake[6] dout_shake[5] dout_shake[4] dout_shake[3] dout_shake[2] dout_shake[1] dout_shake[0] -autobundled
netbloc @dout_shake 1 15 2 7320 830 7880J
load netBundle @rd_address5_i_n_0 10 rd_address5_i_n_0 rd_address5_i_n_1 rd_address5_i_n_2 rd_address5_i_n_3 rd_address5_i_n_4 rd_address5_i_n_5 rd_address5_i_n_6 rd_address5_i_n_7 rd_address5_i_n_8 rd_address5_i_n_9 -autobundled
netbloc @rd_address5_i_n_0 1 10 1 4490
load netBundle @dina6_i_n_0,dina6_i_n_1 64 dina6_i_n_0 dina6_i_n_1 dina6_i_n_2 dina6_i_n_3 dina6_i_n_4 dina6_i_n_5 dina6_i_n_6 dina6_i_n_7 dina6_i_n_8 dina6_i_n_9 dina6_i_n_10 dina6_i_n_11 dina6_i_n_12 dina6_i_n_13 dina6_i_n_14 dina6_i_n_15 dina6_i_n_16 dina6_i_n_17 dina6_i_n_18 dina6_i_n_19 dina6_i_n_20 dina6_i_n_21 dina6_i_n_22 dina6_i_n_23 dina6_i_n_24 dina6_i_n_25 dina6_i_n_26 dina6_i_n_27 dina6_i_n_28 dina6_i_n_29 dina6_i_n_30 dina6_i_n_31 dina6_i_n_32 dina6_i_n_33 dina6_i_n_34 dina6_i_n_35 dina6_i_n_36 dina6_i_n_37 dina6_i_n_38 dina6_i_n_39 dina6_i_n_40 dina6_i_n_41 dina6_i_n_42 dina6_i_n_43 dina6_i_n_44 dina6_i_n_45 dina6_i_n_46 dina6_i_n_47 dina6_i_n_48 dina6_i_n_49 dina6_i_n_50 dina6_i_n_51 dina6_i_n_52 dina6_i_n_53 dina6_i_n_54 dina6_i_n_55 dina6_i_n_56 dina6_i_n_57 dina6_i_n_58 dina6_i_n_59 dina6_i_n_60 dina6_i_n_61 dina6_i_n_62 dina6_i_n_63 -autobundled
netbloc @dina6_i_n_0,dina6_i_n_1 1 10 1 4510
load netBundle @unpack0|read_data 64 unpack0|read_data[63] unpack0|read_data[62] unpack0|read_data[61] unpack0|read_data[60] unpack0|read_data[59] unpack0|read_data[58] unpack0|read_data[57] unpack0|read_data[56] unpack0|read_data[55] unpack0|read_data[54] unpack0|read_data[53] unpack0|read_data[52] unpack0|read_data[51] unpack0|read_data[50] unpack0|read_data[49] unpack0|read_data[48] unpack0|read_data[47] unpack0|read_data[46] unpack0|read_data[45] unpack0|read_data[44] unpack0|read_data[43] unpack0|read_data[42] unpack0|read_data[41] unpack0|read_data[40] unpack0|read_data[39] unpack0|read_data[38] unpack0|read_data[37] unpack0|read_data[36] unpack0|read_data[35] unpack0|read_data[34] unpack0|read_data[33] unpack0|read_data[32] unpack0|read_data[31] unpack0|read_data[30] unpack0|read_data[29] unpack0|read_data[28] unpack0|read_data[27] unpack0|read_data[26] unpack0|read_data[25] unpack0|read_data[24] unpack0|read_data[23] unpack0|read_data[22] unpack0|read_data[21] unpack0|read_data[20] unpack0|read_data[19] unpack0|read_data[18] unpack0|read_data[17] unpack0|read_data[16] unpack0|read_data[15] unpack0|read_data[14] unpack0|read_data[13] unpack0|read_data[12] unpack0|read_data[11] unpack0|read_data[10] unpack0|read_data[9] unpack0|read_data[8] unpack0|read_data[7] unpack0|read_data[6] unpack0|read_data[5] unpack0|read_data[4] unpack0|read_data[3] unpack0|read_data[2] unpack0|read_data[1] unpack0|read_data[0] -autobundled
netbloc @unpack0|read_data 1 0 1 1440
load netBundle @wt_address5_i_n_0 10 wt_address5_i_n_0 wt_address5_i_n_1 wt_address5_i_n_2 wt_address5_i_n_3 wt_address5_i_n_4 wt_address5_i_n_5 wt_address5_i_n_6 wt_address5_i_n_7 wt_address5_i_n_8 wt_address5_i_n_9 -autobundled
netbloc @wt_address5_i_n_0 1 10 1 4390
load netBundle @wt_address_addpack 9 wt_address_addpack[8] wt_address_addpack[7] wt_address_addpack[6] wt_address_addpack[5] wt_address_addpack[4] wt_address_addpack[3] wt_address_addpack[2] wt_address_addpack[1] wt_address_addpack[0] -autobundled
netbloc @wt_address_addpack 1 12 8 5670 420 6050J 300 NJ 300 NJ 300 NJ 300 NJ 300 NJ 300 8940
load netBundle @rd_address8_i_n_0 10 rd_address8_i_n_0 rd_address8_i_n_1 rd_address8_i_n_2 rd_address8_i_n_3 rd_address8_i_n_4 rd_address8_i_n_5 rd_address8_i_n_6 rd_address8_i_n_7 rd_address8_i_n_8 rd_address8_i_n_9 -autobundled
netbloc @rd_address8_i_n_0 1 7 1 2790
load netBundle @wt_address0_i_n_0 10 wt_address0_i_n_0 wt_address0_i_n_1 wt_address0_i_n_2 wt_address0_i_n_3 wt_address0_i_n_4 wt_address0_i_n_5 wt_address0_i_n_6 wt_address0_i_n_7 wt_address0_i_n_8 wt_address0_i_n_9 -autobundled
netbloc @wt_address0_i_n_0 1 15 1 7320
load netBundle @wt_address_cmov 9 wt_address_cmov[8] wt_address_cmov[7] wt_address_cmov[6] wt_address_cmov[5] wt_address_cmov[4] wt_address_cmov[3] wt_address_cmov[2] wt_address_cmov[1] wt_address_cmov[0] -autobundled
netbloc @wt_address_cmov 1 6 2 2460J 1400 2790
load netBundle @dina0_i_n_0,dina0_i_n_1 64 dina0_i_n_0 dina0_i_n_1 dina0_i_n_2 dina0_i_n_3 dina0_i_n_4 dina0_i_n_5 dina0_i_n_6 dina0_i_n_7 dina0_i_n_8 dina0_i_n_9 dina0_i_n_10 dina0_i_n_11 dina0_i_n_12 dina0_i_n_13 dina0_i_n_14 dina0_i_n_15 dina0_i_n_16 dina0_i_n_17 dina0_i_n_18 dina0_i_n_19 dina0_i_n_20 dina0_i_n_21 dina0_i_n_22 dina0_i_n_23 dina0_i_n_24 dina0_i_n_25 dina0_i_n_26 dina0_i_n_27 dina0_i_n_28 dina0_i_n_29 dina0_i_n_30 dina0_i_n_31 dina0_i_n_32 dina0_i_n_33 dina0_i_n_34 dina0_i_n_35 dina0_i_n_36 dina0_i_n_37 dina0_i_n_38 dina0_i_n_39 dina0_i_n_40 dina0_i_n_41 dina0_i_n_42 dina0_i_n_43 dina0_i_n_44 dina0_i_n_45 dina0_i_n_46 dina0_i_n_47 dina0_i_n_48 dina0_i_n_49 dina0_i_n_50 dina0_i_n_51 dina0_i_n_52 dina0_i_n_53 dina0_i_n_54 dina0_i_n_55 dina0_i_n_56 dina0_i_n_57 dina0_i_n_58 dina0_i_n_59 dina0_i_n_60 dina0_i_n_61 dina0_i_n_62 dina0_i_n_63 -autobundled
netbloc @dina0_i_n_0,dina0_i_n_1 1 16 1 N
load netBundle @wt_address2_i_n_0 10 wt_address2_i_n_0 wt_address2_i_n_1 wt_address2_i_n_2 wt_address2_i_n_3 wt_address2_i_n_4 wt_address2_i_n_5 wt_address2_i_n_6 wt_address2_i_n_7 wt_address2_i_n_8 wt_address2_i_n_9 -autobundled
netbloc @wt_address2_i_n_0 1 13 1 6050
load netBundle @rd_address0_i_n_0 10 rd_address0_i_n_0 rd_address0_i_n_1 rd_address0_i_n_2 rd_address0_i_n_3 rd_address0_i_n_4 rd_address0_i_n_5 rd_address0_i_n_6 rd_address0_i_n_7 rd_address0_i_n_8 rd_address0_i_n_9 -autobundled
netbloc @rd_address0_i_n_0 1 15 1 7320
load netBundle @wt_address3_i_n_0 10 wt_address3_i_n_0 wt_address3_i_n_1 wt_address3_i_n_2 wt_address3_i_n_3 wt_address3_i_n_4 wt_address3_i_n_5 wt_address3_i_n_6 wt_address3_i_n_7 wt_address3_i_n_8 wt_address3_i_n_9 -autobundled
netbloc @wt_address3_i_n_0 1 12 1 5650
load netBundle @dina1_i_n_0,dina1_i_n_1 64 dina1_i_n_0 dina1_i_n_1 dina1_i_n_2 dina1_i_n_3 dina1_i_n_4 dina1_i_n_5 dina1_i_n_6 dina1_i_n_7 dina1_i_n_8 dina1_i_n_9 dina1_i_n_10 dina1_i_n_11 dina1_i_n_12 dina1_i_n_13 dina1_i_n_14 dina1_i_n_15 dina1_i_n_16 dina1_i_n_17 dina1_i_n_18 dina1_i_n_19 dina1_i_n_20 dina1_i_n_21 dina1_i_n_22 dina1_i_n_23 dina1_i_n_24 dina1_i_n_25 dina1_i_n_26 dina1_i_n_27 dina1_i_n_28 dina1_i_n_29 dina1_i_n_30 dina1_i_n_31 dina1_i_n_32 dina1_i_n_33 dina1_i_n_34 dina1_i_n_35 dina1_i_n_36 dina1_i_n_37 dina1_i_n_38 dina1_i_n_39 dina1_i_n_40 dina1_i_n_41 dina1_i_n_42 dina1_i_n_43 dina1_i_n_44 dina1_i_n_45 dina1_i_n_46 dina1_i_n_47 dina1_i_n_48 dina1_i_n_49 dina1_i_n_50 dina1_i_n_51 dina1_i_n_52 dina1_i_n_53 dina1_i_n_54 dina1_i_n_55 dina1_i_n_56 dina1_i_n_57 dina1_i_n_58 dina1_i_n_59 dina1_i_n_60 dina1_i_n_61 dina1_i_n_62 dina1_i_n_63 -autobundled
netbloc @dina1_i_n_0,dina1_i_n_1 1 15 1 7540
load netBundle @rd_address6_i_n_0 10 rd_address6_i_n_0 rd_address6_i_n_1 rd_address6_i_n_2 rd_address6_i_n_3 rd_address6_i_n_4 rd_address6_i_n_5 rd_address6_i_n_6 rd_address6_i_n_7 rd_address6_i_n_8 rd_address6_i_n_9 -autobundled
netbloc @rd_address6_i_n_0 1 9 1 3920
levelinfo -pg 1 -40 10 220 570 950 1410 2190 2660 3110 3650 4250 4800 5310 5840 6470 7130 7710 8030 8360 8680 8980 -top 0 -bot 1880
levelinfo -hier unpack0 * 1590 *
show
zoom 0.868821
scrollpos 1143 798
#
# initialize ictrl to current module ComputeCore3 work:ComputeCore3:NOFILE
ictrl init topinfo |
