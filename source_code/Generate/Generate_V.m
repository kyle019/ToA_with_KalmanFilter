clear all;
clc;

iter = 10^4;
NPoints = 11;

ToA_x = load('ToA_x_30dB.txt');
ToA_y = load('ToA_y_30dB.txt');

Toa_x_mean = mean(ToA_x);
Toa_y_mean = mean(ToA_y);

v = zeros(NPoints-1,1);

fileID = fopen('Vx_30dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_x(num1,num2+1) - ToA_x(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
fclose(fileID);

fileID = fopen('Vy_30dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_y(num1,num2+1) - ToA_y(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
%------------------------------------------------------------------------------------------------------------------------
ToA_x = load('ToA_x_25dB.txt');
ToA_y = load('ToA_y_25dB.txt');

Toa_x_mean = mean(ToA_x);
Toa_y_mean = mean(ToA_y);

fileID = fopen('Vx_25dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_x(num1,num2+1) - ToA_x(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
fclose(fileID);

fileID = fopen('Vy_25dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_y(num1,num2+1) - ToA_y(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
%------------------------------------------------------------------------------------------------------------------------
ToA_x = load('ToA_x_20dB.txt');
ToA_y = load('ToA_y_20dB.txt');

Toa_x_mean = mean(ToA_x);
Toa_y_mean = mean(ToA_y);

fileID = fopen('Vx_20dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_x(num1,num2+1) - ToA_x(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
fclose(fileID);

fileID = fopen('Vy_20dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_y(num1,num2+1) - ToA_y(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
%------------------------------------------------------------------------------------------------------------------------
ToA_x = load('ToA_x_20dB.txt');
ToA_y = load('ToA_y_20dB.txt');

Toa_x_mean = mean(ToA_x);
Toa_y_mean = mean(ToA_y);

fileID = fopen('Vx_20dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_x(num1,num2+1) - ToA_x(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
fclose(fileID);

fileID = fopen('Vy_20dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_y(num1,num2+1) - ToA_y(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
%------------------------------------------------------------------------------------------------------------------------
ToA_x = load('ToA_x_15dB.txt');
ToA_y = load('ToA_y_15dB.txt');

Toa_x_mean = mean(ToA_x);
Toa_y_mean = mean(ToA_y);

fileID = fopen('Vx_15dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_x(num1,num2+1) - ToA_x(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
fclose(fileID);

fileID = fopen('Vy_15dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_y(num1,num2+1) - ToA_y(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
%------------------------------------------------------------------------------------------------------------------------
ToA_x = load('ToA_x_10dB.txt');
ToA_y = load('ToA_y_10dB.txt');

Toa_x_mean = mean(ToA_x);
Toa_y_mean = mean(ToA_y);

fileID = fopen('Vx_10dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_x(num1,num2+1) - ToA_x(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
fclose(fileID);

fileID = fopen('Vy_10dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_y(num1,num2+1) - ToA_y(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
%------------------------------------------------------------------------------------------------------------------------
ToA_x = load('ToA_x_5dB.txt');
ToA_y = load('ToA_y_5dB.txt');

Toa_x_mean = mean(ToA_x);
Toa_y_mean = mean(ToA_y);

fileID = fopen('Vx_5dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_x(num1,num2+1) - ToA_x(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
fclose(fileID);

fileID = fopen('Vy_5dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_y(num1,num2+1) - ToA_y(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
%------------------------------------------------------------------------------------------------------------------------
ToA_x = load('ToA_x_0dB.txt');
ToA_y = load('ToA_y_0dB.txt');

Toa_x_mean = mean(ToA_x);
Toa_y_mean = mean(ToA_y);

fileID = fopen('Vx_0dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_x(num1,num2+1) - ToA_x(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end
fclose(fileID);

fileID = fopen('Vy_0dB.txt','w');
for num1 = 1:iter
    
    for num2 = 1:NPoints-1
        v(num2,1) = (ToA_y(num1,num2+1) - ToA_y(num1,num2)) / 0.1;
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',v);
end