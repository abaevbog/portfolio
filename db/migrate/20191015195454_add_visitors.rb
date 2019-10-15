class AddVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :country
      t.string :region
      t.string :city
    end
  end
end
