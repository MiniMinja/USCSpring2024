% An object that represents the entire system of the building that controls
% the elevators.
classdef Bank
properties

    elevators = [];
    people = [];
    requests =[];

    stories = 0;
    timer = 0;

    timeLimit = 0;

end
methods
    % Creates a randomly generated building with 
    %   N: number of elevators
    %   M: number of floors
    %   P: max number of people
    %   T: amount of time that will pass
    function obj=Bank(N,M,P,T)
        for i=1:N
            obj.elevators = [obj.elevators, Elevator(1, M)];
        end

        for i=1:P
            startFloor = randi(M) + 1;
            endFloor = randi(M) + 1;
            while startFloor == endFloor
                endFloor = randi(M) + 1;
            end
            obj.people = [obj.people, Person(startFloor, endFloor)];
        end

        obj.requests = zeros(1, P);

        obj.stories = M;

        obj.timeLimit = T;

    end

    % A function that starts everything. Essentially, it's mostly for
    % cleaner initialization
    function init(obj)
        for i=1:size(obj.people, 2)
            obj.people(i).activatePerson();
        end
    end

    % a function that represent a single unit of time that passes in the
    % system
    %
    %------PLEASE READ THE DOCUMENTATION TO HAVE A BETTER-------------
    %------GRASP OF THE SPAGHETTI THAT IS THIS CODE-------------------
    function tick(obj)

        % This section is (1) on our documentation chart. 
        % Essentially, I'm managing requests to appropriate elevators
        for i = 1:size(obj.requests, 2)
            % every floor has 2 requests (up or down), so I'm just putting 
            % those requests as either 1, or -1.
            requestedDirections = [0, 0];
            updirection = 1 & obj.requests(i);
            if updirection > 0
                requestedDirections(1) = 1;
            end
            downdirection = 2 & obj.requests(i);
            if downdirection > 0
                requestedDirections(2) = -1;
            end
           

            for j=1:2
                if requestedDirections(j) ~= 0
                    [f, ec] = findConvenientElevator(obj, i, requestedDirections(j));
                    if f
                        ec.listOfDestinations(i) = 1;
                        obj.requests(i) = 0;
                    else
                        for k=1:size(obj.elevators, 2)
                            if obj.elevators(k).movingDir == 0
                                obj.elevators(k).listOfDestinations(i) = 1;
                                obj.requests(i) = 0;
                                break;
                            end
                        end
                    end
                end
            end
        end

        % This section is (2) on our documentation chart
        % Essentially, I'm letting elevators run as their own independent
        % machines

        for i=1:size(obj.elevators, 2)
            obj.elevators(i).tick();
        end

        % This is section (3) on our documentation chart
        % It's like (2) but now I'm running people (they aren't so
        % independent).
        for i=1:size(obj.people, 2)
            if obj.people
        end


       
        obj.timer = obj.timer+1;
    end

    % A function that finds the "convenient elevator" to pick up the
    % request. 
    % 
    % A "convenient elevator" is one that is moving toward's the
    % request's floor AND in the same direction as r. Among all the
    % elevators that qualify, it picks the closest to the floor and if
    % there are any ties, it picks the one with the least amount of
    % passengers.
    %
    %   floor: the floor the request is at
    %   rdirection: the direction the request is wanted (1 is up, -1 is
    % down)
    function [found, ec]=findConvenientElevator(obj, floor, rdirection)
        found = 0;
        minDist = obj.stories + 1;
        for i = 0:size(obj.elevators, 2)
            ei = obj.elevators(i);  % for convenience

            if ei.movingDir > 0

                % Note that in order for the elevator to be moving towards the
                % floor, the vector from the elevator to the floor and the
                % moving direction needs to be the same. We can check this with
                % multiplication
                if ei.movingDir == rdirection && ((floor - ei.currfloor) * ei.movingDir > 0)
                    
                    % now finding the minimum distance (the else if is
                    % checking for a tie breaker such that an elevator has
                    % been previously found)
                    if abs(ei.currfloor - floor) < minDist
                        minDist = abs(ei.currfloor - floor);
                        found = 1;
                        ec = ei;
                    else if abs(ei.currfloor - floor) == minDist
                         if found
                            if ei.numPassengers < ec.numPassengers
                                ec = ei;
                            end
                         else
                            % This shouldn't be possible? but for sanity
                            % check
                            ec = ei;
                            found = 1;
                         end
                    end
                end
            end

        end

        
    end

    % A function that tells if the simulation ended
    function e=ended(obj)
        e = obj.timer > obj.timeLimit;
    end

    % a function that displays the current state of the bank on the current
    % figure
    function showState(obj)

    end
    
    % a function that gives this data as a string
    function ret=toString(obj, level)
        ret = "";

        tabs = "";
        for i=1:level
            tabs = tabs + char(9);
        end
         

        ret = ret + "Bank:\n";

        ret = ret + tabs + "Stories: " + obj.stories;

        ret = ret + tabs + "Current Time: " + obj.timer;
        
        ret = ret + tabs + "Elevators:\n\n";
        n = size(obj.elevators, 2);
        for i=1:n
            ret = ret + obj.elevators(i).toString(level + 1);
        end

        ret = ret + tabs + "People:\n\n";
        for i = 1:size(obj.people, 2)
            ret = ret + obj.people(i).toString(level + 1);
        end


    end
end
end