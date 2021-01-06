package indi.fan.webviewx5

import com.facebook.react.ReactPackage
import com.facebook.react.bridge.ReactApplicationContext


class RNX5WebViewPackage: ReactPackage {
  override fun createNativeModules(reactContext: ReactApplicationContext) = listOf(
    RNX5WebViewModule(reactContext)
  )

  override fun createViewManagers(reactContext: ReactApplicationContext) = listOf(
    RNX5WebViewManager()
  )
}
