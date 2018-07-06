# AnagramAlgo

[![Gem Version](https://badge.fury.io/rb/anagram_algo.svg)](https://badge.fury.io/rb/anagram_algo)
[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

#### AnagramAlgo is a simple algorithm to find and return list of anagrams from your text input.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'anagram_algo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install anagram_algo

## Usage

1) Add your text to a hash with `:text` symbol key, then pass the arguments to `AnagramAlgo.parse(args)` like the example below.  If you don't pass any args, and just run `AnagramAlgo.parse` it will return sample data for testing.

```
args = { text: "Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test? That cider is so sour I cried. It's not good to study in a dusty room. Would you like to see that thing at night? My chin is almost an inch long. Grab something cool to brag about. Don't act like a cat in public, please. It was our Daisy, robed like a princess, but bored all day long. Let's save that vase for later. Can an angel glean upon us? I seriously got stressed from resisting those desserts. Do you ever fluster, or are you always restful?  Do you prefer the smell of lemon or melon?" }

anagram_hash = AnagramAlgo.parse(args)
```

2) The returned data will be in hash format like below:

You can access the data, like so: `anagram_hash[:results]` and `anagram_hash[:text]`

```
{
  :results=>
  [
    {:string=>"Can a rat eat tar", :anagrams=>"rat, tar"},
    {:string=>"How big is the arc of that car door", :anagrams=>"arc, car"},
    {:string=>"Could you pass me the book just below your elbow", :anagrams=>"below, elbow"},
    {:string=>"Does your state have a coffee taste test", :anagrams=>"state, taste"},
    {:string=>"That cider is so sour I cried", :anagrams=>"cider, cried"},
    {:string=>"It's not good to study in a dusty room", :anagrams=>"dusty, study"},
    {:string=>"Would you like to see that thing at night", :anagrams=>"night, thing"},
    {:string=>"My chin is almost an inch long", :anagrams=>"chin, inch"},
    {:string=>"Grab something cool to brag about", :anagrams=>"brag, grab"},
    {:string=>"Don't act like a cat in public, please", :anagrams=>"act, cat"},
    {:string=>"It was our Daisy, robed like a princess, but bored all day long", :anagrams=>"bored, robed"},
    {:string=>"Let's save that vase for later", :anagrams=>"save, vase"},
    {:string=>"Can an angel glean upon us", :anagrams=>"angel, glean"},
    {:string=>"I seriously got stressed from resisting those desserts", :anagrams=>"desserts, stressed"},
    {:string=>"Do you ever fluster, or are you always restful", :anagrams=>"fluster, restful"},
    {:string=>"Do you prefer the smell of lemon or melon", :anagrams=>"lemon, melon"}
   ],
 :text=>
  "Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test? That cider is so sour I cried. It's not good to study in a dusty room. Would you like to see that thing at night? My chin is almost an inch long. Grab something cool to brag about. Don't act like a cat in public, please. It was our Daisy, robed like a princess, but bored all day long. Let's save that vase for later. Can an angel glean upon us? I seriously got stressed from resisting those desserts. Do you ever fluster, or are you always restful?  Do you prefer the smell of lemon or melon?"
}
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/4rlm/anagram_algo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AnagramAlgo project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/4rlm/anagram_algo/blob/master/CODE_OF_CONDUCT.md).
