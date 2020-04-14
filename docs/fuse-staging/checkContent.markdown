# fuse.checkContent()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      [Boolean][api.type.Boolean]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, fuse
> __See also__          [fuse.init()][plugin.fuse.init]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Allows you to check a zone for the availability of specific types of content:

* IAP offers
* Rewarded video
* Virtual goods

## Syntax

	fuse.checkContent( params )

##### params ~^(required)^~
_[Table][api.type.Table]._ A table that specifies properties for the check. Valid keys for the table include:

* `"zone"` &mdash; The [ad zone](http://wiki.fusepowered.com/index.php/Zones) for which to check if an ad has been loaded.

* `"type"` &mdash; The content whose availability you are checking. These values correspond to the types of action completed, as explained in [event.type][plugin.fuse.event.adsRequest.type]:
	+ `"rewarded"`
	+ `"iapOffer"`
	+ `"virtualGoodsOffer"`


## Example

``````lua

``````