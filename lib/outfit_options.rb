class OutfitOptions
  def find_outfit_for(settings)
    if settings == brunch_with_friends_settings
      outfit = brunch_with_friends
    elsif settings == dinner_with_family_settings
      outfit = dinner_with_family
    else
      outfit = dinner_with_friends
    end
    outfit
  end

  def brunch_with_friends
    "Long grey dress, teal bag, flip flops."
  end

  def brunch_with_friends_settings
    { :occasion=>"brunch", 
      :with_who=>"friends" }
  end

  def dinner_with_family_settings
    { :occasion=>"dinner",
      :with_who=>"family" }
  end

  def dinner_with_friends
    "Black dress"
  end

  def dinner_with_family
    "Jeans and tee"
  end
end