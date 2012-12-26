class CreateVenders < ActiveRecord::Migration
  def change
    create_table :venders do |t|
      t.string :name
      t.string :passwd
      t.string :realname
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
