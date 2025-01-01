.PHONY: check

check:
	cd apps/app && fvm flutter pub get
	cd apps/app && fvm dart format --set-exit-if-changed .
	cd apps/app && fvm flutter analyze
	cd apps/app && fvm dart run custom_lint
	cd apps/app && fvm flutter test
	cd packages/data && fvm flutter pub get
	cd packages/data && fvm dart format --set-exit-if-changed .
	cd packages/data && fvm dart analyze
	cd packages/data && fvm dart run custom_lint
	cd packages/data && fvm flutter test
