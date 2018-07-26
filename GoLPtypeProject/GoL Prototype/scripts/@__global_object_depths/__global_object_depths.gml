// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // oPlayerControl
global.__objectDepths[1] = 0; // oObstacle
global.__objectDepths[2] = 0; // oMovingObject
global.__objectDepths[3] = 0; // oEnemyTurner
global.__objectDepths[4] = 0; // oHole
global.__objectDepths[5] = 0; // oMine
global.__objectDepths[6] = 0; // oEnemyDropper
global.__objectDepths[7] = 0; // oWall
global.__objectDepths[8] = 0; // oEnemyBasic
global.__objectDepths[9] = 0; // oAntivirusBasic
global.__objectDepths[10] = -1; // oHitWarning
global.__objectDepths[11] = 0; // oDamage
global.__objectDepths[12] = 10; // oRoomGrid
global.__objectDepths[13] = 0; // oSplashObject
global.__objectDepths[14] = 1; // oPlacementAllow
global.__objectDepths[15] = 0; // oUnbreakableWall
global.__objectDepths[16] = 0; // oPlacementUsed


global.__objectNames[0] = "oPlayerControl";
global.__objectNames[1] = "oObstacle";
global.__objectNames[2] = "oMovingObject";
global.__objectNames[3] = "oEnemyTurner";
global.__objectNames[4] = "oHole";
global.__objectNames[5] = "oMine";
global.__objectNames[6] = "oEnemyDropper";
global.__objectNames[7] = "oWall";
global.__objectNames[8] = "oEnemyBasic";
global.__objectNames[9] = "oAntivirusBasic";
global.__objectNames[10] = "oHitWarning";
global.__objectNames[11] = "oDamage";
global.__objectNames[12] = "oRoomGrid";
global.__objectNames[13] = "oSplashObject";
global.__objectNames[14] = "oPlacementAllow";
global.__objectNames[15] = "oUnbreakableWall";
global.__objectNames[16] = "oPlacementUsed";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for