require 'pony'
require 'io/console'

# When entering the password in a console it will be not visible for others
# through the library 'io/console'
puts "Please enter your email"
my_mail = STDIN.gets.chomp

# If sending through google account please generate an application specific password
# Follow the instructions here https://support.google.com/accounts/answer/185833?hl=en
puts "Please enter the password from your #{my_mail}"
password = STDIN.noecho(&:gets).chomp

puts "Please enter an email receiver"
send_to = STDIN.gets.chomp

puts "Please enter the subject"
subject = STDIN.gets.chomp

puts "Please enter your message"
body = STDIN.gets.encode("UTF-8").chomp

# Sending a message via Pony gem
Pony.mail(
  subject: subject,
  body: body,
  to: send_to,
  from: my_mail,
  via: :smtp,
  via_options: {
      address: 'smtp.gmail.com',
      port: '587',
      enable_starttls_auto: true,
      user_name: my_mail,
      password: password,
      authentication: :plain
  }

)

puts "Congratulations! Your message was just sent."
