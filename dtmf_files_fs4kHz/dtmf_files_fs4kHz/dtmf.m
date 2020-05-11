f1=941;
f2=1633;
fs=4000;

for t=0:255
    a(t+1)=sin(2*pi*f1/fs*t)+sin(2*pi*f2/fs*t);
end    

fid = fopen('941_1633_fs4kHz.data','w+'); 
for t=1:255
fprintf(fid,'%1.2f,',a(t));
end
t=256;
fprintf(fid,'%1.2f',a(t));
fclose(fid);