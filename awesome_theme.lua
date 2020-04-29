---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font          = "sans bold 8"

-- Very dark, low contrast

--theme.fg_normal     = "#264f33"
--theme.bg_normal     = "#191919"

--theme.bg_systray    = theme.bg_normal

--theme.fg_focus      = "#416530"
--theme.bg_focus      = "#101010"

--theme.bg_minimize   = "#191919"
--theme.fg_minimize   = "#3a3a3a"

--theme.bg_urgent     = "#ff0000"
--theme.fg_urgent     = "#ffffff"


-- Dark, medium contrast

theme.fg_focus      = "#3d8079"
theme.bg_focus      = "#000000"

theme.fg_normal     = "#4a7337"
theme.bg_normal     = "#1f1f1f"

theme.fg_minimize   = "#505050"
theme.bg_minimize   = "#191919"

theme.bg_systray    = theme.bg_normal

theme.bg_urgent     = "#ff0000"
theme.fg_urgent     = "#ffffff"


-- Light, low contrast
--
--theme.fg_focus      = "#155473"
--theme.bg_focus      = "#8b8b8b"

--theme.fg_normal     = "#105911"
--theme.bg_normal     = "#808080"

--theme.fg_minimize   = "#191919"
--theme.bg_minimize   = "#bbbbbb"

--theme.bg_systray    = theme.bg_normal

--theme.bg_urgent     = "#813198"
--theme.fg_urgent     = "#8b8b8b"


---- Light
--
----theme.fg_focus      = "#4c993d"
----theme.bg_focus      = "#dddddd"
----
----theme.fg_focus     = "#055e80"
----theme.bg_focus     = "#c2cacc"
----
--theme.fg_focus     = "#055e80"
--theme.bg_focus     = "#ced7d9"
--
----theme.fg_normal     = "#06729a"
----theme.bg_normal     = "#bbbbbb"
----
----theme.fg_normal     = "#10660c"
----theme.bg_normal     = "#c2ccc3"
----
--theme.fg_normal     = "#10660c"
--theme.bg_normal     = "#b8ccba"
--
--theme.fg_minimize   = "#191919"
----theme.bg_minimize   = "#bbbbbb"
--theme.bg_minimize   = "#aab3aa"
--
--theme.bg_systray    = theme.bg_normal
--
--theme.bg_urgent     = "#813198"
--theme.fg_urgent     = "#8b8b8b"


-- Common

theme.border_width  = 1
theme.border_normal = "#000000"
theme.border_focus  = "#262626"
theme.border_marked = "#a21100"


-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "~/.config/awesome/theme/taglist/squarefw.png"
theme.taglist_squares_unsel = "~/.config/awesome/theme/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "~/.config/awesome/theme/submenu.png"
theme.menu_height = 15
theme.menu_width  = 150

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "~/.config/awesome/theme/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "~/.config/awesome/theme/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "~/.config/awesome/theme/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "~/.config/awesome/theme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active   = "~/.config/awesome/theme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active    = "~/.config/awesome/theme/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "~/.config/awesome/theme/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "~/.config/awesome/theme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active   = "~/.config/awesome/theme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active    = "~/.config/awesome/theme/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "~/.config/awesome/theme/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "~/.config/awesome/theme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active   = "~/.config/awesome/theme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active    = "~/.config/awesome/theme/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "~/.config/awesome/theme/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "~/.config/awesome/theme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = "~/.config/awesome/theme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = "~/.config/awesome/theme/titlebar/maximized_focus_active.png"

--theme.wallpaper = "/usr/share/awesome/themes/default/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh      = "/usr/share/awesome/themes/default/layouts/fairhw.png"
theme.layout_fairv      = "/usr/share/awesome/themes/default/layouts/fairvw.png"
theme.layout_floating   = "/usr/share/awesome/themes/default/layouts/floatingw.png"
theme.layout_magnifier  = "/usr/share/awesome/themes/default/layouts/magnifierw.png"
theme.layout_max        = "/usr/share/awesome/themes/default/layouts/maxw.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/default/layouts/fullscreenw.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/default/layouts/tilebottomw.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/default/layouts/tileleftw.png"
theme.layout_tile       = "/usr/share/awesome/themes/default/layouts/tilew.png"
theme.layout_tiletop    = "/usr/share/awesome/themes/default/layouts/tiletopw.png"
theme.layout_spiral     = "/usr/share/awesome/themes/default/layouts/spiralw.png"
theme.layout_dwindle    = "/usr/share/awesome/themes/default/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
