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

# This guide is helpful as well: 
# https://vulkan.lunarg.com/doc/view/1.3.236.0/mac/getting_started.html

#Install and Uninstall from Terminal

#The new macOS installer application can also be run from the command line allowing for unattended/scripted installation and uninstallation. Navigate to the folder containing the InstallVulkan.app bundle, and execute the embedded application directly. You will need to use sudo to give the installer permission to access the system folders, and you must also provide the destination path for the SDK installation files.

sudo ./InstallVulkan.app/Contents/MacOS/InstallVulkan --root "installation path" --accept-licenses --default-answer --confirm-command install

#For example, to install into your home folder using a root of "VulkanSDK", and an SDK version of 1.3.224.1, including all optional packages, you would use this command:

sudo ./InstallVulkan.app/Contents/MacOS/InstallVulkan --root ~/VulkanSDK/1.2.176.1 --accept-licenses --default-answer --confirm-command install com.lunarg.vulkan.core com.lunarg.vulkan.usr com.lunarg.vulkan.sdl2 com.lunarg.vulkan.glm com.lunarg.vulkan.volk com.lunarg.vulkan.vma

