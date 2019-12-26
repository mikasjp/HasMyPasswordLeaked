# Has my password leaked?

Check if your password has been violated as a result of a data breach. The script uses the API provided by [Have I Been Pwned](https://haveibeenpwned.com/).

## 1. Usage

Just run the `main.py` or `main.rb` script and enter the password you want to check.

`python3 python/main.py` or `ruby ruby/main.rb`

## 2. How does it work and is it safe to use this script?

Read the excerpt from the article "[Cloudflare, Privacy and k-Anonymity](https://www.troyhunt.com/ive-just-launched-pwned-passwords-version-2/#cloudflareprivacyandkanonymity)" by the founder of Have I Been Pwned - [Troy Hunt](https://haveibeenpwned.com/About).

### tl;dr

Yes. It's safe to use this tool. Your password will not leak.

The whole concept of this tool is based on [k-anonymity](https://en.wikipedia.org/wiki/K-anonymity) and [password hashes](https://en.wikipedia.org/wiki/Cryptographic_hash_function).

## 3. Disclaimer

If your password is not in the Have I Been Pwned database, it does not mean that it is 100% secure. It only means that it did not leak in any of the [publicly known breaches](https://haveibeenpwned.com/PwnedWebsites).
