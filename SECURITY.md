# Security Policy

## Reporting a vulnerability

If you discover a security vulnerability in SaveWiser - including an exposed secret,
credential, or API key - **please do not open a public issue or pull request.**

Instead, report it privately by email to **savewiserhelps@gmail.com**. Include:

- a description of the issue and its potential impact,
- steps to reproduce it, and
- any relevant logs, screenshots, or proof of concept.

We'll acknowledge your report as soon as we can and keep you updated on the fix.
Please give us a reasonable amount of time to address the issue before disclosing it
publicly. We appreciate responsible disclosure.

## Handling secrets

SaveWiser is designed so that **no API keys or credentials are stored in the source
code**:

- The optional OpenRouter API key is supplied at build/run time via
  `--dart-define=OPENROUTER_API_KEY=...` (see the [README](README.md)).
- Android signing keys, `key.properties`, and `.env` files are excluded from version
  control (see [`.gitignore`](.gitignore)).

If you ever find a secret committed to this repository, treat it as compromised:
report it via the email above, and the key should be **revoked and rotated**
immediately at its provider.
