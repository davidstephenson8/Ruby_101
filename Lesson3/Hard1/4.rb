def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if words != 4
    return false
  end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    if is_an_ip_number?(word) == false
      return false  
    end
  end
  return true
end