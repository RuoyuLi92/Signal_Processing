N = 128;
f_0 = 21/128;
f_0_ = 21/127;

n = 0:1:N-1;

x_n = cos(2*pi*f_0*n);

x_n_ = cos(2*pi*f_0_*n);


DFT_x_n = fft(x_n');

DFT_x_n_ = fft(x_n_');

% plot(n, real(DFT_x_n));
% hold on
% plot(n, real(DFT_x_n_));
% legend("f_0","f_0_")
% 
% figure
% 
% plot(n, imag(DFT_x_n));
% hold on
% plot(n, imag(DFT_x_n_));

subplot(223),stem(n-N/2,fftshift(abs(DFT_x_n)))
subplot(224),stem(n-N/2,fftshift(abs(DFT_x_n_)))

W = dftmtx(N);
MDFT_x_n = W * x_n';
MDFT_x_n_ = W * x_n_';

norm(MDFT_x_n - DFT_x_n)
norm(MDFT_x_n_ - DFT_x_n_)

subplot(221),stem(n-N/2,fftshift(abs(MDFT_x_n)))
subplot(222),stem(n-N/2,fftshift(abs(MDFT_x_n_)))