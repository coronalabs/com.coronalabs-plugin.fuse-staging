# fuse.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, fuse
> __See also__          [fuse.load()][plugin.fuse.load]
>						[fuse.checkLoaded()][plugin.fuse.checkLoaded]
>						[fuse.*][plugin.fuse]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Shows an fuse ad of the specified type and ad zone, assuming one has been loaded/cached. This function will call the listener function specified by [fuse.init()][plugin.fuse.init] with an `event.phase` value of `"shown"` if the ad has been successfully shown.

To check whether an ad of the specific type/zone exists in the cache, call [fuse.checkLoaded()][plugin.fuse.checkLoaded].

## Syntax

	fuse.show( [params] )

##### params ~^(optional)^~
_[Table][api.type.Table]._ A table that specifies properties for the ad. If no params is provided, then the default zone is used. 

Valid keys to the table include:

* `"zone"` &mdash; The [ad zone](http://wiki.fusepowered.com/index.php/Zones) for which to show an ad.
* `"hidePreRoll"` &mdash; By default, a preroll dialog is shown before the rewarded video. Set to `true` if you do not want the dialog to appear.
* `"hidePostRoll"` &mdash; By default, a postroll dialog is shown after the user watches a video letting them know a reward has been earned. Set to `true` if you do not want the dialog to appear.
* `"preRollYesButtonText"` &mdash; Set this to a string for the affirmative option on preroll dialog
* `"preRollNoButtonText"` &mdash; Set this to a string for the reject option on preroll dialog
* `"postRollContinueButtonText"` &mdash; Set this to a string for the Continue button on the postroll dialog


## Examples

##### Simple

``````lua
local fuse = require( "plugin.fuse" )

-- Event listener function
local function adListener( event )

	if ( event.isError ) then
		print( "fuse error: " .. event.response )
    else
		if ( event.phase == "init" ) then
			--fuse system initialized

		elseif ( event.phase == "shown" ) then
            --an ad finished showing
        end
    end
end

-- Initialize the fuse service
fuse.init( "fuse", "12345678-abcd-1234-abcd-12345678abcd", adListener )

-- Sometime later, show an ad from the default ad zone
fuse.show()
``````

##### Specified Zone

``````lua
local fuse = require( "plugin.fuse" )

local adZone = "Menu"

-- Event listener function
local function adListener( event )

	if ( event.isError ) then
		print( "fuse error: " .. event.response )
    else
		if ( event.phase == "init" ) then
			--fuse system initialized; load/cache a zone-specific ad
			fuse.load( "interstitial", { zone=adZone } )

        elseif ( event.phase == "shown" ) then
            --an ad finished showing
        end
    end
end

-- Initialize the fuse service
fuse.init( "fuse", "12345678-abcd-1234-abcd-12345678abcd", adListener )

-- Sometime later, show the ad
fuse.show( "interstitial", { zone=adZone } )
``````
