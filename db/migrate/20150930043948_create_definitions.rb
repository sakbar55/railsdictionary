class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
      t.string :word
      t.text :meaning

      t.timestamps null: false
    end
  end
end
