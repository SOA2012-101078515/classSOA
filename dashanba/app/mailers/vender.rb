class Vender < ActionMailer::Base
  default from: "dashanba.test@gmail.com"
  def confirm(vender,customer,time,people,gift)
        mail(:to => vender, :subject => "someone want to come!!", :body=>"customer:"+customer+"\ntime:"+time+"\npeople:"+people+"\ngift:"+gift)
  end
end
