
# react-native-webview-tencentx5
将安卓中webview浏览器内核替换为[腾讯X5内核](https://x5.tencent.com/docs/index.html)并保留[react-native-webview](https://github.com/react-native-webview/react-native-webview)中各种[API](https://github.com/react-native-webview/react-native-webview/blob/master/docs/Reference.md)。<br/>
可以优化Android版本低而使浏览器内核webveiw不正常显示，同时使用腾讯X5方便扩展。<br/>
总之，等于使用腾讯浏览器打开webview页面。<br/>
其中react-native-webview的API支持版本为v10.9.3，X5内核版本SDK为v4.3.0.93_43993。<br/>
## Getting started

`$ npm install react-native-webview-tencentx5 --save`

or

`$ yarn add react-native-webview-tencentx5`

### Mostly automatic installation

Since React Native 0.60 and higher, [autolinking](https://github.com/react-native-community/cli/blob/master/docs/autolinking.md) makes the installation process simpler.

### Manual installation


#### iOS
`$ cd ios && pod install`

#### Android
为了保障X5内核的动态下发和正常使用，您需要在您的AndroidManifest.xml增加如下权限:
```xml
      <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
      <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
      <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
      <uses-permission android:name="android.permission.INTERNET" />
      <uses-permission android:name="android.permission.READ_PHONE_STATE" />
```
## Troubleshooting

### The following situations are not errors
- 首次加载成功后，可能依旧为原始内核，等待X5内核下载启动，往后都可正常使用
- 首次加载可能会出现卡顿白屏现象
- 请注意X5内核运行环境在模拟器下的影响，请使用真机调试

## Usage
```javascript
import { WebView } from 'react-native-webview-tencentx5';

<WebView
    source={{ uri: 'https://www.bilibili.com/' }}
    ...
    />
```
  
