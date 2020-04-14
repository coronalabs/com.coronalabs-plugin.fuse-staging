local metadata =
{
    plugin =
    {
        format = 'jar',
        manifest = 
        {
            usesPermissions = 
            {
                "android.permission.INTERNET",
            },
            applicationChildElements = 
            {
                [[
        <meta-data 
            android:name="com.google.android.gms.version"
            android:value="4242000" />
          
        <activity
            android:name="com.google.android.gms.ads.AdActivity"
            android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize"
            android:theme="@android:style/Theme.Translucent" /> 

        <activity
            android:name="com.fusepowered.fuseactivities.FuseApiMoregamesBrowser"
            android:label="FuseApiMoregamesBrowser">
            <intent-filter>
                <action android:name="com.fusepowered.fuseactivities.FuseApiMoregamesBrowser" />
                <action android:name="android.intent.action.VIEW" />
                <category android:name="android.intent.category.DEFAULT" />
            </intent-filter>
        </activity>
  
        <activity
            android:name="com.fusepowered.m2.mobileads.M2Activity"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.fusepowered.m2.mobileads.M2RActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.fusepowered.m2.common.M2Browser"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.fusepowered.m2.mobileads.M2RvpActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.fusepowered.m1.android.MMActivity"
            android:configChanges="keyboardHidden|orientation|keyboard"
            android:theme="@android:style/Theme.Translucent.NoTitleBar" />
        <activity
            android:name="com.fusepowered.m1.android.VideoPlayer"
            android:configChanges="keyboardHidden|orientation|keyboard" />
        <activity
            android:name="com.fusepowered.u1.U1InterstitialActivity"
            android:configChanges="keyboardHidden|orientation|screenLayout|screenSize|smallestScreenSize"
            android:hardwareAccelerated="true"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.fusepowered.ads.adapters.FuseInterstitialActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"
            android:noHistory="true"
            android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.fusepowered.l1.AdActivity"
            android:configChanges="orientation|keyboardHidden|screenSize"
            android:hardwareAccelerated="true" />
        <activity
            android:name="com.fusepowered.l1.AdBrowserActivity" />
        <activity
            android:name="com.fusepowered.l1.PlayerActivity"
            android:configChanges="orientation|keyboardHidden|screenSize"
            android:hardwareAccelerated="true" />
        <activity
            android:name="com.fusepowered.ac.ACOActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"
            android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.fusepowered.ac.ACFActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"
            android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.fusepowered.ac.ACBActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"
            android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.fusepowered.ads.adapters.LRActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"
            android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.fusepowered.ads.adapters.MRaidActivity"
            android:hardwareAccelerated="true"
            android:configChanges="orientation|keyboard|keyboardHidden|screenLayout|screenSize"
            android:theme="@android:style/Theme.Translucent.NoTitleBar"
            android:windowSoftInputMode="adjustResize" />
        <activity
            android:name="com.fusepowered.ads.adapters.MRaidVideoActivity"
            android:hardwareAccelerated="true"
            android:configChanges="orientation|keyboard|keyboardHidden|screenLayout|screenSize"
            android:theme="@android:style/Theme.Black.NoTitleBar"
            android:windowSoftInputMode="adjustResize" />
        <activity
            android:name="com.fusepowered.sa.android.publish.list3d.List3DActivity"
            android:theme="@android:style/Theme" />
        <activity
            android:name="com.fusepowered.sa.android.publish.AppWallActivity"
            android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen"
            android:configChanges="orientation|keyboardHidden|screenSize" />
        <activity
            android:name="com.fusepowered.as.view.ASVastInterstitialActivity"
            android:theme="@android:style/Theme.Translucent"
            android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize" />
        <activity
            android:name="com.fusepowered.as.view.ASWebviewInterstitialActivity"
            android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize" />
        <activity
            android:exported="false" android:name="com.fusepowered.ap.MainActivity"
            android:configChanges="orientation|screenSize"
            android:theme="@android:style/Theme.Translucent" />
        <activity
            android:name="com.fusepowered.ap.BrowserActivity"
            android:configChanges="orientation|screenSize" />
        <activity
            android:name="com.fusepowered.ap.VDActivity"
            android:configChanges="orientation|screenSize" android:screenOrientation="landscape"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.fusepowered.al.adview.ALInterstitialActivity"/>
        <activity
            android:name="com.fusepowered.al.adview.ALConfirmationActivity"/>
        <activity
            android:name="com.fusepowered.ads.adapters.ALActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"
            android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.fusepowered.im.androidsdk.IMBrowserActivity"
            android:configChanges="keyboardHidden|orientation|keyboard|smallestScreenSize|screenSize"
            android:theme="@android:style/Theme.Translucent.NoTitleBar"
            android:hardwareAccelerated="true" />  
        <activity
            android:name="com.fusepowered.ads.adapters.CBActivity"
            android:theme="@android:style/Theme.Translucent.NoTitleBar"
            android:configChanges="orientation|screenSize|keyboardHidden" />
        <activity
            android:name="com.fusepowered.vast.activity.VASTActivity"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen"
            android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize"
            android:screenOrientation="sensorLandscape" />
           ]]
            }
        },
    },
}

return metadata