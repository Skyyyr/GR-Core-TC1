-- Vehicle Merchant
-- R. Bassett Jr. www.tpot.ca
-- July 2014

CrazyLarry = ScreenPlay:new {
	numberOfActs = 1, 
	questString = "crazy_larry_task",
	states = {}, 
}

registerScreenPlay("CrazyLarry", true)

function CrazyLarry:start() 
	-- Spawn our character into the world, setting pLarry a pointer variable we can use to check or change his state.
	local pLarry = spawnMobile("naboo", "merch_crazy_larry", 1, -4920.42, 6.0, 4123.6, 35, 0 )
	-- Load some decorations
	spawnSceneObject("naboo", "object/tangible/camp/camp_pavilion_s1.iff", -4920.42, 6.0, 4123.6, 0, 0, 0, 1, 0)
	spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_data_terminal_free_s2.iff", -4923.15, 6.0, 4126.85, 0, 0, 0, 1, 0)
	spawnSceneObject("naboo", "object/static/structure/corellia/corl_power_transformer_s01.iff", -4920.68, 6.0, 4118.76, 0, 0.0559653, 0, 0.998433, 0)
	spawnSceneObject("naboo", "object/static/structure/corellia/corl_power_transformer_s02.iff", -4926.71, 6.0, 4123.54, 0, -0.486324, 0, 0.873779, 0)
	spawnSceneObject("naboo", "object/static/vehicle/static_speeder_bike.iff", -4912.2, 6.0, 4122.51, 0, 0.224983, 0, 0.974363, 0)
	spawnSceneObject("naboo", "object/mobile/vehicle/speederbike_swoop.iff", -4915.2, 6.0, 4119.51, 0, 0.224983, 0, 0.974363, 0)
	spawnSceneObject("naboo", "object/mobile/vehicle/landspeeder_av21.iff", -4920.41, 6.0, 4131.19, 0, 0.999409, 0, -0.0343741, 0)
	spawnSceneObject("naboo", "object/mobile/vehicle/landspeeder_x34.iff", -4913.8, 6.0, 4124.94, 0, 0.855527, 0, 0.517758, 0)
end


crazylarry_convo_handler = Object:new {
	tstring = "myconversation"
 }

function crazylarry_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
-- Assign the player to variable creature for use inside this function.
	local creature = LuaCreatureObject(conversingPlayer)
	
	-- Get the last conversation to determine whetehr or not we're  on the first screen
	local convosession = creature:getConversationSession()
	lastConversation = nil
	local conversation = LuaConversationTemplate(conversationTemplate)
	local nextConversationScreen 
	
	-- If there is a conversation open, do stuff with it
	if ( conversation ~= nil ) then
		-- check to see if we have a next screen
		if ( convosession ~= nil ) then
			 local session = LuaConversationSession(convosession)
			 if ( session ~= nil ) then
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
		end
		
		-- Last conversation was nil, so get the first screen
		if ( lastConversationScreen == nil ) then
			nextConversationScreen = conversation:getInitialScreen()
		else
		-- Start playing the rest of the conversation based on user input
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			
			-- Set variable to track what option the player picked and get the option picked
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
			nextConversationScreen = conversation:getScreen(optionLink)
			
			-- Get some information about the player.
			local credits = creature:getCashCredits()
			local pInventory = creature:getSlottedObject("inventory")
			local inventory = LuaSceneObject(pInventory)
			
			-- Bail if inventory is full
			if (inventory:hasFullContainerObjects() == true) then
				nextConversationScreen = conversation:getScreen("insufficient_space") 
				creature:sendSystemMessage("You do not have enough inventory space")	
			
			-- Make Sale 
			elseif ( optionLink == "kit" and credits >= 250) then
				creature:subtractCashCredits(250)
				local pItem = giveItem(pInventory, "object/tangible/item/vehicle_customization.iff", -1)
				nextConversationScreen = conversation:getScreen("swoop")
			elseif ( optionLink == "swoop" and credits >= 25000) then
				creature:subtractCashCredits(25000)
				local pItem = giveItem(pInventory, "object/tangible/deed/vehicle_deed/speederbike_swoop_deed.iff", -1)
				nextConversationScreen = conversation:getScreen("swoop")
			elseif ( optionLink == "xp31" and credits >= 6000) then
				creature:subtractCashCredits(6000)
				local pItem = giveItem(pInventory, "object/tangible/deed/vehicle_deed/landspeeder_x31_deed.iff", -1)
				nextConversationScreen = conversation:getScreen("xp31")
			elseif ( optionLink == "xp34" and credits >= 10000) then
				creature:subtractCashCredits(10000)
				local pItem = giveItem(pInventory, "object/tangible/deed/vehicle_deed/landspeeder_x34_deed.iff", -1)
				nextConversationScreen = conversation:getScreen("xp34")
			elseif ( optionLink == "speederbike" and credits >= 15000) then
				creature:subtractCashCredits(15000)
				local pItem = giveItem(pInventory, "object/tangible/deed/vehicle_deed/speederbike_deed.iff", -1)
				nextConversationScreen = conversation:getScreen("speederbike")
			elseif ( optionLink == "flash" and credits >= 325000) then
				creature:subtractCashCredits(325000)
				local pItem = giveItem(pInventory, "object/tangible/deed/vehicle_deed/speederbike_flash_deed.iff", -1)
				nextConversationScreen = conversation:getScreen("flash")
			elseif ( optionLink == "av21" and credits >= 750000) then
				creature:subtractCashCredits(750000)
				local pItem = giveItem(pInventory, "object/tangible/deed/vehicle_deed/landspeeder_av21_deed.iff", -1)
				nextConversationScreen = conversation:getScreen("av21")
			else			
				nextConversationScreen = conversation:getScreen("insufficient_funds")
				creature:sendSystemMessage("You have insufficient funds")
			end
		end
	end
	-- end of the conversation logic.
	return nextConversationScreen
end


function crazylarry_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	return conversationScreen
end