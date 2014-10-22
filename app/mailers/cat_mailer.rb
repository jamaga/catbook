class CatMailer < ActionMailer::Base
	def welcome(cat)
  @cat = cat
  email_with_name = "#{@cat.name} <#{@cat.email}>"
  mail(to: email_with_name, subject: 'Welcome cute cute kitty kat!')
end

	config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method       = :smtp
  config.action_mailer.smtp_settings         = {
    address:              'mail.esdeluxe.com',
    port:                 25,
    domain:               'mail.esdeluxe.com',
    user_name:            'catbook@esdeluxe.com',
    password:             ENV["SMPT_PASSWORD"],
    authentication:       'plain',
    enable_starttls_auto: true,
    openssl_verify_mode:  'none'
  }
end
