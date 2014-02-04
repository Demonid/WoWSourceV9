-- I don't know what the *** are they. Fireland Bridge in end time ???
DELETE FROM `gameobject` WHERE  `guid` IN (290149, 290151, 290153, 290157, 290161, 290163, 290165, 290167, 290169, 290171, 290175, 290177, 290179);

-- Adding the right platforms
DELETE FROM `gameobject` WHERE id IN (209670,209693,209694,209695);
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(209670, 938, 5789, 5794, 2, 1, 4380.49, 1410.17, 126.842, 0.410151, 0, 0, 0.203641, 0.979046, 7200, 255, 1),
(209693, 938, 5789, 5794, 2, 1, 4399.57, 1446.98, 127.268, 3.50812, 0, 0, -0.983254, 0.182238, 7200, 255, 1),
(209694, 938, 5789, 5794, 2, 1, 4376.02, 1481.99, 127.282, 4.76475, 0, 0, -0.688354, 0.725375, 7200, 255, 1),
(209695, 938, 5789, 5794, 2, 1, 4357.86, 1446.64, 126.746, 0.322884, 0, 0, 0.160742, 0.986996, 7200, 255, 1);

-- Adding Pulverize Location
DELETE FROM creature_template WHERE entry = 70024;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(70024, 0, 0, 0, 0, 0, 169, 0, 0, 0, 'Pulverize Position', '', '', 0, 87, 87, 0, 0, 35, 35, 0, 2.4, 1.42857, 2.4, 1.42857, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 4, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 16778312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 100, 16, 1, 1, 0, 0, 0, 0, 0, 0, 0, 152, 1, 0, 0, 128, '', 15595);

DELETE FROM creature where id = 70024;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('267003','70024','938','5789','5792','2','65535','0','0','4380.6','1411.03','130.591','5.25172','300','0','0','100','0','0','0','0','0'),
('267001','70024','938','5789','5792','2','65535','0','0','4399.01','1448.6','131.208','5.26972','300','0','0','100','0','0','0','0','0'),
('266997','70024','938','5789','5792','2','65535','0','0','4376.99','1480.85','130.939','3.34372','300','0','0','100','0','0','0','0','0'),
('266999','70024','938','5789','5792','2','65535','0','0','4358.79','1446.83','130.514','5.22922','300','0','0','100','0','0','0','0','0');

-- Baine's totem
DELETE FROM creature_template WHERE entry = 54434;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(54434, 0, 0, 0, 0, 0, 4589, 0, 0, 0, 'Baine\'s Totem', '', '', 0, 1, 1, 0, 0, 16, 16, 0, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 4, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 50000, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 152, 1, 0, 0, 0, 'baint_totem', 15595);