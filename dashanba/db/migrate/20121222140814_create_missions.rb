class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.integer :mission_id
      t.string :c_name
      t.string :gift
      t.string :place
      t.string :request
      t.string :v_name
      t.time :start

      t.timestamps
    end
  end
end
