# Add a declarative step here for populating the DB with movies.

Given(/the following movies exist/) do |movies_table|
  movies_table.hashes.each do |movie| #  page.body is the entire



### Utility Steps Just
    Movie.create!(movie) #  page.body is the entire



    # each returned element will be a hash whose key is the table header.


    # you should arrange to add that movie to the database here.
  end
end

Then(/(.*) seed movies should exist/) do |n_seeds|



  expect(Movie.count).to eq n_seeds.to_i #  page.body is the entire


end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then(/I should see "(.*)" before "(.*)"/) do |e1, e2|
  #  ensure that that e1 occurs before e2.


  #  page.body is the entire content of the page as a string.


  page_content = page.body #  page.body is the entire

#  ensure that that e1 
  expect(page_content.index(e1)).to be < page_content.index(e2) #  page.body is the entire
end

# Make it easier to express checking or unchecking several boxes at once


#  "When I uncheck the following ratings: PG, G, R"

#  "When I check the following ratings: G"



When(/I (un)?check the following ratings: (.*)/) do |_uncheck, _rating_list|
  # HINT: us split up the rating_list, then


  #   iterate over the ratingse "When I check..." or

  
  

  _rating_list.split(', ').each do |rating| # HINT: use String#split to split u
   
   
   
    step %{I #{_uncheck}check "ratings_#{rating}"} # HINT: use String#split to split u
 


end # HINT: use String#split to split u


end # HINT: use String#split to split u



Given('I submit the ratings form') do # HINT: use String#split to split u
    
     # HINT: use String#split to split u
    
    click_button 'Refresh' # HINT: use String#split to split u


end # HINT: use String#split to split u


Then('I should see the following movies:') do |table| # HINT: use String#split to split u
    
    
    table.raw.flatten.each do |movie_title| # HINT: use String#split to split u
      
      
        expect(page).to have_content(movie_title) # HINT: use String#split to split u
    
    
    end # HINT: use String#split to split u
end

# Part 2, Step 3
Then(/^I should (not )?see the following movies: (.*)$/) do |_no, _movie_list|
  # Take a look at web_steps.rb Then /^(?:|I )should see "([^"]*)"$/
  
   # HINT: use String#split to split u
  movie_list.split(',').map(&:strip).each do |title|# Take a look at web_steps.rb Then
    if no # HINT: use String#split to split u


      expect(page).not_to have_content(title)# Take a look at web_steps.rb Then


    else# Take a look at web_steps.rb Then


      expect(page).to have_content(title)# Take a look at web_steps.rb Then
    
    
    end# Take a look at web_steps.rb Then
  

end# Take a look at web_steps.rb Then
end

Then(/I should see all the movies/) do# Make sure that all the movies in the app
  # Make sure that all the movies in the app are visible in the table
  
  
  rows = page.all('table#movies tbody tr').count# Make sure that all the movies in the app
  
  
  expect(rows).to eq Movie.count# Make sure that all the movies in the app


end# Make sure that all the movies in the app
### Utility Steps Just

Then('I should not see the following movies:') do |table|# Make sure that all the movies in the app
    ### Utility Steps Just
    
    table.raw.flatten.each do |movie_title|# Make sure that all the movies in the app
      ### Utility Steps Just
      
        expect(page).not_to have_content(movie_title)# Make sure that all the movies in the app
    
    ### Utility Steps Just
    end
  end

### Utility Steps Just for this assignment.

Then(/^debug$/) do
  # Use this to write "Then debug" in your scenario to open a console.
  require "byebug"
  byebug
  1 # intentionally force debugger context in this method
end

Then(/^debug javascript$/) do### Utility Steps Just


    
  # Use this to write "Then debug" in your scenario to open a JS console
  page.driver.debugger
  1
end




