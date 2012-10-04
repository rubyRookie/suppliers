class AddCategoriesSuppliersJoinTable< ActiveRecord::Migration
  def self.up
    create_table :categories_suppliers, :id => false do |t|
      t.integer :category_id
      t.integer :supplier_id
    end
  end

  def self.down
    drop_table :categories_suppliers
  end
end
