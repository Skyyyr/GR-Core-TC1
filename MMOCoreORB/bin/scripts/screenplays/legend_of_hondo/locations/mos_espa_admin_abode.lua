-- The Administrator's Abode
-- R. Bassett Jr. www.tpot.ca
-- Aug 2014
--
-- Items inside the admin house in Mos Espa

AdminAbode = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("AdminAbode", true)


function AdminAbode:start()
	--Character Builder
	spawnSceneObject("tatooine", "object/tangible/terminal/terminal_character_builder.iff", 2.8, 0.8, -0.1, 281474993856511, 0.998455, 0, -0.0555706, 0)

end