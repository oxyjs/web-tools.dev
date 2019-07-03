<ul>

{{

  const templates = {
    'utils/encode/URIComponent': 'URL Encode/Decode',
    'utils/encode/Base64': 'Base64 Encode/Decode',
    'utils/hash/MD5': 'MD5 Hash',
    'utils/hash/SHA1': 'SHA1 Hash',
    'utils/hash/SHA3': 'SHA3 Hash',
    'utils/hash/SHA224': 'SHA224 Hash',
    'utils/hash/SHA256': 'SHA256 Hash',
    'utils/hash/SHA384': 'SHA383 Hash',
    'utils/hash/SHA512': 'SHA512 Hash',
  };

  for (let tpl in templates) {
    const title = templates[tpl];
}}

  <li>{{+ 'block/a', {tpl, title} }}</li>

{{
  }
}}

<ul>