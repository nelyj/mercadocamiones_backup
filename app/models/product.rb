class Product < ActiveRecord::Base
  attr_accessible :especificaciones, :precio, :tipo, :venta
end
