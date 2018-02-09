require 'test_helper'

class BooksysControllerTest < ActionController::TestCase
  test "should get sch" do
    get :sch
    assert_response :success
  end

end
