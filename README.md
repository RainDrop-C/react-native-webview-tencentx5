
# react-native-webviewx5
将安卓中webview浏览器内核替换为腾讯X5内核并保留react-native-webview中各种API
可以优化Android版本低而使浏览器内核webveiw不正常显示，同时使用腾讯X5方便扩展，
总之，等于使用腾讯浏览器打开webview页面。
其中react-native-webview的API支持版本为v10.9.3，X5内核版本SDK为v4.3.0.67_43967。
## Getting started

`$ npm install react-native-webviewx5 --save`

### Mostly automatic installation

`$ react-native link react-native-webviewx5`

### Manual installation


#### iOS
暂不支持IOS，有需要可对照Android实现

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
import { WebView } from 'react-native-webviewx5';

<WebView
    source={{ uri: 'https://www.bilibili.com/' }}/>
```
  
