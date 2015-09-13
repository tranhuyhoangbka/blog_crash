class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :type
      t.string :name
      t.integer :cost

      t.timestamps null: false
    end
  end
end
