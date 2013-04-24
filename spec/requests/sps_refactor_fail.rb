require 'spec_helper'

describe "StaticPages" do

	contact_page = StaticPage.new("Contact", "Contact")
	home_page = StaticPage.new("Sample App", "")
	help_page = StaticPage.new("Help", "Help")
	about_page = StaticPage.new("About Us", "About")

	static_pages = [home_page, contact_page, help_page, about_page]

	static_pages.each do |sp|
		sp.test_me
	end

end
#	it "should have the right links on the layout" do
#		visit root_path
#		click_link "About"
#		page.should have_selector 'title', text: full_title('About Us')
#		click_link "Help"
#		page.should have_selector 'title', text: full_title('Help')
#		click_link "About"
#		page.should have_selector 'title', text: full_title('About Us')
#		click_link "About"
#		page.should have_selector 'title', text: full_title('About Us')
#	end

