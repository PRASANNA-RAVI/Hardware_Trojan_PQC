s_vec = [1, 8, 8, 8, 8, 1, 9, 9, 1, 1, 9, 10, 1, 11, 2, 2, 11, 0, 10, 2, 0, 1, 3, 11, 2, 9, 0, 9, 2, 8, 11, 10, 11, 2, 2, 11, 2, 9, 0, 11, 0, 2, 2, 2, 11, 8, 3, 11, 8, 11, 1, 0, 1, 2, 10, 8, 3, 8, 8, 3, 10, 3, 8, 0, 0, 11, 1, 1, 3, 3, 0, 1, 0, 1, 11, 0, 8, 0, 10, 1, 10, 1, 10, 8, 8, 9, 0, 1, 1, 10, 8, 10, 8, 8, 3, 1, 1, 3, 8, 9, 1, 8, 8, 9, 3, 3, 3, 9, 3, 0, 2, 11, 0, 2, 10, 1, 9, 0, 2, 11, 9, 10, 8, 1, 3, 1, 2, 9, 2, 10, 8, 0, 0, 1, 0, 8, 2, 8, 3, 1, 10, 0, 11, 3, 0, 1, 11, 8, 2, 11, 10, 0, 11, 0, 2, 10, 10, 11, 9, 2, 11, 3, 0, 9, 1, 11, 9, 1, 3, 11, 1, 0, 8, 8, 3, 11, 1, 11, 11, 11, 8, 9, 3, 1, 1, 2, 1, 10, 8, 10, 1, 11, 9, 3, 9, 1, 9, 3, 10, 1, 3, 0, 11, 8, 2, 10, 2, 10, 11, 11, 11, 2, 8, 10, 0, 8, 2, 0, 2, 3, 9, 0, 1, 1, 1, 0, 10, 11, 10, 8, 2, 11, 1, 0, 1, 9, 0, 10, 1, 3, 1, 8, 0, 9, 8, 10, 11, 3, 11, 8, 3, 0, 3, 11, 1, 3];

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*0]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*1]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*2]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*3]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*4]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*5]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*6]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*7]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*8]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*9]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*10]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*11]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*12]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*13]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*14]*2^(4*i))
print(binary(temp));

temp=0;
for(i=0, 15, temp=temp+s_vec[i+1+16*15]*2^(4*i))
print(binary(temp));

