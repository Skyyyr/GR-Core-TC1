--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 


object_tangible_terminal_terminal_skill = object_tangible_terminal_shared_terminal_skill:new {

	gameObjectType = 16400,
			
	maxCondition = 0,

	templateType = CHARACTERBUILDERTERMINAL,

	itemList = {			"Lightsaber",
				{
					"Novice", "force_discipline_light_saber_novice",
					"One Handed Light Saber",
					{
						"One Handed Light Saber I", "force_discipline_light_saber_one_hand_01",
						"One Handed Light Saber II", "force_discipline_light_saber_one_hand_02",
						"One Handed Light Saber III", "force_discipline_light_saber_one_hand_03",
						"One Handed Light Saber IV", "force_discipline_light_saber_one_hand_04"
					},
					"Two Handed Light Saber",
					{
						"Two Handed Light Saber I", "force_discipline_light_saber_two_hand_01",
						"Two Handed Light Saber II", "force_discipline_light_saber_two_hand_02",
						"Two Handed Light Saber III", "force_discipline_light_saber_two_hand_03",
						"Two Handed Light Saber IV", "force_discipline_light_saber_two_hand_04"
					},
					"Double Bladed Light Saber",
					{
						"Double Bladed Light Saber I", "force_discipline_light_saber_polearm_01",
						"Double Bladed Light Saber II", "force_discipline_light_saber_polearm_02",
						"Double Bladed Light Saber III", "force_discipline_light_saber_polearm_03",
						"Double Bladed Light Saber IV", "force_discipline_light_saber_polearm_04"
					},
					"Light Saber Technique",
					{
						"Light Saber Technique I", "force_discipline_light_saber_technique_01",
						"Light Saber Technique II", "force_discipline_light_saber_technique_02",
						"Light Saber Technique III", "force_discipline_light_saber_technique_03",
						"Light Saber Technique IV", "force_discipline_light_saber_technique_04"
					},
					"Master", "force_discipline_light_saber_master"
				},
					"Force Powers",
				{
					"Novice", "force_discipline_powers_novice",
					"Force Lightning",
					{
						"Force Lightning I", "force_discipline_powers_lightning_01",
						"Force Lightning II", "force_discipline_powers_lightning_02",
						"Force Lightning III", "force_discipline_powers_lightning_03",
						"Force Lightning IV", "force_discipline_powers_lightning_04"
					},
					"Force Subjugate",
					{
						"Force Subjugate I", "force_discipline_powers_mental_01",
						"Force Subjugate II", "force_discipline_powers_mental_02",
						"Force Subjugate III", "force_discipline_powers_mental_03",
						"Force Subjugate IV", "force_discipline_powers_mental_04"
					},
					"Force Diminish",
					{
						"Force Diminish I", "force_discipline_powers_debuff_01",
						"Force Diminish II", "force_discipline_powers_debuff_02",
						"Force Diminish III", "force_discipline_powers_debuff_03",
						"Force Diminish IV", "force_discipline_powers_debuff_04"
					},
					"Psychokineses",
					{
						"Psychokineses I", "force_discipline_powers_push_01",
						"Psychokineses II", "force_discipline_powers_push_02",
						"Psychokineses III", "force_discipline_powers_push_03",
						"Psychokineses IV", "force_discipline_powers_push_04"
					},
					"Master", "force_discipline_powers_master"
				},
					"Force Healing",
				{
					"Novice", "force_discipline_healing_novice",
					"Force Rejuvenation",
					{
						"Force Rejuvenation I", "force_discipline_healing_damage_01",
						"Force Rejuvenation II", "force_discipline_healing_damage_02",
						"Force Rejuvenation III", "force_discipline_healing_damage_03",
						"Force Rejuvenation IV", "force_discipline_healing_damage_04"
					},
					"Force Restoration",
					{
						"Force Restoration I", "force_discipline_healing_wound_01",
						"Force Restoration II", "force_discipline_healing_wound_02",
						"Force Restoration III", "force_discipline_healing_wound_03",
						"Force Restoration IV", "force_discipline_healing_wound_04"
					},
					"Force Assist",
					{
						"Force Assist I", "force_discipline_healing_other_01",
						"Force Assist II", "force_discipline_healing_other_02",
						"Force Assist III", "force_discipline_healing_other_03",
						"Force Assist IV", "force_discipline_healing_other_04"
					},
					"Force Purification",
					{
						"Force Purification I", "force_discipline_healing_states_01",
						"Force Purification II", "force_discipline_healing_states_02",
						"Force Purification III", "force_discipline_healing_states_03",
						"Force Purification IV", "force_discipline_healing_states_04"
					},
					"Master", "force_discipline_healing_master"
				},
					"Force Enhancement",
				{
					"Novice", "force_discipline_enhancements_novice",
					"Force Celerity",
					{
						"Force Celerity I", "force_discipline_enhancements_movement_01",
						"Force Celerity II", "force_discipline_enhancements_movement_02",
						"Force Celerity III", "force_discipline_enhancements_movement_03",
						"Force Celerity IV", "force_discipline_enhancements_movement_04"
					},
					"Force Protection",
					{
						"Force Protection I", "force_discipline_enhancements_protection_01",
						"Force Protection II", "force_discipline_enhancements_protection_02",
						"Force Protection III", "force_discipline_enhancements_protection_03",
						"Force Protection IV", "force_discipline_enhancements_protection_04"
					},
					"Force Resistance",
					{
						"Force Resistance I", "force_discipline_enhancements_resistance_01",
						"Force Resistance II", "force_discipline_enhancements_resistance_02",
						"Force Resistance III", "force_discipline_enhancements_resistance_03",
						"Force Resistance IV", "force_discipline_enhancements_resistance_04"
					},
					"Force Synergy",
					{
						"Force Synergy I", "force_discipline_enhancements_synergy_01",
						"Force Synergy II", "force_discipline_enhancements_synergy_02",
						"Force Synergy III", "force_discipline_enhancements_synergy_03",
						"Force Synergy IV", "force_discipline_enhancements_synergy_04"
					},
					"Master", "force_discipline_enhancements_master"
				},
				        "Force Defense",
				{
					"Novice", "force_discipline_defender_novice",
					"Force Melee Defense",
					{
						"Force Melee Defense I", "force_discipline_defender_melee_defense_01",
						"Force Melee Defense II", "force_discipline_defender_melee_defense_02",
						"Force Melee Defense III", "force_discipline_defender_melee_defense_03",
						"Force Melee Defense IV", "force_discipline_defender_melee_defense_04"
					},
					"Force Ranged Defense",
					{
						"Force Ranged Defense I", "force_discipline_defender_ranged_defense_01",
						"Force Ranged Defense II", "force_discipline_defender_ranged_defense_02",
						"Force Ranged Defense III", "force_discipline_defender_ranged_defense_03",
						"Force Ranged Defense IV", "force_discipline_defender_ranged_defense_04"
					},
					"Force Defense",
					{
						"Force Defense I", "force_discipline_defender_force_defense_01",
						"Force Defense II", "force_discipline_defender_force_defense_02",
						"Force Defense III", "force_discipline_defender_force_defense_03",
						"Force Defense IV", "force_discipline_defender_force_defense_04"
					},
					"Preternatural Defense",
					{
						"Preternatural Defense I", "force_discipline_defender_preternatural_defense_01",
						"Preternatural Defense II", "force_discipline_defender_preternatural_defense_02",
						"Preternatural Defense III", "force_discipline_defender_preternatural_defense_03",
						"Preternatural Defense IV", "force_discipline_defender_preternatural_defense_04"
					},
					"Master", "force_discipline_defender_master"
				}
			}
}

ObjectTemplates:addTemplate(object_tangible_terminal_terminal_skill, "object/tangible/terminal/terminal_skill.iff")
