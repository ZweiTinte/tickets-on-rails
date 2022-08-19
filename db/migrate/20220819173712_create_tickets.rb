class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :description
      t.boolean :done

      t.timestamps
    end
  end
end
