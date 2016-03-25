#-encrypt system (maybe with .next) so it will advance every letter one letter 
#forward. lowercase/uppercase make no difference
# loop this while password is not nil
#      
#     step 1: password[0] = pass_var
#     step 2: abc_string.index[whatever is after 2] = abc_encrypt
#     step 3: pass_var += abc_encrypt    

def encrypt (password)
  # Uppercase and spaces will be ignored!
  password.delete!(" ")
  password.downcase!
  encrypted_password = ""
  while password != ""
    pass_var = password[0].next
    if pass_var == "aa"
      pass_var = "a"
    end
    password = password[1..-1]
    encrypted_password += pass_var
  end
  encrypted_password
end



# -decrypt reverses .next, no .reverse, use index to go backward one letter.
#     "abcdefghijklmnopqrstuvwxyz" = key

#     step 1: password[0]
#         key.index(whatever the first letter is)
#     step 2: abc_string.index[whatever is next in index = abc_decrypt, 
#     step 3: answer = abc_decrypt +=

def decrypt (encrypted_password)
  # Uppercase and spaces will be ignored!
  encrypted_password.delete!(" ")
  encrypted_password.downcase!
  password = ""
  key = "abcdefghijklmnopqrstuvwxyz"
  while encrypted_password != ""
    key_index = key.index(encrypted_password[0])
    pass_var = key[key_index - 1]
    encrypted_password = encrypted_password[1..-1]
    password += pass_var
  end
  password
end

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

puts decrypt(encrypt("The duck flies at midnight"))