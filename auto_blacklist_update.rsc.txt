# Script untuk update DNS blacklist otomatis dari GitHub

# Hapus entri lama berdasarkan comment
/ip dns static remove [find comment="auto-blacklist"]

# Unduh file blacklist dari GitHub
/tool fetch url="https://raw.githubusercontent.com/Sora3l/mikrotik-blacklist/main/blacklist_mikrotik_sample.rsc.txt" dst-path=blacklist_auto.rsc

:delay 3

# Import file blacklist
/import file-name=blacklist_auto.rsc
