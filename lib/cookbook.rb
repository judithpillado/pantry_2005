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

end
