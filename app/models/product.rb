class Product < ActiveRecord::Base
  attr_accessible :especificaciones, :precio, :tipo, :venta, :user_id
  belongs_to :user
end
