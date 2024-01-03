clear all;
clc;
format long e;

iter = 10^4;
NPoints = 11;

Anchor1=[0 10];
Anchor2=[0 0];
Anchor3=[10 0];
Anchor4=[10 10];

Measurement_Noise_Ratio = 30;

Measurement = zeros(NPoints,1);

fileID = fopen('Measurement_from_Anchor1_at_30dB.txt','w');  % 파일에 이름설정, 파일이 없으면 생성, w는 덮어쓰기 옵션
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];  % k번째 좌표
        Measurement(num2,1) = sqrt(sum((Anchor1-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);  % 잡음이 섞인 측정값
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);     % 열 기준 출력, 파일에 값 저장
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor2_at_30dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor2-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor3_at_30dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor3-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor4_at_30dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor4-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);
%----------------------------------------------------------------------------------------------------------------------------------------------------------------
Measurement_Noise_Ratio = 25;

Measurement = zeros(NPoints,1);

fileID = fopen('Measurement_from_Anchor1_at_25dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor1-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor2_at_25dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor2-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor3_at_25dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor3-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor4_at_25dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor4-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);
%----------------------------------------------------------------------------------------------------------------------------------------------------------------
Measurement_Noise_Ratio = 20;

Measurement = zeros(NPoints,1);

fileID = fopen('Measurement_from_Anchor1_at_20dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor1-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor2_at_20dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor2-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor3_at_20dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor3-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor4_at_20dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor4-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);
%----------------------------------------------------------------------------------------------------------------------------------------------------------------
Measurement_Noise_Ratio = 15;

Measurement = zeros(NPoints,1);

fileID = fopen('Measurement_from_Anchor1_at_15dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor1-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor2_at_15dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor2-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor3_at_15dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor3-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor4_at_15dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor4-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);
%----------------------------------------------------------------------------------------------------------------------------------------------------------------
Measurement_Noise_Ratio = 10;

Measurement = zeros(NPoints,1);

fileID = fopen('Measurement_from_Anchor1_at_10dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor1-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor2_at_10dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor2-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor3_at_10dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor3-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor4_at_10dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor4-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);
%----------------------------------------------------------------------------------------------------------------------------------------------------------------
Measurement_Noise_Ratio = 5;

Measurement = zeros(NPoints,1);

fileID = fopen('Measurement_from_Anchor1_at_5dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor1-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor2_at_5dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor2-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor3_at_5dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor3-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor4_at_5dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor4-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);
%----------------------------------------------------------------------------------------------------------------------------------------------------------------
Measurement_Noise_Ratio = 0;

Measurement = zeros(NPoints,1);

fileID = fopen('Measurement_from_Anchor1_at_0dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor1-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor2_at_0dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor2-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor3_at_0dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor3-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);

fileID = fopen('Measurement_from_Anchor4_at_0dB.txt','w');
for num1=1:iter
    
    for num2=1:NPoints
        UserPos = (num2-1)*[1 1];
        Measurement(num2,1) = sqrt(sum((Anchor4-UserPos).^2))*(1+ sqrt(10^(-Measurement_Noise_Ratio/10))*randn);      
    end
    fprintf(fileID,'%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f %6.3f \n',Measurement);
end
fclose(fileID);