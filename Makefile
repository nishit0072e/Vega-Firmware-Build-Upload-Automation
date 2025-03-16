# Tools and Paths
CMAKE      := cmake
GENERATOR  := Ninja

# Detect the current project folder dynamically
PROJECT_DIR := $(notdir $(CURDIR))
BUILD_DIR   := $(CURDIR)/build
ELF_FILE    := $(wildcard $(BUILD_DIR)/*.elf)

# Build project
build:
	@echo Building project...
	@$(CMAKE) -B $(BUILD_DIR) -G $(GENERATOR) 
	@$(CMAKE) --build $(BUILD_DIR) 
	@echo Build Finished!

# Upload firmware using upload.bat
upload:
	@if exist "$(ELF_FILE)" ( \
		upload.bat "$(ELF_FILE)" \
	) else ( \
		echo "Error: ELF file not found in $(BUILD_DIR)!" && exit 1 \
	)

# Clean build files
clean:
	@rm -rf build
	@echo Cleaned build directory.
	@cls
.PHONY: build upload clean
