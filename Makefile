.PHONY: codegen.watch codegen.build appbundle
codegen.watch:
	flutter packages pub run build_runner watch
codegen.build:
	flutter packages pub run build_runner build
appbundle:
	flutter build appbundle
icon:
	flutter pub run flutter_launcher_icons
splash:
	dart run flutter_native_splash:create