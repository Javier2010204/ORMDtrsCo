class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :state, default: "pending"
      t.string :address
      t.text :comment

      t.timestamps
    end
  end
end
