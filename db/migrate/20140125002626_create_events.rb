class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
