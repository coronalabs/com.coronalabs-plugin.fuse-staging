# fuse.checkLoaded()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, fuse
> __See also__          [fuse.init()][plugin.fuse.init]
>						[fuse.load()][plugin.fuse.load]
>						[fuse.show()][plugin.fuse.show]
>						[fuse.*][plugin.fuse]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Checks if an fuse ad of the specified type and ad zone has been loaded and cached. This function will call the listener function specified by [fuse.init()][plugin.fuse.init] with an `event.phase` value of `"loaded"` if the ad has been successfully loaded.

## Gotchas

fuse is already set up to pre-cache an ad when you call [fuse.init()][plugin.fuse.init], so normally there's no need to call `fuse.checkLoaded()` prior to calling [fuse.show()][plugin.fuse.show]. Generally, the only time to call `fuse.checkLoaded()` is when you're calling [fuse.show()][plugin.fuse.show] and you want to ensure that fuse has had time to <nobr>pre-cache</nobr> a specific ad.

## Syntax

	fuse.checkLoaded( [params] )

##### params ~^(optional)^~
_[Table][api.type.Table]._ A table that specifies properties for the check. If no table is provided, the default zone will be checked. 

Valid keys for the table include:

* `"zone"` &mdash; The [ad zone](http://wiki.fusepowered.com/index.php/Zones) for which to check if an ad has been loaded.


## Example

``````lua
local fuse = require( "plugin.fuse" )

-- Pre-set an ad zone
local adZone = "Menu"

-- Event listener function
local function adListener( event )

	if ( event.isError ) then
		print( "fuse error: " .. event.response )
	else
		if ( event.phase == "init" ) then
			--fuse system initialized; load/cache a zone-specific ad
			fuse.load( "interstitial", { zone=adZone } )

		elseif ( event.phase == "loaded" ) then
			--the result of "fuse.checkLoaded()"
			fuse.show( "interstitial", { zone=adZone } )

		elseif ( event.phase == "shown" ) then
			--an ad finished showing
		end
	end
end

-- Initialize the fuse service
fuse.init( "fuse", "12345678-abcd-1234-abcd-12345678abcd", adListener )

-- Sometime later, check if the ad has been loaded/cached
fuse.checkLoaded( { zone=adZone } )
``````