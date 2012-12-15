class Movie < ActiveRecord::Base


  RATINGS = %w[G PG PG-13 R NC-17]  #  %w[] shortcut for array of strings
  validates :title, :presence => true
  validates :release_date, :presence => true
  validate :released_2009_or_later # uses custom validator below
  #validates :rating, :inclusion => {:in => RATINGS}, :unless => :grandfathered?
  def released_2009_or_later
    errors.add(:release_date, 'must be 2009 or later') if
      self.release_date < Date.parse('1 Jan 2009')
  end
  #def grandfathered? ; self.release_date >= @@grandfathered_date ; end

  has_many :reviews

  attr_accessible :title, :release_date, :rating
  before_save :capitalize_title
  class Movie::InvalidKeyError < StandardError ; end

  def self.api_key
  '7857317175ced766683df9da9c41aff5' # replace with YOUR Tmdb key
  end

  def self.find_in_tmdb(string)
	Tmdb.api_key = self.api_key
	begin
	TmdbMovie.find(:title => string)
	rescue ArgumentError => tmdb_error
	raise Movie::InvalidKeyError, tmdb_error.message
	rescue RuntimeError => tmdb_error
	if tmdb_error.message =~ /status code '404'/
	raise Movie::InvalidKeyError, tmdb_error.message
	else
	raise RuntimeError, tmdb_error.message
	end
	end      
  end


  def capitalize_title
	self.title = self.title.split(/\s+/).map(&:downcase).
	map(&:capitalize).join(' ')
  end
end
