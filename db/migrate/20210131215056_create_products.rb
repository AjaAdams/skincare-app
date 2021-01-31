class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :type
      t.string :brand
      t.string :name
      t.string :time
      t.string :step
      t.string :image

      t.timestamps
    end
  end
end
