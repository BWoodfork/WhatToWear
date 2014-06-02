class OutfitOptions
  def find_outfit_for(settings)
    if settings == { :occasion=>"brunch", 
                     :time_of_day=>"noon", 
                     :with_who=>"friends"}
      outfit = brunch_noon_friends
    end
    outfit
  end

  def brunch_noon_friends
    "Long grey dress, teal bag, flip flops."
  end
end
