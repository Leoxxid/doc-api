class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :street
      t.string :number

      t.timestamps
    end
  end
end
