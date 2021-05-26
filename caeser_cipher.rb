def caeser_cipher(message, offset)
  # Convert message into array of ascii number
  # loop over the array and apply the offset
  message.split('').map do | char | 
    case char.ord
      # ordinals A - Z
    when 65..90
      # check if ord plus offset will need to be wrapped for uppercase
      if char.ord + offset > 90
        # add offset to ord then subtract ceiling(90) plus floor(65) - 1
        ord_offset = char.ord + offset - 90 + 64
        ciphered_char = ord_offset.chr
      else
        # add offset to ord
        ord_offset = char.ord + offset
        ciphered_char = ord_offset.chr
      end
    # character is between a - z 
    when 97..122
      # check if ord plus offset will need to be wrapped for lowercase
      if char.ord + offset > 122
        # add offset to ord then subtract ceiling(122) plus floor(97) - 1
        ord_offset = char.ord + offset - 122 + 96
        ciphered_char = ord_offset.chr
      else
        # add offset to ord
        ord_offset = char.ord + offset
        ciphered_char = ord_offset.chr
      end
    # character is not on of a - z or A - Z and does not get
    else
      char
    end
  end.join('')
end

p caeser_cipher("a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0", 2)