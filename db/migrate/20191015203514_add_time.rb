class AddTime < ActiveRecord::Migration[5.2]
  def change
    add_column :visitors, :time, :string
  end
end
