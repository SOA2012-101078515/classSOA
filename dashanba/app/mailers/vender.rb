class Vender < ActionMailer::Base
  default from: "dashanba.test@gmail.com"
  def confirm(vender,customer,time,people,gift,phone,email)
        mail(:to => vender, :subject => "someone want to come!!", :body=>"customer:"+customer+"\ntime:"+time+"\npeople:"+people+"\ngift:"+gift+"\ncustomer phone:"+phone+"\nemail: "+email+"\n\n\n"+"Here are your customer records:"+"http://dashanba.herokuapp.com/venderdetail")
  end

  def customerconfirm(customeremail,customer,time,people,gift,phone,email)
 	mail(:to => customeremail, :subject => "you have booked dashanba travel", :body=>"customer:"+customer+"\ntime:"+time+"\npeople:"+people+"\ngift:"+gift+"\ncustomer phone:"+phone+"\nemail:"+email)
  end
end
