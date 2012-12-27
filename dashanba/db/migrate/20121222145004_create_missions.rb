class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :c_name
      t.string :gift
      t.string :place
      t.text :request
      t.string :v_name
      t.datetime :start
      t.num_of_people :integer

      t.references :customers
      t.references :venders

      t.timestamps
    end
  end
end
