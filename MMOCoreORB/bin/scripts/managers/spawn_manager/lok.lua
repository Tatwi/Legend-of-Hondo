JUNKNOTSELLABLE = 0
JUNKGENERIC = 1
JUNKCLOTHESANDJEWELLERY = 2
JUNKWEAPONS = 4
JUNKARMOUR = 8
JUNKTUSKEN = 16
JUNKJEDI = 32
JUNKJAWA = 64
JUNKGUNGAN = 128

JUNKCONVGENERIC = 1
JUNKCONVARMS = 2
JUNKCONVFINARY = 3
JUNKCONVDENDERRORI = 4
JUNKCONVDENDERTHEED = 5
JUNKCONVLILABORVO = 6
JUNKCONVMALIKVISTAL = 7
JUNKCONVNADOWATTOS = 8
JUNKCONVNATHANTAIKE = 9
JUNKCONVOLLOBOJABBAS = 10
JUNKCONVQUICHDANTOOINE = 11
JUNKCONVREGGINYM = 12
JUNKCONVSHEANILAKE = 13
JUNKCONVSNEGVALARIAN = 14
JUNKCONVJAWAGENERIC = 15
JUNKCONVJAWAFINARY = 16
JUNKCONVJAWAARMS = 17
JUNKCONVJAWATUSKEN = 18

-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {1, radius}
--   - Rectangle: {2, width, height}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.


UNDEFINEDAREA       = 0x0000
SPAWNAREA           = 0x0001
NOSPAWNAREA         = 0x0002
WORLDSPAWNAREA      = 0x0010
NOWORLDSPAWNAREA    = 0x0020
NOBUILDZONEAREA     = 0x0100

lok_regions = {
	{"an_imperial_outpost",0,0,{1,0},UNDEFINEDAREA},
	{"awning_and_debris",-3890,-4497,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"badlands_1",0,0,{1,0},UNDEFINEDAREA},
	{"badlands_2",0,0,{1,0},UNDEFINEDAREA},
	{"blood_razer_transport",3633,2184,{1,280},NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_wall",-4444,-5749,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"building_ruins",-226,-448,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"building_ruins_2",-2204,-4558,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"building_ruins_3",1469,-4457,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"buried_at_st",-6037,2405,{1,45},NOSPAWNAREA + NOBUILDZONEAREA},
	{"coa_imperial_outpost",-2570,-863,{1,60},NOSPAWNAREA + NOBUILDZONEAREA},
	{"coa_rebel_outpost",-4749,3527,{1,75},NOSPAWNAREA + NOBUILDZONEAREA},
	{"corsair_lane",-3825,-3881,{1,200},NOSPAWNAREA + NOBUILDZONEAREA},
	{"debris",3895,595,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"debris_2",-2591,6187,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"debris_3",-3503,990,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"debris_4",-3637,-2018,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"destroyed_building",4486,-2834,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"destroyed_homestead",2722,-3293,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"destroyed_houses",3259,-1440,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"destroyed_outpost",-6219,3381,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"east_sulphur_flats",0,0,{1,0},UNDEFINEDAREA},
	{"eastern_mountains",0,0,{1,0},UNDEFINEDAREA},
	{"easy_gurnaset_nw",0,0,{1,0},UNDEFINEDAREA},
	{"farm",584,-2161,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"four_arches_and_pillar",281,-5599,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"four_pillars",-5190,-4823,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"four_pillars_and_flagpole",-320,-3223,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"generator",3883,-5512,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"great_maze",3825,-540,{1,100},NOSPAWNAREA + NOBUILDZONEAREA},
	{"grendin_waste_1",0,0,{1,0},UNDEFINEDAREA},
	{"grendin_waste_2",0,0,{1,0},UNDEFINEDAREA},
	{"hard_canyon_corsair_se",0,0,{1,0},UNDEFINEDAREA},
	{"hard_canyon_corsair_sw",0,0,{1,0},UNDEFINEDAREA},
	{"hard_kimogilla_nw",0,0,{1,0},UNDEFINEDAREA},
	{"hard_kimogilla_sw",0,0,{1,0},UNDEFINEDAREA},
	{"hard_kusak_ne",0,0,{1,0},UNDEFINEDAREA},
	{"hard_langlatch_ne",0,0,{1,0},UNDEFINEDAREA},
	{"hard_langlatch_se",0,0,{1,0},UNDEFINEDAREA},
	{"hard_nym_nw",0,0,{1,0},UNDEFINEDAREA},
	{"hard_nym_se",0,0,{1,0},UNDEFINEDAREA},
	{"hills_1",0,0,{1,0},UNDEFINEDAREA},
	{"hills_2",0,0,{1,0},UNDEFINEDAREA},
	{"hills_3",0,0,{1,0},UNDEFINEDAREA},
	{"hills_4",0,0,{1,0},UNDEFINEDAREA},
	{"hills_5",0,0,{1,0},UNDEFINEDAREA},
	{"house",5879,-1127,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"house_ruins",5844,1675,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"house_ruins_2",-3455,912,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"house_ruins_3",2709,-5380,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"imperial_camp_ruins",5036,4323,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"imperial_wind_farm",-2100,-2633,{1,75},NOSPAWNAREA + NOBUILDZONEAREA},
	{"kedarin_highlands",0,0,{1,0},UNDEFINEDAREA},
	{"kimo_skeleton",4970,-2080,{1,75},NOSPAWNAREA + NOBUILDZONEAREA},
	{"kimogila_town",-75,2715,{1,150},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_imperial_outpost_1",-1921,-3079,{1,500},NOBUILDZONEAREA},
	{"lok_imperial_outpost_2",-1921,-3079,{1,300},NOSPAWNAREA},
	{"lok_imperial_outpost_3",-2091,-2641,{1,60},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_1",946,4634,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_2",1065,3156,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_3",3828,-532,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_4",3337,-2425,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_5",3364,-3819,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_6",2962,-4546,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_7",3080,-4671,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_8",3009,-4798,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_9",2893,-4782,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_10",2744,-4458,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_11",509,-2924,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_12",-497,-624,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_13",427,705,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_14",838,2738,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_15",-19,4059,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_16",-26,4558,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_marathon_track_17",275,5073,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"lok_nyms_stronghold",0,0,{1,0},UNDEFINEDAREA},
	{"medium_vesp_ne",0,0,{1,0},UNDEFINEDAREA},
	{"medium_vesp_sw",0,0,{1,0},UNDEFINEDAREA},
	{"mosseru_hills_1",0,0,{1,0},UNDEFINEDAREA},
	{"mosseru_hills_2",0,0,{1,0},UNDEFINEDAREA},
	{"mount_chaolt",3090,-4637,{1,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"mountains_1",0,0,{1,0},UNDEFINEDAREA},
	{"mountains_2",0,0,{1,0},UNDEFINEDAREA},
	{"mountains_3",0,0,{1,0},UNDEFINEDAREA},
	{"mountains_4",0,0,{1,0},UNDEFINEDAREA},
	{"mountains_5",0,0,{1,0},UNDEFINEDAREA},
	{"nine_burning_stones",-6296,4085,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"north_sulphur_flats",0,0,{1,0},UNDEFINEDAREA},
	{"northern_mountains",0,0,{1,0},UNDEFINEDAREA},
	{"northern_plains",0,0,{1,0},UNDEFINEDAREA},
	{"nym_protectorate",0,0,{1,0},UNDEFINEDAREA},
	{"nyms_stronghold",0,0,{1,0},UNDEFINEDAREA},
	{"nym_pirate_cave",-2847,-712,{1,200},NOSPAWNAREA + NOBUILDZONEAREA},
	{"oasis",0,0,{1,0},UNDEFINEDAREA},
	{"odd_building",210,-5972,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"outpost",-6162,6206,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"pillar_arrangement",3641,-4132,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"pillars_and_electricity",6183,-5552,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"plains_of_dust_1",0,0,{1,0},UNDEFINEDAREA},
	{"plains_of_dust_2",0,0,{1,0},UNDEFINEDAREA},
	{"plains_of_dust_3",0,0,{1,0},UNDEFINEDAREA},
	{"ranch",6115,-3176,{1,75},NOSPAWNAREA + NOBUILDZONEAREA},
	{"rebel_outpost",476,4027,{1,75},NOSPAWNAREA + NOBUILDZONEAREA},
	{"research_facility",894,-4196,{1,200},NOSPAWNAREA + NOBUILDZONEAREA},
	{"river_1",0,0,{1,0},UNDEFINEDAREA},
	{"river_2",0,0,{1,0},UNDEFINEDAREA},
	{"river_3",0,0,{1,0},UNDEFINEDAREA},
	{"river_4",0,0,{1,0},UNDEFINEDAREA},
	{"river_5",0,0,{1,0},UNDEFINEDAREA},
	{"rock_fountain",6388,5131,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"ruins",-6417,5739,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"southeast_sulphur_flats",0,0,{1,0},UNDEFINEDAREA},
	{"southern_mountains",0,0,{1,0},UNDEFINEDAREA},
	{"southern_plains",0,0,{1,0},UNDEFINEDAREA},
	{"southwest_sulphur_flats",0,0,{1,0},UNDEFINEDAREA},
	{"statue_and_boxes",-1051,3560,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"stone_tower",3457,-375,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"sulphur_hills_1",0,0,{1,0},UNDEFINEDAREA},
	{"sulphur_hills_2",0,0,{1,0},UNDEFINEDAREA},
	{"tent_and_garden",-6030,-286,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"three_houses",6205,911,{1,75},NOSPAWNAREA + NOBUILDZONEAREA},
	{"torches_and_arches",720,-3389,{1,25},NOSPAWNAREA + NOBUILDZONEAREA},
	{"tower",1559,-6420,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"trees_and_arches",5544,-5998,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"trees_and_pillars",5071,-5126,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"two_arches",-3320,-5639,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"two_houses",-4867,-1052,{1,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"two_huts",2956,3947,{1,30},NOSPAWNAREA + NOBUILDZONEAREA},
	{"volcano",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_1",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_10",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_11",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_12",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_13",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_2",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_3",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_4",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_5",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_6",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_7",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_8",0,0,{1,0},UNDEFINEDAREA},
	{"wasteland_9",0,0,{1,0},UNDEFINEDAREA},
	{"westerly",0,0,{1,0},UNDEFINEDAREA},
	{"western_mountains",0,0,{1,0},UNDEFINEDAREA},
	{"western_plains",0,0,{1,0},UNDEFINEDAREA},
	{"wind_farm",-2883,-236,{1,75},NOSPAWNAREA + NOBUILDZONEAREA},
	{"world_spawner",0,0,{1,-1},SPAWNAREA + WORLDSPAWNAREA,{"lok_world","global_hard"},2048},
}

lok_static_spawns = {
	{"bapibac",60,14.5598,0.26,3.77176,360.011,2745866, "conversation", "Bapibac One-Oesp", "stationary"},
	{"ciwi_mosregri",60,31.1714,7.25,12.3841,180.018,2745874, "conversation", "Ciwi Mo-sregri", "stationary"},
	{"evathm",60,4.84117,-0.894992,20.6966,45.0006,8145382, "conversation", "Evathm Av'Tvo", "stationary"},
	{"idhak_ipath",60,28.4658,13.25,10.7188,135.001,2745876, "conversation", "Idhak Ipath", "stationary"},
	{"ifoja_lico",60,552.494,11.89,5111.84,180.005,0, "conversation", "Ifoja Lico", "stationary"},
	{"melo",60,32.2502,7.25,-2.56477,360.011,2745874, "conversation", "Melo", "stationary"},
	{"nym_kusak_guardian",60,-3.62,3.27819,-25.44,39.0011,6595511, "calm", "Scourge", "stationary"},
	{"nym_kusak_guardian",60,3.62,3.27819,-25.44,325.01,6595511, "bored", "Razor", "stationary"},
	{"junk_dealer",60,367,12,5202.8,-178,0,"","","stationary",JUNKGENERIC,JUNKCONVGENERIC},
	{"junk_reggi",60,443.925,12,4879.41,69.9891,0,"","Reggi Tirver","stationary",JUNKWEAPONS,JUNKCONVREGGINYM},
	{"rifea_eicik",60,-23.1848,1.58812,1.95072,180.005,8145358, "conversation", "Rifea Eicik", "stationary"},
	{"rorha_wahe",60,7.54821,-0.894991,-8.57564,0,8145378, "conversation", "Rorha Wahe", "stationary"},
	{"vixur_webb",60,-13.2,-0.9,-20.2,22,8145383, "npc_sitting_chair", "Vixur Webb (a musician)", "stationary"},
}
