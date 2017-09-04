# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# def key_for_min_value(name_hash)
#   output_key = nil
#   smallest_value = 1000. #I realize this is bad, and I searched for a different way online for 30 minutes. How do I set a default integer to compare against? If I hardcode a number, it will fail sometimes
#   name_hash.each do |key, value| #If I could use #values, I could set it to the first number, or name_hash.values.first or something. Or if I used a loop, I could compare hash[0] to hash[1], for instance, on each loop.
#     if value < smallest_value
#       smallest_value = value
#       output_key = key
#     end
#   end
#   output_key
# end

#Just checked the solution on github, and its pretty. I was trying to compare 1 > nil, for instance (type_error), but the solution has 'if value == nil || value < lowest_value'. Elegant, and duh. Re-solving below:

def key_for_min_value(name_hash)
  output_key = nil
  smallest_value = nil
  name_hash.each do |key, value|
    if smallest_value == nil || value < smallest_value #this should have been obvious. Got about 3 hours of sleep :D
      smallest_value = value
      output_key = key
    end
  end
  output_key
end
