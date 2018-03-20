1. Show hide files
```
defaults write com.apple.finder AppleShowAllFiles YES
```
2. Show path bar
```
defaults write com.apple.finder ShowPathbar -bool true
```
3. Show file extension
```
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
```
4. Kill finder
```
killall Finder /System/Library/CoreServices/Finder.app
```
