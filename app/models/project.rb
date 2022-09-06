class Project < ApplicationRecord
  validates_presence_of :name, :material
  belongs_to :challenge

  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects

  def count_of_contestants
    self.contestants.count
  end

  def average_years_of_ex
    base = 0
    average = 0

    self.contestants.each do |contestant|
      base += count_of_contestants
      average += contestant.years_of_experience
    end
    new_average = average/base
  end
end