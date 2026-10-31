%RAFIK BADILAH_L0325009
%PRAKTIKUM 10_METODE NUMERIK
%PERSAMAAN DIFERENSIAL BIASA

%Fungsi Main untuk Menjalankan Program

% Definisi fungsi dy/dx = (4x^3 - 2x + 1) / (2 + y)
f = @(x, y) (4*x^3 - 2*x + 1) / (2 + y);

% Parameter awal
a = 0;
b = 2;
y0 = 1;
N = 15;

% 1. Hitung Solusi Eksak y(2)
y_exact = sqrt(37) - 2;

% 2. Panggil fungsi metode numerik
[x_euler, y_euler] = Euler(f, a, b, y0, N);
y_euler_akhir = y_euler(end);

y_heun_akhir = Heun(f, a, b, y0, N);

y_rk4_akhir = Runge4(f, a, b, y0, N);

% 3. Hitung Galat
% Galat Euler
galat_abs_euler = abs(y_euler_akhir - y_exact);
galat_rel_euler = galat_abs_euler / abs(y_exact);

% Galat Heun
galat_abs_heun = abs(y_heun_akhir - y_exact);
galat_rel_heun = galat_abs_heun / abs(y_exact);

% Galat Runge Kutta Orde-4
galat_abs_rk4 = abs(y_rk4_akhir - y_exact);
galat_rel_rk4 = galat_abs_rk4 / abs(y_exact);

% Output Solusi Eksak
fprintf('\n==================================================\n');
fprintf('Solusi Eksak y(2) = %.10f\n', y_exact);
fprintf('==================================================\n');

% Output Tabel Galat
fprintf('\nGalat Absolut dan Relatif terhadap solusi eksak:\n');
fprintf('Metode\t\t\ty_approx\t\tGalat Absolut\t\tGalat Relatif\n');
fprintf('Euler\t\t\t%.10f\t%.15f\t%.15f\n', y_euler_akhir, galat_abs_euler, galat_rel_euler);
fprintf('Heun\t\t\t%.10f\t%.15f\t%.15f\n', y_heun_akhir, galat_abs_heun, galat_rel_heun);
fprintf('Runge Kutta Orde-4\t%.10f\t%.15f\t%.15f\n', y_rk4_akhir, galat_abs_rk4, galat_rel_rk4);
