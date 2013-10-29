class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :tipo
      t.float :precio
      t.boolean :venta
      t.text :especificaciones

      t.timestamps
    end
  end
end
