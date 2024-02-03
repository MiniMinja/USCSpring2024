% An object representing an elevator in a building. 
classdef Elevator
    properties
        currfloor = 0;
        movingDir = 0; % 1 means up, -1 means down, 0 means dormant
        numPassengers = 0; % number of passengers
        listOfDestinations = [];
        doorsOpen = 0;
    end
    methods
        % A constructor
        %   f: starting floor
        %   m: number of floors
        function obj = Elevator(f, m)
            obj.currfloor = f;
            obj.listOfDestinations = zeros(1,m);
        end

        % A function that represents a single unit of time that passed for 
        % an elevator
        function tick(obj)
            
        end

        % A function that tells whether people are getting on or off the
        % elevator
        %
        %   changeAmount: the number of passengers getting off (negative if
        % getting off)
        function changePassengerCount(obj, amount)
            obj.numPassengers = obj.numPassengers + amount;
        end

        % A function that tells this elevator to reach a certain
        % destination
        %
        %
        function addDestination(obj, floor)
            obj.listOfDestinations(floor) = 1;
        end

        % A function (for convenience) that tells us whether or not there
        % are any jobs left
        %
        %   Output: true/false whether or not the elevator should keep
        % moving towards its goal(s)
        function hasLeft = hasDestinations(obj)
            hasLeft = 0;
            for i=1:size(obj.listOfDestinations, 2)
                if obj.listOfDestinations(i)
                    hasLeft = 1;
                    break;
                end
            end
        end

        % A function that gives us data regarding this elevator
        function ret = toString(obj, level)
            ret ="";

            tabs = "";
            for i=1:level
                tabs = tabs + char(9);
            end
            ret = ret + sprintf("Elevator:\n");

            ret = ret + sprintf("%sCurrent Floor: %d\n",tabs,obj.currfloor);

            dirstring = "Idle";
            if obj.movingDir == 1
                dirstring = "UP";
            else 
                dirstring = "DOWN";
            end
            ret = ret + sprintf("%sDirection: %s\n",tabs,dirstring);

            ret = ret + sprintf("%sPassengers: %d\n", tabs, obj.numPassengers);

            destfloors = "";
            for i=1:size(obj.listOfDestinations,2)
                if obj.listOfDestinations(i) == 1
                    if i > 1
                        destfloors = destfloor + ", ";
                    end
                    destfloor = destfloors + i;
                end
            end
            ret = ret + sprintf("%sCurrently active destinations: [%s]\n",tabs, destfloors);

            doorstate = "CLOSED";
            if obj.doorsOpen
                doorstate = "OPENED";
            end
            ret = ret + sprintf("%sDoors: %s\n",tabs,doorstate);
        end
    end
end