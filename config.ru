require './config/environment'

begin
  fi_check_migration

  use Rack::MethodOverride
  use songs_controller
  use artists_controller
  use genres_controller
  run ApplicationController
rescue ActiveRecord::PendingMigrationError => err
  STDERR.puts err
  exit 1
end
