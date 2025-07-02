# Update blacklist otomatis
/ip dns static remove [find comment="auto-blacklist"]
/tool fetch url="https://raw.githubusercontent.com/Sora3l/mikrotik-blacklist/main/blacklist_mikrotik_sample.rsc" dst-path=blacklist_auto.rsc
:delay 3
/import file-name=blacklist_auto.rsc
