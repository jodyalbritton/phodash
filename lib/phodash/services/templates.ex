defmodule Phodash.Services.Templates do
  @moduledoc """
  Service templates
  """

  def list_templates() do
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
        name: "AllTube",
        thumbnail: "png/alltube.png"
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
        thumbnail: "png/bastillion.png"
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
        name: "Cyber Chef",
        thumbnail: "png/cyberchef.png"
      },
      %{
        name: "Studio Code",
        thumbnail: "png/code.png"
      },
      %{
        name: "Deemix",
        thumbnail: "png/deemix.png"
      },
      %{
        name: "Deluge",
        thumbnail: "png/deluge.png"
      },
      %{
        name: "Directus",
        thumbnail: "png/directus.png"
      },
      %{
        name: "Docker",
        thumbnail: "png/docker.png"
      },
      %{
        name: "Docspell",
        thumbnail: "png/docspell.png"
      },
      %{
        name: "Dokuwiki",
        thumbnail: "png/dokuwiki.png"
      },
      %{
        name: "Domoticz",
        thumbnail: "png/domoticz.png"
      },
      %{
        name: "Dozzle",
        thumbnail: "png/dozzle.png"
      },
      %{
        name: "Drone",
        thumbnail: "png/drone.png"
      },
      %{
        name: "Droppy",
        thumbnail: "png/droppy.png"
      },
      %{
        name: "Duplicacy",
        thumbnail: "png/duplicacy.png"
      },
      %{
        name: "Duplicati",
        thumbnail: "png/duplicati.png"
      },
      %{
        name: "Ebay",
        thumbnail: "png/ebay.png"
      },
      %{
        name: "Elastic",
        thumbnail: "png/elastic.png"
      },
      %{
        name: "Elastic Search",
        thumbnail: "png/elasticsearch.png"
      },
      %{
        name: "Element",
        thumbnail: "png/element.png"
      },
      %{
        name: "Emby",
        thumbnail: "png/emby.png"
      },
      %{
        name: "Emby Stat",
        thumbnail: "png/embystat.png"
      },
      %{
        name: "Emq",
        thumbnail: "png/emq.png"
      },
      %{
        name: "Erste-George",
        thumbnail: "png/erste-george.png"
      },
      %{
        name: "Erste",
        thumbnail: "png/erste.png"
      },
      %{
        name: "Esp Home",
        thumbnail: "png/esphome.png"
      },
      %{
        name: "Eve Box",
        thumbnail: "png/evebox.png"
      },
      %{
        name: "Facebook Messenger",
        thumbnail: "png/facebook-messenger.png"
      },
      %{
        name: "Facebook",
        thumbnail: "png/facebook.png"
      },
      %{
        name: "Filebrowser",
        thumbnail: "png/filebrowser.png"
      },
      %{
        name: "Filerun",
        thumbnail: "png/filerun.png"
      },
      %{
        name: "Firefly",
        thumbnail: "png/firefly.png"
      },
      %{
        name: "Firefoxsend",
        thumbnail: "png/firefoxsend.png"
      },
      %{
        name: "Flexget",
        thumbnail: "png/flexget.png"
      },
      %{
        name: "Flood",
        thumbnail: "png/flood.png"
      },
      %{
        name: "Folding@home",
        thumbnail: "png/foldingathome.png"
      },
      %{
        name: "FreeIPA",
        thumbnail: "png/freeipa.png"
      },
      %{
        name: "Freenas",
        thumbnail: "png/freenas.png"
      },
      %{
        name: "Ghost",
        thumbnail: "png/ghost.png"
      },
      %{
        name: "Gitea",
        thumbnail: "png/gitea.png"
      },
      %{
        name: "Github",
        thumbnail: "png/github.png"
      },
      %{
        name: "Gitlab",
        thumbnail: "png/gitlab.png"
      },
      %{
        name: "Glances",
        thumbnail: "png/glances.png"
      },
      %{
        name: "Gogs",
        thumbnail: "png/gogs.png"
      },
      %{
        name: "Google Calendar",
        thumbnail: "png/google-calendar.png"
      },
      %{
        name: "Google Keep",
        thumbnail: "png/google-keep.png"
      },
      %{
        name: "Google Mail",
        thumbnail: "png/google-mail.png"
      },
      %{
        name: "Google Maps",
        thumbnail: "png/googlemaps.png"
      },
      %{
        name: "Gotify",
        thumbnail: "png/gotify.png"
      },
      %{
        name: "Grafana",
        thumbnail: "png/grafana.png"
      },
      %{
        name: "Grav",
        thumbnail: "png/grav.png"
      },
      %{
        name: "Graylog",
        thumbnail: "png/graylog.png"
      },
      %{
        name: "Grocy",
        thumbnail: "png/grocy.png"
      },
      %{
        name: "Guacamole",
        thumbnail: "png/guacamole.png"
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
        thumbnail: "png/plex.png"
      },
      %{
        name: "Portainer",
        thumbnail: "png/portainer.png"
      },
      %{
        name: "PostgreSql",
        thumbnail: "png/postgres.png",
        category: "Databases",
        description: "PosgreSQL Database Server"
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
        name: "Squidex",
        thumbnail: "png/squidex.png"
      },
      %{
        name: "Stapi",
        thumbnail: "png/strapi.png"
      },
      %{
        name: "Streama",
        thumbnail: "png/streama.png"
      },
      %{
        name: "Sync Lounge",
        thumbnail: "png/synclounge.png"
      },
      %{
        name: "SyncThing",
        thumbnail: "png/syncthing.png"
      },
      %{
        name: "Synology",
        thumbnail: "png/synology.png"
      },
      %{
        name: "Taiga",
        thumbnail: "png/taiga.png"
      },
      %{
        name: "Tandoor Recipes",
        thumbnail: "png/tandoorrecipes.png"
      },
      %{
        name: "Tasmo Admin",
        thumbnail: "png/tasmoadmin.png"
      },
      %{
        name: "Tasmota",
        thumbnail: "png/tasmota.png"
      },
      %{
        name: "Tautulli",
        thumbnail: "png/tautulli.png"
      },
      %{
        name: "Tdarr",
        thumbnail: "png/tdarr.png"
      },
      %{
        name: "Teedy",
        thumbnail: "png/teedy.png"
      },
      %{
        name: "Thanos",
        thumbnail: "png/thanos.png"
      },
      %{
        name: "Theia",
        thumbnail: "png/theia.png"
      },
      %{
        name: "The Lounge",
        thumbnail: "png/thelounge.png"
      },
      %{
        name: "Tiny Tiny RSS",
        thumbnail: "png/tinytinyrss.png"
      },
      %{
        name: "TP Link",
        thumbnail: "png/tplink.png"
      },
      %{
        name: "Traccar",
        thumbnail: "png/traccar.png"
      },
      %{
        name: "Traefik",
        thumbnail: "png/traefik.png"
      },
      %{
        name: "Transmission",
        thumbnail: "png/transmisson.png"
      },
      %{
        name: "Trilium",
        thumbnail: "png/trilium.png"
      },
      %{
        name: "TrueNAS",
        thumbnail: "png/truenas.png"
      },
      %{
        name: "Tube Archivist",
        thumbnail: "png/tubearchivist.png"
      },
      %{
        name: "Tube Sync",
        thumbnail: "png/tubesync.png"
      },
      %{
        name: "TV Headend",
        thumbnail: "png/tvheadend.png"
      },
      %{
        name: "Ubooquity",
        thumbnail: "png/ubooquity.png"
      },
      %{
        name: "Ultimate Guitar",
        thumbnail: "png/ultimateguitar.png"
      },
      %{
        name: "Unifi",
        thumbnail: "png/unifi.png"
      },
      %{
        name: "Unraid",
        thumbnail: "png/unraid.png"
      },
      %{
        name: "Updog",
        thumbnail: "png/updog.png"
      },
      %{
        name: "Uptime Kuma",
        thumbnail: "png/uptimekuma.png"
      },
      %{
        name: "UrBackup",
        thumbnail: "png/urbackup.png"
      },
      %{
        name: "Vale Tudo",
        thumbnail: "png/valetudo.png"
      },
      %{
        name: "Vault",
        thumbnail: "png/vault.png"
      },
      %{
        name: "VaultWarden",
        thumbnail: "png/vaultwarden.png"
      },
      %{
        name: "Vikunja",
        thumbnail: "png/vikunja.png"
      },
      %{
        name: "Virtual Radar Server",
        thumbnail: "png/virtualradarserver.png"
      },
      %{
        name: "VMWare",
        thumbnail: "png/vmware.png"
      },
      %{
        name: "VMWare Horizon",
        thumbnail: "png/vmwarehorizon.png"
      },
      %{
        name: "VolumIO",
        thumbnail: "png/volumio.png"
      },
      %{
        name: "Wallabag",
        thumbnail: "png/wallabag.png"
      },
      %{
        name: "WaniKani",
        thumbnail: "png/wanikani.png"
      },
      %{
        name: "Watcher",
        thumbnail: "png/watcher.png"
      },
      %{
        name: "Watch Tower",
        thumbnail: "png/watchtower.png"
      },
      %{
        name: "WebDAV",
        thumbnail: "png/webdav.png"
      },
      %{
        name: "Webmin",
        thumbnail: "png/webmin.png"
      },
      %{
        name: "WebTools",
        thumbnail: "png/webtools.png"
      },
      %{
        name: "Wekan",
        thumbnail: "png/wekan.png"
      },
      %{
        name: "Wetty",
        thumbnail: "png/wetty.png"
      },
      %{
        name: "WggenWeb",
        thumbnail: "png/wggenweb.png"
      },
      %{
        name: "WHOAMI",
        thumbnail: "png/whoami.png"
      },
      %{
        name: "WikiJS",
        thumbnail: "png/wikijs.png"
      },
      %{
        name: "Windows 8",
        thumbnail: "png/windows8.png"
      },
      %{
        name: "Windows 10",
        thumbnail: "png/windows10.png"
      },
      %{
        name: "Windows 98",
        thumbnail: "png/windows98.png"
      },
      %{
        name: "Windows NT",
        thumbnail: "png/windowsnt.png"
      },
      %{
        name: "Wireguard",
        thumbnail: "png/wireguard.png"
      },
      %{
        name: "Wizarr",
        thumbnail: "png/wizarr.png"
      },
      %{
        name: "Wordpress",
        thumbnail: "png/wordpress.png"
      },
      %{
        name: "XBrowser Sync",
        thumbnail: "png/xbrowsersync.png"
      },
      %{
        name: "Xigmanas",
        thumbnail: "png/xigmanas.png"
      },
      %{
        name: "Xteve",
        thumbnail: "png/xteve.png"
      },
      %{
        name: "Xwiki",
        thumbnail: "png/xwiki.png"
      },
      %{
        name: "Yacht",
        thumbnail: "png/yacht.png"
      },
      %{
        name: "Ynab",
        thumbnail: "png/ynab.png"
      },
      %{
        name: "Youtube",
        thumbnail: "png/youtube.png"
      },
      %{
        name: "YoutubeDL",
        thumbnail: "png/youtubedl.png"
      },
      %{
        name: "Zabbix",
        thumbnail: "png/zabbix.png"
      },
      %{
        name: "Zigbee2Mqtt",
        thumbnail: "png/zigbee2mqtt.png"
      },
      %{
        name: "Zinc",
        thumbnail: "png/zinc.png"
      },
      %{
        name: "Zoneminder",
        thumbnail: "png/zoneminder.png"
      },
      %{
        name: "Zulip",
        thumbnail: "png/zulip.png"
      },
      %{
        name: "ZwaveJs",
        thumbnail: "png/zwavejs.png"
      }
    ]
  end
end
