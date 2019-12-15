## Autogenerated config.py
## Documentation:
##   qute://help/configuring.html
##   qute://help/settings.html

import os

colors = []

with open(os.getenv('HOME', '~')+'/.cache/wal/colors') as f:
    colors = f.read().splitlines()

config.load_autoconfig()

# set font
font = "10pt mono"

c.fonts.completion.category = "bold " + font
c.fonts.completion.entry = font
c.fonts.debug_console = font
c.fonts.downloads = font
c.fonts.hints = "bold " + font
c.fonts.keyhint = font
c.fonts.messages.error = font
c.fonts.messages.info = font
c.fonts.messages.warning = font
c.fonts.prompts = "10pt sans-serif"
c.fonts.statusbar = font
c.fonts.tabs = font

# set colors
c.colors.completion.category.bg = colors[6]
c.colors.completion.category.fg = colors[0]

c.colors.completion.category.border.bottom = colors[0]
c.colors.completion.category.border.top = colors[6]

c.colors.completion.even.bg = colors[0]

c.colors.completion.odd.bg = colors[0]

c.colors.completion.item.selected.bg = colors[4]
c.colors.completion.item.selected.fg = colors[7]

c.colors.completion.item.selected.border.bottom = colors[4]

c.colors.completion.match.fg = colors[2]

c.colors.completion.scrollbar.bg = colors[7]
c.colors.completion.scrollbar.fg = colors[0]

c.colors.downloads.bar.bg = colors[0]

c.colors.downloads.error.bg = colors[1]
c.colors.downloads.error.fg = colors[8]

c.colors.downloads.start.bg = colors[5]
c.colors.downloads.start.fg = colors[7]

c.colors.downloads.stop.bg = colors[2]
c.colors.downloads.stop.fg = colors[8]

c.colors.hints.bg = colors[0]
c.colors.hints.fg = colors[7]

c.colors.hints.match.fg = colors[3]

c.colors.keyhint.bg = colors[0]
c.colors.keyhint.fg = colors[7]

c.colors.keyhint.suffix.fg = colors[3]

c.colors.messages.error.bg = colors[1]
c.colors.messages.error.border = colors[1]
c.colors.messages.error.fg = colors[8]

c.colors.messages.info.bg = colors[2]
c.colors.messages.info.border = colors[2]
c.colors.messages.info.fg = colors[8]

c.colors.messages.warning.bg = colors[3]
c.colors.messages.warning.border = colors[3]
c.colors.messages.warning.fg = colors[7]

c.colors.prompts.bg = colors[0]
c.colors.prompts.border = colors[0]
c.colors.prompts.fg = colors[7]

c.colors.prompts.selected.bg = colors[3]

c.colors.statusbar.caret.bg = colors[5]
c.colors.statusbar.caret.fg = colors[7]

c.colors.statusbar.command.bg = colors[6]
c.colors.statusbar.command.fg = colors[0]

c.colors.statusbar.command.private.bg = 'black'

c.colors.statusbar.insert.bg = colors[2]
c.colors.statusbar.insert.fg = colors[8]

c.colors.statusbar.normal.bg = colors[0]
c.colors.statusbar.normal.fg = colors[7]

c.colors.statusbar.private.bg = colors[0]
c.colors.statusbar.private.fg = colors[7]

c.colors.statusbar.progress.bg = colors[7]

c.colors.statusbar.url.error.fg = colors[1]

c.colors.statusbar.url.fg = colors[7]

c.colors.statusbar.url.hover.fg = colors[4]

c.colors.statusbar.url.success.http.fg = colors[7]

c.colors.statusbar.url.success.https.fg = colors[2]

c.colors.statusbar.url.warn.fg = colors[3]

c.colors.tabs.bar.bg = colors[0]

c.colors.tabs.even.bg = colors[0]
c.colors.tabs.even.fg = colors[7]

c.colors.tabs.odd.bg = colors[0]
c.colors.tabs.odd.fg = colors[7]

c.colors.tabs.selected.even.bg = colors[7]
c.colors.tabs.selected.even.fg = colors[0]

c.colors.tabs.selected.odd.bg = colors[7]
c.colors.tabs.selected.odd.fg = colors[0]

c.colors.webpage.bg = colors[7]

c.hints.border = '1px solid ' + colors[7]

c.statusbar.hide = True
c.tabs.show = 'multiple'

c.content.geolocation = False

c.editor.command = ['urxvt', '-e', 'runner', 'nvim {}']

c.qt.args = ['ppapi-widevine-path=/usr/lib/qt/plugins/ppapi/libwidevinecdmadapter.so', 'disable-seccomp-filter-sandbox']

# set default pages
c.url.default_page = "file:///home/micah/Documents/start-page/index.html"
c.url.start_pages = "file:///home/micah/Documents/start-page/index.html"

# set search engines
c.url.searchengines["aw"] = "https://wiki.archlinux.org/?search={}"
c.url.searchengines["az"] = "https://www.amazon.com/s/?field-keywords={}"
c.url.searchengines["d"] = "https://duckduckgo.com/?q={}"
c.url.searchengines["g"] = "https://www.google.com/search?hl=en&q={}"
c.url.searchengines["rd"] = "https://reddit.com/r/{}"
c.url.searchengines["wk"] = "en.wikipedia.org/?search={}"
c.url.searchengines["yt"] = "https://youtube.com/results?search_query={}"
c.url.searchengines["DEFAULT"] = c.url.searchengines["d"]

# set shortcut bindings
config.bind(',al', ':open https://www.reddit.com/me/m/alllinux/new')
config.bind(',az', ':open https://amazon.com')
config.bind(',bp', ':open https://buzzport.gatech.edu/cp/home/displaylogin')
config.bind(',cl', ':open https://drive.mehalter.com/index.php/apps/calendar/')
config.bind(',cv', ':open https://gatech.instructure.com')
config.bind(',dr', ':open https://drive.mehalter.com')
config.bind(',et', ':open https://etime.gtri.gatech.edu/DeltekTC/welcome.msv')
config.bind(',gt', ':open https://git.mehalter.com')
config.bind(',ml', ':open https://mail.google.com')
config.bind(',mp', ':open https://maps.google.com')
config.bind(',ms', ':open https://play.google.com/music/listen')
config.bind(',nf', ':open https://netflix.com')
config.bind(',nt', ':open https://drive.mehalter.com/index.php/apps/notes/')
config.bind(',pz', ':open https://piazza.com')
config.bind(',rd', ':open http://reddit.com')
config.bind(',sm', ':open https://outlook.office.com/owa/?realm=gatech.edu')
config.bind(',tg', ':open http://web.telegram.org')
config.bind(',ts', ':open http://tsquare.gatech.edu')
config.bind(',tv', ':open http://tv.youtube.com')
config.bind(',wm', ':open https://sso.gtri.gatech.edu/adfs/ls/?wa=wsignin1.0&wtrealm=https%3a%2f%2fmail.gtri.gatech.edu%2fowa%2f&wctx=rm%3d0%26id%3dpassive%26ru%3d%252fowa%252f&wct=2016-01-29T15%3a00%3a27Z')
config.bind(',ws', ':open http://mehalter.com')
config.bind(',yt', ':open https://youtube.com')

config.bind(';m', 'hint links spawn mpv {hint-url}')

# set new movements
config.bind('J', ':tab-prev')
config.bind('K', ':tab-next')
config.bind('D', ':close')
config.bind('I', ':open -p')
config.bind('W', ':tab-give')
config.bind('e', ':open-editor')
config.bind('t', ':open -t')
config.bind('xb', ':config-cycle statusbar.hide')
config.bind('xt', ':config-cycle tabs.show multiple switching')
config.bind('<', ':tab-move -')
config.bind('>', ':tab-move +')

# set saved permissions

sites = [
    'https://play.google.com',
    'https://www.netflix.com',
    'https://www.reddit.com'
]
for site in sites:
    config.set('content.notifications', False, site)

config.source('shortcuts.py')
