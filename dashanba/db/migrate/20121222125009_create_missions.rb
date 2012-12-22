class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.integer :mission_id
      t.string :c_name
      t.string :v_name
      t.string :place
      t.string :gift
      t.text :request

      t.timestamps
    end
  end
end
