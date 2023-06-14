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
        name: "Synology",
        thumbnail: "png/synology.png"
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
        thumbnail: "png/zigbee2mqtt.png"
      },
      %{
        name: "ZwaveJs",
        thumbnail: "png/zwavejs.png"
      }
    ]
  end
end