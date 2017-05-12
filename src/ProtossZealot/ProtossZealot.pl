:-dynamic 

	% Attack
	isReady/1,
	attack/2,
	attack/0,	
	attacking/0,
	
	% Status
	status/6,
	friendly/3,
	enemy/4,
	self/5,
	
	% Map awareness
	position/2,
	chokepoint/2,
	enemyBase/2,
	ownBase/2,
	base/3.
	
	
% Calculate the distance to an object
distance(X1,Y1,X2,Y2,D) :- D is sqrt((X2-X1)**2 + (Y2-Y1)**2).	 
