require 'rails_helper'

describe "A user naviagtes to the root path" do
  it "user sees the navbar" do
    visit root_path
    expect(current_path).to eq(about_path)
    expect(page).to have_css(".main-nav")
    within(".main-nav") do
      expect(page).to have_content("ABOUT")
      expect(page).to have_content("RESUME")
      expect(page).to have_content("WORK")
      expect(page).to have_content("BLOG")
    end
  end
end

describe "a user interacts with social media on landing page" do

  it "user interacts with linkedin" do
    visit root_path
    expect(current_path).to eq(about_path)
    click_on "LinkedIn"
    expect(page.current_url).to eq("https://www.linkedin.com/in/sarahelizabethkirk/")
  end

  it "user interacts with twitter" do
    visit root_path
    expect(current_path).to eq(about_path)
    click_on "Twitter"
    expect(page.current_url).to eq("https://twitter.com/sarahdactyl71")
  end

  it "user interacts with github" do
    visit root_path
    expect(current_path).to eq(about_path)
    click_on "Github"
    expect(page.current_url).to eq("https://github.com/sarahdactyl71")
  end

end
