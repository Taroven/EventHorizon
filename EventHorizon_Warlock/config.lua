function EventHorizon:InitializeClass()
	self.config.gcdSpellID = 686
	self.config.hastedSpellID = {6201,3} -- Create Healthstone
	self.config.nonAffectingHaste = {64371,1.2}
	
	-- Soulburn
	self:NewSpell({
		spellID = 74434,
		cooldown = true,
		playerbuff = true,
		requiredLevel = 10,
	})
	
	-- Affliction
	
	-- Haunt
	self:NewSpell({
		spellID = 48181,
		cast = true,
		debuff = true,
		cooldown = true,
		requiredTree = 1,
		requiredLevel = 69,
	})
	
	-- Unstable Affliction
	self:NewSpell({
		spellID = 30108,
		cast = true,
		debuff = true,
		dot = 3,
		hasted = true,
		refreshable = true,
		requiredTree = 1,
	})
	
	-- Metamorphosis
	self:NewSpell({
		spellID = 47241,
		playerbuff = true,
		cooldown = true,
		requiredTree = 2,
		requiredLevel = 69,
	})
	
	-- Hand of Gul'dan + Decimation (for lack of a better spot)
	self:NewSpell({
		spellID = 71521,
		playerbuff = 63165,
		cooldown = true,
		cast = true,
		requiredTree = 2,
		requiredLevel = 39,
	})
	
	-- Immolate (Destro + Demo)
	self:NewSpell({
		spellID = 348,
		debuff = true,
		cast = true,
		hasted = true,
		dot = 3,
		refreshable = true,
		requiredTree = {0,2,3},
		requiredLevel = 3,
	})
	
	-- [Seed of] Corruption
	self:NewSpell({
		spellID = 172,
		debuff = {172,27243},
		icon = 172,
		cast = 27243,
		dot = 3,
		hasted = true,
		refreshable = true,
		requiredLevel = 4,
	})
	
	-- Conflagrate
	self:NewSpell({
		spellID = 17962,
		cooldown = true,
		playerbuff = 54274,
		requiredTree = 3,
	})
	
	-- General/Etc
	
	-- Aff Filler
	self:NewSpell({
		spellID = 689,
		cast = {686,5676,5782,6353,29722},
		channeled = {{689,0},{1120,0},{79268,0},{5740,0},{1949,0}},
		debuff = 32386, -- Shadow Embrace
		requiredTree = 1,
	})
	
	-- Filler
	self:NewSpell({
		spellID = 686,
		cast = {686,5676,5782,6353,29722,50796},
		channeled = {{689,0},{1120,0},{79268,0},{5740,0},{1949,0}},
		cooldown = 50796,
		playerbuff = {47383,61189}, -- Molten Core, "Soul Fire!"
		requiredTree = {0,2,3},
	})
	
	-- Bane
	self:NewSpell({
		spellID = 980,
		debuff = {980,603,80240},
		dot = 2,
		refreshable = true,
		hasted = true,
		requiredLevel = 8,
	})
	
	--[[ Curse
	self:NewSpell({
		spellID = 1490,
		debuff = {702,1714,1490},
		requiredLevel = 16,
	})]]--
	
	-- Immolation Aura
	self:NewSpell({
		spellID = 50589,
		playerbuff = true,
		cooldown = true,
		stance = 2,
		requiredTree = 2,
	})
end
