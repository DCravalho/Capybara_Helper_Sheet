# Navigating 
    visit('login') # path to page (tacked on to end of URL, usually  defined in config file)
    visit(post_comments_path(post))

# Clicking (buttons and links)
    click_button('Submit')
    click('Button Value')

    click_link('id_of_link')
    click_link('Link Text')

    click('Link Text') # click either a button or a link
    
# Interacting with forms 
    attach_file('image', '/path/to/image.jpg')

    choose('A Radio Button')
    
    fill_in('First Name', :with => 'John')

    select('Option', :from => 'Select Box')
    unselect('Option', :from => 'Select Box')

    check('checkbox')
    uncheck('checkbox') 

# Matchers (boolean)
    page.has_content('foo')
    page.has_text('foo')
    page.has_xpath('//table/tr')
    page.should have_content('foo')
    page.should have_no_content('foo')

# Scoping (avoid ambiguous matches)
    within(:xpath, 'actual_xpath') do
      fill_in 'First Name', :with => 'John'
    end

    within(:css, "li#employee") do
      fill_in 'First Name', :with => 'John'
    end

    within_fieldset('Employee') do
      fill_in 'First Name', :with => 'John'
    end

# Debugging
    save_and_open_page # saves current snapshot of page
    print page.html # retrieves current state of DOM
    save_sceenshot('screenshot.png') # saves screenshot
