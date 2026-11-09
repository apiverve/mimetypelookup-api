# MIME Type Lookup API - Dart/Flutter Client

MIME Type Lookup matches file extensions to MIME types, categories, and default character encodings, or returns matching extensions for any media type. Paid plans add gzip compressibility flags, the registry that defines each type (IANA, Apache or nginx), and every extension sharing that type.

[![pub package](https://img.shields.io/pub/v/apiverve_mimetypelookup.svg)](https://pub.dev/packages/apiverve_mimetypelookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [MIME Type Lookup API](https://apiverve.com/marketplace/mimetypelookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_mimetypelookup: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_mimetypelookup/apiverve_mimetypelookup.dart';

void main() async {
  final client = MimetypelookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'extension': 'pdf'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 1,
    "results": [
      {
        "extension": "jpg",
        "mimeType": "image/jpeg",
        "category": "image",
        "charset": null,
        "compressible": false,
        "source": "iana",
        "extensions": [
          "jpg",
          "jpeg",
          "jpe"
        ]
      }
    ]
  }
}
```

## API Reference

- **API Home:** [MIME Type Lookup API](https://apiverve.com/marketplace/mimetypelookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/mimetypelookup](https://docs.apiverve.com/ref/mimetypelookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
