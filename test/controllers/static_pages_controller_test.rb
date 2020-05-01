require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@title}"
  end

  test "should get help" do
    get static_pages_help_path
    assert_response :success
    assert_select "title", "Help | #{@title}"
  end

  test "should get about" do
    get static_pages_about_path
    assert_response :success
    assert_select "title", "About | #{@title}"
  end
end
