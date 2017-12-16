class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum('rating')
  end

  def self.most_popular_show
    show = Show.where("rating = ?",Show.maximum('rating'))
    show.first
  end

  def self.lowest_rating
    Show.minimum('rating')
  end

  def self.least_popular_show
    show = Show.where("rating = ?",self.lowest_rating)
    show.first
  end
end
