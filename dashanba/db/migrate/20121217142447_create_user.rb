class CreateUser < ActiveRecord::Migration
  def up
	create_table 'user' do |t|
	t.integer 'u_id'
	t.string 'u_account'
	t.string 'u_password'
	t.string 'u_name'
	t.string 'u_phone'
	t.timestamps
	end
  end

  def down
  end
end
