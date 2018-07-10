require "bundler/gem_tasks"
require "rspec/core/rake_task"

require 'anagram_algo'
# require 'webs_criteria'


RSpec::Core::RakeTask.new(:spec)

task :default => :spec
task :test => :spec

###################
task :console do
  require 'irb'
  require 'irb/completion'
  require 'anagram_algo'
  require "active_support/all"
  ARGV.clear

  anagram_hash = run_anagram

  IRB.start
end


def run_anagram
  # args = {text: "Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test?" }

  # args = { text: "Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test? That cider is so sour I cried. It's not good to study in a dusty room. Would you like to see that thing at night? My chin is almost an inch long. Grab something cool to brag about. Don't act like a cat in public, please. It was our Daisy, robed like a princess, but bored all day long. Let's save that vase for later. Can an angel glean upon us? I seriously got stressed from resisting those desserts. Do you ever fluster, or are you always restful?  Do you prefer the smell of lemon or melon?" }

  args = {text: "Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test?"}

  anagram_hash = AnagramAlgo.parse(args)

  # scraper = LinkScraper::Scrape.new({text_criteria: text_criteria, path_criteria: path_criteria})
  # scraped_links = scraper.start('https://en.wikipedia.org/wiki/Austin%2C_Texas')
  # binding.pry

  # scraper = LinkScraper::Scrape.new(WebsCriteria.all_scrub_web_criteria)
end
