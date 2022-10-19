package defold.extensions.admob;

import lua.Table.AnyTable;
import defold.types.*;


@:native("admob")
extern class AdMob
{
    /**
     * Initialize the Mobile Ads SDK. Warning: If you need to obtain consent from users in the European Economic Area (EEA), set any request-specific flags, or otherwise take action before loading ads, ensure you do so before initializing the Mobile Ads SDK.
     * Original docs [Android](https://developers.google.com/admob/android/quick-start#initialize_the_mobile_ads_sdk), [iOS](https://developers.google.com/admob/ios/quick-start#initialize_the_mobile_ads_sdk)  
     */
    static function initialize(): Void;

    /**
     * Sets a callback function for receiving events from the SDK. Call `admob.set_callback(nil)` to remove callback 
     * 
     * @param callback Callback function that is executed on any event in the SDK. 
     */
    static function set_callback<T>(callback: (self: T, message_id: Int, message: AnyTable)->Void): Void;

    /**
     * Sets user privacy preferences (must be called before `admob.initialize()`). Original docs [Android](https://developers.google.com/admob/android/ccpa), [iOS](https://developers.google.com/admob/ios/ccpa) 
     * 
     * @param bool  
     */
    static function set_privacy_settings(bool: Bool): Void;

    /**
     * Display the App Tracking Transparency authorization request for accessing the IDFA. Original docs [iOS](https://developers.google.com/admob/ios/ios14#request)  
     */
    static function request_idfa(): Void;

    /**
     * Show Ad Inspector. This is an in-app overlay that enables authorized devices to perform realtime analysis of test ad requests directly within a mobile app. Ad Inspector only launces on [test devices](https://support.google.com/admob/answer/9691433). Original docs [Android](https://developers.google.com/admob/android/ad-inspector), [iOS](https://developers.google.com/admob/ios/ad-inspector)  
     */
    static function show_ad_inspector(): Void;

    /**
     * Starts loading an Interstitial Ad, can only be called after `admob.MSG_INITIALIZATION` event Original docs [Android](https://developers.google.com/admob/android/interstitial-fullscreen), [iOS](https://developers.google.com/admob/ios/interstitial) 
     * 
     * @param ad_unit_id Ad unit ID, for test ads use on Android `"ca-app-pub-3940256099942544/1033173712"`, or on iOS `"ca-app-pub-3940256099942544/4411468910"` Original docs [Android](https://developers.google.com/admob/android/interstitial-fullscreen), [iOS](https://developers.google.com/admob/ios/interstitial) 
     */
    static function load_interstitial(ad_unit_id: String): Void;

    /**
     * Shows loaded Interstitial Ad, can only be called after `admob.EVENT_LOADED` Original docs [Android](https://developers.google.com/admob/android/interstitial-fullscreen), [iOS](https://developers.google.com/admob/ios/interstitial)  
     */
    static function show_interstitial(): Void;

    /**
     * Checks if Interstitial Ad is loaded and ready to show Original docs [Android](https://developers.google.com/admob/android/interstitial-fullscreen), [iOS](https://developers.google.com/admob/ios/interstitial)  
     */
    static function is_interstitial_loaded(): Bool;

    /**
     * Starts loading a Rewarded Ad, can only be called after `admob.MSG_INITIALIZATION` event Original docs [Android](https://developers.google.com/admob/android/rewarded-fullscreen), [iOS](https://developers.google.com/admob/ios/rewarded-ads) 
     * 
     * @param ad_unit_id Ad unit ID, for test ads use on Android `"ca-app-pub-3940256099942544/1712485313"`, or on iOS `"ca-app-pub-3940256099942544/4411468910"` Original docs [Android](https://developers.google.com/admob/android/rewarded-fullscreen), [iOS](https://developers.google.com/admob/ios/rewarded-ads) 
     */
    static function load_rewarded(ad_unit_id: String): Void;

    /**
     * Shows loaded Rewarded Ad, can only be called after `admob.EVENT_LOADED` Original docs [Android](https://developers.google.com/admob/android/rewarded-fullscreen), [iOS](https://developers.google.com/admob/ios/rewarded-ads)  
     */
    static function show_rewarded(): Void;

    /**
     * Checks if Rewarded Ad is loaded and ready to show Original docs [Android](https://developers.google.com/admob/android/rewarded-fullscreen), [iOS](https://developers.google.com/admob/ios/rewarded-ads)  
     */
    static function is_rewarded_loaded(): Bool;

    /**
     * Starts loading a Banner Ad, can only be called after `admob.MSG_INITIALIZATION` event Original docs [Android](https://developers.google.com/admob/android/banner), [iOS](https://developers.google.com/admob/ios/banner) 
     * 
     * @param ad_unit_id Ad unit ID, for test ads use on Android `"ca-app-pub-3940256099942544/6300978111"`, or on iOS `"ca-app-pub-3940256099942544/2934735716"` Original docs [Android](https://developers.google.com/admob/android/banner), [iOS](https://developers.google.com/admob/ios/banner)
     * @param size Requested Banner Ad size, possible values: `admob.SIZE_ADAPTIVE_BANNER` (default), `admob.SIZE_BANNER`, `admob.SIZE_FLUID`, `admob.SIZE_FULL_BANNER`, `admob.SIZE_LARGE_BANNER`, `admob.SIZE_LEADEARBOARD`, `admob.SIZE_MEDIUM_RECTANGLE`, `admob.SIZE_SEARH`, `admob.SIZE_SKYSCRAPER`, `admob.SIZE_SMART_BANNER`. Original docs [Android](https://developers.google.com/admob/android/banner#banner_sizes), [iOS](https://developers.google.com/admob/ios/banner#banner_sizes) 
     */
    static function load_banner(ad_unit_id: String, size: Size): Void;

    /**
     * Shows loaded Banner Ad, can only be called after `admob.EVENT_LOADED` Original docs [Android](https://developers.google.com/admob/android/banner), [iOS](https://developers.google.com/admob/ios/banner) 
     * 
     * @param position Banner Ad position, possible values: `admob.POS_NONE` (default), `admob.POS_TOP_LEFT`, `admob.POS_TOP_CENTER`, `admob.POS_TOP_RIGHT`, `admob.POS_BOTTOM_LEFT`, `admob.POS_BOTTOM_CENTER`, `admob.POS_BOTTOM_RIGHT`, `admob.POS_CENTER` 
     */
    static function show_banner(position: Pos): Void;

    /**
     * Temporarily hides Banner Ad, banner can be shown again using `admob.show_banner()` Original docs [Android](https://developers.google.com/admob/android/banner), [iOS](https://developers.google.com/admob/ios/banner)  
     */
    static function hide_banner(): Void;

    /**
     * Checks if Banner Ad is loaded and ready to show Original docs [Android](https://developers.google.com/admob/android/banner), [iOS](https://developers.google.com/admob/ios/banner)  
     */
    static function is_banner_loaded(): Bool;

    /**
     * Hides and unloads Banner Ad (needs to call `admob.load_banner()` later to show Banner Ad) Original docs [Android](https://developers.google.com/admob/android/banner), [iOS](https://developers.google.com/admob/ios/banner)  
     */
    static function destroy_banner(): Void;
}
