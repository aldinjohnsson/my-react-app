#!/bin/zsh
set -e;

# brew install cocoapods;

cd /Volumes/workspace/repository;
brew install node;

echo "Node version and NPM version:";
node -v;
npm -v;

echo "Installing NPM packages...";
npm install;

echo "Building project...";
npm run build;

echo "Sync Capacitor iOS..."
npx cap sync ios;

echo "Installing Pods...";
cd /Volumes/workspace/repository/ios/App;
pod install;
