function restore_osm --description="Restore OSM DB from backup"
  command bundle exec rake db:delete_and_restore_from_backup; and push "Restored DB"; or push "Failed to restore DB"
end
