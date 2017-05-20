:-dynamic
	probe/2,		% A unit is a probe percept
	ownBase/2,		% The coordinates of your base
	isBuilder/2,		% A probe is assigned to be builder
	isGasCollector/2,	% A probe is assigned to be a gas collector
	isScout/2,		% A probe is Assigned to scout
	isReady/1.		% A Unit is ready for attacking
	
readyForAttack :- aggregate_all(count, isReady(Id), N), N >= 20.
