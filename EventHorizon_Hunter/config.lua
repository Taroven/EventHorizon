function EventHorizon:InitializeClass()
	self.config.gcdSpellID = 1978
	self.config.hastedSpellID = {56641,2} -- Steady Shot (Note: This probably isn't needed at all for Hunters, but it's here just in case)
	
	-- Serpent Sting
	self:NewSpell({
		spellID = 1978,
		debuff = true,
		dot = 3,
		refreshable = true,
	})
	
	-- Black Arrow
	self:NewSpell({
		spellID = 3674,
		debuff = true,
		cooldown = true,
		dot = 3,
		requiredTree = 3,
		requiredLevel = 69,
	})
	
	-- Explosive Shot
	self:NewSpell({
		spellID = 53301,
		debuff = true,
		cooldown = true,
		dot = 1,
		requiredTree = 3,
	})
	
	-- Chimaera Shot
	self:NewSpell({
		spellID = 53209,
		cast = 19434,
		cooldown = true,
		playerbuff = {82925,82926}, -- "Ready, Set, Aim..." + "Fire!"
		requiredTree = 2,
		requiredLevel = 69,
	})
	
	-- Kill Command + Killing Streak
	self:NewSpell({
		spellID = 34026,
		playerbuff = 94007,
		cooldown = true,
		requiredTree = 1,
	})
	
	-- Steady/Cobra + Improved Steady Shot
	self:NewSpell({
		spellID = 56641,
		cast = {56641,77767},
		playerbuff = 53220,
		recast = true,
	})
	
	-- Frenzy + Focus Fire (FF buff has the same duration as CD, no real reason to track it)
	self:NewSpell({
		spellID = 19615,
		playerbuff = true,
		cooldown = 82692,
		auraunit = 'pet',
		unique = true,
		refreshable = true,
		--minstacks = 5,
		requiredTalent = {1,10},
	})
	
	-- Bestial Wrath
	self:NewSpell({
		spellID = 19574,
		playerbuff = 34471,
		cooldown = true,
		requiredTree = 1,
		requiredLevel = 49,
	})
	
end