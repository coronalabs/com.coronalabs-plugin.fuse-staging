# fuse.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library][api.type.library]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, fuse
> __Availability__      Starter, Basic, Pro, Enterprise
> __Platforms__			Android, iOS
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Fuse&trade; is the first fully managed ad mediation platform, delivering the highest-paying and best-performing game, app, or brand campaigns. You can also run your own cross promotions and direct campaigns.


## Registration

When you registered for a Corona account, a corresponding Fuse account was also created on your behalf. You should have received an e-mail. If not, please [let us know](TBD).


## Syntax

	local fuse = require( "plugin.fuse" )

	
## Functions

#### [fuse.init()][plugin.fuse.init]

#### [fuse.show()][plugin.fuse.show]

#### [fuse.checkLoaded()][plugin.fuse.checkLoaded]

#### [fuse.checkContent()][plugin.fuse.checkContent]

#### [fuse.getProperty()][plugin.fuse.getProperty]

#### [fuse.load()][plugin.fuse.load]

#### [fuse.register()][plugin.fuse.register]


<div class="h2-override">

Events

</div>

#### [adsRequest][plugin.fuse.event.adsRequest]


## Project Settings

### Corona SDK

To use this plugin, you simply need to check box in the device build dialog, as shown below:

![DeviceBuildDialog](images/DeviceBuildDialog.png)


#### Legacy builds (2015.XXXX and earlier)

If you are using daily build 2015.XXXX or earlier, you must modify your `build.settings` with a `plugins` table. This ensures the build server will integrate the plugin during the build phase.

In addition, if you're developing for Android, you must add the Google Play Services plugin.

``````lua
settings =
{
	plugins =
	{
		["plugin.fuse"] =
		{
			publisherId = "com.coronalabs"
		},

		["plugin.fuse.ads"] =
		{
			publisherId = "com.coronalabs"
			supportedPlatforms = { ios=true },
		},

		-- If developing for Android, include the Google Play Services plugin
		["plugin.google.play.services"] =
		{
			publisherId = "com.coronalabs",
			supportedPlatforms = { android=true }
		},
	},		
}
``````

### Corona Enterprise

#### iOS

You should add ensure the following static libraries are linked:

* `libplugin_fuse.a`
* `libFuseAds.a`

#### Android

TBD

## Support

* [https://www.fuse.com/contact/](https://www.fuse.com/contact/)
* [Corona Forums]()


## Legacy AdRally Migration

Please refer to the [AdRally => Fuse Migration Guide][plugin.fuse.migration].