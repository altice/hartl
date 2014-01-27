require 'spec_helper'

describe "Static pages" do
  subject { page }

  shared_examples_for "all static pages" do
    it {should have_selector('h1', text:heading)}
    it {should have_title(full_title(page_title))}
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)     { 'Sample App'}
    let(:page_title)  { ''}
    
    

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
    # # it { should have_content('Sample App') }
    # it { should have_selector('h1', text: 'Sample App')}
    # it { should have_title(full_title('')) }
    
  end

  describe "Help page" do
    before{ visit help_path}

    it {should have_content('Help')}
    it {should have_title(full_title('Help'))}
  end

  describe "About page" do
    before {visit about_path}
    it {should have_content('About')}
    it {should have_title(full_title('About Us'))}
  end

   describe "Contact page" do
    before {visit contact_path}

    it {should have_content('Contact')}
    it {should have_title(full_title('Contact'))}
  end

    

  # describe "signup page" do
  #   before {visit sign_up_path}

    # let(:sumbit) {"Create my account"}

    

    

  #     it "should create a user" do
  #       expect{ click_button submit }.to change(User, :count).by(1)
      

  #     end
  #   end
  # end
end

