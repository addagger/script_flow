# ScriptFlow

When you rendering the ERB templates/partials, utility remembers javascript syntax and add it to the end of Ajax response body

## Installation

Add this line to your application's Gemfile:

    gem 'script_flow'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install script_flow

## Usage

View html.erb template/partial:

    <%= script do %>
      alert('Hello Script Flow');
    <% end %>

    # When current request format is Mime::HTML acts as `javascript_tag` helper. During Ajax request (Mime::JS) add script to the end of response body.

		<%= script_for :head do %>
		  alert('Hello Script Flow');
		<% end %>
		
		# When current request format is Mime::HTML acts as `content_for :head` with `javascript_tag` helpers. During Ajax request (Mime::JS) add script to the end of response body.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
