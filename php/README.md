# MIME Type Lookup API - PHP Package

MIME Type Lookup matches file extensions to MIME types, categories, and default character encodings, or returns matching extensions for any media type. Paid plans add gzip compressibility flags.

## Installation

Install via Composer:

```bash
composer require apiverve/mimetypelookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Mimetypelookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['extension' => 'pdf']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Mimetypelookup\Client;
use APIVerve\Mimetypelookup\Exceptions\APIException;
use APIVerve\Mimetypelookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['extension' => 'pdf']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/mimetypelookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/mimetypelookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/mimetypelookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
