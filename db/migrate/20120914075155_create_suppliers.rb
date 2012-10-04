class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :company
      t.string :street
      t.string :postcode
      t.string :city
      t.float :longitude
      t.float :latitude
      t.boolean :gmaps
      t.string :phone
      t.string :fax
      t.string :mail

      t.timestamps
    end
  end
end
