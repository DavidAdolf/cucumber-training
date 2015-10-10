Before do
  puts "Test running"
end


Around do |scenario,block|
  puts "PENIS"
  block.call
  puts "PENIS ENDE"
end


AfterStep do
  # Do something after each step.
  time = Time.now.strftime('%Y_%m_%d_%H_%M_%S_')
  file_path = "#{File.expand_path("/Users/florian/git/cucumber-training/screenshot")}/#{time}.png"
  puts "Snapshot name is #{file_path}"
  page.driver.browser.save_screenshot file_path
  puts "Snapshot is taken"
end


After do
  puts "Test finished"
end

