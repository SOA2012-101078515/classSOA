class UserMailer < ActionMailer::Base
 default from: "dashanba.test@gmail.com"

  def confirm(customeremail,customer,time,people,gift,phone)
        mail(:to => customeremail, :subject => "you have booked a dashanba travel", :body=>"customer:"+customer+"\ntime:"+time+"\npeople:"+people+"\ngift:"+gift+"\ncustomer phone:"+phone)
  end

end
