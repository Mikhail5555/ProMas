:-dynamic 
	self/2,			% our own ID from the self/5 percept
	friendly/3,		% Friendly units
	builder/0,		% This drone is a builder
	gasCollector/0,		% This drone is a gasCollector
	mineralField/2, 	% mineralField IDs and amounts from the mineralField/5 percept
	workerActivity/1,	% our own activity state from the workerActivity/1 percept
	gathered/1.		% used as a goal to gather mineralFields