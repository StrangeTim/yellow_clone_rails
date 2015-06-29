class AddBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :industry, :string
      t.column :address, :string
      t.column :phone, :string
    end
  end
end
