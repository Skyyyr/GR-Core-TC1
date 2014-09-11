-- Legends of Hondo Custom Content
--
-- This file is called by scripts/mobile/serverobjects.lua and it is responsible
-- for registering all custom mobiles, conversations and items. 

-- Creatures


-- Conversations
includeFile("legend_of_hondo/conversations/merchants/crazy_larry_conv.lua")
includeFile("legend_of_hondo/conversations/merchants/starter_gear_conv.lua")
includeFile("legend_of_hondo/conversations/merchants/starter_weapons_conv.lua")


-- NPC Merchants
includeFile("legend_of_hondo/merchants/merch_crazy_larry.lua")
includeFile("legend_of_hondo/merchants/starter_gear.lua")
includeFile("legend_of_hondo/merchants/starter_weapons.lua")
