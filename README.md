# Rails Nested Forms Lab: Pirates!

## Overview

In this lab, you'll practice using nested forms in Rails.

## Instructions

Note: YOU DO NOT NEED A DATABASE, since we just need to keep track of the forms input long enough to display it, and not persist it. We don't expect the pirate to be there the next time we come to their URL, but it'd be cool if they were.

1. Create two classes, a `Pirate` class and a `Ship` class. Pirates should have a name, weight, and height. You will also need a class method that returns all the pirates. The ship class should have name, type, and booty attributes, as well as a class method `.all` that returns all the ships and a class method `.clear` that deletes all ships.
2. Make a nested form using Rails form helpers (this should probably have html `<label>`s so it makes sense to a user). This form will be creating three objects (one instance of the Pirate class, and two instances of the Ship class). Remember, you'll need to build a corresponding controller action to load this page. Your form should `POST` to the route `'/pirates'`.
3. After a user clicks submit they should be taken to a page that displays all the information we just posted from the form. You should have a page that shows the pirate you created along with their ships and all the details about the pirate and their ships.

## Setup

1. Run `bundle install` to install the required gems
2. Set up your routes in `config/routes.rb`
3. Implement the controller actions in `app/controllers/pirates_controller.rb`
4. Complete the model classes in `app/models/`
5. Create the view templates in `app/views/pirates/`
6. Start your Rails server with `rails server`

## Rails-Specific Implementation

### Routes

You'll need to define routes in `config/routes.rb` for:

- Root route that displays the welcome message
- GET route for `/new` to show the form
- POST route for `/pirates` to handle form submission
- GET route to show pirate details after submission

### Controller

Implement the `PiratesController` with the following actions:

- `index` - displays welcome message
- `new` - renders the form
- `create` - processes form submission and redirects/renders show page
- `show` - displays pirate and ship information

Use strong parameters to permit the nested attributes for pirate and ships.

### Views

Create view templates using Rails conventions:

- `app/views/pirates/index.html.erb` - welcome page
- `app/views/pirates/new.html.erb` - form page with nested fields
- `app/views/pirates/show.html.erb` - results page

Use Rails form helpers like `form_with`, `text_field`, and `fields_for` for nested forms.

## Deliverables

Pass the tests! You'll notice in specs that we use Capybara to fill in certain fields. It looks something like this:

```
fill_in("ship_name_1", :with => "Flying Dutchman")
fill_in("ship_type_1", :with => "ghost ship")
fill_in("ship_booty_1", :with => "gold coins")
```

The word in quotes after fill_in needs to be set as an ID in the form. This is because your ship name one and two will have the same `name` property. Capybara needs some sort of unique identifier, so we use `id`. So something like this:

```erb
<%= text_field_tag "pirate[ships][][name]", "", id: "ship_name_1" %>
```

## Resources

- [Rails Guides - Form Helpers](https://guides.rubyonrails.org/form_helpers.html)
- [Rails Guides - Nested Forms](https://guides.rubyonrails.org/form_helpers.html#nested-forms)
- [Rails Guides - Strong Parameters](https://guides.rubyonrails.org/action_controller_overview.html#strong-parameters)
