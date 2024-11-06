-- phonograph_album_elm_shadow/init.lua
-- Songs composed by Elm Shadow for Phonographs
-- Copyright (C) 2024  1F616EMO
-- SPDX-License-Identifier: LGPL-2.1-or-later

assert(phonograph.send_song,
    "Please upgrade your Phonograph mod to commit f689f79 or later.")

local S = minetest.get_translator("phonograph_album_elm_shadow")

local MP = minetest.get_modpath("phonograph_album_elm_shadow")
local function songpath(name)
    return table.concat({ MP, "phonographs", "phonograph_album_elm_shadow_" .. name .. ".ogg" }, DIR_DELIM)
end

local album = phonograph.register_album("phonograph_album_elm_shadow:elm_shadow", {
    title = "Elm Shadow's Collection",
    short_description = S("Songs composed by Elm Shadow"),
    long_description = nil,
    cover = nil, -- use default cover for now
    artist = "Elm Shadow",
    license = phonograph.licenses.CCBYSA4,
})

album:register_song("black_bass_blues", {
    title = "Back Bass Blues",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("black_bass_blues"),
    spec = {},
})
