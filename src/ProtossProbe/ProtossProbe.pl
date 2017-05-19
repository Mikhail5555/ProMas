:-dynamic 
	self/2,			% our own ID from the self/5 percept
	friendly/3,		% Friendly units
	builder/0,		% This drone is a builder
	gasCollector/0,		% This drone is a gasCollector
	ownBase/2,		% The location of our base
	mineralField/5, 	% mineralField IDs and amounts from the mineralField/5 percept
	workerActivity/1,	% our own activity state from the workerActivity/1 percept
	gathered/1,		% used as a goal to gather mineralFields
	base/4,			% Locations of all the potential base locations.
	chokepoint/2.





chokePointCovered :- friendly("Protoss Photon Cannon", _, _).


	
% Calculate the distance to an object
distance(X1,Y1,X2,Y2,D) :- D is sqrt((X2-X1)**2 + (Y2-Y1)**2).
