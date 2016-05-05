require_relative './db2_migration_base'
class CreateProducts < Db2MigrationBase
  def change
    super
    ActiveRecord::Base.connection.create_table :products do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
