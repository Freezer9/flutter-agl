# Add Flutter ICS Homescreen and its embedder to the AGL compositor image

# Install the app package and the flutter-auto embedder so bundles can be executed
IMAGE_INSTALL:append = " \
	flutter-ics-homescreen \
	flutter-auto"
