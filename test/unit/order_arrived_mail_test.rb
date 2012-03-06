require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class CustomerMailerTest < ActionMailer::TestCase
  include MailOutput

  tests CustomerMailer

  context "customer mailer" do

    should "run order_arrived" do
      CustomerrMailer.order_arrived(Factory(Factory(:user))
    end
  
  end
end
