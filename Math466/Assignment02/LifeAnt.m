gens = 400;
n = 100;
Init_Config = zeros(n);

Init_Config(2, 4) = 1;
Init_Config(3, 2) = 1;
Init_Config(3, 4) = 1;
Init_Config(4, 3) = 1;
Init_Config(4, 4) = 1;

%%
global log
log = fopen("outputlog.txt", "w");
fprintf(log, "%d %d %d %d %d %d %d %d %d %d\n", Init_Config);

A = Life(Init_Config, gens);
Life_Animation_alt(A, 1);