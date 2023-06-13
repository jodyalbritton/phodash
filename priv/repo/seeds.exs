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
    name: "Bazarr",
    thumbnail: "png/bazarr.png"
  },
  %{
    name: "Blue Iris",
    thumbnail: "png/blueiris.png"
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
