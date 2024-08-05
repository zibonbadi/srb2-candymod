-- Legal
print("\n\82" ..
	"\x83===================================================\n" ..
	"CandyMod v1.0 (c) 2024 Zibon \"PixL\" Badi\n" ..
	"This add-on is licensed under the GNU Affero GPLv3\n" ..
	"<https://www.gnu.org/licenses/agpl-3.0.en.html>\n" ..
	"===================================================\n"
	)

-- Rewire collectibles to use CTF sprites
states[S_RING] = {
        sprite = SPR_RRNG,
        frame = FF_ANIMATE|A,
        tics = -1,
        action = nil,
        var1 = 6,
        var2 = 1,
        nextstate = S_RING
}

local function candymod_colorize(mo)
-- Pick one at random
mo.color = P_RandomRange(1, #skincolors)
end

addHook("MobjSpawn", candymod_colorize, MT_RING)
addHook("MobjSpawn", candymod_colorize, MT_FLINGRING)
