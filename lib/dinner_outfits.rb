class DinnerOutfits
  attr_accessor :records, :id

  def initialize(records = {}, id = 1)
    @records = records
    @id = id
  end

  def save(outfit)
  end
end