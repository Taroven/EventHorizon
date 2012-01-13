function EventHorizon:InitializeClass()
	self.config.gcdSpellID = 772
	
	-- Colossus Smash
	self:NewSpell({
		spellID = 86346,
		cooldown = true,
		debuff = true,
		notstance = 2,
		requiredLevel = 81,
	})
	
	-- Rend
	self:NewSpell({
		spellID = 772,
		debuff = true,
		dot = 3,
		refreshable = true,
		notstance = 3,
		requiredLevel = 4,
	})
	
	-- Strike (Untalented)
	self:NewSpell({
		spellID = 88161,
		cooldown = true,
		requiredTree = 0,
	})
	
	-- Mortal Strike + Lambs to the Slaughter + Slam cast
	self:NewSpell({
		spellID = 12294,
		cooldown = true,
		playerbuff = 84584,
		cast = 1464,
		keepIcon = true,
		requiredTree = 1,
	})
	
	-- Raging Blow + Enrage effects
	self:NewSpell({
		spellID = 85288,
		playerbuff = {12880,18499,1134,12292}, -- Should pick whatever's first on the list, bar may jump
		cooldown = true,
		keepIcon = true,
		requiredTree = 2,
		requiredLevel = 39,
	})
	
	-- Bloodthirst + Bloodsurge
	self:NewSpell({
		spellID = 23881,
		playerbuff = 46916,
		keepIcon = true,
		cooldown = true,
		requiredTree = 2,
	})
	
	-- Shield Slam + Sword and Board
	self:NewSpell({
		spellID = 23922,
		playerbuff = 50227,
		cooldown = true,
		requiredTree = 3,
	})
	
	-- Revenge + Impending Victory
	self:NewSpell({
		spellID = 6572,
		playerbuff = 82368,
		cooldown = true,
		stance = 2,
		requiredLevel = 40,
	})
	
	-- Shield Block
	self:NewSpell({
		spellID = 2565,
		playerbuff = true,
		cooldown = true,
		stance = 2,
		requiredLevel = 28,
	})
	
	-- Shockwave + Thunderstruck
	self:NewSpell({
		spellID = 46968,
		playerbuff = 87095,
		cooldown = true,
		requiredTree = 3,
		requiredLevel = 69,
	})
	
	-- Thunder Clap (not bothering with similar effects for now)
	self:NewSpell({
		spellID = 6343,
		cooldown = true,
		debuff = true,
		unique = true,
		notstance = 3,
		requiredTree = {0,3},
		requiredLevel = 6,
	})
	
	-- Demoralizing Shout
	self:NewSpell({
		spellID = 1160,
		debuff = true,
		unique = true,
		requiredTree = 3,
		requiredLevel = 52,
	})
	
	-- Whirlwind + Meat Cleaver
	self:NewSpell({
		spellID = 1680,
		cooldown = true,
		playerbuff = 85738,
		keepIcon = true,
		stance = 3,
		requiredLevel = 36,
	})
	
	-- Taste for Blood
	self:NewSpell({
		spellID = 60503,
		playerbuff = true,
		internalcooldown = 6,
		notstance = 3,
		requiredTalent = {1,8},
	})
		
	-- HS/Cleave + Incite
	self:NewSpell({
		spellID = 78,
		cooldown = true,
		playerbuff = 86627,
		keepIcon = true,
		requiredLevel = 14,
	})
	
	-- Shouts
	self:NewSpell({
		spellID = 6673,
		cooldown = true,
		playerbuff = {6673,469},
		unique = true,
		requiredLevel = 32,
	})
	
	-- Deadly Calm
	self:NewSpell({
		spellID = 85730,
		cooldown = true,
		playerbuff = true,
		requiredTree = 1,
		requiredLevel = 39,
	})
	
end
