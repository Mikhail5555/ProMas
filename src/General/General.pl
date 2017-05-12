 :- dynamic
 % Units
	unitAmount/2,		% The amount of units 
	 
 % Buildings
	constructionSite/3,	% The places where you can build
 
 % Resources
 	resources/4,		% The current resources
 	vespeneGeyser/4,	% Locations of verspeneGeysers
 
 % Goals
 	target/2.		% Target of things you want to build
 

canBuild(Type) :- cost(Type, MCost, GCost, SCost), resources(CurrentMinerals, CurrentGas, CurrentSupply, MaxSupply), CurrentMinerals >= MCost, CurrentGas >= GCost, (CurrentSupply + SCost) =< MaxSupply.

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
