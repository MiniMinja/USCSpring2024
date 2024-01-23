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
    
    % return (c is already c :P)

end