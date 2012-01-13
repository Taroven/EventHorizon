local usemouseover = true	-- Make this false or nil (or just delete the line altogether) to make your healing bars not change when you mouse over something.

function EventHorizon:InitializeClass()
	self.config.gcdSpellID = 1082
	self.config.hastedSpellID = {50769,10} -- Revive
	
	-- Kitty bars
	
	-- Mangle / Bleed damage debuff (god this sucked to look up...) - Also appears in bear form.
	self:NewSpell({
		spellID = 33878,
		debuff = {35290,50271,30070,16511,33878,33876},
		unique = true,
		refreshable = true,
		cooldown = true,
		stance = {1,3},
		requiredTree = 2,
	})
	
	-- Rip 
	self:NewSpell({
		spellID = 1079,
		debuff = true,
		refreshable = true,
		dot = 2,
		stance = 3,
		requiredTree = 2,
		requiredLevel = 54,
	})
	
	-- Rake
	self:NewSpell({
		spellID = 1822,
		debuff = true,
		refreshable = true,
		dot = 3,
		stance = 3,
		requiredTree = 2,
	})
	
	-- Savage Roar
	self:NewSpell({
		spellID = 52610,
		playerbuff = true,
		stance = 3,
		requiredTree = 2,
		requiredLevel = 75,
	})
	
	-- Tiger's Fury
	self:NewSpell({
		spellID = 5217,
		cooldown = true,
		playerbuff = true,
		stance = 3,
		requiredTree = 2,
		requiredLevel = 24,
	})	
		
	-- Berserk
	self:NewSpell({
		spellID = 50334,
		playerbuff = true,
		cooldown = true,
		stance = 3,
		requiredTree = 2,
		requiredLevel = 69,
	})
	
	-- Bear bars
	
	-- Lacerate
	self:NewSpell({
		spellID = 33745,
		debuff = true,
		refreshable = true,
		cooldown = 77758,
		dot = 3,
		stance = 1,
		requiredTree = 2,
		requiredLevel = 66,
	})
	
	-- Pulverize
	self:NewSpell({
		spellID = 80313,
		cooldown = 779,
		playerbuff = true,	-- Need spellID? No idea.
		refreshable = true,
		stance = 1,
		--requiredTalent = {2,21},
	})
	
	--[[ Enrage
	self:NewSpell({
		spellID = 5229,
		playerbuff = true,
		cooldown = true,
		stance = 1,
		requiredTree = 2,
		requiredLevel = 22,
	})
	]]--
	
	-- Barkskin
	self:NewSpell({
		spellID = 22812,
		playerbuff = true,
		cooldown = true,
		stance = 1,
		requiredTree = 2,
		requiredLevel = 58,
	})
	
	-- Balance bars - NOTE: Untalented Druids will see some of these.
	
	-- Starsurge
	self:NewSpell({
		spellID = 78674,
		cast = true,
		cooldown = true,
		playerbuff = 93400, -- Shooting Stars
		requiredTree = 1,
	})
	
	-- Wrath
	self:NewSpell({
		spellID = 5176,
		playerbuff = 48517,
		cast = true,
		requiredTree = {0,1},
	})
	
	-- Starfire
	self:NewSpell({
		spellID = 2912,
		playerbuff = 48518,
		cast = true,
		requiredLevel = 8,
		requiredTree = {0,1},
	})
	
	-- [Sun/Moon]fire
	self:NewSpell({
		spellID = 8921,
		debuff = {8921,93402},
		hasted = true,
		refreshable = true,
		requiredLevel = 4,
		requiredTree = {0,1},
	})
	
	-- Insect Swarm
	self:NewSpell({
		spellID = 5570,
		debuff = true,
		hasted = true,
		refreshable = true,
		requiredLevel = 20,
		requiredTree = 1,
	})
	
	-- Starfall
	self:NewSpell({
		spellID = 48505,
		playerbuff = true,
		cooldown = true,
		requiredLevel = 69,
		requiredTree = 1,
	})
	
	-- Typhoon
	self:NewSpell({
		spellID = 50516,
		cooldown = true,
		requiredLevel = 29,
		requiredTree = 1,
	})
	
	-- Resto bars
	
	-- Lifebloom
	self:NewSpell({
		spellID = 33763,
		playerbuff = true,
		auraunit = usemouseover and 'mouseover' or 'target',
		dot = 1,
		hasted = true,
		refreshable = true,
		requiredLevel = 64,
		requiredTree = 3,
	})
	
	-- Rejuvenation + Swiftmend
	self:NewSpell({
		spellID = 774,
		playerbuff = true,
		cooldown = 18562,
		auraunit = usemouseover and 'mouseover' or 'target',
		dot = 3,
		hasted = true,
		requiredTree = 3,
	})
	
	-- Casted Heals + Nature's Swiftness
	self:NewSpell({
		spellID = 8936,
		cast = {8936,5185,50464},
		cooldown = 17116,
		playerbuff = true,
		auraunit = usemouseover and 'mouseover' or 'target',
		dot = 2,
		hasted = true,
		requiredTree = 3,
	})
	
	-- Tree of Life
	self:NewSpell({
		spellID = 33891,
		cooldown = true,
		playerbuff = true,
		requiredTree = 3,
		requiredLevel = 69,
	})
end