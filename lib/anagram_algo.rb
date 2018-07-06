require "anagram_algo/version"
require "anagram_algo/solver"
require 'pry'

module AnagramAlgo

  def self.parse(args={})
    anagram_hash = self::Solver.new.run_anagrams(args)
  end

end
