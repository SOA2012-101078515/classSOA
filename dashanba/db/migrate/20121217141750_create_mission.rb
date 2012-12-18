class CreateMission < ActiveRecord::Migration
  def up
	create_table 'mission' do |t|
	t.integer 'm_id'
	t.integer 'v_id'
	t.integer 'u_id'
	t.datetime 'MissionTime'
	t.datetime 'SingUpTime'
	t.string 'BeforePhoto'
	t.string 'AfterPhoto'
	t.string 'FinishFlag' #Y/N (finish:Y)
	t.datetime 'FinishTime'

	t.timestamps
	end
  end

  def down
  end
end
