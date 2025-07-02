# Script: Auto Update Mikrotik DNS Blacklist dari GitHub
# --------------------------------------------
# Menghapus entri lama
/ip dns static remove [find comment="auto-blacklist"]

# Mengunduh file blacklist baru dari GitHub
/tool fetch url="https://raw.githubusercontent.com/Sora3l/mikrotik-blacklist/main/blacklist_mikrotik_sample.rsc" dst-path=blacklist_auto.rsc

# Menunggu proses fetch selesai
:delay 3

# Mengimpor blacklist ke DNS Static
/import file-name=blacklist_auto.rsc
