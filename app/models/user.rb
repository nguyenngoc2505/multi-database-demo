class User < ActiveRecord::Base
  establish_connection MultiMysql::DB1_CONF

  has_many :products
end
