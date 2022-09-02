config.load_autoconfig()

# time until downloads get removed in ms
c.downloads.remove_finished = -1

# pass
config.bind('pw', 'spawn --userscript qute-pass --dmenu-invocation dmenu')
config.bind('Pw', 'spawn --userscript qute-pass --dmenu-invocation dmenu --password-only')

# watch youtube with mpv
config.bind('Xo', 'spawn mpv {url}')
config.bind('XO', 'hint links spawn mpv {hint-url}')

# spellcheck
c.spellcheck.languages = ["en-US"]

# editor command
c.editor.command=['kitty','-e','nvim', "{}", "+call cursor({line}, {column})"]

# minimize fingerprint
#  c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; rv:80.0) Gecko/20200101 Firefox/81.0"
#  c.content.headers.accept_language = "en-US,en;q=0.5"
#  c.content.headers.custom = {"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}
#  c.content.canvas_reading = True

# tabs
c.tabs.position = "left"
c.tabs.width = "15%"
c.tabs.favicons.scale = 1.2
#  c.tabs.new_position.related = "last"
c.tabs.padding = {"bottom": 3, "left": 5, "right": 5, "top": 3}

# start pages
c.url.start_pages = ["https://reddit.com"]
c.url.start_pages.append("https://web.whatsapp.com")
c.url.start_pages.append("https://github.com")
c.url.start_pages.append("https://twitch.tv")
c.url.start_pages.append("https://nx488.your-storageshare.de")

# always restore last session
c.auto_save.session = True

# colors

base00 = "#222222"
base01 = "#aa0000"
base02 = "#5A9A00"
base03 = "#a58904"
base04 = "#185AD6"
base05 = "#9010cc"
base06 = "#107371"
base07 = "#b0b0b0"

base08 = "#033333"
base09 = "#dd0000"
base0A = "#79CF00"
base0B = "#e6a909"
base0C = "#387AE6"
base0D = "#b319ff"
base0E = "#29C5C5"
base0F = "#d0d0d0"

## Normal

# set qutebrowser colors

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = base07

# Background color of the completion widget for odd rows.
c.colors.completion.odd.bg = base00

# Background color of the completion widget for even rows.
c.colors.completion.even.bg = base00

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = base0D

# Background color of the completion widget category headers.
c.colors.completion.category.bg = base00

# Top border color of the completion widget category headers.
c.colors.completion.category.border.top = base00

# Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = base00

# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = base08

# Background color of the selected completion item.
c.colors.completion.item.selected.bg = base07

# Top border color of the selected completion item.
c.colors.completion.item.selected.border.top = base08

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = base08

# Foreground color of the matched text in the selected completion item.
c.colors.completion.item.selected.match.fg = base04

# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = base04

# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = base04

# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = base00

# Background color of disabled items in the context menu.
c.colors.contextmenu.disabled.bg = base00

# Foreground color of disabled items in the context menu.
c.colors.contextmenu.disabled.fg = base07

# Background color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.bg = base00

# Foreground color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.fg =  base0F

# Background color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.bg = base08

#Foreground color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.fg = base0F

# Background color for the download bar.
c.colors.downloads.bar.bg = base00

# Color gradient start for download text.
c.colors.downloads.start.fg = base00

# Color gradient start for download backgrounds.
c.colors.downloads.start.bg = base0D

# Color gradient end for download text.
c.colors.downloads.stop.fg = base00

# Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = base0C

# Foreground color for downloads with errors.
c.colors.downloads.error.fg = base08

# Font color for hints.
c.colors.hints.fg = base0F

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
c.colors.hints.bg = base08

# Font color for the matched part of hints.
c.colors.hints.match.fg = base0B

# Text color for the keyhint widget.
c.colors.keyhint.fg = base03

# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = base03

# Background color of the keyhint widget.
c.colors.keyhint.bg = base00

# Foreground color of an error message.
c.colors.messages.error.fg = base00

# Background color of an error message.
c.colors.messages.error.bg = base01

# Border color of an error message.
c.colors.messages.error.border = base01

# Foreground color of a warning message.
c.colors.messages.warning.fg = base00

# Background color of a warning message.
c.colors.messages.warning.bg = base0B

# Border color of a warning message.
c.colors.messages.warning.border = base0B

# Foreground color of an info message.
c.colors.messages.info.fg = base05

# Background color of an info message.
c.colors.messages.info.bg = base00

# Border color of an info message.
c.colors.messages.info.border = base00

# Foreground color for prompts.
c.colors.prompts.fg = base05

# Border used around UI elements in prompts.
c.colors.prompts.border = base00

# Background color for prompts.
c.colors.prompts.bg = base00

# Background color for the selected item in filename prompts.
c.colors.prompts.selected.bg = base02

# Foreground color of the statusbar.
c.colors.statusbar.normal.fg = base0C

# Background color of the statusbar.
c.colors.statusbar.normal.bg = base00

# Foreground color of the statusbar in insert mode.
c.colors.statusbar.insert.fg = base0C

# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = base00

# Foreground color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.fg = base0A

# Background color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.bg = base00

# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = base05

# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = base00

# Foreground color of the statusbar in command mode.
c.colors.statusbar.command.fg = base0B

# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = base00

# Foreground color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.fg = base0E

# Background color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.bg = base01

# Foreground color of the statusbar in caret mode.
c.colors.statusbar.caret.fg = base0D

# Background color of the statusbar in caret mode.
c.colors.statusbar.caret.bg = base00

# Foreground color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.fg = base0D

# Background color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.bg = base00

# Background color of the progress bar.
c.colors.statusbar.progress.bg = base0E

# Default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = base05

# Foreground color of the URL in the statusbar on error.
c.colors.statusbar.url.error.fg = base01

# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = base0E

# Foreground color of the URL in the statusbar on successful load
# (http).
c.colors.statusbar.url.success.http.fg = base0B

# Foreground color of the URL in the statusbar on successful load
# (https).
c.colors.statusbar.url.success.https.fg = base0A

# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = base0E

# Background color of the tab bar.
c.colors.tabs.bar.bg = base00

# Color gradient start for the tab indicator.
c.colors.tabs.indicator.start = base01

# Color gradient end for the tab indicator.
c.colors.tabs.indicator.stop = base02

# Color for the tab indicator on errors.
c.colors.tabs.indicator.error = base09

# Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = base07

# Background color of unselected odd tabs.
c.colors.tabs.odd.bg = base08

# Foreground color of unselected even tabs.
c.colors.tabs.even.fg = base07

# Background color of unselected even tabs.
c.colors.tabs.even.bg = base08

# Background color of pinned unselected even tabs.
c.colors.tabs.pinned.even.bg = base08

# Foreground color of pinned unselected even tabs.
c.colors.tabs.pinned.even.fg = base07

# Background color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.bg = base08

# Foreground color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.fg = base07

# Background color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.bg = base02

# Foreground color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.fg = base00

# Background color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.bg = base02

# Foreground color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.fg = base00

# Foreground color of selected odd tabs.
c.colors.tabs.selected.odd.fg = base00

# Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = base02

# Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = base00

# Background color of selected even tabs.
c.colors.tabs.selected.even.bg = base02

# Enable dark mode
c.colors.webpage.darkmode.policy.images = "never"
c.colors.webpage.darkmode.enabled = False
c.colors.webpage.darkmode.algorithm = "lightness-hsl"
c.colors.webpage.darkmode.contrast = 0.1
c.colors.webpage.darkmode.threshold.background = 100
c.colors.webpage.darkmode.threshold.text = 200
c.colors.webpage.darkmode.policy.page = "smart"

# default
c.colors.webpage.bg = base00

c.fonts.default_family = ["DejaVu Sans Mono", "Noto Color Emoji"]
