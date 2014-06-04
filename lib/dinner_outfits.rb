class DinnerOutfits
  attr_accessor :records, :id

  def initialize
    @records = {}
    @id = 1
  end

  def save(outfit)
    @records[@id] = outfit
    @records[@id + 1] = outfit
  end
end