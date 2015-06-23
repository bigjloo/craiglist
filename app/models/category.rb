class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts

  def self.print
    arr = []
    Category.all.each do |category|
      arr << category
    end
    arr
  end
end
