# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Phodash.Repo.insert!(%Phodash.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

providers =
[
  %{
    name: "3CX",
    thumbnail: "png/3cx.png"
  },
  %{
    name: "AdGuard",
    thumbnail: "png/adguardhome.png"
  },
  %{
    name: "Adminer",
    thumbnail: "png/adminer.png"
  },
  %{
    name: "Airsonic",
    thumbnail: "png/airsonic.png"
  },
  %{
    name: "AlarmPi",
    thumbnail: "png/alarmpi.png"
  },
  %{
    name: "Alert Manager",
    thumbnail: "png/alertmanager.png"
  },
  %{
    name: "AltTube",
    thumbnail: "png/alttube.png"
  },
  %{
    name: "Amazon",
    thumbnail: "png/amazon.png"
  },
  %{
    name: "AMD",
    thumbnail: "png/amd.png"
  },
  %{
    name: "AMVD",
    thumbnail: "png/amvd.png"
  },
  %{
    name: "Anisble",
    thumbnail: "png/ansible.png"
  },
  %{
    name: "Archive Box",
    thumbnail: "png/archivebox.png"
  },
  %{
    name: "Archive Team Warrrior",
    thumbnail: "png/archiveteamwarrior.png"
  },
  %{
    name: "Authelia",
    thumbnail: "png/authelia.png"
  },
  %{
    name: "AvmFritzBox",
    thumbnail: "png/avmfritzbox.png"
  },
  %{
    name: "Awx",
    thumbnail: "png/awx.png"
  },
  %{
    name: "Azure",
    thumbnail: "png/azure.png"
  },
  %{
    name: "Azure DNS",
    thumbnail: "png/azuredns.png"
  },
  %{
    name: "Bacula",
    thumbnail: "png/bacula.png"
  },
  %{
    name: "Badge",
    thumbnail: "png/badge.png"
  },
  %{
    name: "Baikal",
    thumbnail: "png/baikal.png"
  },
  %{
    name: "Bastillion",
    thumbnail: "png/bastiillion.png"
  },
  %{
    name: "Bazarr",
    thumbnail: "png/bazarr.png"
  },
  %{
    name: "Beats",
    thumbnail: "png/beats.png"
  },
  %{
    name: "Bithumen",
    thumbnail: "png/bithumen.png"
  },
  %{
    name: "Bit Warden",
    thumbnail: "png/bitwarden.png"
  },
  %{
    name: "Blue Iris",
    thumbnail: "png/blueiris.png"
  },
  %{
    name: "Booksonic",
    thumbnail: "png/booksonic.png"
  },
  %{
    name: "Bookstack",
    thumbnail: "png/bookstack.png"
  },
  %{
    name: "box",
    thumbnail: "png/box.png"
  },
  %{
    name: "BrewPi",
    thumbnail: "png/brewpi.png"
  },
  %{
    name: "Buxfer",
    thumbnail: "png/buxfer.png"
  },
  %{
    name: "Cabot",
    thumbnail: "png/cabot.png"
  },
  %{
    name: "CAdvisor",
    thumbnail: "png/cadvisor.png"
  },
  %{
    name: "CalibreWeb",
    thumbnail: "png/calibreweb.png"
  },
  %{
    name: "Cardigann",
    thumbnail: "png/cardigann.png"
  },
  %{
    name: "Change Detection",
    thumbnail: "png/changedetection.png"
  },
  %{
    name: "CheckMK",
    thumbnail: "png/checkmk.png"
  },
  %{
    name: "Chevereto",
    thumbnail: "png/chevereto.png"
  },
  %{
    name: "Chow Down",
    thumbnail: "png/chowdown.png"
  },
  %{
    name: "Chronograf",
    thumbnail: "png/chronograf.png"
  },
  %{
    name: "Clarkson",
    thumbnail: "png/clarkson.png"
  },
  %{
    name: "CloudCMD",
    thumbnail: "png/cloudcmd.png"
  },
  %{
    name: "Cockpit",
    thumbnail: "png/cockpit.png"
  },
  %{
    name: "Cockpit CMS",
    thumbnail: "png/cockpitcms.png"
  },
  %{
    name: "Code",
    thumbnail: "png/code.png"
  },
  %{
    name: "Code Server",
    thumbnail: "png/codeserver.png"
  },
  %{
    name: "CodiMD",
    thumbnail: "png/codimd.png"
  },

  %{
    name: "Concourse",
    thumbnail: "png/concourse.png"
  },
  %{
    name: "Couch Potato",
    thumbnail: "png/couchpotato.png"
  },
  %{
    name: "CPanel",
    thumbnail: "png/cpanel.png"
  },
  %{
    name: "Crypt Pad",
    thumbnail: "png/cryptpad.png"
  },
  %{
    name: "Studio Code",
    thumbnail: "png/code.png"
  },
  %{
    name: "Docker",
    thumbnail: "png/docker.png"
  },
  %{
    name: "Emby",
    thumbnail: "png/emby.png"
  },
  %{
    name: "Grocy",
    thumbnail: "png/grocy.png"
  },
  %{
    name: "HD Home Run",
    thumbnail: "png/hdhomerun.png"
  },
  %{
    name: "Home Assistant",
    thumbnail: "png/home-assistant.png"
  },
  %{
    name: "Hubitat",
    thumbnail: "png/hubitat.png"
  },
  %{
    name: "Jackett",
    thumbnail: "png/jackett.png"
  },
  %{
    name: "Jellyfin",
    thumbnail: "png/jellyfin.png"
  },
  %{
    name: "Next Cloud",
    thumbnail: "png/nextcloud.png"
  },
  %{
    name: "PfSense",
    thumbnail: "png/pfsense.png"
  },
  %{
    name: "Pi-Hole",
    thumbnail: "png/pihole.png"
  },
  %{
    name: "Plex",
    thumbnail: "png/Plex.png"
  },
  %{
    name: "Portainer",
    thumbnail: "png/portainer.png"
  },
  %{
    name: "PostgreSql",
    thumbnail: "png/postgres.png"
  },
  %{
    name: "ProxMox",
    thumbnail: "png/proxmox.png"
  },
  %{
    name: "SabNzb",
    thumbnail: "png/sabnzbd.png"
  },
  %{
    name: "Synology",
    thumbnail: "png/Synology.png"
  },
  %{
    name: "Tasmota",
    thumbnail: "png/tasmota.png"
  },
  %{
    name: "Traefik",
    thumbnail: "png/traefik.png"
  },
  %{
    name: "Unifi",
    thumbnail: "png/unifi.png"
  },
  %{
    name: "VolumIO",
    thumbnail: "png/volumio.png"
  },
  %{
    name: "Zigbee2Mqtt",
    thumbnail: "png/unifi.png"
  },
  %{
    name: "ZwaveJs",
    thumbnail: "png/unifi.png"
  }
]

for provider <- providers do
  Phodash.Services.create_provider(provider)
end
