function EventHorizon:InitializeClass()
	self.config.gcdSpellID = 118 -- Polymorph
	self.config.hastedSpellID = {118,1.7}

	-- Casts + Hot Streak + Brain Freeze + AM (exclusive anyway)
	self:NewSpell({
		spellID = 133,
		cast = {11366,133,116,44614,2948,82731},
		channeled = 5143,
		numhits = 0,
		playerbuff = {48108,57761,79683},
		refreshable = true,
	})
	
	-- Arcane
	
	-- Arcane Blast + AB [de]buff + ABar CD
	self:NewSpell({
		spellID = 30451,
		debuff = 36032,
		cooldown = 44425,
		auraunit = 'player',
		refreshable = true,
		cast = true,
		requiredTree = 1,
	})
	
	-- Arcane Power
	self:NewSpell({
		spellID = 12042,
		playerbuff = true,
		cooldown = true,
		requiredTree = 1,
		requiredLevel = 69,
	})
	
	-- Presence of Mind
	self:NewSpell({
		spellID = 12043,
		playerbuff = true,
		cooldown = true,
		requiredTree = 1,
	})
	
	-- Fire
	
	-- Fire Blast + Impact
	self:NewSpell({
		spellID = 2136,
		playerbuff = 64343,
		cooldown = true,
		requiredTree = {0,2},
	})
	
	-- Living Bomb
	self:NewSpell({
		spellID = 44457,
		debuff = true,
		dot = 3,
		hasted = true,
		requiredTree = 2,
		requiredLevel = 69,
	})
	
	-- Frost
	
	-- Deep Freeze + Fingers of Frost
	self:NewSpell({
		spellID = 44572,
		playerbuff = 44544,
		cooldown = true,
		requiredTree = 3,
	})
	
	-- Icy Veins
	self:NewSpell({
		spellID = 12472,
		playerbuff = true,
		cooldown = true,
		requiredTree = 3,
	})
end
