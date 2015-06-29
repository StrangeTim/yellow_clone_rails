class AddIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.column :name, :string
    end

    rename_column :businesses, :industry, :industry_id
  end
end
