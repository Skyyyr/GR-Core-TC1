-- NPC Buff and Heal Bots
-- R. Bassett Jr. www.tpot.ca
-- July 2014
--
-- For the moment, these are just "blue frogs". I had modified their c++ 
-- to charge the player credits, but it wasn't an optional solution. I would 
-- rather impliment them in their own sui code.
--
-- Terminals located insdide Medical Centers

BuffHealBots = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("BuffHealBots", true)


function BuffHealBots:start()
	self:spawnMobiles()
end


function BuffHealBots:spawnMobiles()
	-- Corellia
		spawnSceneObject("corellia", "object/tangible/beta/beta_terminal_wound.iff", -21.7355, 0.26, -2.34, 1855535, 0.999413, 0, 0.0342538, 0) -- Coronet
		spawnSceneObject("corellia", "object/tangible/beta/beta_terminal_wound.iff", 1.47081, 0.184067, -0.0660405, 4345354, 0.725442, 0, 0.688283, 0) -- Doba Guefel
		spawnSceneObject("corellia", "object/tangible/beta/beta_terminal_wound.iff", 0.525674, 0.184067, -10.9405, 3375392, 0.995534, 0, -0.0944077, 0) -- Kor Vella
		spawnSceneObject("corellia", "object/tangible/beta/beta_terminal_wound.iff", -21.7355, 0.26, -2.34, 1935835, 0.999413, 0, 0.0342538, 0) -- Tyrena	
	-- Dantooine
	-- Endor
	-- Lok
		spawnSceneObject("naboo", "object/tangible/beta/beta_terminal_wound.iff", 17.3, 0.3, -0.4, 2745866, 0.999413, 0, 0.0342538, 0) -- Nym's Stronghold City
	-- Naboo
		spawnSceneObject("naboo", "object/tangible/beta/beta_terminal_wound.iff", 20.0537, 0.26, -0.374779, 1741439, 0.768163, 0, 0.640254, 0) -- Kaadara
		spawnSceneObject("naboo", "object/tangible/beta/beta_terminal_wound.iff", -22.0235, 0.26, 1.54073, 1661370, 0.999413, 0, 0.0342538, 0) -- Keren
		spawnSceneObject("naboo", "object/tangible/beta/beta_terminal_wound.iff", -21.7355, 0.26, -2.34, 1717506, 0.0951452, 0, 0.995463, 0) --Moenia
		spawnSceneObject("naboo", "object/tangible/beta/beta_terminal_wound.iff", -21.7355, 0.26, -2.34, 1697364, 0.0951452, 0, 0.995463, 0) -- Theed
	-- Rori
		spawnSceneObject("rori", "object/tangible/beta/beta_terminal_wound.iff", -21.7355, 0.26, -2.34, 4635424, 0.0481163, 0, 0.998842, 0) -- Narmle
		spawnSceneObject("rori", "object/tangible/beta/beta_terminal_wound.iff", -21.7355, 0.26, -2.34, 4635732, 0.0481163, 0, 0.998842, 0) -- Restuss
	-- Talus
		spawnSceneObject("talus", "object/tangible/beta/beta_terminal_wound.iff", 1.1233, 0.184067, 0.0367278, 3305354, 0.790803, 0, 0.61207, 0) -- Dearic
		spawnSceneObject("rori", "object/tangible/beta/beta_terminal_wound.iff", 1.10542, 0.184067, 0.555264, 4265477, 0.656506, 0, 0.754321, 0) -- Nashal
	-- Tatooine
		spawnSceneObject("tatooine", "object/tangible/beta/beta_terminal_wound.iff", 1.1233, 0.184067, 0.0367278, 4005383, 0.790803, 0, 0.61207, 0) -- Bestine
		spawnSceneObject("tatooine", "object/tangible/beta/beta_terminal_wound.iff", 1.1233, 0.184067, 0.0367278, 9655496, 0.790803, 0, 0.61207, 0) -- Mos Eisley
		spawnSceneObject("tatooine", "object/tangible/beta/beta_terminal_wound.iff", -21.7355, 0.26, -2.34, 1153586, 0.999413, 0, 0.0342538, 0) -- Mos Entha
		spawnSceneObject("tatooine", "object/tangible/beta/beta_terminal_wound.iff", 1.1233, 0.184067, 0.0367278, 4005424, 0.790803, 0, 0.61207, 0) -- Mos Espa
	-- Yavin4
end