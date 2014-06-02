class OutfitOptions
  def find_outfit_for(settings)
    if settings == { :occasion=>"brunch", 
                     :with_who=>"friends"}
      outfit = brunch_with_friends
    end
    outfit
  end

  def brunch_with_friends
    "Long grey dress, teal bag, flip flops."
  end
end
