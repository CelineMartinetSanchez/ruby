JOKES = {
    gmail: "you're being watched by Big Brother bro.", 
    lewagon: "you're skilled and capable",
    caramail: "you still exist? Amazing.",
    yopmail: "Enjoy, your lifetime is counted.",
    aol: "you rock!",
    yahoo: "yeah!"
  }


def parse_mail(mail_address)
  # 1. How do you model the jokes ? Pick up the adequate line
  #$jokes = [["gmail", "you're an average but modern person"],["lewagon", "you're skilled and capable"]] 
  #jokes = "gmail,you're an average but modern person\nlewagon;you're skilled and capable" 

  if mail_address.include?("@") 
  	# Change Name
  	name = mail_address.match(/^[^@]*/).to_s.split(".")
  	nice_name = name.each { |name| name.capitalize!}.join(" ")

  	# Provider
  	provider = mail_address.match(/[@](\w*)/).to_s.split(/\W/)[-1]

  	# Return message
  	"Hello #{nice_name}, #{JOKES[provider.to_sym]}"

  else 
  	"This is a wrong e-mail mail_address"
  end
 
end

puts "Enter your e-mail address"
e_mail = gets.chomp
p parse_mail(e_mail)