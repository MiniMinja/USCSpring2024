gens = 1000;
n = 100;
Init_Config = zeros(n);

density = .10;
spawnCount = 0;

for i=1:n
    for j=1:n
        tospawn = 0;
        if rand < density
            tospawn = 1;
            spawnCount = spawnCount+1;
        end
        Init_Config(i,j) = tospawn;
    end
end
disp("spawned: " + spawnCount);

% Init_Config(5, 5) = 1;
% Init_Config(5, 6) = 1;
% Init_Config(5, 4) = 1;

%%
global log
log = fopen("outputlog.txt", "w");
fprintf(log, "%d %d %d %d %d %d %d %d %d %d\n", Init_Config);

A = Life(Init_Config, gens);
mov = Life_Animation_alt(A, 1);

v = VideoWriter('randomlife.avi');
open(v)
writeVideo(v, mov);
close(v);