class Db2MigrationBase < ActiveRecord::Migration
  protected
  def change
    @connection = ActiveRecord::Base.establish_connection(MultiMysql::DB2_CONF).connection
  end
end
