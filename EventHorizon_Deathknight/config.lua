function EventHorizon:InitializeClass()
	
	self.config.gcdSpellID = 49895
	
	-- General rotation
	
	-- Icy Touch
	self:NewSpell({
		spellID = 55095,
		debuff = true,
		refreshable = true,
		dot = 3,
	})
	
	-- Plague Strike
	self:NewSpell({
		spellID = 55078,
		debuff = true,
		refreshable = true,
		dot = 3,
	})
	
	-- Blood Tap
	self:NewSpell({
		spellID = 45529,
		playerbuff = true,
		cooldown = true,
		requiredLevel = 64,
	})
	
	-- Blood tree (no requiredTalent entries until trees are more solid)
	
	-- Rune Tap
	self:NewSpell({
		spellID = 48982,
		cooldown = true,
		requiredTree = 1,
	})
	
	-- Vampiric Blood
	self:NewSpell({
		spellID = 55233,
		playerbuff = true,
		cooldown = true,
		requiredTree = 1,
	})
	
	-- Bone Shield
	self:NewSpell({
		spellID = 49222,
		playerbuff = true,
		cooldown = true,
		requiredTree = 1,
	})
	
	-- Dancing Rune Weapon
	self:NewSpell({
		spellID = 49028,
		cooldown = true,
		requiredTree = 1,
	})
	
	-- Frost tree (again, no requiredTalents yet)
	
	-- Rime
	self:NewSpell({
		spellID = 59052,
		playerbuff = true,
		requiredTree = 2,
	})
	
	-- Pillar of Frost
	self:NewSpell({
		spellID = 51271,
		playerbuff = true,
		cooldown = true,
		requiredTree = 2,
	})
	
	-- Unholy tree
	
	-- Unholy Blight
	self:NewSpell({
		spellID = 50536,
		debuff = true,
		requiredTree = 3,
	})
	
	-- Sudden Doom
	self:NewSpell({
		spellID = 81340,
		playerbuff = true,
		requiredTree = 2,
	})
	
	-- Shadow Infusion + Dark Transformation (Yes, they're exclusive)
	self:NewSpell({
		spellID = 91342,
		playerbuff = {91342,63560},
		auraunit = 'pet',
		requiredTree = 2,
	})
end