# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'
require './candidate'

## Your test code can go here

 binding.pry

 pp @candidates

# class CandidateFinder
#   #  `candidates` should be an array of Candidate objects here
#   def initialize(candidates)
#     @candidates = candidates
#   end

  # Class method which takes an array of hashes and initializes Candidate objects from the hashes
  # def self.init_from_hash(candidates)
  #   #Map hash objects to Candidate objects
  #   candidatesObjects = candidates.map { |c| Candidate.new(c) }
  #   #Call the initialize function with our new array of Candidates
  #   self.new(candidatesObjects)
  # end

#   def find(id)
#     @candidates.select { |c| c.id == id }.first
#   end

#   def qualified
#     @candidates.select { |c| c.qualified? }
#   end
# end

# cf = CandidateFinder.init_from_hash(@candidates)
# pp cf.qualified



















