if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :domain => 'heroku.com',
    :enable_starttls_auto => true,
    :user_name => 'app18796544@heroku.com',
    :password => 'tcpxtlwn'
  }
end