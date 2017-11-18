class CreatePhoneNs < ActiveRecord::Migration
  def change
    create_table :phone_ns do |t|
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
