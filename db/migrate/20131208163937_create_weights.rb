class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.date :date
      t.integer :user_id
      t.decimal :weight

      t.timestamps
    end
    add_index :weights, [:user_id, :weight]
  end
end
