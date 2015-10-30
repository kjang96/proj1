# Q0: Why is this error being thrown?
There is no Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Our routes file directs to the home_controller, which sets trainerless_pokemon to a list containing all pokemons without trainers. It then sets an instance variable @pokemon to a random pokemon from that list, which then gets outputted on the home view. 

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The button leads to the capture path, which requires the patch method, looking for a URL containing "/patch".

# Question 3: What would you name your own Pokemon?
Swaggle
	which evolves to
Swagfy

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
