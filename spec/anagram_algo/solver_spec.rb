# rspec spec/anagram_algo/solver_spec.rb

require 'spec_helper'

describe 'Solver' do
  let(:solver_obj) { AnagramAlgo::Solver.new }
  # before { solver_obj.inst = inst }

  let(:args) do
    {
      text: 'Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test?'
    }
  end

  describe '#run_anagrams' do
    let(:anagrams) do
      {
        results:         [{ string: 'Can a rat eat tar', anagrams: 'rat, tar' },
                          { string: 'How big is the arc of that car door', anagrams: 'arc, car' },
                          { string: 'Could you pass me the book just below your elbow', anagrams: 'below, elbow' },
                          { string: 'Does your state have a coffee taste test', anagrams: 'state, taste' }],
        text:         'Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test?'
      }
    end

    it 'run_anagrams' do
      expect(solver_obj.run_anagrams(args)).to eql(anagrams)
    end
  end

  describe '#parse_string_block' do
    let(:string_block) { 'Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test?' }

    let(:strings) do
      ['Can a rat eat tar', 'How big is the arc of that car door', 'Could you pass me the book just below your elbow', 'Does your state have a coffee taste test']
    end

    it 'parse_string_block' do
      expect(solver_obj.parse_string_block(string_block)).to eql(strings)
    end
  end

  describe '#find_anagrams' do
    let(:word_string) { 'Can a rat eat tar' }
    let(:anagrams) { 'rat, tar' }

    it 'find_anagrams' do
      expect(solver_obj.find_anagrams(word_string)).to eql(anagrams)
    end
  end

  describe '#anagrams_in_string_hsh' do
    let(:string_hsh) do
      { 'a' => 'a', 'can' => 'acn', 'eat' => 'aet', 'rat' => 'art', 'tar' => 'art' }
    end
    let(:anagrams) { 'rat, tar' }

    it 'anagrams_in_string_hsh' do
      expect(solver_obj.anagrams_in_string_hsh(string_hsh)).to eql(anagrams)
    end
  end

  describe '#find_duplicates' do
    let(:formatted_strs) { %w[a acn aet art art] }
    let(:dups) { ['art'] }

    it 'find_duplicates' do
      expect(solver_obj.find_duplicates(formatted_strs)).to eql(dups)
    end
  end

  describe '#format_string' do
    let(:string) { 'eat' }
    let(:formatted_string) { 'aet' }

    it 'format_string' do
      expect(solver_obj.format_string(string)).to eql(formatted_string)
    end
  end
end
