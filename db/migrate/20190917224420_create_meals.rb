class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :type
      t.string :date
      t.string :time
      t.float :weight
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
