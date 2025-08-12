class PiratesController < ApplicationController
  # TODO: Implement the following controller actions:

  def index
    # TODO: Render the root page with welcome message
    # This should display "Welcome to the Nested Forms Lab!"
    # and instructions to navigate to '/new'
  end

  def new
    # TODO: Initialize a new pirate instance for the form
    # This action should render a form that allows users to:
    # - Enter pirate details (name, weight, height)
    # - Enter details for two ships (name, type, booty)
    # Use Rails form helpers with nested attributes
  end

  def create
    # TODO: Handle form submission and create pirate with ships
    # Process the nested params for pirate and ships
    # Create instances using the Pirate and Ship classes
    # Redirect to show page or render show template
  end

  def show
    # TODO: Display pirate and ship information
    # Show all the details that were submitted in the form
    # Include pirate name, weight, height and all ship details
  end

  private

  def pirate_params
    # TODO: Define strong parameters for pirate and nested ships
    # Allow pirate attributes: name, weight, height
    # Allow ships attributes: name, type, booty
    # Remember to permit the ships array properly for nested forms
  end
end
