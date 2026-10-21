# MIME Type Lookup API - Ruby Gem

MIME Type Lookup matches file extensions to MIME types, categories, and default character encodings, or returns matching extensions for any media type. Paid plans add gzip compressibility flags.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_mimetypelookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_mimetypelookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_mimetypelookup'

# Initialize the client
client = APIVerve::Mimetypelookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ extension: "pdf" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ extension: "pdf" })
  puts response["data"]
rescue APIVerve::Mimetypelookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Mimetypelookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Mimetypelookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "extension": "pdf",
    "mime_type": "application/pdf",
    "category": "document",
    "description": "PDF document"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/mimetypelookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/mimetypelookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/mimetypelookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
