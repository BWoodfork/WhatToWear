class DinnerOutfits
  attr_accessor :records, :id

  def initialize
    @records = {}
    @id = 1
  end

  def save(outfit)
    @records[1] = outfit
    @records[2] = outfit
  end
end