require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Property" do
    visit properties_url
    click_on "New Property"

    fill_in "Address", with: @property.address
    fill_in "Area", with: @property.area
    fill_in "Blueprints", with: @property.blueprints
    fill_in "City", with: @property.city
    fill_in "Country", with: @property.country_id
    fill_in "Department", with: @property.department
    fill_in "Images", with: @property.images
    fill_in "Latitude", with: @property.latitude
    fill_in "Length", with: @property.length
    fill_in "Levels", with: @property.levels
    fill_in "Number Bathrooms", with: @property.number_bathrooms
    fill_in "Number Bedrooms", with: @property.number_bedrooms
    fill_in "Prince", with: @property.prince
    fill_in "Property Type", with: @property.property_type
    fill_in "Runner", with: @property.runner_id
    fill_in "State", with: @property.state
    fill_in "State Favorite", with: @property.state_favorite
    fill_in "Stratum", with: @property.stratum
    fill_in "Title", with: @property.title
    fill_in "Type Of Offer", with: @property.type_of_offer
    fill_in "Url Video", with: @property.url_video
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "updating a Property" do
    visit properties_url
    click_on "Edit", match: :first

    fill_in "Address", with: @property.address
    fill_in "Area", with: @property.area
    fill_in "Blueprints", with: @property.blueprints
    fill_in "City", with: @property.city
    fill_in "Country", with: @property.country_id
    fill_in "Department", with: @property.department
    fill_in "Images", with: @property.images
    fill_in "Latitude", with: @property.latitude
    fill_in "Length", with: @property.length
    fill_in "Levels", with: @property.levels
    fill_in "Number Bathrooms", with: @property.number_bathrooms
    fill_in "Number Bedrooms", with: @property.number_bedrooms
    fill_in "Prince", with: @property.prince
    fill_in "Property Type", with: @property.property_type
    fill_in "Runner", with: @property.runner_id
    fill_in "State", with: @property.state
    fill_in "State Favorite", with: @property.state_favorite
    fill_in "Stratum", with: @property.stratum
    fill_in "Title", with: @property.title
    fill_in "Type Of Offer", with: @property.type_of_offer
    fill_in "Url Video", with: @property.url_video
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "destroying a Property" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property was successfully destroyed"
  end
end
