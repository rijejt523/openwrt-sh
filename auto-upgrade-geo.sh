#!/bin/sh

LOGGER_TAG=v2ray-geodata-updater

log () {
  echo $@
  logger -t $LOGGER_TAG "$@"
}

GEOIP_PATH=/usr/bin/geoipplus.dat
GEOSITE_PATH=/usr/bin/geositeplus.dat

log "geoipplus.dat will be saved as $GEOIP_PATH"
log "geositeplus.dat will be saved as $GEOSITE_PATH"

log "downloading geoipplus.dat..."
wget https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat -qO /tmp/geoipplus.dat
if [ $? -ne 0 ]; then
  log "failed to download latest geoipplus.dat, not updating!"
else
  mv /tmp/geoipplus.dat $GEOIP_PATH
  log "v2ray geoipplus.dat updated"
fi

log "downloading geositeplus.dat..."
wget https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat -qO /tmp/geositeplus.dat
if [ $? -ne 0 ]; then
  log "failed to download latest geositeplus.dat, not updating!"
else
  mv /tmp/geositeplus.dat $GEOSITE_PATH
  log "v2ray geositeplus.dat updated"
fi
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	