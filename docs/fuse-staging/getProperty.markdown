# fuse.getProperty()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, fuse
> __See also__          [fuse.*][plugin.fuse]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Register an event with the Fuse tracking system.


## Syntax

	fuse.getProperty( name )
	fuse.getProperty( name, params )

##### name ~^(required)^~
_[String][api.type.String]._ String which specifies the type of property. Valid names include:

* `"numGamesPlayed"` &mdash; The number of times the user has opened the application. On iOS, the app is opened either from the Springboard or system tray (minimized).
* `"versionString"` &mdash; The version string of the Fuse engine.
* `"isConnected"` &mdash; This is `true` if the application is connected to the internet; `false` otherwise.
* `"rewardedPayload"` &mdash; This is the [payload][plugin.fuse.event.adsRequest.payload] for the rewarded object for a specific zone. You specify the zone via the `params` table which should contain a `zone` property. If the `params` table is not supplied, then the payload for the default zone is given

##### params ~^(optional)^~
_[Table][api.type.Table]._ Table which specifies optional parameters &mdash; see the next section for details.


## Parameter Reference

The `params` table should include properties for the registered event.

###### Currency

* `"currency"` ([Number][api.type.Number]) &mdash; The currency type. Valid values are `1` to `4` inclusive.
* `"balance"` ([Number][api.type.Number]) &mdash; The balance for the specified currency type.
* `"gender"` ([String][api.type.String]) &mdash; A string for `"male"` or `"female"`.
* `"age"` ([Number][api.type.Number]) &mdash; The age.
* `"birthday"` ([Table][api.type.Table]) &mdash; The balance for the specified currency type.

###### Level

* `"level"` ([Number][api.type.Number]) &mdash; The player's level.


## Example

``````lua
local fuse = require( "plugin.fuse" )

-- Event listener function
local function adListener( event )

	if ( event.isError ) then
		print( "fuse error: " .. event.response )
	else
		if ( event.phase == "init" ) then
			--fuse system initialized
		end
	end
end

-- Initialize the fuse service
fuse.init( "fuse", "12345678-abcd-1234-abcd-12345678abcd", adListener )

-- Register a "currency" event
fuse.register( "currency", { currency=1, balance=123 } )

-- Register a "level" event
fuse.register( "level", { level=4 } )
``````