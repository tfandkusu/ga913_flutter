.PHONY: check

check:
	fvm dart format --set-exit-if-changed .
	fvm flutter analyze
	fvm dart run custom_lint
	fvm flutter test
