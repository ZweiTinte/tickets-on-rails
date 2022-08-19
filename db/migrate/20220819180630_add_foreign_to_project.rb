class AddForeignToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :lane_id, :integer
    add_column :lanes, :project_id, :integer
    add_foreign_key :tickets, :lanes
    add_foreign_key :lanes, :projects
  end
end
