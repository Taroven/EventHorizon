local usemouseover = true	-- Make this false or nil (or just delete the line altogether) to make your healing bars not change when you mouse over something.

function EventHorizon:InitializeClass()
	self.config.gcdSpellID = 52127 -- Water Shield
	self.config.hastedSpellID = {2008,10} -- Ancestral Spirit
	
	-- General
	
	-- Unleash Elements
	self:NewSpell({
		spellID = 73680,
		cooldown = true,
		requiredTree = {1,3},
		requiredLevel = 81,
	})
	
	-- Flame Shock
	self:NewSpell({
		spellID = 8050,
		debuff = true,
		cooldown = true,
		requiredTree = {0,1,2},
		requiredLevel = 5,
	})
	
	-- Elemental
	
	-- Lava Burst
	self:NewSpell({
		spellID = 51505,
		cast = true,
		cooldown = true,
		requiredTree = 1,
		requiredLevel = 34,
	})
	
	-- Lightning Bolt + Chain Lightning + Earthquake + Lightning Shield Charges (minstacks 4)
	self:NewSpell({
		spellID = 403,
		cast = {403,421},
		channeled = 61882,
		numhits = 0,
		cooldown = 421,
		playerbuff = 324,
		minstacks = 4,
		requiredTree = {0,1},
	})
	
	-- Elemental Mastery
	self:NewSpell({
		spellID = 16166,
		cooldown = true,
		playerbuff = true,
		requiredTree = 1,
		requiredLevel = 49,
	})
	
	-- Enhancement
	
	-- Maelstrom + Unleash Elements
	self:NewSpell({
		spellID = 53817,
		cooldown = 73680,
		playerbuff = true,
		requiredTree = 2,
		requiredLevel = 59,
	})
	
	-- Stormstrike / Primal Strike
	self:NewSpell({
		spellID = 17364,
		debuff = true,
		cooldown = true,
		requiredTree = {0,2}
	})
	
	-- Lava Lash (will add Searing Flames when the spellID is known)
	self:NewSpell({
		spellID = 60103,
		cooldown = true,
		requiredTree = 2,
	})
	
	-- Resto
	
	-- Riptide
	self:NewSpell({
		spellID = 61295,
		playerbuff = true,
		cooldown = true,
		dot = 3,
		hasted = true,
		requiredTree = 3,
		requiredLevel = 69,			
	})
	
	-- Single Target Heals + Offensive Casts + Shock CD + Focused Insight
	self:NewSpell({
		spellID = 331,
		cast = {331,8004,77472,403,421,51505},
		cooldown = 8042,
		playerbuff = 77800,
		requiredTree = 3,
	})
	
	-- AoE Heals + Tidal Waves
	self:NewSpell({
		spellID = 1064,
		cast = {1064,73920},
		cooldown = 73920,
		playerbuff = 51562,
		auraunit = usemouseover and 'mouseover' or 'target',
		requiredTree = 3,
		requiredLevel = 40,
	})
	
	-- Earth Shield
	self:NewSpell({
		spellID = 974,
		playerbuff = true,
		auraunit = usemouseover and 'mouseover' or 'target',
		requiredTree = 3,
	})
	
	-- Tertiaries
	
	-- Fire Nova
	self:NewSpell({
		spellID = 1535,
		playerbuff = 16246,
		cooldown = true,
		requiredTree = {1,2},
		requiredLevel = 28,
	})
	
	-- Thunderstorm
	self:NewSpell({
		spellID = 51490,
		cooldown = true,
		requiredTree = 1,
	})
	


end
