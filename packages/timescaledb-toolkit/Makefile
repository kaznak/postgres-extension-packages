
BUILD_IMAGD=ghcr.io/kaznak/pgrx-build:debian_bullseye-pg16-pgrx0.10.2

repository/Readme.md:
	git submodule update

build: repository/Readme.md
	docker run --rm -it -v $(PWD):/build -w /build $(BUILD_IMAGD) bash /build/build.sh
