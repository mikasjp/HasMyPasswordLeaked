import getpass
import hashlib
import requests

api_url = "https://api.pwnedpasswords.com/range/"

# Get password from input
password = getpass.getpass().encode("utf-8")

# Calculate password hash
password_hash = hashlib.sha1(password).hexdigest().upper()

# Call Have I Been Pwned API
request = requests.get(api_url + password_hash[:5])

# Check if password hash is in Have I Been Pwned DB
is_cracked = password_hash[5:] in [x.split(":")[0] for x in request.text.split("\n")]

# Print result
print("Your password has been leaked and is in the Have I Been Pwned database." if is_cracked else "Your password appears* to be secure because it is not in the Have I Been Pwned database.")
