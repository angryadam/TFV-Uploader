class CreateRecordings < ActiveRecord::Migration[5.1]
  def change
    create_table :recordings do |t|
      t.string :name
      t.text :description
      t.string :recording

      t.timestamps
    end
  end
end
