# Basic android config
export ANDROID_HOME=/AndroidContent/AndroidSDK/android-sdk-macosx
export ANDROID_NDK=$ANDROID_HOME/ndk-bundle

# Buck build tool
export ANDROID_SDK=$ANDROID_HOME
#export ANDROID_NDK_REPOSITORY=$ANDROID_HOME/ndk-bundle
export ANDROID_NDK_REPOSITORY=/AndroidContent/AndroidSDK

# Android tools config
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/build-tools/27.0.3:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
