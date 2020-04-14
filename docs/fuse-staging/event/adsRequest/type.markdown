# event.type

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String][api.type.String]
> __Event__             [adsRequest][plugin.fuse.event.adsRequest]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          adsRequest, type, adrally
> __See also__			[adrally.*][plugin.fuse]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

When the [event.phase][plugin.fuse.event.adsRequest.phase] is `"completed"`, then the `type` property specifies the type of action completed:

* `"rewarded"` The user has completed a video and should be given a reward, e.g. in-app currency.
* `"iapOffer"` The user has accepted an IAP offer.
* `"virtualGoodsOffer"` The user has accepted a virtual goods offer.
