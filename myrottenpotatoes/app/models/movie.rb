class Movie < ActiveRecord::Base
  before_save :capitalize_title
  def capitalize_title
    self.title = self.title.split(/\s+/).map(&:downcase).
      map(&:capitalize).join(' ')
  end
end
# now try in console:
m = Movie.create!(:title => 'STAR  wars', :release_date => '27-5-1977')
m.title  # => "Star Wars"
