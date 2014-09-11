-- My Customized Restus
-- R. Bassett Jr. www.tpot.ca
-- July 2014

loh_restus = ScreenPlay:new {
	numberOfActs = 1, 
	questString = "loh_restus_task",
	states = {}, 
}

registerScreenPlay("loh_restus", true)

function loh_restus:start() 
	-- Outside
		-- In front of Starport
		spawnMobile("rori", "starter_weapons", 1, 5353.8, 80.0, 5665.9, 180, 0 )
		spawnMobile("rori", "starter_gear", 1, 5352.4, 80.0, 5665.9, 180, 0 )

	-- Starport
		-- Inside
		spawnMobile("rori", "chassis_dealer", 0, -58.8081, 2.63942, 41.0409, 110, 4635678)
		spawnMobile("rori", "trainer_shipwright", 0, -46.0127, 2.63942, 34.9021, -60, 4635678)
		-- Outside
		spawnSceneObject("rori", "object/tangible/event_perk/lambda_shuttle.iff", 5389.07, 80, 5757.81, 0, -0.306508, 0, 0.951868, 0)
		spawnMobile("rori", "crackdown_scout_trooper", 0, 5391.11, 80, 5750.21, -103, 0)
		spawnMobile("rori", "crackdown_scout_trooper", 0, 5387.83, 80, 5749.99, 90, 0)
		
	-- Guild Hall - Chef & Tailor
		-- Junk Dealer (tailor) spawned here using scripts/managers/spawn_manager/rori.lua
		-- TODO: Artisan Gear merchant spawned here using their Merchant file.
		spawnMobile("rori", "trainer_chef", 0, -13.7791, 1.13306, -12.2515, 38, 4635665)
		
	
	--Guild Hall - Weaponsmith, Droid Engineer, Armorsmith & Architect
		-- TODO: Furnature Merchant - Rugs
		-- TODO: Furnature Merchant - Paintings
		-- TODO: Furnature Merchant - Plants
		-- TODO: Furnature Merchant - Furnature
		
	-- Guild Hall - Combat
		spawnMobile("rori", "trainer_rifleman", 0,12.1,1.1,4.4,178,4635687)
	
	-- Hospital
		-- Second Floor Middle Room
		-- Second Floor Room
		spawnMobile("rori", "trainer_bioengineer",0,28.1,7.3,7.2,-134,4635736)
		-- Second Floor Balcony
		spawnMobile("rori", "infant_graul", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "chuba", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "kaadu_male", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "narglatch_cub", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "nuna", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "vir_vur", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "trainer_creaturehandler", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "kaadu_female", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "baby_bol", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "capper_spineflap", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "scientist", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)
		spawnMobile("rori", "injured_purbole", 300,math.random(20) + 5325.3, 87.3,math.random(30) + 5575.5, math.random(360), 0)

	-- Hotel
		spawnMobile("rori", "trainer_smuggler",0,-18.6,1.6,-17.4,48,4635648)
		spawnMobile("rori", "wookiee_brawler",0,-16.4,1.6,-17.9,-37,4635648)
		spawnMobile("rori", "pirate_captain",0,-12.2,1.6,-14.6,-135,4635648)
		spawnMobile("rori", "pirate_crewman",0,-13.6,1.6,-17.5,14,4635648)
end

