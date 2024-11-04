function [ S ] = phase_C( I, I_shift )
F1 = fft2(I);
F2 = fft2(I_shift);
F2_conj = conj(F2);
Formula_3 = F2_conj.*F1./abs(F2_conj.*F1);
S = ifft2(Formula_3);
end

