# Navigating 
    visit('page_url') 

# Clicking (buttons and links)
    click_button('Submit')

    click_link('id_of_link')
    click_link('Link Text')
    
# Interacting with forms 
    choose('A Radio Button')
    
    fill_in('First Name', :with => 'John')

    select('Option', :from => 'Select Box')
    unselect('Option', :from => 'Select Box')

    check('checkbox')
    uncheck('checkbox') 

# Scoping (avoid ambiguous matches)
    within(:xpath, 'actual_xpath') do
      fill_in 'First Name', :with => 'John'
    end

# Debugging
    save_and_open_page # saves current snapshot of page
    print page.html # retrieves current state of DOM
    save_sceenshot('screenshot.png') # saves screenshot
