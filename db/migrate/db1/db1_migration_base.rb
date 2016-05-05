class Db1MigrationBase < ActiveRecord::Migration
  protected
  def change
    @connection = ActiveRecord::Base.establish_connection(MultiMysql::DB1_CONF).connection
  end
end
