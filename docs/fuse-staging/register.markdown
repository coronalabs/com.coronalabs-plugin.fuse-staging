# fuse.register()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, fuse
> __See also__          [fuse.*][plugin.fuse]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Register an event with the Fuse tracking system.


## Syntax

	fuse.register( eventType [, params] )

##### eventType ~^(required)^~
_[String][api.type.String]._ String which specifies the type of event to register. Valid options include:

* `"currency"` &mdash; Register a currency type and its current balance.
* `"level"` &mdash; Register the player's level.
* `"gender"` &mdash; Register player's gender.
* `"age"` &mdash; Register player’s age.
* `"birthday"` &mdash; Register player’s birth day.
* `"pushToken"`&mdash; Requests for user authorization for push notifications.

##### params ~^(required)^~
_[Table][api.type.Table]._ Table which specifies optional parameters &mdash; see the next section for details.


## Parameter Reference

The `params` table should include properties for the registered event.

###### Currency

* `"currency"` ([Number][api.type.Number]) &mdash; The currency type. Valid values are `1` to `4` inclusive.
* `"balance"` ([Number][api.type.Number]) &mdash; The balance for the specified currency type.

###### Level

* `"level"` ([Number][api.type.Number]) &mdash; The player's level.

###### Gender

* `"gender"` ([String][api.type.String]) &mdash; A string for `"male"` or `"female"`.

###### Age

* `"age"` ([Number][api.type.Number]) &mdash; The age.

###### Birthday

* `"year"` ([Number][api.type.Number]) — The year of birth.
* `"month"` ([Number][api.type.Number]) — The month of birth.
* `"day"` ([Number][api.type.Number]) — The day of birth.

###### PushToken

For `"pushToken"` second parameter would be ignored. For push notification to
work, setup `config.lua` with `projectNumber` for Android and select appropriate provisioning profiles for iOS.

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