class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    all_ingredients = @recipes.flat_map do |recipe|
      recipe.ingredients
    end
    all_ingredients.map do |ingredient|
      ingredient.name
    end.uniq
  end

  def highest_calorie_meal
    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end

  def summary
    
  end

end
