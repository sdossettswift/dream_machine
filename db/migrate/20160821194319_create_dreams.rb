class CreateDreams < ActiveRecord::Migration[5.0]
  def change
    create_table :dreams do |t|
      t.string :title
      t.text :body
      t.references :dreamer, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
