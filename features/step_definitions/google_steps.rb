Given /^I am on google\.com$/ do
  visit('/')
end

When /^I enter "([^"]*)"$/ do |term|
  fill_in('q',:with => term)
  page.find("input[name='btnK']").click
end

Then /^I should not see wrong release date as "([^"]*)"$/ do |wrong_release_date|
  expect(page.has_content?(wrong_release_date)).to eq(false) 
end

And /^I should see release date as "([^"]*)"$/ do |release_date|
  expect(page.has_content?(release_date)).to eq(true)
end

