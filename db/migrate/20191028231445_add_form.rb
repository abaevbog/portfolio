class AddForm < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :city
      t.string :street
      t.string :message
      t.boolean :clicked
      t.string :name
    end
  end
end
