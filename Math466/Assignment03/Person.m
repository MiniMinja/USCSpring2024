% An object representing a person that "waits" for and "rides" on an
% elevator
classdef Person
properties
    
    startFloor = 0;
    destFloor = 0;
    activated = 0;

    waitTime = 0;
    onElevator = 0;
    finishedRide = 0;

end
methods
    % sf: the starting floor of this person
    % df: the destination floor of this person
    function obj = Person(sf, df)
        obj.startFloor = sf;
        obj.destFloor = df;
    end

    % A function that tells this person to wait
    function wait(obj)
        obj.waitTime = obj.waitTime + 1;
    end
    
    % A function that "gives this person life"
    function activatePerson(obj)
        obj.activated = 1;
    end

    % A function that tells this person to get on or off this elevator
    function getOnElevator(obj)
        obj.onElevator = 1;
    end

    % A functions that ends this objects life
    function getOffElevator(obj)
        obj.onElevator = 0;
        obj.finishedRide = 1;
    end

    % A function that gives the data regarding this object as a string
    function ret = toString(obj, level)
        ret = "";

        tabs = "";
        for i=1:level
            tabs = tabs + char(9);
        end

        ret = ret + sprintf("Person:\n");

        ret = ret + sprintf("%sStarting Floor: %d", tabs, obj.startFloor);

        ret = ret + sprintf("%sDestination: %d", tabs, obj.destFloor);

        ret = ret + sprintf("%sWaited: %d",tabs, obj.waitTime);

        inElevator = "NO";
        if obj.onElevator
            inElevator = "YES";
        end
        ret = ret + sprintf("%sIn an Elevator: %s", tabs, inElevator);

        finished = "NO";
        if obj.finishedRide
            finished = "YES";
        end
        ret = ret + sprintf("%sFinished: %s", tabs, finished);
    end
end
end