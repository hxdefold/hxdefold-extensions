# hxdefold-extensions

This package is a collection of externs for various Defold extensions.

The base for this library is files that have been automatically generated, so expect that there may be some mistakes.
If you spot any mistakes, or if an extension you want is missing, feel free to open an issue or PR.


## Installation

For now, this library can be obtained from the git repository.

```sh
haxelib git hxdefold https://github.com/hxdefold/hxdefold-extensions
```

And can be added as a dependency in the `hxml` file the same way.

```hxml
--library hxdefold-extensions:git:https://github.com/hxdefold/hxdefold-extensions
```


## Usage

Simply import and use what you need.
All extensions are under the `defold.extensions` package.

```haxe
import defold.extensions.facebook.Facebook;

Facebook.enable_advertiser_tracking();
```


## Extensions

- [AdInfo](https://defold.com/extension-adinfo/api/)
- [AdMob](https://defold.com/extension-admob/api/)
- [Crypt](https://defold.com/extension-crypt/api/)
- [Facebook](https://defold.com/extension-facebook/api/)
- [Firebase](https://defold.com/extension-firebase/api/)
- [Firebase Analytics](https://defold.com/extension-firebase-analytics/api/)
- [Firebase RemoteConfig](https://defold.com/extension-firebase-remoteconfig/api/)
- [GPGS](https://defold.com/extension-gpgs/api/)
- [IAP](https://defold.com/extension-iap/api/)
- [Push](https://defold.com/extension-push/api/)
- [Review](https://defold.com/extension-review/api/)
- [Rive](https://defold.com/extension-rive/api/)
- [SafeArea](https://defold.com/extension-safearea/api/)
- [Siwa](https://defold.com/extension-siwa/api/)
- [Spine](https://defold.com/extension-spine/api/)
- [WebSocket](https://defold.com/extension-websocket/api/)
- [WebView](https://defold.com/extension-webview/api/)
