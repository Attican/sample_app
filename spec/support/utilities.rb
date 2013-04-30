class StaticPage
	def initialize(heading, page_title)
		@heading = heading
		@page_title = page_title
	end
	
	def test_me
		describe "some shit" do
			before { visit '/' + @page_title.downcase }
			it { page.should have_selector('h1', text: @heading) }
			it { page.should have_selector('title', text: full_title(@page_title)) }
		end
	end

end

def full_title(page_title)
	base_title = "Ruby on Rails Tutorial Sample App"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end

def sign_in(user)
	visit signin_path
	fill_in "Email", with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
	# Sign in when not using capybara as well
	cookies[:remember_token] = user.remember_token;
end
