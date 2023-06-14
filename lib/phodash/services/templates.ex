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
        name: "Caddy",
        thumbnail: "svg/caddy.svg"
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
        name: "Cloudflare",
        thumbnail: "svg/cloudflare.svg"
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
        name: "Frigate",
        thumbnail: "svg/frigate.svg"
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
        name: "Handbrake",
        thumbnail: "png/handbrake.png"
      },
      %{
        name: "HA Proxy",
        thumbnail: "png/haproxy.png"
      },
      %{
        name: "Harbor",
        thumbnail: "png/hasura.png"
      },
      %{
        name: "Hasura",
        thumbnail: "png/hasura.png"
      },
      %{
        name: "HD Home Run",
        thumbnail: "png/hdhomerun.png"
      },
      %{
        name: "Headphones",
        thumbnail: "png/headphones.png"
      },
      %{
        name: "Healthchecks",
        thumbnail: "png/healthchecks.png"
      },
      %{
        name: "Heimdall",
        thumbnail: "png/heimdall.png"
      },
      %{
        name: "Home Assistant",
        thumbnail: "png/home-assistant.png"
      },
      %{
        name: "Homer Bridge",
        thumbnail: "png/homebridge.png"
      },
      %{
        name: "Homer",
        thumbnail: "png/homer.png"
      },
      %{
        name: "HP",
        thumbnail: "png/hp.png"
      },
      %{
        name: "Hubitat",
        thumbnail: "png/hubitat.png"
      },
      %{
        name: "Huginn",
        thumbnail: "png/huginn.png"
      },
      %{
        name: "Hugo",
        thumbnail: "png/hugo.png"
      },
      %{
        name: "Hydra",
        thumbnail: "png/hydra.png"
      },
      %{
        name: "Ice Cast",
        thumbnail: "png/icecast.png"
      },
      %{
        name: "Icinga",
        thumbnail: "png/icinga.png"
      },
      %{
        name: "iDrac",
        thumbnail: "png/idrac.png"
      },
      %{
        name: "ILO",
        thumbnail: "png/ilo.png"
      },
      %{
        name: "Immich",
        thumbnail: "png/immich.png"
      },
      %{
        name: "InfoBlox",
        thumbnail: "png/infoblox.png"
      },
      %{
        name: "Invidious",
        thumbnail: "png/invidious.png"
      },
      %{
        name: "Invoice Ninja",
        thumbnail: "png/invoiceninja.png"
      },
      %{
        name: "IO Broker",
        thumbnail: "png/irc.png"
      },
      %{
        name: "IRC",
        thumbnail: "png/irc.png"
      },
      %{
        name: "Jackett",
        thumbnail: "png/jackett.png"
      },
      %{
        name: "Jaeger",
        thumbnail: "png/jaeger.png"
      },
      %{
        name: "JDownloader",
        thumbnail: "png/jdownloader.png"
      },
      %{
        name: "Jeedom",
        thumbnail: "png/jeedom.png"
      },
      %{
        name: "Jellyfin",
        thumbnail: "png/jellyfin.png"
      },
      %{
        name: "Jenkins",
        thumbnail: "png/jenkins.png"
      },
      %{
        name: "Jitsi Meet",
        thumbnail: "png/jitsimeet.png"
      },
      %{
        name: "Joomla",
        thumbnail: "png/joomla.png"
      },
      %{
        name: "Joplin",
        thumbnail: "png/joplin.png"
      },
      %{
        name: "Kanboard",
        thumbnail: "png/kanboard.png"
      },
      %{
        name: "Kavita",
        thumbnail: "png/kavita.png"
      },
      %{
        name: "Keila",
        thumbnail: "png/keila.png"
      },
      %{
        name: "Key Cloak",
        thumbnail: "png/keycloak.png"
      },
      %{
        name: "Kibana",
        thumbnail: "png/kibana.png"
      },
      %{
        name: "Kimai",
        thumbnail: "png/kimai.png"
      },
      %{
        name: "Kitana",
        thumbnail: "png/kitana.png"
      },
      %{
        name: "Kodi",
        thumbnail: "png/kodi.png"
      },
      %{
        name: "Komga",
        thumbnail: "png/komga.png"
      },
      %{
        name: "Krusader",
        thumbnail: "png/krusader.png"
      },
      %{
        name: "Kubernetes Dashboard",
        thumbnail: "png/kubernetes-dashboard.png"
      },
      %{
        name: "Kutt",
        thumbnail: "png/kutt.png"
      },
      %{
        name: "Lazy Librarian",
        thumbnail: "png/lazylibrarian.png"
      },
      %{
        name: "Leantime",
        thumbnail: "png/leantime.png"
      },
      %{
        name: "Lemon LDAP NG",
        thumbnail: "png/lemonldapng.png"
      },
      %{
        name: "Let's Encrypt",
        thumbnail: "png/letencrypt.png"
      },
      %{
        name: "Libre NMS",
        thumbnail: "png/librenms.png"
      },
      %{
        name: "Libre Photos",
        thumbnail: "png/librephotos.png"
      },
      %{
        name: "Librespeed",
        thumbnail: "png/librespeed.png"
      },
      %{
        name: "Lidarr",
        thumbnail: "png/lidarr.png"
      },
      %{
        name: "Link Ding",
        thumbnail: "png/linkding.png"
      },
      %{
        name: "List Monk",
        thumbnail: "png/listmonk.png"
      },
      %{
        name: "LogStash",
        thumbnail: "png/logstash.png"
      },
      %{
        name: "Loki",
        thumbnail: "png/loki.png"
      },
      %{
        name: "Longhorn",
        thumbnail: "png/longhorn.png"
      },
      %{
        name: "Lychee",
        thumbnail: "png/lychee.png"
      },
      %{
        name: "Mail Cow",
        thumbnail: "png/mailcow.png"
      },
      %{
        name: "Mail Hog",
        thumbnail: "png/mailhog.png"
      },
      %{
        name: "Main Sail",
        thumbnail: "png/mainsail.png"
      },
      %{
        name: "Mak",
        thumbnail: "png/mak.png"
      },
      %{
        name: "Mastodon",
        thumbnail: "png/mastodon.png"
      },
      %{
        name: "MatterMost",
        thumbnail: "png/mattermost.png"
      },
      %{
        name: "MayaneDMS",
        thumbnail: "png/mayanedms.png"
      },
      %{
        name: "MCMyAdmin",
        thumbnail: "png/mcmyadmin.png"
      },
      %{
        name: "Mealie",
        thumbnail: "png/mealie.png"
      },
      %{
        name: "Media Wiki",
        thumbnail: "png/mediawiki.png"
      },
      %{
        name: "Medusa",
        thumbnail: "png/medusa.png"
      },
      %{
        name: "Meraki",
        thumbnail: "png/meraki.png"
      },
      %{
        name: "Microsoft Todo",
        thumbnail: "png/microsoft-todo.png"
      },
      %{
        name: "Microtik",
        thumbnail: "png/mikrotik.png"
      },
      %{
        name: "MineOS",
        thumbnail: "png/mineos.png"
      },
      %{
        name: "MiniFlux",
        thumbnail: "png/miniflux.png"
      },
      %{
        name: "Minio",
        thumbnail: "png/minio.png"
      },
      %{
        name: "MKDocs",
        thumbnail: "png/mkdocs.png"
      },
      %{
        name: "Molecule",
        thumbnail: "png/molecule.png"
      },
      %{
        name: "Mongo DB",
        thumbnail: "png/mongodb.png"
      },
      %{
        name: "Monica",
        thumbnail: "png/monica.png"
      },
      %{
        name: "Monit",
        thumbnail: "png/monit.png"
      },
      %{
        name: "MotionEye",
        thumbnail: "png/motioneye.png"
      },
      %{
        name: "MQTT",
        thumbnail: "png/mqtt.png"
      },
      %{
        name: "Mylar",
        thumbnail: "png/mylar.png"
      },
      %{
        name: "N8N",
        thumbnail: "png/n8n.png"
      },
      %{
        name: "Nagios",
        thumbnail: "png/nagios.png"
      },
      %{
        name: "Navidrome",
        thumbnail: "png/navidrome.png"
      },
      %{
        name: "NCore",
        thumbnail: "png/ncore.png"
      },
      %{
        name: "Nessus",
        thumbnail: "png/nessus.png"
      },
      %{
        name: "Netatmo",
        thumbnail: "png/netatmo.png"
      },
      %{
        name: "Net Boot",
        thumbnail: "png/netboot.png"
      },
      %{
        name: "NetBoot XYZ",
        thumbnail: "png/netbootxyz.png"
      },
      %{
        name: "Netbox",
        thumbnail: "png/netbox.png"
      },
      %{
        name: "Net Data",
        thumbnail: "png/netdata.png"
      },
      %{
        name: "NextCloud",
        thumbnail: "png/nextcloud.png"
      },
      %{
        name: "NGINX",
        thumbnail: "png/nginx.png"
      },
      %{
        name: "NGINX Proxy Manager",
        thumbnail: "png/nginxproxymanager.png"
      },
      %{
        name: "NodeRed",
        thumbnail: "png/nodered.png"
      },
      %{
        name: "Now Showing",
        thumbnail: "png/nowshowing.png"
      },
      %{
        name: "Ntop",
        thumbnail: "png/ntop.png"
      },
      %{
        name: "Nx Filter",
        thumbnail: "png/nxfilter.png"
      },
      %{
        name: "NZBGet",
        thumbnail: "png/nzbget.png"
      },
      %{
        name: "NZBHydra",
        thumbnail: "png/nzbhydra.png"
      },
      %{
        name: "OctoPrint",
        thumbnail: "png/octoprint.png"
      },
      %{
        name: "Omada",
        thumbnail: "png/omada.png"
      },
      %{
        name: "OpenHab",
        thumbnail: "png/openhab.png"
      },
      %{
        name: "Open Map Tiler",
        thumbnail: "png/openmaptiler.png"
      },
      %{
        name: "Open Media Vault",
        thumbnail: "png/openmediavault.png"
      },
      %{
        name: "Open Speedtest",
        thumbnail: "png/openspeedtest.png"
      },
      %{
        name: "Open Sprinkler",
        thumbnail: "png/opensprinkler.png"
      },
      %{
        name: "OpenVPN",
        thumbnail: "png/openvpn.png"
      },
      %{
        name: "OpenWRT",
        thumbnail: "png/openwrt.png"
      },
      %{
        name: "OpenSense",
        thumbnail: "png/opnsense.png"
      },
      %{
        name: "OS Ticket",
        thumbnail: "png/osticket.png"
      },
      %{
        name: "Overseer",
        thumbnail: "png/overseerr.png"
      },
      %{
        name: "OwnCloud",
        thumbnail: "png/owncloud.png"
      },
      %{
        name: "OwnPhotos",
        thumbnail: "png/ownphotos.png"
      },
      %{
        name: "Pager Duty",
        thumbnail: "png/pagerduty.png"
      },
      %{
        name: "Palo Alto Networks",
        thumbnail: "png/paloaltonetworks.png"
      },
      %{
        name: "Paper Merge",
        thumbnail: "png/papermerge.png"
      },
      %{
        name: "Partkeepr",
        thumbnail: "png/partkeepr.png"
      },
      %{
        name: "Peer Tube",
        thumbnail: "png/peertube.png"
      },
      %{
        name: "PfSense",
        thumbnail: "png/pfsense.png"
      },
      %{
        name: "PGAdmin",
        thumbnail: "png/pgadmin.png"
      },
      %{
        name: "Phantom Bot",
        thumbnail: "png/phantombot.png"
      },
      %{
        name: "Photo Prism",
        thumbnail: "png/photoprism.png"
      },
      %{
        name: "Photo Structure",
        thumbnail: "png/photostructure.png"
      },
      %{
        name: "Photo View",
        thumbnail: "png/photoview.png"
      },
      %{
        name: "PHP LDAP Admin",
        thumbnail: "png/phpldapadmin.png"
      },
      %{
        name: "PHP MyAdmin",
        thumbnail: "png/phpmyadmin.png"
      },
      %{
        name: "PiAware",
        thumbnail: "png/piaware.png"
      },
      %{

        name: "Pi-Hole",
        thumbnail: "png/pihole.png"
      },
      %{
        name: "Pingdom",
        thumbnail: "png/pingdom.png"
      },
      %{
        name: "Piweigo",
        thumbnail: "png/piwigo.png"
      },
      %{
        name: "Plausible",
        thumbnail: "png/plausible.png"
      },
      %{
        name: "Pleroma",
        thumbnail: "png/pleroma.png"
      },
      %{
        name: "Plesk",
        thumbnail: "png/plesk.png"
      },
      %{
        name: "Plex",
        thumbnail: "png/plex.png"
      },
      %{
        name: "Plex Drive",
        thumbnail: "png/plexdrive.png"
      },
      %{
        name: "Plex Requests",
        thumbnail: "png/plexrequests.png"
      },
      %{
        name: "Plume",
        thumbnail: "png/plume.png"
      },
      %{
        name: "Podify",
        thumbnail: "png/podify.png"
      },
      %{
        name: "Portainer",
        thumbnail: "png/portainer.png"
      },
      %{
        name: "Portus",
        thumbnail: "png/portus.png"
      },
      %{
        name: "PostgreSql",
        thumbnail: "png/postgres.png",
        category: "Databases",
        description: "PosgreSQL Database Server"
      },
      %{
        name: "Printer",
        thumbnail: "png/printer.png"
      },
      %{
        name: "PrivateBin",
        thumbnail: "png/privatebin.png"
      },
      %{
        name: "projectsend",
        thumbnail: "png/projectsend.png"
      },
      %{
        name: "prometheus",
        thumbnail: "png/prometheus.png"
      },
      %{
        name: "Prowlarr",
        thumbnail: "png/prowlarr.png"
      },
      %{
        name: "ProxMox",
        thumbnail: "png/proxmox.png"
      },
      %{
        name: "Prtg",
        thumbnail: "png/prtg.png"
      },
      %{
        name: "psitransfer",
        thumbnail: "png/psitransfer.png"
      },
      %{
        name: "Pterodactyl",
        thumbnail: "png/pterodactyl.png"
      },
      %{
        name: "pyload",
        thumbnail: "png/pyload.png"
      },
      %{
        name: "qBitTorrent",
        thumbnail: "png/qbittorrent.png"
      },
      %{
        name: "QNap",
        thumbnail: "png/qnap.png"
      },
      %{
        name: "RabittMQ",
        thumbnail: "png/rabbitmq.png"
      },
      %{
        name: "Rain Loop",
        thumbnail: "png/rainloop.png"
      },
      %{
        name: "Rancher",
        thumbnail: "png/rancher.png"
      },
      %{
        name: "Raneto",
        thumbnail: "png/raneto.png"
      },
      %{
        name: "RClone",
        thumbnail: "png/rclone.png"
      },
      %{
        name: "Radarr",
        thumbnail: "png/radarr.png"
      },
      %{
        name: "RecalBox",
        thumbnail: "png/recalbox.png"
      },
      %{
        name: "Redis",
        thumbnail: "png/redis.png"
      },
      %{
        name: "Requestrr",
        thumbnail: "png/requestrr.png"
      },
      %{
        name: "Resilio Sync",
        thumbnail: "png/resiliosync.png"
      },
      %{
        name: "Riot",
        thumbnail: "png/riot.png"
      },
      %{
        name: "Rocket Chat",
        thumbnail: "png/rocketchat.png"
      },
      %{
        name: "Rompya",
        thumbnail: "png/rompya.png"
      },
      %{
        name: "Rook",
        thumbnail: "png/rook.png"
      },
      %{
        name: "Round Cube",
        thumbnail: "png/roundcube.png"
      },
      %{
        name: "Router",
        thumbnail: "png/router.png"
      },
      %{
        name: "RspAMD",
        thumbnail: "png/rspamd.png"
      },
      %{
        name: "R Studio Server",
        thumbnail: "png/rstudioserver.png"
      },
      %{
        name: "Run Deck",
        thumbnail: "png/rundeck.png"
      },
      %{
        name: "Rune Audio",
        thumbnail: "png/runeaudio.png"
      },
      %{
        name: "RUTorrent",
        thumbnail: "png/rutorrent.png"
      },
      %{
        name: "SabNzbD",
        thumbnail: "png/sabnzbd.png"
      },
      %{
        name: "Scrutiny",
        thumbnail: "png/scrutiny.png"
      },
      %{
        name: "Seafile",
        thumbnail: "png/seafile.png"
      },
      %{
        name: "searxmetasearchengine",
        thumbnail: "png/searxmetasearchengine.png"
      },
      %{
        name: "ServiIO",
        thumbnail: "png/serviio.png"
      },
      %{
        name: "Shaarli",
        thumbnail: "png/shaarli.png"
      },
      %{
        name: "Shinobi",
        thumbnail: "png/shinobi.png"
      },
      %{
        name: "SHODAN",
        thumbnail: "png/SHODAN.jpg"
      },
      %{
        name: "SickBeard",
        thumbnail: "png/sickbeard.png"
      },
      %{
        name: "SickChill",
        thumbnail: "png/sickchill.png"
      },
      %{
        name: "SickGear",
        thumbnail: "png/sickgear.png"
      },
      %{
        name: "Sinus Bot",
        thumbnail: "png/sinusbot.png"
      },
      %{
        name: "Slack",
        thumbnail: "png/slack.png"
      },
      %{
        name: "Snibox",
        thumbnail: "png/snibox.png"
      },
      %{
        name: "SonarQube",
        thumbnail: "png/sonarqube.png"
      },
      %{
        name: "Sonarr",
        thumbnail: "png/sonarr.png"
      },
      %{
        name: "Source Graph",
        thumbnail: "png/sourcegraph.png"
      },
      %{
        name: "Splunk",
        thumbnail: "png/splunk.png"
      },
      %{
        name: "SpotWeb",
        thumbnail: "png/spotweb.png"
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
        thumbnail: "png/transmission.png"
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
        name: "Znc",
        thumbnail: "png/znc.png"
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
