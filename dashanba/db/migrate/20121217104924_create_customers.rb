class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :passwd
      t.string :phone
      t.string :record

      t.timestamps
    end
  end
end
