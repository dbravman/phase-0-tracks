## OUR METHOD DECLARATIONS

def encrypt (password)
  # Uppercase and spaces will be ignored!
  ## Because we are getting rid of them...
  password.delete!(" ")
  password.downcase!
  encrypted_password = ""
  while password != ""
    ## We're retrieving the next letter
    pass_var = password[0].next
    ## Creating our exception for 'z'
    if pass_var == "aa"
      pass_var = "a"
    end
    ## Recycling our old letters
    password = password[1..-1]
    ## Now adding them with our new letter!
    encrypted_password += pass_var
  end
  ## And now we're implicitly returning it
  encrypted_password
end

def decrypt (encrypted_password)
  # Uppercase and spaces will be ignored!
  ## Because we are getting rid of them...
  encrypted_password.delete!(" ")
  encrypted_password.downcase!
  password = ""
  ## Listing all letters for retrieval
  key = "abcdefghijklmnopqrstuvwxyz"
  while encrypted_password != ""
    ## We're retrieving the next letter
    key_index = key.index(encrypted_password[0])
    ## And now we're getting the letter before it!
    pass_var = key[key_index - 1]
    ## Recycling our old letters
    encrypted_password = encrypted_password[1..-1]
    ## Now adding them with our new letter!
    password += pass_var
  end
  ## And now we're implicitly returning it
  password
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")

# puts decrypt(encrypt("The duck flies at midnight"))

## OUR DRIVER CODE

## Ask personnel if want to decrypt or encrypt
puts "Would you like to encrypt or decrypt a password?"
mode = gets.chomp

## Asking for password
puts "What is the password?"
pword = gets.chomp

## Do what they say and print
if mode == "encrypt"
  puts encrypt(pword)
elsif mode == "decrypt"
  puts decrypt(pword)
else
  puts "self destructing in 10... 9.... 8...."
end

## Exit