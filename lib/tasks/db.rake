# desc "Migrate the database through scripts in db/migrate directory."

# namespace :db do
#   task :create do
#     Rake::Task["db:create_db1"].invoke
#     Rake::Task["db:create_db2"].invoke
#   end

#   task :create_db1 do
#     db_config = YAML.load_file(Rails.root.join "config/database.yml")
#     database = db_config["db1"][Rails.env]["database"]
#     ActiveRecord::Base.establish_connection MultiMysql::DB1_CONF
#     ActiveRecord::Base.connection.create_database database
#   end

#   task :create_db1 do
#     db_config = YAML.load_file(Rails.root.join "config/database.yml")
#     database = db_config["db2"][Rails.env]["database"]
#     ActiveRecord::Base.establish_connection MultiMysql::DB2_CONF
#     ActiveRecord::Base.connection.create_database database
#   end

#   task :migrate do
#     Rake::Task["db:migrate_db1"].invoke
#     Rake::Task["db:migrate_db2"].invoke
#   end

#   task :migrate_db1 do
#     ActiveRecord::Base.remove_connection
#     ActiveRecord::Base.establish_connection(MultiMysql::DB1_CONF) do
#       puts MultiMysql::DB1_CONF
#       ActiveRecord::Migrator.migrate("db/migrate/db1/")
#     end
#   end

#   task :migrate_db2 do
#     ActiveRecord::Base.remove_connection
#     ActiveRecord::Base.establish_connection MultiMysql::DB2_CONF do
#       puts MultiMysql::DB2_CONF
#       ActiveRecord::Migrator.migrate("db/migrate/db2/")
#     end
#   end
# end
