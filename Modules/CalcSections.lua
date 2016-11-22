-- Path of Building
--
-- Module: Calc Sections
-- List of sections for the Calcs tab
--

return {
{ 3, "HitDamage", 1, "Skill Hit Damage", data.colorCodes.OFFENCE, {
	extra = "{output:DisplayDamage}",
	flag = "hit",
	colWidth = 95,
	{
		{ format = "All Types:", },
		{ format = "Physical:" },
		{ format = "Lightning:" },
		{ format = "Cold:" },
		{ format = "Fire:" },
		{ format = "Chaos:" },
	},
	{ label = "Added Min",
		{ },
		{ format = "{0:mod:1}", { modName = "PhysicalMin", cfg = "skill" }, },
		{ format = "{0:mod:1}", { modName = "LightningMin", cfg = "skill" }, },
		{ format = "{0:mod:1}", { modName = "ColdMin", cfg = "skill" }, },
		{ format = "{0:mod:1}", { modName = "FireMin", cfg = "skill" }, },
		{ format = "{0:mod:1}", { modName = "ChaosMin", cfg = "skill" }, },
	},
	{ label = "Added Max",
		{ },
		{ format = "{0:mod:1}", { modName = "PhysicalMax", cfg = "skill" }, },
		{ format = "{0:mod:1}", { modName = "LightningMax", cfg = "skill" }, },
		{ format = "{0:mod:1}", { modName = "ColdMax", cfg = "skill" }, },
		{ format = "{0:mod:1}", { modName = "FireMax", cfg = "skill" }, },
		{ format = "{0:mod:1}", { modName = "ChaosMax", cfg = "skill" }, },
	},
	{ label = "Total Increased",
		{ format = "{0:mod:1}%", { modName = "Damage", modType = "INC", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = "PhysicalDamage", modType = "INC", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = { "LightningDamage", "ElementalDamage" }, modType = "INC", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = { "ColdDamage", "ElementalDamage" }, modType = "INC", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = { "FireDamage", "ElementalDamage" }, modType = "INC", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = "ChaosDamage", modType = "INC", cfg = "skill" }, },
	},
	{ label = "Total More",
		{ format = "{0:mod:1}%", { modName = "Damage", modType = "MORE", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = "PhysicalDamage", modType = "MORE", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = { "LightningDamage", "ElementalDamage" }, modType = "MORE", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = { "ColdDamage", "ElementalDamage" }, modType = "MORE", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = { "FireDamage", "ElementalDamage" }, modType = "MORE", cfg = "skill" }, },
		{ format = "{0:mod:1}%", { modName = "ChaosDamage", modType = "MORE", cfg = "skill" }, },
	},
	{ label = "Effective DPS Mod", flag = "effective",
		{ },
		{ format = "x {3:output:PhysicalEffMult}",
			{ breakdown = "PhysicalEffMult" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "PhysicalDamageTaken" }, enemy = true }, 
		},
		{ format = "x {3:output:LightningEffMult}",
			{ breakdown = "LightningEffMult" },
			{ label = "Player modifiers", modName = { "LightningPenetration", "ElementalPenetration" }, cfg = "skill" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "LightningDamageTaken", "ElementalDamageTaken", "LightningResist", "ElementalResist" }, enemy = true },
		},
		{ format = "x {3:output:ColdEffMult}",
			{ breakdown = "ColdEffMult" },
			{ label = "Player modifiers", modName = { "ColdPenetration", "ElementalPenetration" }, cfg = "skill" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "ColdDamageTaken", "ElementalDamageTaken", "ColdResist", "ElementalResist" }, enemy = true },
		},
		{ format = "x {3:output:FireEffMult}",
			{ breakdown = "FireEffMult" },
			{ label = "Player modifiers", modName = { "FirePenetration", "ElementalPenetration" }, cfg = "skill" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "FireDamageTaken", "ElementalDamageTaken", "FireResist", "ElementalResist" }, enemy = true },
		},
		{ format = "x {3:output:ChaosEffMult}",
			{ breakdown = "ChaosEffMult" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "ChaosDamageTaken", "ChaosResist" }, enemy = true },
		},
	},
	{ label = "Hit Damage", textSize = 12,
		{ format = "{0:output:TotalMin} to {0:output:TotalMax}", },
		{ format = "{0:output:PhysicalMin} to {0:output:PhysicalMax}", { breakdown = "Physical" }, },
		{ format = "{0:output:LightningMin} to {0:output:LightningMax}", { breakdown = "Lightning" }, },
		{ format = "{0:output:ColdMin} to {0:output:ColdMax}", { breakdown = "Cold" }, },
		{ format = "{0:output:FireMin} to {0:output:FireMax}", { breakdown = "Fire" }, },
		{ format = "{0:output:ChaosMin} to {0:output:ChaosMax}", { breakdown = "Chaos" }, },
	},
	{ label = "Average Hit", { format = "{1:output:AverageHit}", { breakdown = "AverageHit" }, }, },
	{ label = "Average Damage", flag = "attack", { format = "{1:output:AverageDamage}", { breakdown = "AverageDamage" }, }, },
	{ label = "Skill DPS", flag = "notAverage", { format = "{1:output:TotalDPS}", { breakdown = "TotalDPS" }, }, },
	{ label = "Mana Cost", { format = "{0:output:ManaCost}", { breakdown = "ManaCost" }, { modName = "ManaCost", cfg = "skill" }, }, },
} },
{ 3, "Dot", 1, "Skill Damage over Time", data.colorCodes.OFFENCE, {
	extra = "{1:output:TotalDot} total DoT",
	flag = "dot",
	colWidth = 95,
	{ { format = "All Types:", }, { format = "Physical:" }, { format = "Lightning:" }, { format = "Cold:" }, { format = "Fire:" }, { format = "Chaos:" }, },
	{ label = "Total Increased",
		{ format = "{0:mod:1}%", { modName = "Damage", modType = "INC", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = "PhysicalDamage", modType = "INC", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = { "LightningDamage", "ElementalDamage" }, modType = "INC", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = { "ColdDamage", "ElementalDamage" }, modType = "INC", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = { "FireDamage", "ElementalDamage" }, modType = "INC", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = "ChaosDamage", modType = "INC", cfg = "dot" }, },
	},
	{ label = "Total More",
		{ format = "{0:mod:1}%", { modName = "Damage", modType = "MORE", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = "PhysicalDamage", modType = "MORE", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = { "LightningDamage", "ElementalDamage" }, modType = "MORE", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = { "ColdDamage", "ElementalDamage" }, modType = "MORE", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = { "FireDamage", "ElementalDamage" }, modType = "MORE", cfg = "dot" }, },
		{ format = "{0:mod:1}%", { modName = "ChaosDamage", modType = "MORE", cfg = "dot" }, },
	},
	{ label = "Effective DPS Mod", flag = "effective",
		{ },
		{ format = "x {3:output:PhysicalDotEffMult}",
			{ breakdown = "PhysicalDotEffMult" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "DotTaken", "PhysicalDamageTaken", "PhysicalDamageReduction" }, enemy = true }, 
		},
		{ format = "x {3:output:LightningDotEffMult}",
			{ breakdown = "LightningDotEffMult" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "DotTaken", "LightningDamageTaken", "ElementalDamageTaken", "LightningResist", "ElementalResist" }, enemy = true },
		},
		{ format = "x {3:output:ColdDotEffMult}",
			{ breakdown = "ColdDotEffMult" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "DotTaken", "ColdDamageTaken", "ElementalDamageTaken", "ColdResist", "ElementalResist" }, enemy = true },
		},
		{ format = "x {3:output:FireDotEffMult}",
			{ breakdown = "FireDotEffMult" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "DotTaken", "FireDamageTaken", "ElementalDamageTaken", "FireResist", "ElementalResist" }, enemy = true },
		},
		{ format = "x {3:output:ChaosDotEffMult}",
			{ breakdown = "ChaosDotEffMult" },
			{ label = "Enemy modifiers", modName = { "DamageTaken", "DotTaken", "ChaosDamageTaken", "ChaosResist" }, enemy = true },
		},
	},
	{ label = "Damage over Time",
		{ format = "{1:output:TotalDot}", },
		{ format = "{1:output:PhysicalDot}", { breakdown = "PhysicalDot" }, },
		{ format = "{1:output:LightningDot}", { breakdown = "LightningDot" }, },
		{ format = "{1:output:ColdDot}", { breakdown = "ColdDot" }, },
		{ format = "{1:output:FireDot}", { breakdown = "FireDot" }, },
		{ format = "{1:output:ChaosDot}", { breakdown = "ChaosDot" }, },
	},
	{ label = "Mana Cost", { format = "{0:output:ManaCost}", { breakdown = "ManaCost" }, { modName = "ManaCost", cfg = "skill" }, }, },
} },
{ 1, "Speed", 1, "Attack/Cast Rate", data.colorCodes.OFFENCE, {
	extra = "{2:output:Speed}/s",
	{ label = "Inc. Attack Speed", flag = "attack", { format = "{0:mod:1}%", { modName = "Speed", modType = "INC", cfg = "skill", }, }, },
	{ label = "More Attack Speed", flag = "attack", { format = "{0:mod:1}%", { modName = "Speed", modType = "MORE", cfg = "skill", }, }, },
	{ label = "Inc. Cast Speed", flag = "spell", { format = "{0:mod:1}%", { modName = "Speed", modType = "INC", cfg = "skill", }, }, },
	{ label = "More Cast Speed", flag = "spell", { format = "{0:mod:1}%", { modName = "Speed", modType = "MORE", cfg = "skill", }, }, },
	{ label = "Casts per second", flag = "spell", { format = "{2:output:Speed}", { breakdown = "Speed" }, }, },
	{ label = "Attacks per second", flag = "attack", { format = "{2:output:Speed}", { breakdown = "Speed" }, }, },
	{ label = "Cast time", flag = "spell", { format = "{2:output:Time}s", }, },
	{ label = "Attack time", flag = "attack", { format = "{2:output:Time}s", }, },
} },
{ 1, "Crit", 1, "Crits", data.colorCodes.OFFENCE, {
	extra = "{2:output:CritChance}% x{2:output:CritMultiplier}",
	flag = "hit",
	{ label = "Inc. Crit Chance", { format = "{0:mod:1}%", { modName = "CritChance", modType = "INC", cfg = "skill" }, }, },
	{ label = "Crit Chance", { format = "{2:output:CritChance}%", { breakdown = "CritChance" }, { label = "Player modifiers", modName = "CritChance", cfg = "skill" }, { label = "Enemy modifiers", modName = "SelfExtraCritChance", enemy = true }, }, },
	{ label = "Crit Multiplier", { format = "x {2:output:CritMultiplier}", { breakdown = "CritMultiplier" }, { label = "Player modifiers", modName = "CritMultiplier", cfg = "skill"}, { label = "Enemy modifiers", modName = "SelfCritMultiplier", enemy = true }, }, },
	{ label = "Crit Effect Mod", { format = "x {3:output:CritEffect}", { breakdown = "CritEffect" }, }, },
} },
{ 1, "HitChance", 1, "Accuracy", data.colorCodes.OFFENCE, {
	extra = "{0:output:HitChance}%",
	flag = "attack",
	{ label = "Accuracy", { format = "{0:output:Accuracy}", { breakdown = "Accuracy" }, { modName = "Accuracy", cfg = "skill" }, }, },
	{ label = "Chance to Hit", { format = "{0:output:HitChance}%", { breakdown = "HitChance" }, { label = "Enemy Evasion modifiers", modName = "Evasion", enemy = true }, }, },
} },
{ 1, "SkillTypeStats", 1, "Skill type-specific Stats", data.colorCodes.OFFENCE, {
	{ label = "Duration Mod", flag = "duration", { format = "x {2:output:DurationMod}", { breakdown = "DurationMod"}, { modName = "Duration", cfg = "skill" }, }, },
	{ label = "Skill Duration", flag = "duration", { format = "{2:output:Duration}s", { breakdown = "Duration" }, }, },
	{ label = "Projectile Count", flag = "projectile", { format = "{0:output:ProjectileCount}", { modName = "ProjectileCount", cfg = "skill" }, }, },
	{ label = "Pierce Chance", flag = "projectile", { format = "{0:output:PierceChance}%", { modName = "PierceChance", cfg = "skill" }, }, },
	{ label = "Proj. Speed Mod", flag = "projectile", { format = "x {2:output:ProjectileSpeedMod}", { breakdown = "ProjectileSpeedMod" }, { modName = "ProjectileSpeed", cfg = "skill" }, }, },
	{ label = "Area Radius Mod", flag = "area", { format = "x {2:output:AreaRadiusMod}", { breakdown = "AreaRadiusMod" }, { modName = "AreaRadius", cfg = "skill" }, }, },
	{ label = "Active Trap Limit", flag = "trap", { format = "{0:output:ActiveTrapLimit}", { modName = "ActiveTrapLimit", cfg = "skill" }, }, },
	{ label = "Trap Cooldown", flag = "trap", { format = "{2:output:TrapCooldown}s", { breakdown = "TrapCooldown" }, { modName = "TrapCooldownRecovery", cfg = "skill" }, }, },
	{ label = "Active Mine Limit", flag = "mine", { format = "{0:output:ActiveMineLimit}", { modName = "ActiveMineLimit", cfg = "skill" }, }, },
	{ label = "Active Totem Limit", flag = "totem", { format = "{0:output:ActiveTotemLimit}", { modName = "ActiveTotemLimit", cfg = "skill" }, }, },
	{ label = "Totem Life Mod", flag = "totem", { format = "x {2:output:TotemLifeMod}", { breakdown = "TotemLifeMod" }, { modName = "TotemLife", cfg = "skill" }, }, },
	{ label = "Totem Life", flag = "totem", { format = "{0:output:TotemLife}", { breakdown = "TotemLife" }, }, },
} },
{ 1, "Bleed", 1, "Bleed", data.colorCodes.OFFENCE, {
	extra = "{0:output:BleedChance}% {1:output:BleedDPS} {2:output:BleedDuration}s",
	flag = "bleed",
	{ label = "Chance to Bleed", { format = "{0:output:BleedChance}%", { modName = "BleedChance", cfg = "skill" }, }, },
	{ label = "Total Increased", { format = "{0:mod:1}%", { modName = { "Damage", "PhysicalDamage" }, modType = "INC", cfg = "bleed" }, }, },
	{ label = "Total More", { format = "{0:mod:1}%", { modName = { "Damage", "PhysicalDamage" }, modType = "MORE", cfg = "bleed" }, }, },
	{ label = "Effective DPS Mod", flag = "effective", { format = "x {3:output:BleedEffMult}", { breakdown = "BleedEffMult" }, { label = "Enemy modifiers", modName = { "DamageTaken", "DotTaken", "PhysicalDamageTaken", "PhysicalDamageReduction" }, enemy = true }, }, },
	{ label = "Bleed DPS", { format = "{1:output:BleedDPS}", { breakdown = "BleedDPS" }, }, },
	{ label = "Bleed Duration", { format = "{2:output:BleedDuration}s", { breakdown = "BleedDuration" }, }, },
} },
{ 1, "Poison", 1, "Poison", data.colorCodes.OFFENCE, {
	extra = "{0:output:PoisonChance}% {1:output:PoisonDPS} {2:output:PoisonDuration}s",
	flag = "poison",
	{ label = "Chance to Poison", { format = "{0:output:PoisonChance}%", { modName = "PoisonChance", cfg = "skill" }, }, },
	{ label = "Total Increased", { format = "{0:mod:1}%", { modName = { "Damage", "ChaosDamage" }, modType = "INC", cfg = "poison" }, }, },
	{ label = "Total More", { format = "{0:mod:1}%", { modName = { "Damage", "ChaosDamage" }, modType = "MORE", cfg = "poison" }, }, },
	{ label = "Effective DPS Mod", flag = "effective", { format = "x {3:output:PoisonEffMult}", { breakdown = "PoisonEffMult" }, { label = "Enemy modifiers", modName = { "ChaosResist", "DamageTaken", "DotTaken", "ChaosDamageTaken" }, enemy = true }, }, },
	{ label = "Poison DPS", { format = "{1:output:PoisonDPS}", { breakdown = "PoisonDPS" }, }, },
	{ label = "Poison Duration", { format = "{2:output:PoisonDuration}s", { breakdown = "PoisonDuration" }, }, },
	{ label = "Dmg. per Poison", { format = "{1:output:PoisonDamage}", { breakdown = "PoisonDamage" }, }, },
} },
{ 1, "Ignite", 1, "Ignite", data.colorCodes.OFFENCE, {	
	extra = "{0:output:IgniteChance}% {1:output:IgniteDPS} {2:output:IgniteDuration}s",
	flag = "ignite",
	{ label = "Chance to Ignite", { format = "{0:output:IgniteChance}%", { label = "Player modifiers", modName = "EnemyIgniteChance", cfg = "skill" }, { label = "Enemy modifiers", modName = "SelfIgniteChance", enemy = true }, }, },
	{ label = "Total Increased", { format = "{0:mod:1}%", { modName = { "Damage", "FireDamage", "ElementalDamage" }, modType = "INC", cfg = "ignite" }, }, },
	{ label = "Total More", { format = "{0:mod:1}%", { modName = { "Damage", "FireDamage", "ElementalDamage" }, modType = "MORE", cfg = "ignite" }, }, },
	{ label = "Effective DPS Mod", flag = "effective", { format = "x {3:output:IgniteEffMult}", { breakdown = "IgniteEffMult" }, { label = "Enemy modifiers", modName = { "FireResist", "ElementalResist", "DamageTaken", "DotTaken", "FireDamageTaken", "ElementalDamageTaken" }, enemy = true }, }, },
	{ label = "Ignite DPS", { format = "{1:output:IgniteDPS}", { breakdown = "IgniteDPS" }, }, },
	{ label = "Ignite Duration", { format = "{2:output:IgniteDuration}s", { breakdown = "IgniteDuration" }, { label = "Player modifiers", modName = "EnemyIgniteDuration", cfg = "skill" }, { label = "Enemy modifiers", modName = "SelfIgniteDuration", enemy = true }, }, },
} },
{ 1, "MiscEffects", 1, "Other Effects", data.colorCodes.OFFENCE, {
	flag = "hit",
	{ label = "Chance to Shock", flag = "shock", { format = "{0:output:ShockChance}%", { label = "Player modifiers", modName = "EnemyShockChance", cfg = "skill" }, { label = "Enemy modifiers", modName = "SelfShockChance", enemy = true }, }, },
	{ label = "Shock Dur. Mod", flag = "shock", { format = "x {2:output:ShockDurationMod}", { label = "Player modifiers", modName = "EnemyShockDuration", cfg = "skill" }, { label = "Enemy modifiers", modName = "SelfShockDuration", enemy = true }, }, },
	{ label = "Chance to Freeze", flag = "freeze", { format = "{0:output:FreezeChance}%", { label = "Player modifiers", modName = "EnemyFreezeChance", cfg = "skill" }, { label = "Enemy modifiers", modName = "SelfFreezeChance", enemy = true }, }, },
	{ label = "Freeze Dur. Mod", flag = "shock", { format = "x {2:output:FreezeDurationMod}", { label = "Player modifiers", modName = "EnemyFreezeDuration", cfg = "skill" }, { label = "Enemy modifiers", modName = "SelfFreezeDuration", enemy = true }, }, },
	{ label = "Stun Thresh. Mod", { format = "x {2:output:EnemyStunThresholdMod}", { modName = "EnemyStunThreshold", cfg = "skill" }, }, },
	{ label = "Stun Duration", { format = "{2:output:EnemyStunDuration}s", { breakdown = "EnemyStunDuration" }, { label = "Player modifiers", modName = { "EnemyStunDuration" }, cfg = "skill" }, { label = "Enemy modifiers", modName = { "StunRecovery" }, enemy = true }, }, },
} },
{ 1, "Attributes", 2, "Attributes", data.colorCodes.NORMAL, {
	extra = data.colorCodes.STRENGTH.."{0:output:Str}^7, "..data.colorCodes.DEXTERITY.."{0:output:Dex}^7, "..data.colorCodes.INTELLIGENCE.."{0:output:Int}",
	{ label = "Strength", { format = "{0:output:Str}", { breakdown = "Str" }, { modName = "Str" }, }, },
	{ label = "Dexterity", { format = "{0:output:Dex}", { breakdown = "Dex" }, { modName = "Dex" }, }, },
	{ label = "Intelligence", { format = "{0:output:Int}", { breakdown = "Int" }, { modName = "Int" }, }, },
} },
{ 1, "Life", 2, "Life", data.colorCodes.DEFENCE, {
	extra = "{0:output:LifeUnreserved}/{0:output:Life}",
	{ label = "Base from Gear", { format = "{0:mod:1}", { modName = "Life", modType = "BASE", modSource = "Item" }, }, },
	{ label = "Inc. from Tree", { format = "{0:mod:1}%", { modName = "Life", modType = "INC", modSource = "Tree" }, }, },
	{ label = "Total Base", { format = "{0:mod:1}", { modName = "Life", modType = "BASE" }, }, },
	{ label = "Total Increased", { format = "{0:mod:1}%", { modName = "Life", modType = "INC", }, }, },
	{ label = "Total", { format = "{0:output:Life}", { breakdown = "Life" }, }, },
	{ label = "Reserved", { format = "{0:output:LifeReserved} ({0:output:LifeReservedPercent}%)", { breakdown = "LifeReserved" }, }, },
	{ label = "Unreserved", { format = "{0:output:LifeUnreserved} ({0:output:LifeUnreservedPercent}%)" }, },
	{ label = "Regen", { format = "{1:output:LifeRegen} ({1:output:LifeRegenPercent}%)", { modName = { "LifeRegen", "LifeRegenPercent" }, modType = "BASE" }, }, },
} },
{ 1, "Mana", 2, "Mana", data.colorCodes.DEFENCE, {
	extra = "{0:output:ManaUnreserved}/{0:output:Mana}",
	{ label = "Base from Gear", { format = "{0:mod:1}", { modName = "Mana", modType = "BASE", modSource = "Item" }, }, },
	{ label = "Inc. from Tree", { format = "{0:mod:1}%", { modName = "Mana", modType = "INC", modSource = "Tree" }, }, },
	{ label = "Total Base", { format = "{0:mod:1}", { modName = "Mana", modType = "BASE" }, }, },
	{ label = "Total Increased", { format = "{0:mod:1}%", { modName = "Mana", modType = "INC" }, }, },
	{ label = "Total", { format = "{0:output:Mana}", { breakdown = "Mana" }, }, },
	{ label = "Reserved", { format = "{0:output:ManaReserved} ({0:output:ManaReservedPercent}%)", { breakdown = "ManaReserved" }, }, },
	{ label = "Unreserved", { format = "{0:output:ManaUnreserved} ({0:output:ManaUnreservedPercent}%)" }, },
	{ label = "Base Regen", { format = "{1:mod:1}", { modName = "ManaRegen", modType = "BASE" }, }, },
	{ label = "Increased Regen", { format = "{0:mod:1}%", { modName = "ManaRegen", modType = "INC" }, }, },
	{ label = "Regen", { format = "{1:output:ManaRegen}", { breakdown = "ManaRegen" }, }, },
} },
{ 1, "EnergyShield", 2, "Energy Shield", data.colorCodes.DEFENCE, {
	extra = "{0:output:EnergyShield}",
	{ label = "Base from Armours", { format = "{0:output:Gear:EnergyShield}", }, },
	{ label = "Global Base", { format = "{0:mod:1}", { modName = "EnergyShield", modType = "BASE" }, }, },
	{ label = "Inc. from Tree", { format = "{0:mod:1}%", { modName = "EnergyShield", modType = "INC", modSource = "Tree" }, }, },
	{ label = "Total Increased", { format = "{0:mod:1}%", { modName = { "EnergyShield", "Defences" }, modType = "INC" }, }, },
	{ label = "Total More", { format = "{0:mod:1}%", { modName = { "EnergyShield", "Defences" }, modType = "MORE" }, }, },
	{ label = "Total", { format = "{0:output:EnergyShield}", { breakdown = "EnergyShield" }, }, },
	{ label = "Recharge Rate", { format = "{1:output:EnergyShieldRecharge}", { breakdown = "EnergyShieldRecharge" }, { modName = { "EnergyShieldRecharge", "EnergyShieldRecovery" }, }, }, },
	{ label = "Recharge Delay", { format = "{2:output:EnergyShieldRechargeDelay}s", { breakdown = "EnergyShieldRechargeDelay" }, { modName = "EnergyShieldRechargeFaster" }, }, },
	{ label = "Regen", { format = "{1:output:EnergyShieldRegen} ({1:output:EnergyShieldRegenPercent}%)", { modName = { "EnergyShieldRegen", "EnergyShieldRegenPercent", "EnergyShieldRecovery" }, modType = "BASE" }, }, },
} },
{ 1, "Armour", 3, "Armour", data.colorCodes.DEFENCE, {
	extra = "{0:output:Armour}",
	{ label = "Base from Armours", { format = "{0:output:Gear:Armour}" }, },
	{ label = "Global Base", { format = "{0:mod:1}", { modName = "Armour", modType = "BASE" }, }, },
	{ label = "Inc. from Tree", { format = "{0:mod:1}%", { modName = { "Armour", "ArmourAndEvasion" }, modType = "INC", modSource = "Tree", }, }, },
	{ label = "Total Increased", { format = "{0:mod:1}%", { modName = { "Armour", "ArmourAndEvasion", "Defences" }, modType = "INC" }, }, },
	{ label = "Total More", { format = "{0:mod:1}%", { modName = { "Armour", "ArmourAndEvasion", "Defences" }, modType = "MORE" }, }, },
	{ label = "Total", { format = "{0:output:Armour}", { breakdown = "Armour" }, }, },
} },
{ 1, "Evasion", 3, "Evasion", data.colorCodes.DEFENCE, {
	extra = "{0:output:Evasion}",
	{ label = "Base from Armours", { format = "{0:output:Gear:Evasion}", }, },
	{ label = "Global Base", { format = "{0:mod:1}", { modName = "Evasion", modType = "BASE" }, }, },
	{ label = "Inc. from Tree", { format = "{0:mod:1}%", { modName = { "Evasion", "ArmourAndEvasion" }, modType = "INC", modSource = "Tree" }, }, },
	{ label = "Total Increased", { format = "{0:mod:1}%", { modName = { "Evasion", "ArmourAndEvasion", "Defences" }, modType = "INC" }, }, },
	{ label = "Total More", { format = "{0:mod:1}%", { modName = { "Evasion", "ArmourAndEvasion", "Defences" }, modType = "MORE" }, }, },
	{ label = "Total", { format = "{0:output:Evasion}", { breakdown = "Evasion" }, }, },
	{ label = "Evade Chance", { format = "{0:output:EvadeChance}%", { breakdown = "EvadeChance" }, { modName = { "CannotEvade" } }, { label = "Enemy Accuracy modifiers", modName = "Accuracy", enemy = true }, }, },
} },
{ 1, "Resist", 3, "Resists", data.colorCodes.DEFENCE, {
	extra = data.colorCodes.FIRE.."{0:output:FireResist}+{0:output:FireResistOverCap}^7/"..data.colorCodes.COLD.."{0:output:ColdResist}+{0:output:ColdResistOverCap}^7/"..data.colorCodes.LIGHTNING.."{0:output:LightningResist}+{0:output:LightningResistOverCap}",
	{ label = "Fire Resist", { format = "{0:output:FireResist}% (+{0:output:FireResistOverCap}%)", { breakdown = "FireResist" }, { modName = { "FireResistMax", "FireResist", "ElementalResist" }, }, }, },
	{ label = "Cold Resist", { format = "{0:output:ColdResist}% (+{0:output:ColdResistOverCap}%)", { breakdown = "ColdResist" }, { modName = { "ColdResistMax", "ColdResist", "ElementalResist" }, }, }, },
	{ label = "Lightning Resist", { format = "{0:output:LightningResist}% (+{0:output:LightningResistOverCap}%)", { breakdown = "LightningResist" }, { modName = { "LightningResistMax", "LightningResist", "ElementalResist" }, }, }, },
	{ label = "Chaos Resist", { format = "{0:output:ChaosResist}% (+{0:output:ChaosResistOverCap}%)", { breakdown = "ChaosResist" }, { modName = { "ChaosResistMax", "ChaosResist" }, }, }, },
} },
{ 1, "MiscDefences", 3, "Other Defences", data.colorCodes.DEFENCE, {
	{ label = "Dodge Chance", { format = "{0:output:AttackDodgeChance}%", { modName = "AttackDodgeChance" }, }, },
	{ label = "Spell Ddg. Chance", { format = "{0:output:SpellDodgeChance}%", { modName = "SpellDodgeChance" }, }, }, 
	{ label = "Block Chance", { format = "{0:output:BlockChance}%", { breakdown = "BlockChance" }, { modName = "BlockChance" }, }, },
	{ label = "Spell Block Chance", { format = "{0:output:SpellBlockChance}%", { breakdown = "SpellBlockChance" }, { modName = { "SpellBlockChance", "BlockChanceConv" }, }, }, },
	{ label = "Stun Avoid Chance", { format = "{0:output:StunAvoidChance}%", { modName = "AvoidStun" }, }, },
	{ label = "Stun Duration", { format = "{2:output:StunDuration}s", { breakdown = "StunDuration" }, { modName = "StunRecovery" }, }, },
	{ label = "Block Duration", { format = "{2:output:BlockDuration}s", { breakdown = "BlockDuration" }, { modName = { "StunRecovery", "BlockRecovery" }, }, }, },
} },
}