cd "$(mktemp -d)"
curl -L -o terminus.tar.gz https://www.archlinux.org/packages/community/any/terminus-font/download/

tar xf terminus.tar.gz
local_font_cfg=~/.config/fontconfig/conf.d/
mkdir -p "$local_font_cfg"
cp etc/fonts/conf.avail/* "$local_font_cfg"



local_font=~/.local/share/fonts/
mkdir -p "$local_font"
cp -r usr/share/fonts/* "$local_font"
