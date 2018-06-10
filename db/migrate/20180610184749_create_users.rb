class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.references :group, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
