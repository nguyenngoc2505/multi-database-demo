class Product < ActiveRecord::Base
  establish_connection MultiMysql::DB2_CONF

  belongs_to :user
end
