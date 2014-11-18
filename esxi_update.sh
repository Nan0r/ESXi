esxcli software vib update --depot="/vmfs/volumes/datastore1/ESXixxx-yyyymmdd.zip" --dry-run
esxcli software sources vib get --depot="/vmfs/volumes/datastore1/ESXixxx-yyyymmdd.zip" | grep "Maintenance Mode Required: True"
esxcli system maintenanceMode set --enable true
esxcli system maintenanceMode get
esxcli software vib update --depot="/vmfs/volumes/datastore1/ESXixxx-yyyymmdd.zip"
esxcli system maintenanceMode set --enable false
