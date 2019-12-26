require 'io/console'
require 'digest/sha1'
require 'httparty'

api_url = 'https://api.pwnedpasswords.com/range/'

# Get password from input
password = IO::console.getpass 'Password: '

# Calculate password hash
password_hash = Digest::SHA1.hexdigest(password).upcase

# Call Have I Been Pwned API
call = HTTParty.get(api_url + password_hash[0,5])

# Check if password hash is in Have I Been Pwned DB
is_cracked = call.split.collect {|x| x.split(':').first}.include? password_hash[5..-1]

# Print result
puts is_cracked ? "Your password has been leaked and is in the Have I Been Pwned database." : "Your password appears* to be secure because it is not in the Have I Been Pwned database."
