clear all;
clc;

iter = 10^4;
NPoints = 11;
x1 = 0; x2 = 0; x3 = 10; x4 = 10;
y1 = 10; y2 = 0; y3 = 0; y4 = 10;  % anchor좌표 설정

D1 = load('Measurement_from_Anchor1_at_30dB.txt');
D2 = load('Measurement_from_Anchor2_at_30dB.txt');
D3 = load('Measurement_from_Anchor3_at_30dB.txt');
D4 = load('Measurement_from_Anchor4_at_30dB.txt');  % 30dB 오차비의 거리 측정값

C = [x2^2 - x1^2 + y2^2 - y1^2; x3^2 - x2^2 + y3^2 - y2^2; x4^2 - x3^2 + y4^2 - y3^2; x1^2 - x4^2 + y1^2 - y4^2];
H = [2*x2-2*x1 2*y2-2*y1; 2*x3-2*x2 2*y3-2*y2; 2*x4-2*x3 2*y4-2*y3; 2*x1-2*x4 2*y1-2*y4];
pos = zeros(NPoints,1);

fileID = fopen('ToA_x_30dB.txt','w');  % ToA측정 x좌표
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);  % pinv : pseudo inverse 함수
        % num1번째 iteration에서 k=num2일때의 측정 좌표 벡터
        pos(num2,1) = p(1,1); % x좌표
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);

fileID = fopen('ToA_y_30dB.txt','w');  % ToA측정 y좌표
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(2,1); % y좌표
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);
%------------------------------------------------------------------------------------------------------------------------------------------------------------------------
D1 = load('Measurement_from_Anchor1_at_25dB.txt');
D2 = load('Measurement_from_Anchor2_at_25dB.txt');
D3 = load('Measurement_from_Anchor3_at_25dB.txt');
D4 = load('Measurement_from_Anchor4_at_25dB.txt');

C = [x2^2 - x1^2 + y2^2 - y1^2; x3^2 - x2^2 + y3^2 - y2^2; x4^2 - x3^2 + y4^2 - y3^2; x1^2 - x4^2 + y1^2 - y4^2];
H = [2*x2-2*x1 2*y2-2*y1; 2*x3-2*x2 2*y3-2*y2; 2*x4-2*x3 2*y4-2*y3; 2*x1-2*x4 2*y1-2*y4];
pos = zeros(NPoints,1);

fileID = fopen('ToA_x_25dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(1,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);

fileID = fopen('ToA_y_25dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(2,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);
%------------------------------------------------------------------------------------------------------------------------------------------------------------------------
D1 = load('Measurement_from_Anchor1_at_20dB.txt');
D2 = load('Measurement_from_Anchor2_at_20dB.txt');
D3 = load('Measurement_from_Anchor3_at_20dB.txt');
D4 = load('Measurement_from_Anchor4_at_20dB.txt');

C = [x2^2 - x1^2 + y2^2 - y1^2; x3^2 - x2^2 + y3^2 - y2^2; x4^2 - x3^2 + y4^2 - y3^2; x1^2 - x4^2 + y1^2 - y4^2];
H = [2*x2-2*x1 2*y2-2*y1; 2*x3-2*x2 2*y3-2*y2; 2*x4-2*x3 2*y4-2*y3; 2*x1-2*x4 2*y1-2*y4];
pos = zeros(NPoints,1);

fileID = fopen('ToA_x_20dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(1,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);

fileID = fopen('ToA_y_20dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(2,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);
%------------------------------------------------------------------------------------------------------------------------------------------------------------------------
D1 = load('Measurement_from_Anchor1_at_15dB.txt');
D2 = load('Measurement_from_Anchor2_at_15dB.txt');
D3 = load('Measurement_from_Anchor3_at_15dB.txt');
D4 = load('Measurement_from_Anchor4_at_15dB.txt');

C = [x2^2 - x1^2 + y2^2 - y1^2; x3^2 - x2^2 + y3^2 - y2^2; x4^2 - x3^2 + y4^2 - y3^2; x1^2 - x4^2 + y1^2 - y4^2];
H = [2*x2-2*x1 2*y2-2*y1; 2*x3-2*x2 2*y3-2*y2; 2*x4-2*x3 2*y4-2*y3; 2*x1-2*x4 2*y1-2*y4];
pos = zeros(NPoints,1);

fileID = fopen('ToA_x_15dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(1,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);

fileID = fopen('ToA_y_15dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(2,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);
%------------------------------------------------------------------------------------------------------------------------------------------------------------------------
D1 = load('Measurement_from_Anchor1_at_10dB.txt');
D2 = load('Measurement_from_Anchor2_at_10dB.txt');
D3 = load('Measurement_from_Anchor3_at_10dB.txt');
D4 = load('Measurement_from_Anchor4_at_10dB.txt');

C = [x2^2 - x1^2 + y2^2 - y1^2; x3^2 - x2^2 + y3^2 - y2^2; x4^2 - x3^2 + y4^2 - y3^2; x1^2 - x4^2 + y1^2 - y4^2];
H = [2*x2-2*x1 2*y2-2*y1; 2*x3-2*x2 2*y3-2*y2; 2*x4-2*x3 2*y4-2*y3; 2*x1-2*x4 2*y1-2*y4];
pos = zeros(NPoints,1);

fileID = fopen('ToA_x_10dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(1,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);

fileID = fopen('ToA_y_10dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(2,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);
%------------------------------------------------------------------------------------------------------------------------------------------------------------------------
D1 = load('Measurement_from_Anchor1_at_5dB.txt');
D2 = load('Measurement_from_Anchor2_at_5dB.txt');
D3 = load('Measurement_from_Anchor3_at_5dB.txt');
D4 = load('Measurement_from_Anchor4_at_5dB.txt');

C = [x2^2 - x1^2 + y2^2 - y1^2; x3^2 - x2^2 + y3^2 - y2^2; x4^2 - x3^2 + y4^2 - y3^2; x1^2 - x4^2 + y1^2 - y4^2];
H = [2*x2-2*x1 2*y2-2*y1; 2*x3-2*x2 2*y3-2*y2; 2*x4-2*x3 2*y4-2*y3; 2*x1-2*x4 2*y1-2*y4];
pos = zeros(NPoints,1);

fileID = fopen('ToA_x_5dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(1,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);

fileID = fopen('ToA_y_5dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(2,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);
%------------------------------------------------------------------------------------------------------------------------------------------------------------------------
D1 = load('Measurement_from_Anchor1_at_0dB.txt');
D2 = load('Measurement_from_Anchor2_at_0dB.txt');
D3 = load('Measurement_from_Anchor3_at_0dB.txt');
D4 = load('Measurement_from_Anchor4_at_0dB.txt');

C = [x2^2 - x1^2 + y2^2 - y1^2; x3^2 - x2^2 + y3^2 - y2^2; x4^2 - x3^2 + y4^2 - y3^2; x1^2 - x4^2 + y1^2 - y4^2];
H = [2*x2-2*x1 2*y2-2*y1; 2*x3-2*x2 2*y3-2*y2; 2*x4-2*x3 2*y4-2*y3; 2*x1-2*x4 2*y1-2*y4];
pos = zeros(NPoints,1);

fileID = fopen('ToA_x_0dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(1,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);

fileID = fopen('ToA_y_0dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        p = pinv(H)*([D1(num1,num2)^2-D2(num1,num2)^2; D2(num1,num2)^2-D3(num1,num2)^2; D3(num1,num2)^2-D4(num1,num2)^2; D4(num1,num2)^2-D1(num1,num2)^2]+C);
        pos(num2,1) = p(2,1);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',pos);
end
fclose(fileID);
%------------------------------------------------------------------------------------------------------------------------------------------------------------------------

