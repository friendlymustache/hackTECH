class AddSchoolToEvent < ActiveRecord::Migration
  def change
    add_column :events, :school, :string
  end
end
