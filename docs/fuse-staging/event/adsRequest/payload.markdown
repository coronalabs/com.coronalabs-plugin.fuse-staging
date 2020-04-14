# event.payload

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Table][api.type.Table]
> __Event__             [adsRequest][plugin.fuse.event.adsRequest]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          adsRequest, payload, adrally
> __See also__			[adrally.*][plugin.fuse]
>                       [event.phase][plugin.fuse.event.adsRequest.phase]
>                       [event.type][plugin.fuse.event.adsRequest.type]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

When a user completes an action, e.g. accepts an offer or completes a task like watching a video, your app will receive an event in which [event.phase][plugin.fuse.event.adsRequest.phase] is `"completed"`.

The `payload` property provides your app with the context of that action, so it can behave accordingly.

## Payload Values

The payload value is a [table][api.type.Table]. The properties contained in that value depend on the [event.type][plugin.fuse.event.adsRequest.type]:

### `event.type == "iapOffer"`

* `"event.payload.iapID"`
* `"event.payload.iapPrice"` This is 0 or the value in local currency if available, e.g. 2.99.
* `"event.payload.offerObjectID"`
* `"event.payload.offerQuantity"`


### `event.type == "rewarded"`

* `"event.payload.zoneName"`
* `"event.payload.singluarName"`
* `"event.payload.pluralName"`
* `"event.payload.preRollMessage"`
* `"event.payload.rewardMessage"`
* `"event.payload.rewardObjectID"`
* `"event.payload.rewardQuantity"`

### `event.type == "virtualGoodsOffer"`

* `"event.payload.offerCostObjectID"`
* `"event.payload.offerCostQuantity"`
* `"event.payload.offerObjectID"`
* `"event.payload.offerQuantity"`