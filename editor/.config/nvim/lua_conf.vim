lua << END
    local custom_gruvbox = require'lualine.themes.gruvbox'

    custom_gruvbox.normal.c.bg = '#1D2021'
    custom_gruvbox.normal.c.fg = '#EBDBB2'
    custom_gruvbox.insert.c.bg = '#1D2021'
    custom_gruvbox.insert.c.fg = '#32302F'
    custom_gruvbox.visual.c.bg = '#1D2021'
    custom_gruvbox.visual.c.fg = '#EBDBB2'
    custom_gruvbox.command.c.bg = '#1D2021'
    custom_gruvbox.command.c.fg = '#EBDBB2'

    custom_gruvbox.normal.b.bg = '#1D2021'
    custom_gruvbox.normal.b.fg = '#EBDBB2'
    custom_gruvbox.insert.b.bg = '#1D2021'
    custom_gruvbox.insert.b.fg = '#32302F'
    custom_gruvbox.visual.b.bg = '#1D2021'
    custom_gruvbox.visual.b.fg = '#EBDBB2'
    custom_gruvbox.command.b.bg = '#1D2021'
    custom_gruvbox.command.b.fg = '#EBDBB2'

    custom_gruvbox.normal.a.bg = '#1D2021'
    custom_gruvbox.normal.a.fg = '#EBDBB2'
    custom_gruvbox.insert.a.bg = '#1D2021'
    custom_gruvbox.insert.a.fg = '#FABD2F'
    custom_gruvbox.visual.a.bg = '#1D2021'
    custom_gruvbox.visual.a.fg = '#FE8019'
    custom_gruvbox.command.a.bg = '#1D2021'
    custom_gruvbox.command.a.fg = '#928374'

    local function ind()
        return [[█]]
    end
    local function sep()
        return [[┃]]
    end
    local function loc()
        return [[]]
    end
    
    require('lualine').setup {
        options = {
            icons_enabled = true,
            theme = 'gruvbox',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
        },
        sections = {
            lualine_a = { ind },
            lualine_b = { 'branch', sep },
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { sep, 'progress', 'location' },
            lualine_z = { ind }
        }
    }

    require('luatab').setup{}
    
END
