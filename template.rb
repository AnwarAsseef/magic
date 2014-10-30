gem("rspec-rails", :group => "test")
gem("cucumber-rails", :group => "test")

if yes?("Would you like to install Devise?")
  gem("devise")
  model_name = ask("What would you like the user model to be called? [user]")
  model_name = "user" if model_name.blank?
  generate("devise:install")
  generate("devise", model_name)
end