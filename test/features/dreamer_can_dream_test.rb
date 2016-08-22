require "test_helper"

class DreamerCanDreamTest < Capybara::Rails::TestCase
  setup do
    Dreamer.create! email: "example@example.com", name: "example"
  end

 test "DreamerCanDream" do
  visit new_dream_path
   select "example", from:  "Dreamer"
   fill_in "Title", with: "Example Title"
   fill_in "Body",  with: "Example Body"
   click_button "Create Dream"
   assert_content "Dreams"
 end
end
