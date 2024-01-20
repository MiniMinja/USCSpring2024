function [Simulation] = Life(Init_Config, Generations)

    n = size(Init_Config(1));
    A = zeros(Generations, n+2, n+2);
    
    % initializing the first generation to Init_Config
    for i=1:n
        for j=1:n
            A(1, i+1, j+1) = Init_Config(i, j);
        end
    end
    
    for g=1:Generations-1

        for i=1:n
            for j=1:n
                
                % the first generation is already set so we only need
                % to check after the first one
                A_g = A(g+1);

                % need to check (i+1, j+1) instead of (i, j)
                % because A has a "border" of zeros so we
                % really need to access indices 2-(n+1)
                nc = count_neighbors(A_g, i+1, j+1);
                if A_g(i, j) == 1
                    if nc < 2 || nc > 3
                        A(g+2, i, j) = 0;
                    else
                        A(g+2, i, j) = 1;
                    end
                else
                    if nc == 3
                        A(g+2, i, j) = 1;
                    else
                        A(g+2, i, j) = 0;
                    end
                end

            end
        end

    end

    % return
    Simulation = A;

end

function [c] = count_neighbors(A_g, i, j)
    
    c = 0;

    % for looping through the "offsets":
    % : (-1, -1), (-1, 0), ..., (1, 1)
    % such that for each offset o = (oi, oj) 
    % (where i is row and j is column)
    % we can count the neighboring cell of (i, j) with
    % (i + oi, j + oj)
    for oi = -1:1
        for oj = -1:1
            % counting if neighboring cell is alive
            if (oi ~= 0 || oj ~= 0) && A_g(i+oi, j+oj) == 1
                c = c + 1;
            end
        end
    end

    % c is already c :P

end