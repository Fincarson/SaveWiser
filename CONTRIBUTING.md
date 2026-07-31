# Contributing to SaveWiser

Thanks for your interest in improving SaveWiser! This guide covers everything you
need to get set up and land a change. By participating, you agree to abide by our
[Code of Conduct](CODE_OF_CONDUCT.md).

## Ways to contribute

- 🐛 **Report a bug** - open an [issue](https://github.com/WilsonAnthonyT/SaveWiserApp/issues) with steps to reproduce, what you expected, and what happened.
- 💡 **Suggest a feature** - open an issue describing the idea and the problem it solves.
- 🔧 **Send a pull request** - fix a bug, add a feature, or improve the docs.

For anything security-related, please follow [SECURITY.md](SECURITY.md) instead of
opening a public issue.

## Development setup

SaveWiser is a Flutter app. The Flutter project lives in the `savewiser/` folder.

1. Install the [Flutter SDK](https://docs.flutter.dev/get-started/install) and run `flutter doctor` to confirm your toolchain.
2. Fork and clone the repo:
   ```bash
   git clone https://github.com/<your-username>/SaveWiserApp.git
   cd SaveWiserApp/savewiser
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

If you're working on the AI advice feature, supply an OpenRouter key at run time
(see the README) - **never hard-code a key in the source**.

## Making changes

1. Create a branch off `main`:
   ```bash
   git checkout -b feat/short-description
   ```
   Use a prefix that matches your change: `feat/`, `fix/`, `docs/`, `refactor/`, or `chore/`.
2. Make your change, keeping commits focused and readable.
3. Before you push, run the checks below and make sure they pass.

## Code style & checks

Please run these from the `savewiser/` folder before opening a PR:

```bash
dart format .        # format the code
flutter analyze      # static analysis (fix any warnings you introduce)
flutter test         # run tests, if the change touches testable logic
```

A few conventions:

- Follow the existing structure - screens in `lib/pages/`, shared logic in `lib/services/` and `lib/utils/`, data models in `lib/models/`.
- Prefer clear names over clever ones, and match the style of the surrounding code.
- Keep user-facing copy consistent with the app's friendly, plain-language tone.

## Opening a pull request

1. Push your branch and open a PR against `main`.
2. In the description, explain **what** changed and **why**, and link any related issue.
3. Include before/after screenshots or a short clip for UI changes.
4. Be responsive to review feedback - small follow-up commits are fine.

Thank you for helping make SaveWiser better! 💙
