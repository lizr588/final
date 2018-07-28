require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "creating a Recipe" do
    visit recipes_url
    click_on "New Recipe"

    fill_in "Amount", with: @recipe.amount
    fill_in "Ingredient", with: @recipe.ingredient_id
    fill_in "Link", with: @recipe.link
    fill_in "Meal Prep", with: @recipe.meal_prep
    fill_in "Name", with: @recipe.name
    fill_in "Notes", with: @recipe.notes
    fill_in "Rating", with: @recipe.rating
    fill_in "Tried", with: @recipe.tried
    fill_in "Type", with: @recipe.type_id
    fill_in "Unit", with: @recipe.unit
    fill_in "Vegetarian", with: @recipe.vegetarian
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "updating a Recipe" do
    visit recipes_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @recipe.amount
    fill_in "Ingredient", with: @recipe.ingredient_id
    fill_in "Link", with: @recipe.link
    fill_in "Meal Prep", with: @recipe.meal_prep
    fill_in "Name", with: @recipe.name
    fill_in "Notes", with: @recipe.notes
    fill_in "Rating", with: @recipe.rating
    fill_in "Tried", with: @recipe.tried
    fill_in "Type", with: @recipe.type_id
    fill_in "Unit", with: @recipe.unit
    fill_in "Vegetarian", with: @recipe.vegetarian
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe was successfully destroyed"
  end
end
