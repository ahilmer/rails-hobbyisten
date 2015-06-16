require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "the truth" do
     assert users(:pete).id > 0
  end
end
