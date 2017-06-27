# Swagger-ui for Rails

Wrapper of [swagger-ui-dist 3.x](https://github.com/swagger-api/swagger-ui) to be included as Rails assets

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'swagger-ui-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install swagger-ui-rails

## Usage

This gem just will put swagger-ui-dist assets available to be use on Rails.

To use them, on your application.js will need to include something like:

```
//= require swagger-ui-bundle.min
//= require swagger-ui-standalone-preset.min
```

Also, in some javascript file, will need something like:

```
$(function(){
  var $swagger_ui_element = $('#swagger-ui');
  const ui = SwaggerUIBundle({
    url: $swagger_ui_element.data('url'),
    dom_id: '#swagger-ui',
    presets: [
      SwaggerUIBundle.presets.apis,
      SwaggerUIStandalonePreset
    ],
    plugins: [
      SwaggerUIBundle.plugins.DownloadUrl
    ],
    layout: "StandaloneLayout"
  });

  window.ui = ui;
});

```

Please note that this function will always try to initialize a component with id 'swagger-ui'.
If you include this on a general JavaScript, consider adding a condition like
```
...
if ($swagger_ui_element.length) {
  // just then initialize swagger ui
}
...
```

Also note this require your template to include a data-url attribute with Swagger json path, like:

```
<div id="swagger-ui" data-url="<%= my_api_docs_url(format: 'json')  %>"></div>
```

Finally, if you wanna use swagger UI styles, will need to include in your application.css:

```
 *= require swagger-ui.min
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/johnowenatala/swagger-ui-rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

