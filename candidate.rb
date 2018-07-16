class Candidate
  attr_reader :id

  def initialize(hash)
    @id = hash[:id]
    @years_of_experience = hash[:years_of_experience]
    @github_points = hash[:github_points]
    @languages = hash[:languages]
    @date_applied = hash[:date_applied]
    @age = hash[:age]
  end

  def qualified?
    experienced? &&
    has_github_points? &&
    knows_languages? &&
    recent_application? &&
    over_age_of_majority?
  end

  def experienced?
    @years_of_experience >= 2
  end

  def has_github_points?
    @github_points >= 100
  end

  def knows_languages?
    @languages.any? { |l| l == 'Ruby' || l == 'Python' }
  end

  def recent_application?
    @date_applied >= 15.days.ago
  end

  def over_age_of_majority?
    @age > 17
  end
end























