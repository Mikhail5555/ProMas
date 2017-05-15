 :- dynamic
 % Units
	unitAmount/2,		% The amount of units 
	 
 % Buildings
	constructionSite/3,	% The places where you can build
 
 % Resources
 	resources/4,		% The current resources
 	vespeneGeyser/4,	% Locations of verspeneGeysers
 
 % Goals
 	target/2,		% Target of things you want to build
 % Constructionsite
	constructionSite/3,
	sqrt/2,
	abs/2.


canBuild(Type) :- cost(Type, MCost, GCost, SCost), resources(CurrentMinerals, CurrentGas, CurrentSupply, MaxSupply), CurrentMinerals >= MCost, CurrentGas >= GCost, (CurrentSupply + SCost) =< MaxSupply.


%the calculation of distance between two coordinates.
distance(X1,Y1,X2,Y2, Distance) :-
    abs(X1-X2, X3),
    abs(Y1-Y2, Y3),
    sqrt(X3*X3 + Y3*Y3, Distance).


%returns the construction sites which have atleast 5 distance from the chokepoint.
withinChoke(ChokeX, ChokeY, X, Y) :- 
    constructionSite(X, Y, _),
    distance(X, Y, ChokeX,ChokeY, Distance),
    Distance < 5.

% returns the construction sites near a chokepoint which are near the constructionSites but on the base side. 
defenseSpot(ChokeX, ChokeY, BaseX, BaseY, X, Y) :-
    constructionSite(X,Y, _),
    withinChoke(ChokeX, ChokeY, X, Y),
    distance(ChokeX, ChokeY, BaseX, BaseY, BaseDistance),
    distance(BaseX, BaseY, X, Y, SiteDistance),
    SiteDistance < BaseDistance.



% cost(UnitType, Mineral, Gas, Supply) of units

% Units 
cost("Protoss Probe", 50, 0, 2).
cost("Protoss Zealot", 100, 0, 4).

% Buildings
cost("Protoss Assimilator", 100, 0, 0).
cost("Protoss Pylon", 100, 0, 0).
cost("Protoss Gateway", 150, 0, 0).
cost("Protoss Forge", 150, 0, 0).
cost("Protoss Photon Cannon", 150, 0, 0).

% Upgrades
cost("Protoss Ground Weapons", 100, 100, 0).
