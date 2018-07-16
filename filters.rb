# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

#detect method in ruby --> returns 1st item in collection for which the
#block returns TRUE. Returns nil if it doesn't find a match.
#select/find_all will iterate until the end of the input list is reached
#returns all item in an array for which the block returned true

def find(id)
  @candidates.detect { |candidate| candidate[:id] == id }
end


def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end


def qualified_candidates(candidates)
  candidates.select { |candidate| experienced?(candidate) &&
    github_points_over_100?(candidate) &&
    knows_ruby_or_python(candidate) &&
    applied_less_15_days?(candidate) &&
    over_17?(candidate) }
end


# More methods will go below

def github_points_100?(candidate)
  candidate[:github_points] >= 100
end


def knows_ruby_or_python(candidate)
  candidate[:languages].include?('Python') ||
  candidate[:languages].include?('Ruby')
end


def applied_recent?(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end


def of_age?(candidate)
  candidate[:age] > 17
end


def ordered_by_qualifications(candidates)
  @candidates.sort_by { |experience| experience[:years_of_experience] }.reverse
    if [:years_of_experience].eql? [:years_of_experience]
      candidates.sort_by { |github_points| git_points[:github_points] }.reverse
    end
end














