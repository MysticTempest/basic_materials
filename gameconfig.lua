-- Craft ingredients


bm = {}
-- MineClone2 support
local mod_mcl_core = minetest.get_modpath("mcl_core") ~= nil
if mod_mcl_core then
	bm.gameconfig_dirt = "mcl_core:dirt"
	bm.gameconfig_sand = "mcl_core:sand"
	bm.gameconfig_gravel = "mcl_core:gravel"
	bm.gameconfig_steel_ingot = "mcl_core:iron_ingot"
	bm.gameconfig_gold_ingot = "mcl_core:gold_ingot"
	bm.gameconfig_mese_crystal_fragment = "mesecons:redstone"
	bm.gameconfig_torch = "mcl_torches:torch"
	bm.gameconfig_diamond = "mcl_core:diamond"
	bm.gameconfig_clay_lump = "mcl_core:clay_lump"
	bm.gameconfig_water_bucket = "mcl_buckets:bucket_water"
	bm.gameconfig_empty_bucket = "mcl_buckets:bucket_empty"
	bm.gameconfig_dye_dark_grey = "mcl_dye:dark_grey"
	-- No current equivalent so default to iron ingot instead.
	bm.gameconfig_copper_ingot = "mcl_core:iron_ingot"
	bm.gameconfig_tin_ingot = "mcl_core:iron_ingot"
	bm.gameconfig_silver_ingot = "mcl_core:iron_ingot"
else --fallback to Minetest Game's items.
	bm.gameconfig_dirt = "default:dirt"
	bm.gameconfig_sand = "default:sand"
	bm.gameconfig_gravel = "default:gravel"
	bm.gameconfig_copper_ingot = "default:copper_ingot"
	bm.gameconfig_steel_ingot = "default:steel_ingot"
	bm.gameconfig_gold_ingot = "default:gold_ingot"
	bm.gameconfig_tin_ingot = "default:tin_ingot"
	bm.gameconfig_mese_crystal_fragment = "default:mese_crystal_fragment"
	bm.gameconfig_torch = "default:torch"
	bm.gameconfig_diamond = "default:diamond"
	bm.gameconfig_clay_lump = "default:clay_lump"
	bm.gameconfig_water_bucket = "bucket:bucket_water"
	bm.gameconfig_empty_bucket = "bucket:bucket_empty"
	bm.gameconfig_dye_dark_grey = "dye:dark_grey"
	-- No current equivalent so default to copper ingot instead.
	bm.gameconfig_silver_ingot = "default:copper_ingot"
end


--
-- Sounds
--
local bm_sounds = {}

function bm_sounds.node_sound_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="", gain=1.0}
	table.dug = table.dug or
			{name="default_dug_node", gain=0.25}
	table.dig = table.dig or
			{name="default_dig_oddly_breakable_by_hand", gain=1.0}
	table.place = table.place or
			{name="default_place_node_hard", gain=1.0}
	return table
end

function bm_sounds.node_sound_stone_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_hard_footstep", gain=0.5}
	table.dug = table.dug or
			{name="default_hard_footstep", gain=1.0}
	table.dig = table.dig or
			{name="default_hard_footstep", gain=1.0}
	bm_sounds.node_sound_defaults(table)
	return table
end

function bm_sounds.node_sound_metal_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_metal_footstep", gain=0.5}
	table.dug = table.dug or
			{name="default_metal_footstep", gain=1.0}
	table.dig = table.dig or
			{name="default_metal_footstep", gain=1.0}
	table.place = table.place or
			{name="default_metal_footstep", gain=1.0}
	bm_sounds.node_sound_defaults(table)
	return table
end

return bm_sounds
