
# react-native-webviewx5

## Getting started

`$ npm install react-native-webviewx5 --save`

### Mostly automatic installation

`$ react-native link react-native-webviewx5`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-webviewx5` and add `RNWebviewx5.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNWebviewx5.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import in.fan.webviewx5.RNWebviewx5Package;` to the imports at the top of the file
  - Add `new RNWebviewx5Package()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-webviewx5'
  	project(':react-native-webviewx5').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-webviewx5/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-webviewx5')
  	```


## Usage
```javascript
import RNWebviewx5 from 'react-native-webviewx5';

// TODO: What to do with the module?
RNWebviewx5;
```
  