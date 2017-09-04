# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  output_key = nil
  smallest_value = 1000. #I realize this is bad, and I searched for a different way online for 30 minutes. How do I set a default integer to compare against? If I hardcode a number, it will fail sometimes
  name_hash.each do |key, value| 
    if value < smallest_value
      smallest_value = value
      output_key = key
    end
  end
  output_key
end
