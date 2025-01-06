Bash Scripts for Vulkan Setup

# Open the zshrc file
nano ~/.zshrc

# Link the Vulkan files
export VULKAN_SDK=/path/to/vulkan-sdk/macOS  # Exchange this with the actual path
export PATH=$VULKAN_SDK/bin:$PATH
export DYLD_LIBRARY_PATH=$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH
export VK_ICD_FILENAMES=$VULKAN_SDK/etc/vulkan/icd.d/MoltenVK_icd.json
export VK_LAYER_PATH=$VULKAN_SDK/etc/vulkan/explicit_layer.d

# Ctrl + O to save
# Enter to confirm
# Ctrl + X to exit nano

# Save the zshrc file
source ~/.zshrc

# Check that Vulkan is set up
vulkaninfo
