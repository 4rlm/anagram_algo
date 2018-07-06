
module AnagramAlgo
  class Solver

    # AlgoService.new.run_anagrams({string: 'lemon apple madam cinema restful fluster'})
    def run_anagrams(args = {})
      string_block = args.fetch(:text, nil)
      string_block = sample_string_block if !string_block.present?
      parsed_strings = parse_string_block(string_block)

      results = parsed_strings.map do |string|
        { string: string, anagrams: find_anagrams(string) }
      end

      anagram_hash = { results: results, text: string_block }
    end


    def parse_string_block(string_block)
      strings = string_block.split(/\.\s+|!|\?/)
      strings = strings.map { |str|  str.squeeze(' ') }
      strings = strings.map(&:strip)
    end


    # array = ['madam', 'restful', 'fluster']
    def find_anagrams(word_string)
      original_strs = word_string.downcase.split(/\W+/).sort
      string_hsh = original_strs.zip(original_strs).to_h
      string_hsh.map { |k,v| string_hsh[v] = format_string(v) }
      anagrams = anagrams_in_string_hsh(string_hsh)
    end

    def anagrams_in_string_hsh(string_hsh)
      duplicates = find_duplicates(string_hsh.values)
      anagrams = string_hsh.select do |k, v|
        duplicates.include?(v)
      end
      anagrams = anagrams.keys.join(', ')
    end

    def find_duplicates(formatted_strs)
      duplicates = formatted_strs.select do |str|
        formatted_strs.count(str) > 1
      end
      duplicates.uniq
    end

    def format_string(string)
      formatted_string = string.downcase.chars.sort.join('')
    end

    def sample_string_block
      "Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test? That cider is so sour I cried. It's not good to study in a dusty room. Would you like to see that thing at night? My chin is almost an inch long. Grab something cool to brag about. Don't act like a cat in public, please. It was our Daisy, robed like a princess, but bored all day long. Let's save that vase for later. Can an angel glean upon us? I seriously got stressed from resisting those desserts. Do you ever fluster, or are you always restful?  Do you prefer the smell of lemon or melon?"
    end

  end
end
