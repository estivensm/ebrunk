require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { address: @property.address, area: @property.area, blueprints: @property.blueprints, city: @property.city, country_id: @property.country_id, department: @property.department, images: @property.images, latitude: @property.latitude, length: @property.length, levels: @property.levels, number_bathrooms: @property.number_bathrooms, number_bedrooms: @property.number_bedrooms, prince: @property.prince, property_type: @property.property_type, runner_id: @property.runner_id, state: @property.state, state_favorite: @property.state_favorite, stratum: @property.stratum, title: @property.title, type_of_offer: @property.type_of_offer, url_video: @property.url_video } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { address: @property.address, area: @property.area, blueprints: @property.blueprints, city: @property.city, country_id: @property.country_id, department: @property.department, images: @property.images, latitude: @property.latitude, length: @property.length, levels: @property.levels, number_bathrooms: @property.number_bathrooms, number_bedrooms: @property.number_bedrooms, prince: @property.prince, property_type: @property.property_type, runner_id: @property.runner_id, state: @property.state, state_favorite: @property.state_favorite, stratum: @property.stratum, title: @property.title, type_of_offer: @property.type_of_offer, url_video: @property.url_video } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
