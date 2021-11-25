require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
   def welcome
    user = User.last
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(user: user).welcome
  end

end
