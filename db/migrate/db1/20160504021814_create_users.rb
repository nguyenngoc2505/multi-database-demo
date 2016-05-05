require_relative './db1_migration_base'
class CreateUsers < Db1MigrationBase
  def change
    super
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
