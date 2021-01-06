package indi.fan.webviewx5;

import com.tencent.smtt.sdk.WebView;

/**
 * Implement this interface in order to config your {@link WebView}. An instance of that
 * implementation will have to be given as a constructor argument to {@link RNX5WebViewManager}.
 */
public interface WebViewConfig {

  void configWebView(WebView webView);
}
