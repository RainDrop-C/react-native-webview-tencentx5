
# react-native-webview-tencentx5
将安卓中webview浏览器内核替换为[腾讯X5内核](https://x5.tencent.com/docs/index.html)并保留[react-native-webview](https://github.com/react-native-webview/react-native-webview)中各种[API](https://github.com/react-native-webview/react-native-webview/blob/master/docs/Reference.md)
可以优化Android版本低而使浏览器内核webveiw不正常显示，同时使用腾讯X5方便扩展。<br/>
总之，等于使用腾讯浏览器打开webview页面。<br/>
其中react-native-webview的API支持版本为v10.9.3，X5内核版本SDK为v4.3.0.67_43967。<br/>
## Getting started

`$ npm install react-native-webview-tencentx5 --save`

### Mostly automatic installation

`$ react-native link react-native-webview-tencentx5`

### Manual installation


#### iOS
暂不支持IOS，有需要可对照Android实现

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import in.fan.webviewx5.RNWebviewx5Package;` to the imports at the top of the file
  - Add `new RNWebviewx5Package()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-webview-tencentx5'
  	project(':react-native-webview-tencentx5').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-webview-tencentx5/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-webview-tencentx5')
  	```
为了保障X5内核的动态下发和正常使用，您需要在您的AndroidManifest.xml增加如下权限:
```xml
      <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
      <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
      <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
      <uses-permission android:name="android.permission.INTERNET" />
      <uses-permission android:name="android.permission.READ_PHONE_STATE" />
```


## Usage
```javascript
import { WebView } from 'react-native-webview-tencentx5';

<WebView
    source={{ uri: 'https://www.bilibili.com/' }}/>
```
  
