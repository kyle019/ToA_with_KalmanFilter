clear all
clc
format long

%------------------------------ 값 생성 -----------------------------
d1_0dB = load('Measurement_from_Anchor1_at_0dB.txt');
d2_0dB = load('Measurement_from_Anchor2_at_0dB.txt');
d3_0dB = load('Measurement_from_Anchor3_at_0dB.txt');
d4_0dB = load('Measurement_from_Anchor4_at_0dB.txt');
d1_5dB = load('Measurement_from_Anchor1_at_5dB.txt');
d2_5dB = load('Measurement_from_Anchor2_at_5dB.txt');
d3_5dB = load('Measurement_from_Anchor3_at_5dB.txt');
d4_5dB = load('Measurement_from_Anchor4_at_5dB.txt');
d1_10dB = load('Measurement_from_Anchor1_at_10dB.txt');
d2_10dB = load('Measurement_from_Anchor2_at_10dB.txt');
d3_10dB = load('Measurement_from_Anchor3_at_10dB.txt');
d4_10dB = load('Measurement_from_Anchor4_at_10dB.txt');
d1_15dB = load('Measurement_from_Anchor1_at_15dB.txt');
d2_15dB = load('Measurement_from_Anchor2_at_15dB.txt');
d3_15dB = load('Measurement_from_Anchor3_at_15dB.txt');
d4_15dB = load('Measurement_from_Anchor4_at_15dB.txt');
d1_20dB = load('Measurement_from_Anchor1_at_20dB.txt');
d2_20dB = load('Measurement_from_Anchor2_at_20dB.txt');
d3_20dB = load('Measurement_from_Anchor3_at_20dB.txt');
d4_20dB = load('Measurement_from_Anchor4_at_20dB.txt');
d1_25dB = load('Measurement_from_Anchor1_at_25dB.txt');
d2_25dB = load('Measurement_from_Anchor2_at_25dB.txt');
d3_25dB = load('Measurement_from_Anchor3_at_25dB.txt');
d4_25dB = load('Measurement_from_Anchor4_at_25dB.txt');
d1_30dB = load('Measurement_from_Anchor1_at_30dB.txt');
d2_30dB = load('Measurement_from_Anchor2_at_30dB.txt');
d3_30dB = load('Measurement_from_Anchor3_at_30dB.txt');
d4_30dB = load('Measurement_from_Anchor4_at_30dB.txt');
d1_mean_0dB = mean(load('Measurement_from_Anchor1_at_0dB.txt'));
d2_mean_0dB = mean(load('Measurement_from_Anchor2_at_0dB.txt'));
d3_mean_0dB = mean(load('Measurement_from_Anchor3_at_0dB.txt'));
d4_mean_0dB = mean(load('Measurement_from_Anchor4_at_0dB.txt'));
d1_mean_5dB = mean(load('Measurement_from_Anchor1_at_5dB.txt'));
d2_mean_5dB = mean(load('Measurement_from_Anchor2_at_5dB.txt'));
d3_mean_5dB = mean(load('Measurement_from_Anchor3_at_5dB.txt'));
d4_mean_5dB = mean(load('Measurement_from_Anchor4_at_5dB.txt'));
d1_mean_10dB = mean(load('Measurement_from_Anchor1_at_10dB.txt'));
d2_mean_10dB = mean(load('Measurement_from_Anchor2_at_10dB.txt'));
d3_mean_10dB = mean(load('Measurement_from_Anchor3_at_10dB.txt'));
d4_mean_10dB = mean(load('Measurement_from_Anchor4_at_10dB.txt'));
d1_mean_15dB = mean(load('Measurement_from_Anchor1_at_15dB.txt'));
d2_mean_15dB = mean(load('Measurement_from_Anchor2_at_15dB.txt'));
d3_mean_15dB = mean(load('Measurement_from_Anchor3_at_15dB.txt'));
d4_mean_15dB = mean(load('Measurement_from_Anchor4_at_15dB.txt'));
d1_mean_20dB = mean(load('Measurement_from_Anchor1_at_20dB.txt'));
d2_mean_20dB = mean(load('Measurement_from_Anchor2_at_20dB.txt'));
d3_mean_20dB = mean(load('Measurement_from_Anchor3_at_20dB.txt'));
d4_mean_20dB = mean(load('Measurement_from_Anchor4_at_20dB.txt'));
d1_mean_25dB = mean(load('Measurement_from_Anchor1_at_25dB.txt'));
d2_mean_25dB = mean(load('Measurement_from_Anchor2_at_25dB.txt'));
d3_mean_25dB = mean(load('Measurement_from_Anchor3_at_25dB.txt'));
d4_mean_25dB = mean(load('Measurement_from_Anchor4_at_25dB.txt'));
d1_mean_30dB = mean(load('Measurement_from_Anchor1_at_30dB.txt'));
d2_mean_30dB = mean(load('Measurement_from_Anchor2_at_30dB.txt'));
d3_mean_30dB = mean(load('Measurement_from_Anchor3_at_30dB.txt'));
d4_mean_30dB = mean(load('Measurement_from_Anchor4_at_30dB.txt'));  % ToA로 구한 거리 평균, (1X11) 행렬
ToA_x_0dB = load('ToA_x_0dB.txt');
ToA_y_0dB = load('ToA_y_0dB.txt');
ToA_x_5dB = load('ToA_x_5dB.txt');
ToA_y_5dB = load('ToA_y_5dB.txt');
ToA_x_10dB = load('ToA_x_10dB.txt');
ToA_y_10dB = load('ToA_y_10dB.txt');
ToA_x_15dB = load('ToA_x_15dB.txt');
ToA_y_15dB = load('ToA_y_15dB.txt');
ToA_x_20dB = load('ToA_x_20dB.txt');
ToA_y_20dB = load('ToA_y_20dB.txt');
ToA_x_25dB = load('ToA_x_25dB.txt');
ToA_y_25dB = load('ToA_y_25dB.txt');
ToA_x_30dB = load('ToA_x_30dB.txt');
ToA_y_30dB = load('ToA_y_30dB.txt');  % ToA로 구한 좌표 불러오기, (10000X11) 행렬
ToA_x_mean_0dB = mean(load('ToA_x_0dB.txt'));
ToA_y_mean_0dB = mean(load('ToA_y_0dB.txt'));
ToA_x_mean_5dB = mean(load('ToA_x_5dB.txt'));
ToA_y_mean_5dB = mean(load('ToA_y_5dB.txt'));
ToA_x_mean_10dB = mean(load('ToA_x_10dB.txt'));
ToA_y_mean_10dB = mean(load('ToA_y_10dB.txt'));
ToA_x_mean_15dB = mean(load('ToA_x_15dB.txt'));
ToA_y_mean_15dB = mean(load('ToA_y_15dB.txt'));
ToA_x_mean_20dB = mean(load('ToA_x_20dB.txt'));
ToA_y_mean_20dB = mean(load('ToA_y_20dB.txt'));
ToA_x_mean_25dB = mean(load('ToA_x_25dB.txt'));
ToA_y_mean_25dB = mean(load('ToA_y_25dB.txt'));
ToA_x_mean_30dB = mean(load('ToA_x_30dB.txt'));
ToA_y_mean_30dB = mean(load('ToA_y_30dB.txt'));  % ToA로 구한 좌표 평균, (1X11) 행렬
ToA_x_var_0dB = var(load('ToA_x_0dB.txt'),1);
ToA_y_var_0dB = var(load('ToA_y_0dB.txt'),1);
ToA_x_var_5dB = var(load('ToA_x_5dB.txt'),1);
ToA_y_var_5dB = var(load('ToA_y_5dB.txt'),1);
ToA_x_var_10dB = var(load('ToA_x_10dB.txt'),1);
ToA_y_var_10dB = var(load('ToA_y_10dB.txt'),1);
ToA_x_var_15dB = var(load('ToA_x_15dB.txt'),1);
ToA_y_var_15dB = var(load('ToA_y_15dB.txt'),1);
ToA_x_var_20dB = var(load('ToA_x_20dB.txt'),1);
ToA_y_var_20dB = var(load('ToA_y_20dB.txt'),1);
ToA_x_var_25dB = var(load('ToA_x_25dB.txt'),1);
ToA_y_var_25dB = var(load('ToA_y_25dB.txt'),1);
ToA_x_var_30dB = var(load('ToA_x_30dB.txt'),1);
ToA_y_var_30dB = var(load('ToA_y_30dB.txt'),1);  % ToA로 구한 좌표의 분산, (1X11) 행렬
vx_0dB = load('Vx_0dB.txt');
vy_0dB = load('Vy_0dB.txt');
vx_5dB = load('Vx_5dB.txt');
vy_5dB = load('Vy_5dB.txt');
vx_10dB = load('Vx_10dB.txt');
vy_10dB = load('Vy_10dB.txt');
vx_15dB = load('Vx_15dB.txt');
vy_15dB = load('Vy_15dB.txt');
vx_20dB = load('Vx_20dB.txt');
vy_20dB = load('Vy_20dB.txt');
vx_25dB = load('Vx_25dB.txt');
vy_25dB = load('Vy_25dB.txt');
vx_30dB = load('Vx_30dB.txt');
vy_30dB = load('Vy_30dB.txt');  % 속도, (10000X10) 행렬

%------------------------------ MNR = 0 -----------------------------
MNR = 0;

A = [1 0 0.1 0; 0 1 0 0.1; 0 0 1 0; 0 0 0 1];
H = [0 -20 0 0; 20 0 0 0; 0 20 0 0; -20 0 0 0];
Q = 0;

X = [ToA_x_mean_0dB(2);ToA_y_mean_0dB(2);mean(vx_0dB(:,1));mean(vy_0dB(:,1))];  % 초기 추정값 설정
P = [ToA_x_var_0dB(2) 0 0 0;0 ToA_y_var_0dB(2) 0 0;0 0 var(vx_0dB(:,1),1) 0;0 0 0 var(vy_0dB(:,1),1)];  % 초기 오차 공분산 설정

s1 = mean((d1_0dB.^2)*(10^(-MNR*0.1)));
s2 = mean((d2_0dB.^2)*(10^(-MNR*0.1)));
s3 = mean((d3_0dB.^2)*(10^(-MNR*0.1)));
s4 = mean((d4_0dB.^2)*(10^(-MNR*0.1)));  % ToA 제곱값의 분산

Xsaved_0dB = zeros(4,11);  % 필터 결과값 저장 변수
Xsaved_0dB(1,1) = ToA_x_mean_0dB(1);
Xsaved_0dB(2,1) = ToA_y_mean_0dB(1);
Xsaved_0dB(1,2) = ToA_x_mean_0dB(2);
Xsaved_0dB(2,2) = ToA_y_mean_0dB(2);
Xsaved_0dB(3,1) = mean(vx_0dB(:,1));
Xsaved_0dB(4,1) = mean(vy_0dB(:,1));  % k=0, k=1에서 ToA 사용

for n=1:3
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_0dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_0dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_0dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_0dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_0dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_0dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_0dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_0dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_0dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_0dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_0dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_0dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_0dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_0dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_0dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_0dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_0dB(n+2)^2)-(d2_mean_0dB(n+2)^2)-100;(d2_mean_0dB(n+2)^2)-(d3_mean_0dB(n+2)^2)+100;(d3_mean_0dB(n+2)^2)-(d4_mean_0dB(n+2)^2)+100;(d4_mean_0dB(n+2)^2)-(d1_mean_0dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_0dB(1,n+2) = X(1);  Xsaved_0dB(2,n+2) = X(2);  Xsaved_0dB(3,n+1) = X(3);  Xsaved_0dB(4,n+1) = X(4);
    sigma_x = (Xsaved_0dB(1,n+2) - ToA_x_mean_0dB(n+1)+0.1*mean(vx_0dB(:,n+1))) / 0.1;
    sigma_y = (Xsaved_0dB(2,n+2) - ToA_y_mean_0dB(n+1)+0.1*mean(vy_0dB(:,n+1))) / 0.1;
    sigma_vx = (Xsaved_0dB(3,n+1) - mean(vx_0dB(:,n))) / 0.1;
    sigma_vy = (Xsaved_0dB(4,n+1) - mean(vy_0dB(:,n))) / 0.1;
    Q = [sigma_x^2 0 0 0;0 sigma_y^2 0 0; 0 0 sigma_vx^2 0;0 0 0 sigma_vy^2];
    P = Pp - K*H*Pp;
end

for n=4:9
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_0dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_0dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_0dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_0dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_0dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_0dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_0dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_0dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_0dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_0dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_0dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_0dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_0dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_0dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_0dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_0dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_0dB(n+2)^2)-(d2_mean_0dB(n+2)^2)-100;(d2_mean_0dB(n+2)^2)-(d3_mean_0dB(n+2)^2)+100;(d3_mean_0dB(n+2)^2)-(d4_mean_0dB(n+2)^2)+100;(d4_mean_0dB(n+2)^2)-(d1_mean_0dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_0dB(1,n+2) = X(1);  Xsaved_0dB(2,n+2) = X(2);  Xsaved_0dB(3,n+1) = X(3);  Xsaved_0dB(4,n+1) = X(4);
    Q = [var(Xsaved_0dB(1,n+2) - (ToA_x_0dB(:,n+1)+0.1*vx_0dB(:,n+1)),1) 0 0 0;0 var(Xsaved_0dB(2,n+2) - (ToA_y_0dB(:,n+1)+0.1*vy_0dB(:,n+1)),1) 0 0;0 0 var(Xsaved_0dB(3,n+1) - vx_0dB(:,n),1) 0; 0 0 0 var(Xsaved_0dB(4,n+1) - vy_0dB(:,n),1)];
    P = Pp - K*H*Pp;
end

%------------------------------ MNR = 5 -----------------------------
MNR = 5;

Q = 0;

X = [ToA_x_mean_5dB(2);ToA_y_mean_5dB(2);mean(vx_5dB(:,1));mean(vy_5dB(:,1))];  % 초기 추정값 설정
P = [ToA_x_var_5dB(2) 0 0 0;0 ToA_y_var_5dB(2) 0 0;0 0 var(vx_5dB(:,1),1) 0;0 0 0 var(vy_5dB(:,1),1)];  % 초기 오차 공분산 설정

s1 = mean((d1_5dB.^2)*(10^(-MNR*0.1)));
s2 = mean((d2_5dB.^2)*(10^(-MNR*0.1)));
s3 = mean((d3_5dB.^2)*(10^(-MNR*0.1)));
s4 = mean((d4_5dB.^2)*(10^(-MNR*0.1)));  % ToA 제곱값의 분산

Xsaved_5dB = zeros(4,11);  % 필터 결과값 저장 변수
Xsaved_5dB(1,1) = ToA_x_mean_5dB(1);
Xsaved_5dB(2,1) = ToA_y_mean_5dB(1);
Xsaved_5dB(1,2) = ToA_x_mean_5dB(2);
Xsaved_5dB(2,2) = ToA_y_mean_5dB(2);
Xsaved_5dB(3,1) = mean(vx_5dB(:,1));
Xsaved_5dB(4,1) = mean(vy_5dB(:,1));  % k=0, k=1에서 ToA 사용

for n=1:2
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_5dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_5dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_5dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_5dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_5dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_5dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_5dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_5dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_5dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_5dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_5dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_5dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_5dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_5dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_5dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_5dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_5dB(n+2)^2)-(d2_mean_5dB(n+2)^2)-100;(d2_mean_5dB(n+2)^2)-(d3_mean_5dB(n+2)^2)+100;(d3_mean_5dB(n+2)^2)-(d4_mean_5dB(n+2)^2)+100;(d4_mean_5dB(n+2)^2)-(d1_mean_5dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_5dB(1,n+2) = X(1);  Xsaved_5dB(2,n+2) = X(2);  Xsaved_5dB(3,n+1) = X(3);  Xsaved_5dB(4,n+1) = X(4);
    sigma_x = (Xsaved_5dB(1,n+2) - ToA_x_mean_5dB(n+1)+0.1*mean(vx_5dB(:,n+1))) / 0.000000005;
    sigma_y = (Xsaved_5dB(2,n+2) - ToA_y_mean_5dB(n+1)+0.1*mean(vy_5dB(:,n+1))) / 0.000000005;
    sigma_vx = (Xsaved_5dB(3,n+1) - mean(vx_5dB(:,n))) / 0.000000005;
    sigma_vy = (Xsaved_5dB(4,n+1) - mean(vy_5dB(:,n))) / 0.000000005;
    Q = [sigma_x^2 0 0 0;0 sigma_y^2 0 0; 0 0 sigma_vx^2 0;0 0 0 sigma_vy^2];
    P = Pp - K*H*Pp;
end

for n=3:9
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_5dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_5dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_5dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_5dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_5dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_5dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_5dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_5dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_5dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_5dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_5dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_5dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_5dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_5dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_5dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_5dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_5dB(n+2)^2)-(d2_mean_5dB(n+2)^2)-100;(d2_mean_5dB(n+2)^2)-(d3_mean_5dB(n+2)^2)+100;(d3_mean_5dB(n+2)^2)-(d4_mean_5dB(n+2)^2)+100;(d4_mean_5dB(n+2)^2)-(d1_mean_5dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_5dB(1,n+2) = X(1);  Xsaved_5dB(2,n+2) = X(2);  Xsaved_5dB(3,n+1) = X(3);  Xsaved_5dB(4,n+1) = X(4);
    Q = [var(Xsaved_5dB(1,n+2) - (ToA_x_5dB(:,n+1)+0.1*vx_5dB(:,n+1)),1) 0 0 0;0 var(Xsaved_5dB(2,n+2) - (ToA_y_5dB(:,n+1)+0.1*vy_5dB(:,n+1)),1) 0 0;0 0 var(Xsaved_5dB(3,n+1) - vx_5dB(:,n),1) 0; 0 0 0 var(Xsaved_5dB(4,n+1) - vy_5dB(:,n),1)];
    P = Pp - K*H*Pp;
end

%------------------------------ MNR = 10 -----------------------------
MNR = 10;

Q = 0;

X = [ToA_x_mean_10dB(2);ToA_y_mean_10dB(2);mean(vx_10dB(:,1));mean(vy_10dB(:,1))];  % 초기 추정값 설정
P = [ToA_x_var_10dB(2) 0 0 0;0 ToA_y_var_10dB(2) 0 0;0 0 var(vx_10dB(:,1),1) 0;0 0 0 var(vy_10dB(:,1),1)];  % 초기 오차 공분산 설정

s1 = mean((d1_10dB.^2)*(10^(-MNR*0.1)));
s2 = mean((d2_10dB.^2)*(10^(-MNR*0.1)));
s3 = mean((d3_10dB.^2)*(10^(-MNR*0.1)));
s4 = mean((d4_10dB.^2)*(10^(-MNR*0.1)));  % ToA 제곱값의 분산

Xsaved_10dB = zeros(4,11);  % 필터 결과값 저장 변수
Xsaved_10dB(1,1) = ToA_x_mean_10dB(1);
Xsaved_10dB(2,1) = ToA_y_mean_10dB(1);
Xsaved_10dB(1,2) = ToA_x_mean_10dB(2);
Xsaved_10dB(2,2) = ToA_y_mean_10dB(2);
Xsaved_10dB(3,1) = mean(vx_10dB(:,1));
Xsaved_10dB(4,1) = mean(vy_10dB(:,1));  % k=0, k=1에서 ToA 사용

for n=1:1
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_10dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_10dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_10dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_10dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_10dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_10dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_10dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_10dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_10dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_10dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_10dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_10dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_10dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_10dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_10dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_10dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_10dB(n+2)^2)-(d2_mean_10dB(n+2)^2)-100;(d2_mean_10dB(n+2)^2)-(d3_mean_10dB(n+2)^2)+100;(d3_mean_10dB(n+2)^2)-(d4_mean_10dB(n+2)^2)+100;(d4_mean_10dB(n+2)^2)-(d1_mean_10dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_10dB(1,n+2) = X(1);  Xsaved_10dB(2,n+2) = X(2);  Xsaved_10dB(3,n+1) = X(3);  Xsaved_10dB(4,n+1) = X(4);
    sigma_x = (Xsaved_10dB(1,n+2) - ToA_x_mean_10dB(n+1)+0.1*mean(vx_10dB(:,n+1))) / 0.01;
    sigma_y = (Xsaved_10dB(2,n+2) - ToA_y_mean_10dB(n+1)+0.1*mean(vy_10dB(:,n+1))) / 0.01;
    sigma_vx = (Xsaved_10dB(3,n+1) - mean(vx_10dB(:,n))) / 0.01;
    sigma_vy = (Xsaved_10dB(4,n+1) - mean(vy_10dB(:,n))) / 0.01;
    Q = [sigma_x^2 0 0 0;0 sigma_y^2 0 0; 0 0 sigma_vx^2 0;0 0 0 sigma_vy^2];
    P = Pp - K*H*Pp;
end

for n=2:9
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_10dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_10dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_10dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_10dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_10dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_10dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_10dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_10dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_10dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_10dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_10dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_10dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_10dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_10dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_10dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_10dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_10dB(n+2)^2)-(d2_mean_10dB(n+2)^2)-100;(d2_mean_10dB(n+2)^2)-(d3_mean_10dB(n+2)^2)+100;(d3_mean_10dB(n+2)^2)-(d4_mean_10dB(n+2)^2)+100;(d4_mean_10dB(n+2)^2)-(d1_mean_10dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_10dB(1,n+2) = X(1);  Xsaved_10dB(2,n+2) = X(2);  Xsaved_10dB(3,n+1) = X(3);  Xsaved_10dB(4,n+1) = X(4);
    Q = [var(Xsaved_10dB(1,n+2) - (ToA_x_10dB(:,n+1)+0.1*vx_10dB(:,n+1)),1) 0 0 0;0 var(Xsaved_10dB(2,n+2) - (ToA_y_10dB(:,n+1)+0.1*vy_10dB(:,n+1)),1) 0 0;0 0 var(Xsaved_10dB(3,n+1) - vx_10dB(:,n),1) 0; 0 0 0 var(Xsaved_10dB(4,n+1) - vy_10dB(:,n),1)];
    P = Pp - K*H*Pp;
end

%------------------------------ MNR = 15 -----------------------------
MNR = 15;

Q = 0;

X = [ToA_x_mean_15dB(2);ToA_y_mean_15dB(2);mean(vx_15dB(:,1));mean(vy_15dB(:,1))];  % 초기 추정값 설정
P = [ToA_x_var_15dB(2) 0 0 0;0 ToA_y_var_15dB(2) 0 0;0 0 var(vx_15dB(:,1),1) 0;0 0 0 var(vy_15dB(:,1),1)];  % 초기 오차 공분산 설정

s1 = mean((d1_15dB.^2)*(10^(-MNR*0.1)));
s2 = mean((d2_15dB.^2)*(10^(-MNR*0.1)));
s3 = mean((d3_15dB.^2)*(10^(-MNR*0.1)));
s4 = mean((d4_15dB.^2)*(10^(-MNR*0.1)));  % ToA 제곱값의 분산

Xsaved_15dB = zeros(4,11);  % 필터 결과값 저장 변수
Xsaved_15dB(1,1) = ToA_x_mean_15dB(1);
Xsaved_15dB(2,1) = ToA_y_mean_15dB(1);
Xsaved_15dB(1,2) = ToA_x_mean_15dB(2);
Xsaved_15dB(2,2) = ToA_y_mean_15dB(2);
Xsaved_15dB(3,1) = mean(vx_15dB(:,1));
Xsaved_15dB(4,1) = mean(vy_15dB(:,1));  % k=0, k=1에서 ToA 사용

for n=1:1
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_15dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_15dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_15dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_15dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_15dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_15dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_15dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_15dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_15dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_15dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_15dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_15dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_15dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_15dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_15dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_15dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_15dB(n+2)^2)-(d2_mean_15dB(n+2)^2)-100;(d2_mean_15dB(n+2)^2)-(d3_mean_15dB(n+2)^2)+100;(d3_mean_15dB(n+2)^2)-(d4_mean_15dB(n+2)^2)+100;(d4_mean_15dB(n+2)^2)-(d1_mean_15dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_15dB(1,n+2) = X(1);  Xsaved_15dB(2,n+2) = X(2);  Xsaved_15dB(3,n+1) = X(3);  Xsaved_15dB(4,n+1) = X(4);
    sigma_x = (Xsaved_15dB(1,n+2) - ToA_x_mean_15dB(n+1)+0.1*mean(vx_15dB(:,n+1))) / 0.001;
    sigma_y = (Xsaved_15dB(2,n+2) - ToA_y_mean_15dB(n+1)+0.1*mean(vy_15dB(:,n+1))) / 0.001;
    sigma_vx = (Xsaved_15dB(3,n+1) - mean(vx_15dB(:,n))) / 0.001;
    sigma_vy = (Xsaved_15dB(4,n+1) - mean(vy_15dB(:,n))) / 0.001;
    Q = [sigma_x^2 0 0 0;0 sigma_y^2 0 0; 0 0 sigma_vx^2 0;0 0 0 sigma_vy^2];
    P = Pp - K*H*Pp;
end

for n=2:9
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_15dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_15dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_15dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_15dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_15dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_15dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_15dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_15dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_15dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_15dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_15dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_15dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_15dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_15dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_15dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_15dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_15dB(n+2)^2)-(d2_mean_15dB(n+2)^2)-100;(d2_mean_15dB(n+2)^2)-(d3_mean_15dB(n+2)^2)+100;(d3_mean_15dB(n+2)^2)-(d4_mean_15dB(n+2)^2)+100;(d4_mean_15dB(n+2)^2)-(d1_mean_15dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_15dB(1,n+2) = X(1);  Xsaved_15dB(2,n+2) = X(2);  Xsaved_15dB(3,n+1) = X(3);  Xsaved_15dB(4,n+1) = X(4);
    Q = [var(Xsaved_15dB(1,n+2) - (ToA_x_15dB(:,n+1)+0.1*vx_15dB(:,n+1)),1) 0 0 0;0 var(Xsaved_15dB(2,n+2) - (ToA_y_15dB(:,n+1)+0.1*vy_15dB(:,n+1)),1) 0 0;0 0 var(Xsaved_15dB(3,n+1) - vx_15dB(:,n),1) 0; 0 0 0 var(Xsaved_15dB(4,n+1) - vy_15dB(:,n),1)];
    P = Pp - K*H*Pp;
end

%------------------------------ MNR = 20 -----------------------------
MNR = 20;

Q = 0;

X = [ToA_x_mean_20dB(2);ToA_y_mean_20dB(2);mean(vx_20dB(:,1));mean(vy_20dB(:,1))];  % 초기 추정값 설정
P = [ToA_x_var_20dB(2) 0 0 0;0 ToA_y_var_20dB(2) 0 0;0 0 var(vx_20dB(:,1),1) 0;0 0 0 var(vy_20dB(:,1),1)];  % 초기 오차 공분산 설정

s1 = mean((d1_20dB.^2)*(10^(-MNR*0.1)));
s2 = mean((d2_20dB.^2)*(10^(-MNR*0.1)));
s3 = mean((d3_20dB.^2)*(10^(-MNR*0.1)));
s4 = mean((d4_20dB.^2)*(10^(-MNR*0.1)));  % ToA 제곱값의 분산

Xsaved_20dB = zeros(4,11);  % 필터 결과값 저장 변수
Xsaved_20dB(1,1) = ToA_x_mean_20dB(1);
Xsaved_20dB(2,1) = ToA_y_mean_20dB(1);
Xsaved_20dB(1,2) = ToA_x_mean_20dB(2);
Xsaved_20dB(2,2) = ToA_y_mean_20dB(2);
Xsaved_20dB(3,1) = mean(vx_20dB(:,1));
Xsaved_20dB(4,1) = mean(vy_20dB(:,1));  % k=0, k=1에서 ToA 사용

for n=1:1
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_20dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_20dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_20dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_20dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_20dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_20dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_20dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_20dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_20dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_20dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_20dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_20dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_20dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_20dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_20dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_20dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_20dB(n+2)^2)-(d2_mean_20dB(n+2)^2)-100;(d2_mean_20dB(n+2)^2)-(d3_mean_20dB(n+2)^2)+100;(d3_mean_20dB(n+2)^2)-(d4_mean_20dB(n+2)^2)+100;(d4_mean_20dB(n+2)^2)-(d1_mean_20dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_20dB(1,n+2) = X(1);  Xsaved_20dB(2,n+2) = X(2);  Xsaved_20dB(3,n+1) = X(3);  Xsaved_20dB(4,n+1) = X(4);
    sigma_x = (Xsaved_20dB(1,n+2) - ToA_x_mean_20dB(n+1)+0.1*mean(vx_20dB(:,n+1))) / 0.0001;
    sigma_y = (Xsaved_20dB(2,n+2) - ToA_y_mean_20dB(n+1)+0.1*mean(vy_20dB(:,n+1))) / 0.0001;
    sigma_vx = (Xsaved_20dB(3,n+1) - mean(vx_20dB(:,n))) / 0.0001;
    sigma_vy = (Xsaved_20dB(4,n+1) - mean(vy_20dB(:,n))) / 0.0001;
    Q = [sigma_x^2 0 0 0;0 sigma_y^2 0 0; 0 0 sigma_vx^2 0;0 0 0 sigma_vy^2];
    P = Pp - K*H*Pp;
end

for n=2:9
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_20dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_20dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_20dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_20dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_20dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_20dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_20dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_20dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_20dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_20dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_20dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_20dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_20dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_20dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_20dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_20dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_20dB(n+2)^2)-(d2_mean_20dB(n+2)^2)-100;(d2_mean_20dB(n+2)^2)-(d3_mean_20dB(n+2)^2)+100;(d3_mean_20dB(n+2)^2)-(d4_mean_20dB(n+2)^2)+100;(d4_mean_20dB(n+2)^2)-(d1_mean_20dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_20dB(1,n+2) = X(1);  Xsaved_20dB(2,n+2) = X(2);  Xsaved_20dB(3,n+1) = X(3);  Xsaved_20dB(4,n+1) = X(4);
    Q = [var(Xsaved_20dB(1,n+2) - (ToA_x_20dB(:,n+1)+0.1*vx_20dB(:,n+1)),1) 0 0 0;0 var(Xsaved_20dB(2,n+2) - (ToA_y_20dB(:,n+1)+0.1*vy_20dB(:,n+1)),1) 0 0;0 0 var(Xsaved_20dB(3,n+1) - vx_20dB(:,n),1) 0; 0 0 0 var(Xsaved_20dB(4,n+1) - vy_20dB(:,n),1)];
    P = Pp - K*H*Pp;
end

%------------------------------ MNR = 25 -----------------------------
MNR = 25;

Q = 0;

X = [ToA_x_mean_25dB(2);ToA_y_mean_25dB(2);mean(vx_25dB(:,1));mean(vy_25dB(:,1))];  % 초기 추정값 설정
P = [ToA_x_var_25dB(2) 0 0 0;0 ToA_y_var_25dB(2) 0 0;0 0 var(vx_25dB(:,1),1) 0;0 0 0 var(vy_25dB(:,1),1)];  % 초기 오차 공분산 설정

s1 = mean((d1_25dB.^2)*(10^(-MNR*0.1)));
s2 = mean((d2_25dB.^2)*(10^(-MNR*0.1)));
s3 = mean((d3_25dB.^2)*(10^(-MNR*0.1)));
s4 = mean((d4_25dB.^2)*(10^(-MNR*0.1)));  % ToA 제곱값의 분산

Xsaved_25dB = zeros(4,11);  % 필터 결과값 저장 변수
Xsaved_25dB(1,1) = ToA_x_mean_25dB(1);
Xsaved_25dB(2,1) = ToA_y_mean_25dB(1);
Xsaved_25dB(1,2) = ToA_x_mean_25dB(2);
Xsaved_25dB(2,2) = ToA_y_mean_25dB(2);
Xsaved_25dB(3,1) = mean(vx_25dB(:,1));
Xsaved_25dB(4,1) = mean(vy_25dB(:,1));  % k=0, k=1에서 ToA 사용

for n=1:9
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_25dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_25dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_25dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_25dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_25dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_25dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_25dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_25dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_25dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_25dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_25dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_25dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_25dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_25dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_25dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_25dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_25dB(n+2)^2)-(d2_mean_25dB(n+2)^2)-100;(d2_mean_25dB(n+2)^2)-(d3_mean_25dB(n+2)^2)+100;(d3_mean_25dB(n+2)^2)-(d4_mean_25dB(n+2)^2)+100;(d4_mean_25dB(n+2)^2)-(d1_mean_25dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_25dB(1,n+2) = X(1);  Xsaved_25dB(2,n+2) = X(2);  Xsaved_25dB(3,n+1) = X(3);  Xsaved_25dB(4,n+1) = X(4);
    Q = [var(Xsaved_25dB(1,n+2) - (ToA_x_25dB(:,n+1)+0.1*vx_25dB(:,n+1)),1) 0 0 0;0 var(Xsaved_25dB(2,n+2) - (ToA_y_25dB(:,n+1)+0.1*vy_25dB(:,n+1)),1) 0 0;0 0 var(Xsaved_25dB(3,n+1) - vx_25dB(:,n),1) 0; 0 0 0 var(Xsaved_25dB(4,n+1) - vy_25dB(:,n),1)];
    P = Pp - K*H*Pp;
end

%------------------------------ MNR = 30 -----------------------------
MNR = 30;

Q = 0;

X = [ToA_x_mean_30dB(2);ToA_y_mean_30dB(2);mean(vx_30dB(:,1));mean(vy_30dB(:,1))];  % 초기 추정값 설정
P = [ToA_x_var_30dB(2) 0 0 0;0 ToA_y_var_30dB(2) 0 0;0 0 var(vx_30dB(:,1),1) 0;0 0 0 var(vy_30dB(:,1),1)];  % 초기 오차 공분산 설정

s1 = mean((d1_30dB.^2)*(10^(-MNR*0.1)));
s2 = mean((d2_30dB.^2)*(10^(-MNR*0.1)));
s3 = mean((d3_30dB.^2)*(10^(-MNR*0.1)));
s4 = mean((d4_30dB.^2)*(10^(-MNR*0.1)));  % ToA 제곱값의 분산

Xsaved_30dB = zeros(4,11);  % 필터 결과값 저장 변수
Xsaved_30dB(1,1) = ToA_x_mean_30dB(1);
Xsaved_30dB(2,1) = ToA_y_mean_30dB(1);
Xsaved_30dB(1,2) = ToA_x_mean_30dB(2);
Xsaved_30dB(2,2) = ToA_y_mean_30dB(2);
Xsaved_30dB(3,1) = mean(vx_30dB(:,1));
Xsaved_30dB(4,1) = mean(vy_30dB(:,1));  % k=0, k=1에서 ToA 사용

for n=1:9
    Xp = A*X;
    Pp = A*P*(A') + Q;
    R = [4*(mean(d2_30dB(:,n+1))^2)*s2(1,n+1)+4*(mean(d1_30dB(:,n+1))^2)*s1(1,n+1) -4*(mean(d2_30dB(:,n+1))^2)*s2(1,n+1) 0 -4*(mean(d1_30dB(:,n+1))^2)*s1(1,n+1);
        -4*(mean(d2_30dB(:,n+1))^2)*s2(1,n+1) 4*(mean(d3_30dB(:,n+1))^2)*s3(1,n+1)+4*(mean(d2_30dB(:,n+1))^2)*s2(1,n+1) -4*(mean(d3_30dB(:,n+1))^2)*s3(1,n+1) 0;
        0 -4*(mean(d3_30dB(:,n+1))^2)*s3(1,n+1) 4*(mean(d4_30dB(:,n+1))^2)*s4(1,1)+4*(mean(d3_30dB(:,n+1))^2)*s3(1,n+1) -4*(mean(d4_30dB(:,n+1))^2)*s4(1,n+1);
        -4*(mean(d1_30dB(:,n+1))^2)*s1(1,n+1) 0 -4*(mean(d4_30dB(:,n+1))^2)*s4(1,n+1) 4*(mean(d1_30dB(:,n+1))^2)*s1(1,n+1)+4*(mean(d4_30dB(:,n+1))^2)*s4(1,n+1);];
    K = Pp*H'/(H*Pp*H' + R);
    z = [(d1_mean_30dB(n+2)^2)-(d2_mean_30dB(n+2)^2)-100;(d2_mean_30dB(n+2)^2)-(d3_mean_30dB(n+2)^2)+100;(d3_mean_30dB(n+2)^2)-(d4_mean_30dB(n+2)^2)+100;(d4_mean_30dB(n+2)^2)-(d1_mean_30dB(n+2)^2)-100];
    X = Xp + K*(z - H*Xp);
    Xsaved_30dB(1,n+2) = X(1);  Xsaved_30dB(2,n+2) = X(2);  Xsaved_30dB(3,n+1) = X(3);  Xsaved_30dB(4,n+1) = X(4);
    Q = [var(Xsaved_30dB(1,n+2) - (ToA_x_30dB(:,n+1)+0.1*vx_30dB(:,n+1)),1) 0 0 0;0 var(Xsaved_30dB(2,n+2) - (ToA_y_30dB(:,n+1)+0.1*vy_30dB(:,n+1)),1) 0 0;0 0 var(Xsaved_30dB(3,n+1) - vx_30dB(:,n),1) 0; 0 0 0 var(Xsaved_30dB(4,n+1) - vy_30dB(:,n),1)];
    P = Pp - K*H*Pp;
end

%------------------------------ 평균오차 -----------------------------

pos_x = 0:1:10;
pos_y = 0:1:10;  % 실제 좌표

ToA_Error_0dB = mean(sqrt((pos_x - ToA_x_mean_0dB).^2 + (pos_y - ToA_y_mean_0dB).^2));
ToA_Error_5dB = mean(sqrt((pos_x - ToA_x_mean_5dB).^2 + (pos_y - ToA_y_mean_5dB).^2));
ToA_Error_10dB = mean(sqrt((pos_x - ToA_x_mean_10dB).^2 + (pos_y - ToA_y_mean_10dB).^2));
ToA_Error_15dB = mean(sqrt((pos_x - ToA_x_mean_15dB).^2 + (pos_y - ToA_y_mean_15dB).^2));
ToA_Error_20dB = mean(sqrt((pos_x - ToA_x_mean_20dB).^2 + (pos_y - ToA_y_mean_20dB).^2));
ToA_Error_25dB = mean(sqrt((pos_x - ToA_x_mean_25dB).^2 + (pos_y - ToA_y_mean_25dB).^2));
ToA_Error_30dB = mean(sqrt((pos_x - ToA_x_mean_30dB).^2 + (pos_y - ToA_y_mean_30dB).^2));  % ToA 위치측위 평균 오차

KF_Error_0dB = mean(sqrt((pos_x - Xsaved_0dB(1,:)).^2 + (pos_y - Xsaved_0dB(2,:)).^2));
KF_Error_5dB = mean(sqrt((pos_x - Xsaved_5dB(1,:)).^2 + (pos_y - Xsaved_5dB(2,:)).^2));
KF_Error_10dB = mean(sqrt((pos_x - Xsaved_10dB(1,:)).^2 + (pos_y - Xsaved_10dB(2,:)).^2));
KF_Error_15dB = mean(sqrt((pos_x - Xsaved_15dB(1,:)).^2 + (pos_y - Xsaved_15dB(2,:)).^2));
KF_Error_20dB = mean(sqrt((pos_x - Xsaved_20dB(1,:)).^2 + (pos_y - Xsaved_20dB(2,:)).^2));
KF_Error_25dB = mean(sqrt((pos_x - Xsaved_25dB(1,:)).^2 + (pos_y - Xsaved_25dB(2,:)).^2));
KF_Error_30dB = mean(sqrt((pos_x - Xsaved_30dB(1,:)).^2 + (pos_y - Xsaved_30dB(2,:)).^2));  % KF 위치측위 평균 오차

ToA_Error_sum = sum([ToA_Error_0dB ToA_Error_5dB ToA_Error_10dB ToA_Error_15dB ToA_Error_20dB ToA_Error_25dB ToA_Error_30dB]);
KF_Error_sum = sum([KF_Error_0dB KF_Error_5dB KF_Error_10dB KF_Error_15dB KF_Error_20dB KF_Error_25dB KF_Error_30dB]);  % 필터 평가용 변수

hold on
plot(0:5:30,[ToA_Error_0dB ToA_Error_5dB ToA_Error_10dB ToA_Error_15dB ToA_Error_20dB ToA_Error_25dB ToA_Error_30dB])
plot(0:5:30,[KF_Error_0dB KF_Error_5dB KF_Error_10dB KF_Error_15dB KF_Error_20dB KF_Error_25dB KF_Error_30dB])
hold off
grid on
xlabel('MNR')
ylabel('Error')
legend('ToA','KF')
