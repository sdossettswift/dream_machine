class CreateDreamers < ActiveRecord::Migration[5.0]
  def change
    create_table :dreamers do |t|
      t.string :name
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
