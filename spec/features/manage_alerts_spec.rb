require 'spec_helper'

feature "Manage alerts" do
  # In order to see new development applications in my suburb
  # I want to sign up for an email alert
  
  scenario "Sign up for email alert" do
    visit '/alerts/signup'

    fill_in("alert_email", :with => "example@example.com")
    fill_in("alert_address", :with => "24 Bruce Road, Glenbrook")
    click_button("Create alert")

    page.should have_content("Now check your email")

    unread_emails_for("example@example.com").size.should == 1
    open_email("example@example.com")
    current_email.should have_subject("Please confirm your planning alert")
    current_email.default_part_body.to_s.should include("24 Bruce Road, Glenbrook NSW 2773")
    click_first_link_in_email

    page.should have_content("your alert has been activated")
    page.should have_content("24 Bruce Road, Glenbrook NSW 2773")
    Alert.active.find(:first, :conditions => {:address => "24 Bruce Road, Glenbrook NSW 2773", :radius_meters => "2000", :email => current_email_address}).should_not be_nil
  end
end