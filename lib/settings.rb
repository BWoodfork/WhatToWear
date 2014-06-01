class Settings
  def initialize(params = {})
    @occasion    = params[:occassion]
    @time_of_day = params[:time_of_day]
    @with_who    = params[:with_who]
  end
end
