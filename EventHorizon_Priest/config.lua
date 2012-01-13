local usemouseover = true	-- Make this false or nil (or just delete the line altogether) to make your healing bars not change when you mouse over something.

function EventHorizon:InitializeClass()
	self.config.gcdSpellID = 588 -- Inner Fire
	self.config.hastedSpellID = {2006,10} -- Resurrection
	
	-- Holy/Disc
	
	-- Renew
	self:NewSpell({
		spellID = 139,
		playerbuff = true,
		auraunit = usemouseover and 'mouseover' or 'target',
		refreshable = true,
		hasted = true,
		requiredTree = {0,1,2},
		requiredLevel = 8,
	})
	
	-- Casts + Serendipity / Borrowed Time
	self:NewSpell({
		spellID = 2061,
		cast = {585,2061,8092,2050,14914,9484,32546,8129,596,2061},
		playerbuff = {63731,59887},
		requiredTree = {0,1,2},
	})
	
	-- Discipline
	
	-- Penance + Grace
	self:NewSpell({
		spellID = 47540,
		playerbuff = 47930,
		channeled = true,
		numhits = 0,
		cooldown = true,
		refreshable = true,
		auraunit = usemouseover and 'mouseover' or 'target',
		requiredTree = 1,
	})
	
	-- Weakened Soul
	self:NewSpell({
		spellID = 6788,
		debuff = true,
		auraunit = usemouseover and 'mouseover' or 'target',
		requiredTree = 1,
	})
	
	-- Holy
	
	-- Holy Word: Chastise + Chakra effects
	self:NewSpell({
		spellID = 88625,
		playerbuff = {88682,88684},
		auraunit = usemouseover and 'mouseover' or 'target',
		cooldown = true,
		requiredTree = 2,
	})
	
	-- Circle of Healing
	self:NewSpell({
		spellID = 34861,
		playerbuff = 88689,
		cooldown = true,
		requiredTree = 2,
		requiredLevel = 59,
	})
	
	-- Chakra
	self:NewSpell({
		spellID = 14751,
		playerbuff = {81207,81209,81206,81208},
		cooldown = true,
		requiredTree = 2,
		requiredLevel = 49,
	})
	
	
	-- Shadow
	
	-- Devouring Plague + Shadowfiend
	self:NewSpell({
		spellID = 2944,
		debuff = true,
		dot = 3,
		hasted = true,
		refreshable = true,
		cooldown = 34433,
		smallCooldown = true,
		requiredTree = 3,
		requiredLevel = 28,
	})
	
	-- Shadow Word: Pain
	self:NewSpell({
		spellID = 589,
		debuff = true,
		dot = 3,
		hasted = true,
		refreshable = true,
		requiredTree = 3,
	})
	
	-- Vampiric Touch
	self:NewSpell({
		spellID = 34914,
		debuff = true,
		cast = true,
		dot = 3,
		refreshable = true,
		hasted = true,
		requiredTree = 3,
		requiredLevel = 49,
	})
	
	-- Mind Blast/Spike/Melt
	self:NewSpell({
		spellID = 8092,
		cast = {8092,73510},
		cooldown = true,
		playerbuff = 81292,
		refreshable = true,
		requiredTree = 3,
	})
	
	-- Mind Flay/Sear + Shadow Word: Death + Orbs
	self:NewSpell({
		spellID = 15407,
		channeled = {{48045,0},{15407,0}},
		cooldown = 32379,
		playerbuff = 77487,
		refreshable = true,
		requiredTree = 3,
	})
	
	-- General
	
	-- [Dark] Evangelism/Archangel
	self:NewSpell({
		spellID = 81659,
		playerbuff = {87153,81700,87117,81660},
		cooldown = 87151,
		refreshable = true,
		requiredTalent = {1,4},
	})
end