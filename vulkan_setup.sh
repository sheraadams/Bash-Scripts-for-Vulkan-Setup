Bash Scripts for Vulkan Setup on Mac OS

# install Molten VK to translate the Vulkan calls to Metal
brew install molten-vk

# install Vulkan tools
brew install vulkan-tools

# Now, proceed to install Vulkan from: https://vulkan.lunarg.com

# Find the json files to link to the zshrc profile for setting up the environment
# Locate the json files and folders if needed with 
find ~/VulkanSDK -name "*.json"

# Note: On Apple Silicon, I found the json files in the share folder and I copied them over to the etc folder I created. See below:

#~/VulkanSDK/<version>/macOS/share/vulkan/explicit_layer.d
#~/VulkanSDK/<version>/macOS/share/vulkan/icd.d

#~/VulkanSDK/<version>/macOS/etc/vulkan/explicit_layer.d
#~/VulkanSDK/<version>/macOS/etc/vulkan/icd.d

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

# This guide is helpful as well: 
# https://vulkan.lunarg.com/doc/view/1.3.236.0/mac/getting_started.html
