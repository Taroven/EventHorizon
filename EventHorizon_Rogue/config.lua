function EventHorizon:InitializeClass()
	self.config.gcdSpellID = 1752
	
	-- General
	
	-- Slice and Dice
	self:NewSpell({
		spellID = 5171,
		playerbuff = true,
		refreshable = true,
		requiredLevel = 22,
	})
	
	-- Recouperate (Sub)
	self:NewSpell({
		spellID = 73651,
		playerbuff = true,
		dot = 3,
		refreshable = true,
		requiredTree = 3,
		requiredLevel = 12,
	})
	
	-- Rupture
	self:NewSpell({
		spellID = 1943,
		debuff = true,
		dot = 2,
		refreshable = true,
		requiredLevel = 46,
	})
	
	-- Assassination
	
	-- Envenom
	self:NewSpell({
		spellID = 32645,
		playerbuff = true,
		requiredTree = 1,
		requiredLevel = 54,
	})
	
	-- Combat
	
	-- Revealing Strike
	self:NewSpell({
		spellID = 84617,
		debuff = true,
		requiredTree = 2,
		requiredLevel = 29,
	})
	
	-- Killing Spree
	self:NewSpell({
		spellID = 51690,
		playerbuff = true,
		cooldown = true,
		requiredTree = 2,
		requiredLevel = 69,
	})
	
	-- Adrenaline Rush
	self:NewSpell({
		spellID = 13750,
		playerbuff = true,
		cooldown = true,
		requiredTree = 2,
		requiredLevel = 49,
	})
	
	--[[
	-- Blade Flurry
	self:NewSpell({
		spellID = 13877,
		playerbuff = true,
		cooldown = true,
		requiredTree = 2,
	})
	
	-- Bandit's Guile
	self:NewSpell({
		spellID = 84747,
		debuff = {84747,84746,84745},
		requiredTree = 2,
		requiredLevel = 59,
	})
	]]--
	-- Subtlety
	
	-- Hemo
	self:NewSpell({
		spellID = 16511,
		debuff = {35290,50271,30070,16511,33878,33876},
		unique = true,
		refreshable = true,
		requiredTree = 3,
		requiredLevel = 29,
	})
	
	-- Shadow Dance
	self:NewSpell({
		spellID = 51713,
		playerbuff = true,
		cooldown = true,
		requiredTree = 3,
		requiredLevel = 69,
	})
	
	-- Shadowstep
	self:NewSpell({
		spellID = 36554,
		playerbuff = 36563,
		uniqueID = 36563, -- Ambush/Garrote only
		cooldown = true,
		requiredTree = 3,
	})
	
	-- General/Bottom
	
	-- Deadly Poison
	self:NewSpell({
		spellID = 2818,
		debuff = true,
		refreshable = true,
		requiredLevel = 30,
	})
	
	
	-- Overkill
	self:NewSpell({
		spellID = 58426,
		playerbuff = true,
		requiredTree = 1,
		requiredLevel = 49,
	})

end
