/*
	FUNCTION COMPILES
*/
//Player only
if (!isDedicated) then {

	"filmic" setToneMappingParams [0.07, 0.31, 0.23, 0.37, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";
	
	//-----------------------------------------UK----------------------------------------------------------
	fnc_usec_selfActions 		= compile preprocessFileLineNumbers "fn_selfActions.sqf";
	fn_gearMenuChecks 			= compile preprocessFileLineNumbers "fixes\fn_gearMenuChecks.sqf";
	zombie_generate				= compile preprocessFileLineNumbers "fixes\zombie_generate.sqf";
	player_selectSlot 			= compile preprocessFileLineNumbers "fixes\ui_selectSlot.sqf";
	player_lockVault 			= compile preprocessFileLineNumbers "fixes\player_lockVault.sqf";
	player_switchModel			= compile preprocessFileLineNumbers "fixes\player_switchModel.sqf";
	dayz_spaceInterrupt 		= compile preprocessFileLineNumbers "fixes\dayz_spaceInterrupt.sqf";
	player_useMeds 				= compile preprocessFileLineNumbers "fixes\player_useMeds.sqf";
	player_wearClothes 			= compile preprocessFileLineNumbers "fixes\player_wearClothes.sqf";
	//player_build 				= compile preprocessFileLineNumbers "Scripts\snap_pro\player_build.sqf";
	snap_build 					= compile preprocessFileLineNumbers "Scripts\snap_pro\snap_build.sqf";
							 call compile preprocessFileLineNumbers "Scripts\gold\player_traderMenu.sqf";
							 call compile preprocessFileLineNumbers "Scripts\humanity_board\player_humanityMenu.sqf";
	//P4L
	fnc_usec_damageActions 		= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Compile\fn_damageActions.sqf";
	player_updateGui 			= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Compile\player_updateGui.sqf";
	player_packTent 			= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Compile\player_packTent.sqf";
	player_packVault			= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Compile\player_packVault.sqf";
	player_unlockVault 			= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Compile\player_unlockVault.sqf";
	player_removeObject 		= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\remove.sqf";
	player_tentPitch 			= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\tent_pitch.sqf";
	player_vaultPitch 			= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\vault_pitch.sqf";
	player_build 				= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\modular_build.sqf";
	player_build_countNearby 	= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\player_build_countNearby.sqf";
	player_build_states 		= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\player_build_states.sqf";
	player_build_needNearby 	= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\player_build_needNearby.sqf";
	player_build_getConfig 		= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\player_build_getConfig.sqf";
	player_build_plotCheck 		= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\player_build_plotCheck.sqf";
	player_build_buildReq 		= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\player_build_buildReq.sqf";
	player_build_create 		= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\player_build_create.sqf";
	player_build_controls 		= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\player_build_controls.sqf";
	player_build_publish 		= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\player_build_publish.sqf";
	DZE_snap_build_file 		= "Scripts\Snap_Pro\snap_build.sqf";
	snap_build 					= compile preprocessFileLineNumbers DZE_snap_build_file;
	FNC_check_owner =			compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Compile\fn_check_owner.sqf";
	FNC_find_plots =			compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Compile\fn_find_plots.sqf";
	player_plotPreview 			= compile preprocessFileLineNumbers "Scripts\A_Plot_for_Life\Action\object_showPlotRadius.sqf";
	
	//Vectors
	fnc_SetPitchBankYaw 		= compile preprocessFileLineNumbers "Scripts\BuildVectors\fnc_SetPitchBankYaw.sqf";
	DZE_build_vector_file 		= "Scripts\BuildVectors\build_vectors.sqf";
	build_vectors 				= compile preprocessFileLineNumbers DZE_build_vector_file;
	
	//Plot manager
	PlotGetFriends 				= compile preprocessFileLineNumbers "Scripts\plotManagement\plotGetFriends.sqf";
	PlotNearbyHumans 			= compile preprocessFileLineNumbers "Scripts\plotManagement\plotNearbyHumans.sqf";
	PlotAddFriend 				= compile preprocessFileLineNumbers "Scripts\plotManagement\plotAddFriend.sqf";
	PlotRemoveFriend 			= compile preprocessFileLineNumbers "Scripts\plotManagement\plotRemoveFriend.sqf";
	PlotPreview 				= compile preprocessFileLineNumbers "Scripts\plotManagement\plotToggleMarkers.sqf";
	MaintainPlot    			= compile preprocessFileLineNumbers "Scripts\plotManagement\maintain_area.sqf";
	//DoorManagement
	DoorGetFriends 				= compile preprocessFileLineNumbers "Scripts\doorManagement\doorGetFriends.sqf";
	DoorNearbyHumans 			= compile preprocessFileLineNumbers "Scripts\doorManagement\doorNearbyHumans.sqf";
	DoorAddFriend 				= compile preprocessFileLineNumbers "Scripts\doorManagement\doorAddFriend.sqf";
	DoorRemoveFriend 			= compile preprocessFileLineNumbers "Scripts\doorManagement\doorRemoveFriend.sqf";
	player_unlockDoor 			= compile preprocessFileLineNumbers "Scripts\doorManagement\player_unlockDoor.sqf";
	player_unlockDoorCode 		= compile preprocessFileLineNumbers "Scripts\doorManagement\player_unlockDoorCode.sqf";
	player_manageDoor 			= compile preprocessFileLineNumbers "Scripts\doorManagement\initDoorManagement.sqf";
	player_enterCode 			= compile preprocessFileLineNumbers "Scripts\doorManagement\player_enterCode.sqf";
	//Paint
	VehicleColourPaint 			= compile preprocessFileLineNumbers "Scripts\paint\vehicleColourPaint.sqf";
	VehicleColourUpdate 		= compile preprocessFileLineNumbers "Scripts\paint\VehicleColourUpdate.sqf";
	VehicleColourUpdate2 		= compile preprocessFileLineNumbers "Scripts\paint\VehicleColourUpdate2.sqf";
	player_paint 				= compile preprocessFileLineNumbers "Scripts\paint\player_paint.sqf";
	//Garage
	player_getVehicle 			= compile preprocessFileLineNumbers "Scripts\garage\getvehicle.sqf";
	player_storeVehicle 		= compile preprocessFileLineNumbers "Scripts\garage\player_storeVehicle.sqf";
	vehicle_info 				= compile preprocessFileLineNumbers "Scripts\garage\vehicle_info.sqf";
	player_build_garage			= compile preprocessFileLineNumbers "Scripts\garage\player_build_garage.sqf";
	//Marketplace
	player_sellitem 			= compile preprocessFileLineNumbers "Scripts\marketplace\player_sellitem.sqf";
	player_buyitem				= compile preprocessFileLineNumbers "Scripts\marketplace\player_buyitem.sqf";
	//Skins
	FillSkinList  				= compile preprocessFileLineNumbers "Scripts\skins\getList.sqf";
	ApplySkinList 				= compile preprocessFileLineNumbers "Scripts\skins\changeClothes.sqf";
	//Origins
	if (dayZ_instance == 13) then {
		origins_removeActions = compile preprocessFileLineNumbers "origins\origins_removeActions.sqf";
	};
	//---------------------------------------------UK------------------------------------------------------------

	BIS_Effects_Burn = 				compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";
	player_zombieCheck = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";	//Run on a players computer, checks if the player is near a zombie
	player_zombieAttack = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieAttack.sqf";	//Run on a players computer, causes a nearby zombie to attack them
	fnc_inAngleSector =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_inAngleSector.sqf";		//Checks which actions for nearby casualty
	fnc_usec_unconscious =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
	player_temp_calculation	=		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_temperatur.sqf";		//Temperatur System	//TeeChange
	player_weaponFiredNear =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_weaponFiredNear.sqf";
	player_animalCheck =			compile preprocessFileLineNumbers "fixes\player_animalCheck.sqf";
	player_spawnCheck = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_spawnCheck.sqf";
	player_dumpBackpack = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_dumpBackpack.sqf";
	building_spawnLoot =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\building_spawnLoot.sqf";
	building_spawnZombies =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\building_spawnZombies.sqf";
	player_fired =					compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_fired.sqf";			//Runs when player fires. Alerts nearby Zeds depending on calibre && audial rating
	player_harvest =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_harvest.sqf";

	player_removeNearby =    		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_removeNearby.sqf";

	player_removeTankTrap = {
		//Object Array, Range, Error Message (@Skaronator)
		[["Hedgehog_DZ"], 1,"STR_EPOCH_ACTIONS_14"] call player_removeNearby;
	};
	player_removeNet = {
		[["DesertCamoNet_DZ","DesertLargeCamoNet","ForestCamoNet_DZ","DesertLargeCamoNet_DZ","ForestLargeCamoNet_DZ"], 5,"str_epoch_player_8"] call player_removeNearby;
	};

	player_login = {
		private ["_unit","_detail","_PUID"];
		_unit = _this select 0;
		_detail = _this select 1;
		_PUID = [player] call FNC_GetPlayerUID;
		if(_unit == _PUID) then {
			player setVariable["publish",_detail];
		};
	};

	player_changeCombo =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_changeCombo.sqf";

	player_crossbowBolt =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_crossbowBolt.sqf";
	player_music = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_music.sqf";			//Used to generate ambient music
	player_death =				compile preprocessFileLineNumbers "fixes\player_death.sqf";
	player_checkStealth =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_checkStealth.sqf";
	world_sunRise =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_sunRise.sqf";
	world_surfaceNoise =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_surfaceNoise.sqf";
	player_humanityMorph =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_humanityMorph.sqf";
	player_throwObject = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_throwObject.sqf";
	player_alertZombies = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_alertZombies.sqf";
	player_fireMonitor = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\system\fire_monitor.sqf";

	//Objects
	object_roadFlare = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_roadFlare.sqf";
	object_setpitchbank	=		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_setpitchbank.sqf";
	object_monitorGear =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_monitorGear.sqf";

	local_roadDebris =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_roadDebris.sqf";

	//Zombies
	zombie_findTargetAgent = 	compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\zombie_findTargetAgent.sqf";
	zombie_loiter = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\zombie_loiter.sqf";			//Server compile, used for loiter behaviour
	wild_spawnZombies = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\wild_spawnZombies.sqf";			//Server compile, used for loiter behaviour

	pz_attack = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\pzombie\pz_attack.sqf";

	dog_findTargetAgent = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\dog_findTargetAgent.sqf";

	//actions
	player_countmagazines =		compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_countmagazines.sqf";
	player_addToolbelt =		compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_addToolbelt.sqf";
	player_copyKey =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_copyKey.sqf";
	player_reloadMag =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_reloadMags.sqf";
	player_loadCrate =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_loadCrate.sqf";
	player_craftItem =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_craftItem.sqf";
	player_drink =				compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_drink.sqf";
	player_eat =				compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_eat.sqf";
	player_fillWater = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\water_fill.sqf";
	player_makeFire =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_makefire.sqf";
	player_harvestPlant =		compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_harvestPlant.sqf";
	player_goFishing =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_goFishing.sqf";
	object_pickup = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\object_pickup.sqf";
	player_flipvehicle = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_flipvehicle.sqf";
	player_sleep = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_sleep.sqf";
	player_antiWall =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_antiWall.sqf";
	player_deathBoard =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\list_playerDeathsAlt.sqf";

	player_upgradeVehicle =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_upgradeVehicle.sqf";

	//ui
	player_gearSync	=			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_gearSync.sqf";
	player_gearSet	=			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_gearSet.sqf";
	ui_changeDisplay = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\ui_changeDisplay.sqf";
	ui_gear_sound =             compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\ui_gear_sound.sqf";

	//System
	player_monitor =			compile preprocessFileLineNumbers "\z\addons\dayz_code\system\player_monitor.sqf";
	player_spawn_1 =			compile preprocessFileLineNumbers "\z\addons\dayz_code\system\player_spawn_1.sqf";
	player_spawn_2 =			compile preprocessFileLineNumbers "\z\addons\dayz_code\system\player_spawn_2.sqf";
	onPreloadStarted 			"dayz_preloadFinished = false;";
	onPreloadFinished 			"dayz_preloadFinished = true;";

	// helper functions
	player_hasTools =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_hasTools.sqf";
	player_checkItems =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_checkItems.sqf";
	player_removeItems =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_removeItems.sqf";
	//Trader ["Trader City Name",false,"enter"] - Trader City Name | Show Message | "enter" || "leave"
	player_traderCity = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_traderCity.sqf";

	// combination of check && remove items
	player_checkAndRemoveItems = {
		private ["_items","_b"];
		_items = _this;
		_b = _items call player_checkItems;
		if (_b) then {
			_b = _items call player_removeItems;
		};
		_b
	};

	dayz_HungerThirst = {
		dayz_hunger = dayz_hunger + (_this select 0);
		dayz_thirst = dayz_thirst + (_this select 1);
	};

	epoch_totalCurrency = {
		// total currency
		_total_currency = 0;
		{
			_part =  (configFile >> "CfgMagazines" >> _x);
			_worth =  (_part >> "worth");
			if isNumber (_worth) then {
				_total_currency = _total_currency + getNumber(_worth);
			};
		} count (magazines player);
		_total_currency
	};

	epoch_itemCost = {
		_trade_total = 0;
		{
			_part_in_configClass =  configFile >> "CfgMagazines" >> (_x select 0);
			if (isClass (_part_in_configClass)) then {
				_part_inWorth = (_part_in_configClass >> "worth");
				if isNumber (_part_inWorth) then {
					_trade_total = _trade_total + (getNumber(_part_inWorth) * (_x select 1));
				};
			};
		} count _this;

		//diag_log format["DEBUG TRADER ITEMCOST: %1", _this];
		_trade_total
	};

	epoch_returnChange = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\epoch_returnChange.sqf";
	// usage [["partinclassname",4]] call epoch_returnChange;

	dayz_losChance = {
		private["_agent","_maxDis","_dis","_val","_maxExp","_myExp"];
		_agent = 	_this select 0;
		_dis =		_this select 1;
		_maxDis = 	_this select 2;
		// diag_log ("VAL:  " + str(_this));
		_val = 		(_maxDis - _dis) max 0;
		_maxExp = 	((exp 2) * _maxDis);
		_myExp = 	((exp 2) * (_val)) / _maxExp;
		_myExp = _myExp * 0.7;
		_myExp
	};

	ui_initDisplay = {
		private["_control","_ctrlBleed","_display","_ctrlFracture","_ctrlDogFood","_ctrlDogWater","_ctrlDogWaterBorder", "_ctrlDogFoodBorder"];
		disableSerialization;
		_display = uiNamespace getVariable 'DAYZ_GUI_display';
		_control = 	_display displayCtrl 1204;
		_control ctrlShow false;
		if (!r_player_injured) then {
			_ctrlBleed = 	_display displayCtrl 1303;
			_ctrlBleed ctrlShow false;
		};
		if (!r_fracture_legs && !r_fracture_arms) then {
			_ctrlFracture = 	_display displayCtrl 1203;
			_ctrlFracture ctrlShow false;
		};
		_ctrlDogFoodBorder = _display displayCtrl 1501;
		_ctrlDogFoodBorder ctrlShow false;
		_ctrlDogFood = _display displayCtrl 1701;
		_ctrlDogFood ctrlShow false;

		_ctrlDogWaterBorder = _display displayCtrl 1502;
		_ctrlDogWaterBorder ctrlShow false;
		_ctrlDogWater = _display displayCtrl 1702;
		_ctrlDogWater ctrlShow false
	};

	dayz_losCheck = {
		private["_target","_agent","_cantSee"];
		_target = _this select 0; // PUT THE PLAYER IN FIRST ARGUMENT!!!!
		_agent = _this select 1;
		_cantSee = true;
		if (!isNull _target) then {

			_tPos = visiblePositionASL _target;
			_zPos = visiblePositionASL _agent;

			_tPos set [2,(_tPos select 2)+1];
			_zPos set [2,(_zPos select 2)+1];

			if ((count _tPos > 0) && (count _zPos > 0)) then {
				_cantSee = terrainIntersectASL [_tPos, _zPos];
				if (!_cantSee) then {
					_cantSee = lineIntersects [_tPos, _zPos, _agent, vehicle _target];
				};
			};
		};
		_cantSee
	};

	dayz_equipCheck = {
		private ["_empty", "_needed","_diff","_success"];
		_config = _this;
		_empty = [player] call BIS_fnc_invSlotsEmpty;
		_needed = [_config] call BIS_fnc_invSlotType;
		_diff = [_empty,_needed] call BIS_fnc_vectorDiff;

		_success = true;
		{
			if (_x > 0) then {_success = false};
		} count _diff;
		hint format["Config: %5\nEmpty: %1\nNeeded: %2\nDiff: %3\nSuccess: %4",_empty,_needed,_diff,_success,_config];
		_success
	};

	vehicle_gear_count = {
		private["_counter"];
		_counter = 0;
		{
			_counter = _counter + _x;
		} count _this;
		_counter
	};

	player_tagFriendlyMsg = {
		if(player == (_this select 0)) then {
			cutText[(localize "str_epoch_player_2"),"PLAIN DOWN"];
		};
	};

	player_serverModelChange = {
		private["_object","_model"];
		_object = _this select 0;
		_model = _this select 1;
		if (_object == player) then {
			_model call player_switchModel;
		};
	};

	player_guiControlFlash = 	{
		private["_control"];
		_control = _this;
		if (ctrlShown _control) then {
			_control ctrlShow false;
		} else {
			_control ctrlShow true;
		};
	};
	
	gearDialog_create = {
		private ["_i","_dialog"];
		if (!isNull (findDisplay 106)) then {
			(findDisplay 106) closeDisplay 0;
		};
		openMap false;
		closeDialog 0;
		if (gear_done) then {sleep 0.001;};
		player action ["Gear", player];
		if (gear_done) then {sleep 0.001;};
		_dialog = findDisplay 106;
		_i = 0;
		while {isNull _dialog} do {//DO NOT CHANGE TO A FOR LOOP!
			_i = _i + 1;
			_dialog = findDisplay 106;
			if (gear_done) then {sleep 0.001;};
			if (_i in [100,200,299]) then {
				closeDialog 0;
				player action ["Gear", player];
			};
			if (_i > 300) exitWith {};
		};
		if (gear_done) then {sleep 0.001;};
		_dialog = findDisplay 106;
		if ((parseNumber(_this select 0)) != 0) then {
			ctrlActivate (_dialog displayCtrl 157);
			if (gear_done) then {
				waitUntil {ctrlShown (_dialog displayCtrl 159)};
				sleep 0.001;
			};
		};
		_dialog
	};

	gear_ui_offMenu = {
		private["_control","_parent","_menu"];
		disableSerialization;
		_control = 	_this select 0;
		_parent = 	findDisplay 106;
		if (!(_this select 3)) then {
			for "_i" from 0 to 9 do {
				_menu = _parent displayCtrl (1600 + _i);
				_menu ctrlShow false;
			};
			_grpPos = ctrlPosition _control;
			_grpPos set [3,0];
			_control ctrlSetPosition _grpPos;
			_control ctrlShow false;
			_control ctrlCommit 0;
		};
	};

	dze_surrender_off = {
		player setVariable ["DZE_Surrendered", false, true];
		DZE_Surrender = false;
	};

	gear_ui_init = {
		private["_control","_parent","_menu","_dspl","_grpPos"];
		disableSerialization;
		_parent = findDisplay 106;
		_control = 	_parent displayCtrl 6902;
		for "_i" from 0 to 9 do {
			_menu = _parent displayCtrl (1600 + _i);
			_menu ctrlShow false;
		};
		_grpPos = ctrlPosition _control;
		_grpPos set [3,0];
		_control ctrlSetPosition _grpPos;
		_control ctrlShow false;
		_control ctrlCommit 0;
	};

	dayz_eyeDir = {
		private["_vval","_vdir"];
		_vval = (eyeDirection _this);
		_vdir = (_vval select 0) atan2 (_vval select 1);
		if (_vdir < 0) then {_vdir = 360 + _vdir};
		_vdir
	};

	DZE_getModelName = {
		_objInfo = toArray(str(_this));
		_lenInfo = count _objInfo - 1;
		_objName = [];
		_i = 0;
		// determine where the object name starts
		{
			if (58 == _objInfo select _i) exitWith {};
			_i = _i + 1;
		} count _objInfo;
		_i = _i + 2; // skip the ": " part
		for "_k" from _i to _lenInfo do {
			_objName set [(count _objName), (_objInfo select _k)];
		};
		_objName = toLower(toString(_objName));
		_objName
	};

	dze_isnearest_player = {
		private ["_notClosest","_playerDistance","_nearPlayers","_obj","_playerNear"];
		if(!isNull _this) then {
			_nearPlayers = _this nearEntities ["CAManBase", 12];
			_playerNear = ({isPlayer _x} count _nearPlayers) > 1;
			_notClosest = false;
			if (_playerNear) then {
				// check if another player is closer
				_playerDistance = player distance _this;
				{
					if (_playerDistance > (_x distance _this)) exitWith { _notClosest = true; };
				} count _nearPlayers;
			};
		} else {
			_notClosest = false;
		};
		_notClosest
	};
	
	/*
	// trader menu code
	if (DZE_ConfigTrader) then {
		call compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_traderMenuConfig.sqf";
	}else{
		call compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_traderMenuHive.sqf";
	};
	*/
	
	// recent murders menu code
	call compile preprocessFileLineNumbers "fixes\player_murderMenu.sqf";

	//Stuck on loading screen?
	[] spawn {
        private["_timeOut","_display","_control1","_control2"];
        disableSerialization;
        _timeOut = 0;
        dayz_loadScreenMsg = "Loading... FOREVER!!!";
        diag_log "DEBUG: loadscreen guard started.";
        _display = uiNameSpace getVariable "BIS_loadingScreen";
        if (!isNil "_display") then {
                _control1 = _display displayctrl 8400;
                _control2 = _display displayctrl 102;
        };
		if (!isNil "dayz_DisplayGenderSelect") then {
			waitUntil {!dayz_DisplayGenderSelect};
		};

        // 120 sec timeout (12000 * 0.01)
        while { _timeOut < 12000 } do {
            if (dayz_clientPreload && dayz_authed) exitWith { endLoadingScreen; diag_log "PLOGIN: Login loop completed!"; };
            if (!isNil "_display") then {
                if ( isNull _display ) then {
                    waitUntil { !dialog; };
                    startLoadingScreen ["","RscDisplayLoadCustom"];
                    _display = uiNameSpace getVariable "BIS_loadingScreen";
                    _control1 = _display displayctrl 8400;
                    _control2 = _display displayctrl 102;
                };
                if ( dayz_loadScreenMsg != "" ) then {
                    _control1 ctrlSetText dayz_loadScreenMsg;
                    dayz_loadScreenMsg = "";
                };
                _control2 ctrlSetText format["%1",round(_timeOut*0.01)];
            };
            _timeOut = _timeOut + 1;

            if (_timeOut >= 12000) then {
                1 cutText [localize "str_player_login_timeout", "PLAIN DOWN"];
                sleep 10;
                endLoadingScreen;
                endMission "END1";
            };
            sleep 0.01;
        };
	};

	dayz_meleeMagazineCheck = {
                private["_meleeNum","_magType"];
                _magType =         ([] + getArray (configFile >> "CfgWeapons" >> _wpnType >> "magazines")) select 0;
                _meleeNum = ({_x == _magType} count magazines player);
                if (_meleeNum < 1) then {
                        player addMagazine _magType;
                };
        };

	dayz_originalPlayer = player;

	progressLoadingScreen 0.8;
};

	//Both
	//---------------UK-----------------------
	BIS_fnc_halo 				= compile preprocessFileLineNumbers "fixes\fn_halo.sqf";
	local_lockUnlock 			= compile preprocessFileLineNumbers "fixes\local_lockUnlock.sqf";
	BIS_fnc_numberDigits 		= compile preprocessFileLineNumbers "Scripts\tools\numberDigits.sqf";
	BIS_fnc_numberText 			= compile preprocessFileLineNumbers "Scripts\tools\numberText.sqf";
	BIS_fnc_numberTextNoCommas 	= compile preprocessFileLineNumbers "Scripts\tools\numberTextNoCommas.sqf";
	//---------------UK----------------------
	
	BIS_fnc_selectRandom =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_selectRandom.sqf";
	BIS_fnc_vectorAdd =         compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_vectorAdd.sqf";
	BIS_fnc_findNestedElement =	compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_findNestedElement.sqf";
	BIS_fnc_param = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_param.sqf";

	fnc_buildWeightedArray = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_buildWeightedArray.sqf";		//Checks which actions for nearby casualty
	fnc_usec_damageVehicle =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandlerVehicle.sqf";		//Event handler run on damage

	// object_vehicleKilled =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_vehicleKilled.sqf";		//Event handler run on damage
	object_setHitServer =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_setHitServer.sqf";	//process the hit as a NORMAL damage (useful for persistent vehicles)
	object_setFixServer =			compile preprocessFileLineNumbers "fixes\object_setFixServer.sqf";						//process the hit as a NORMAL damage (useful for persistent vehicles)
	object_getHit =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_getHit.sqf";			//gets the hit value for a HitPoint (i.e. HitLegs) against the selection (i.e. "legs"), returns the value
	object_setHit =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_setHit.sqf";			//process the hit as a NORMAL damage (useful for persistent vehicles)
	object_processHit =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_processHit.sqf";		//process the hit in the REVO damage system (records && sets hit)
	object_delLocal =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_delLocal.sqf";
	// object_cargoCheck =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_cargoCheck.sqf";		//Run by the player || server to monitor changes in cargo contents
	fnc_usec_damageHandler =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";		//Event handler run on damage
	fnc_veh_ResetEH = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\init\veh_ResetEH.sqf";			//Initialize vehicle
	// Vehicle damage fix
	vehicle_handleDamage    = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleDamage.sqf";
	vehicle_handleKilled    = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleKilled.sqf";
	//fnc_vehicleEventHandler = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\init\vehicle_init.sqf";			//Initialize vehicle
	fnc_inString = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_inString.sqf";
	fnc_isInsideBuilding = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_isInsideBuilding.sqf";	//_isInside = [_unit,_building] call fnc_isInsideBuilding;
	fnc_isInsideBuilding2 = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_isInsideBuilding2.sqf";	//_isInside = [_unit,_building] call fnc_isInsideBuilding2;
	fnc_isInsideBuilding3 = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_isInsideBuilding3.sqf";	//_isInside = [_unit,_building] call fnc_isInsideBuilding3;
	dayz_zombieSpeak = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_speak.sqf";			//Used to generate random speech for a unit
	vehicle_getHitpoints =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_getHitpoints.sqf";
	local_gutObject =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_gutObject.sqf";		//Generated on the server (|| local to unit) when gutting an object
	local_gutObjectZ =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_gutObjectZ.sqf";		//Generated on the server (|| local to unit) when gutting an object
	local_zombieDamage = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandlerZ.sqf";		//Generated by the client who created a zombie to track damage
	local_eventKill = 			compile preprocessFileLineNumbers "fixes\local_eventKill.sqf";								//Generated when something is killed
	//player_weaponCheck =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_weaponCheck.sqf";	//Run by the player || server to monitor whether they have picked up a new weapon
	curTimeStr =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_curTimeStr.sqf";
	player_medBandage =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medBandaged.sqf";
	player_medInject =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medInject.sqf";
	player_medEpi =				compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medEpi.sqf";
	player_medTransfuse =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medTransfuse.sqf";
	player_medMorphine =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medMorphine.sqf";
	player_breaklegs =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medBreakLegs.sqf";
	player_medPainkiller =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medPainkiller.sqf";
	world_isDay = 				{if ((daytime < (24 - dayz_sunRise)) && (daytime > dayz_sunRise)) then {true} else {false}};
	player_humanityChange =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_humanityChange.sqf";
	spawn_loot =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\spawn_loot.sqf";
	spawn_loot_small = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\spawn_loot_small.sqf";
	// player_projectileNear = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_projectileNear.sqf";
	
	//P4L
	FNC_GetPlayerUID = {
		private ["_object","_version","_PID"];
		_object = _this select 0;
		_version = productVersion select 3;
		if (DayZ_UseSteamID) then {
			_PID = GetPlayerUID _object;
		} else {
			if (_version >= 125548) then {
				_PID = call (compile "GetPlayerUIDOld _object");
			} else {
				_PID = GetPlayerUID _object;
				diag_log format["Your game version, %1, is less than the required for the old UID system; using Steam ID system instead. Update to 1.63.125548 (or latest steam beta)", _version];
			};
		};
		_PID
	};
	
	FNC_GetSetPos = { //DO NOT USE IF YOU NEED ANGLE COMPENSATION!!!!
		private "_pos";
		_thingy = _this select 0;
		_pos = getPosASL _thingy;
		if (surfaceIsWater _pos) then {
			_thingy setPosASL _pos;
		} else {
			_thingy setPosATL (ASLToATL _pos);
		};
	};
	FNC_GetPos = {
		private "_pos";
		if (isNil {_this select 0}) exitWith {[0,0,0]};
		_thingy = _this select 0;
		_pos = getPosASL _thingy;
		if !(surfaceIsWater _pos) then {
			_pos =  ASLToATL _pos;
		};
		_pos
	};
	local_setFuel =	{
		private["_qty","_vehicle"];
		_vehicle = _this select 0;
		_qty = _this select 1;
		_vehicle setFuel _qty;
	};
	zombie_initialize = {
		private ["_unit","_position"];
		_unit = _this select 0;
		if (isServer) then {
			_unit addEventHandler ["local", {_this call zombie_findOwner}];
		};
		_id = _unit addeventhandler["HandleDamage", { _this call local_zombieDamage }];
		_id = _unit addeventhandler["Killed", { [_this, "zombieKills"] call local_eventKill }];
	};

	dayz_EjectPlayer = {
		// check if player in vehicle
        private ["_noDriver","_vehicle","_inVehicle"];
        _vehicle = vehicle player;
		_inVehicle = (_vehicle != player);
		if(_inVehicle) then {
			_noDriver = ((_vehicle emptyPositions "driver") > 0);
			if (_noDriver && (speed _vehicle) != 0) then {
				player action [ "eject", _vehicle];
			};
		};
	};

	player_sumMedical = {
		private["_character","_wounds","_legs","_arms","_medical"];
		_character = 	_this;
		_wounds =		[];
		if (_character getVariable["USEC_injured",false]) then {
			{
				if (_character getVariable[_x,false]) then {
					_wounds set [count _wounds,_x];
				};
			} count USEC_typeOfWounds;
		};
		_legs = _character getVariable ["hit_legs",0];
		_arms = _character getVariable ["hit_arms",0];
		_medical = [
			_character getVariable["USEC_isDead",false],
			_character getVariable["NORRN_unconscious", false],
			_character getVariable["USEC_infected",false],
			_character getVariable["USEC_injured",false],
			_character getVariable["USEC_inPain",false],
			_character getVariable["USEC_isCardiac",false],
			_character getVariable["USEC_lowBlood",false],
			_character getVariable["USEC_BloodQty",12000],
			_wounds,
			[_legs,_arms],
			_character getVariable["unconsciousTime",0],
			_character getVariable["messing",[0,0]]
		];
		_medical
	};

	//Server Only
	if (isServer) then {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\init\server_functions.sqf";
		//Tools --------------------------
		my_re_message = compile preprocessFileLineNumbers "Scripts\tools\my_re_message.sqf";
		"re_message" addPublicVariableEventHandler {_id = (_this select 1) spawn my_re_message};
		my_server_log = compile preprocessFileLineNumbers "Scripts\tools\my_logger.sqf";
		"MyLogger" addPublicVariableEventHandler {_id = (_this select 1) spawn my_server_log};
		my_scripts_log = compile preprocessFileLineNumbers "Scripts\tools\my_scripts.sqf";
		"MyScripts" addPublicVariableEventHandler {_id = (_this select 1) spawn my_scripts_log};
		//Garage --------------------------
		"PVDZE_queryGarageVehicle" addPublicVariableEventHandler {(_this select 1) spawn server_queryGarageVehicle};
		"PVDZE_spawnVehicle" addPublicVariableEventHandler {(_this select 1) spawn server_spawnVehicle};
		"PVDZE_storeVehicle" addPublicVariableEventHandler {(_this select 1) spawn server_storeVehicle};
	} else {
		eh_localCleanup = {};
	};
	
	//Safe-zones ---------------------------------------
	SafeZoneCreate 			= compile preprocessFileLineNumbers "Scripts\safezone\SafeZoneCreate.sqf";
	SafeZoneEnable 			= compile preprocessFileLineNumbers "Scripts\safezone\safeZoneEnable.sqf";
	SafeZoneDisable 		= compile preprocessFileLineNumbers "Scripts\safezone\safeZoneDisable.sqf";
	{
		private ["_pos", "_radius", "_name", "_trigger", "_marker"];
		_pos = _x select 0;
		_radius = _x select 1;
		_name = _x select 2;
		_trigger = createTrigger ["EmptyDetector", _pos];
		_trigger setTriggerArea [_radius, _radius, 0, false];
		_trigger setTriggerActivation ["ANY", "PRESENT", true];
		_trigger setTriggerType "SWITCH";
		if (isServer) then {
			_trigger spawn SafeZoneCreate;
		} else {
			_trigger setTriggerStatements ["(vehicle player) in thisList", "call SafeZoneEnable", "call SafeZoneDisable"];
			_marker = createMarkerLocal [format["Safezone%1", _name], _pos];
			_marker setMarkerShapeLocal "ELLIPSE";
			_marker setMarkerTypeLocal "Empty";
			_marker setMarkerColorLocal "ColorGreen";
			_marker setMarkerBrushLocal "Grid";
			_marker setMarkerSizeLocal [_radius, _radius];
		};
		true 
	} count SafezoneZ;
	
	//Lottery Top text ---------------
	"Lottery_Top_Txt" addPublicVariableEventHandler {
		if (Lottery_txt) then {
			private ["_message"];
			_message = (_this select 1) select 0;
			["<t size='0.5' font='Zeppelin32' color='#fd00e0'>"+(_message)+'</t>',safeZoneXAbs/safeZoneWAbs/4,SafeZoneY,10,0,0,3077] spawn bis_fnc_dynamicText;
			["<img size='0.8' image='Scripts\lottery\lottery2.paa'/>",(safezoneX- 0.48)/2,-(safezoneH- 1)/2,10,0,0,3054] spawn bis_fnc_dynamicText;
		};
	};
	//Sting Top text -----------------
	"Sting_Top_Txt" addPublicVariableEventHandler {
		if (Job_txt) then {
			private ["_message","_color"];
			_message = (_this select 1) select 0;
			_color = (_this select 1) select 1;
			['<t size=''0.5'' font=''Zeppelin32'' color='+(str _color)+'>'+(_message)+'</t>',safeZoneXAbs/safeZoneWAbs/4,SafeZoneY,10,0,0,3077] spawn bis_fnc_dynamicText;
		};
	};
	//Add magazine --------------------
	"UKadd_prize" addPublicVariableEventHandler {
		private ["_player","_prize"];
		_player = (_this select 1) select 0;
		_prize = (_this select 1) select 1;		
		_player addMagazine _prize;
	};
	//Progressive Pot / Wanted --------
	"progressive_pot3" addPublicVariableEventHandler {
		private ["_pot","_guyTOkill"];
		_pot = (_this select 1) select 0;
		_guyTOkill = (_this select 1) select 1;
		show_progressive = [_pot,_guyTOkill];
	};
	
	//Tools ---------------------------
	my_remote_message = {
		re_message = _this select 0;
		publicVariable "re_message";
	};
	my_remote_log = {
		MyLogger = _this select 0;
		publicVariable "MyLogger";
	};
	my_scripts_logger = {
		MyScripts = _this select 0;
		publicVariable "MyScripts";
	};
	my_custom_message = {
		_msg = _this select 0;
		CustomZ_message = [_msg];
		PublicVariableServer "CustomZ_message";
	};
	my_sting_message = {
		_msg = _this select 0;
		sting_message = [_msg,'#FF0000'];
		PublicVariableServer "sting_message";
	};
	my_job_message = {
		_msg = _this select 0;
		sting_message = [_msg,'#4B6D40'];
		PublicVariableServer "sting_message";
	};

	//Coins --------------------------------
	//_removed = [player, 5000] call SC_fnc_removeCoinsUK111; //if(_removed = true)then{Coins removed}else{not enough money};
	SC_fnc_removeCoinsUK111 = {
		private ["_player","_amount","_wealth","_newwealth", "_result"];
		_player = _this select 0;
		_amount = _this select 1;
		_result = false;
		_wealth = _player getVariable["UK111cash",0];		
		if (_wealth < _amount) then { 
			_result = false;
		} else { 						
			_newwealth = _wealth - _amount;
			_player setVariable["UK111cash",_newwealth, true];
			_player setVariable ["moneychanged",1,true];	
			_result = true;
			PVDZE_plr_Save = [_player,(magazines _player),true,true] ;
			publicVariableServer "PVDZE_plr_Save";			
		};
		_result
	};
	//_added = [player, 5000] call SC_fnc_addCoinsUK111; //if(_added = true)then{Coins added}else{IT FAILED};
	SC_fnc_addCoinsUK111 = {
		private ["_player","_amount","_wealth","_newwealth", "_result"];			
		_player = _this select 0;
		_amount = _this select 1;
		_result = false;	
		_wealth = _player getVariable["UK111cash",0];
		if ((_wealth + _amount) > 999999) then { _amount = (999999 - _wealth); };
		_player setVariable["UK111cash",_wealth + _amount, true];
		PVDZE_plr_Save = [_player,(magazines _player),true,true] ;
		publicVariableServer "PVDZE_plr_Save";
		_player setVariable["moneychanged",1,true];					
		_newwealth = _player getVariable["UK111cash",0];		
		if (_newwealth >= _wealth) then { _result = true; };			
		_result
	};
	GiveXP = {
		private ["_player","_xp","_oldXP","_newXP","_message"];
		_player = _this select 0;
		if (vehicle _player == _player) then {
			_xp = _this select 1;
			_oldXP = _player getVariable["UK111xp",0];
			_newXP = _xp + _oldXP;
			_player setVariable["UK111xp",_newXP,true];
			if (isServer) then {
				_message = format["+%1 XP gained",_xp];
				[nil,_player,"loc",rTITLETEXT,_message,"PLAIN",5] call RE;
			} else {
				//profileNamespace setVariable["UK111xp",_newXP];
				///saveProfileNamespace;
				titleText [format["+%1 XP gained",_xp],"PLAIN"];
				systemChat format["+%1 XP gained",_xp];
			};
		};
	};

initialized = true;