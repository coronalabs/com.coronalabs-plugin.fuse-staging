# event.phase

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String][api.type.String]
> __Event__             [adsRequest][plugin.fuse.event.adsRequest]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          adsRequest, phase, adrally
> __See also__			[adrally.*][plugin.fuse]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

[String][api.type.String] value indicating the phase of the [adsRequest][plugin.fuse.event.adsRequest] event. Possible values include:

* `"init"` &mdash; Indicates that the AdRally system finished initializing.
* `"loaded"` &mdash; Indicates that an ad of the specified type and ad zone is loaded and cached &mdash; see [adrally.checkLoaded()][plugin.fuse.checkLoaded].
* `"shown"` &mdash; Indicates that an ad finished showing.
* `"completed"` &mdash; Indicates that a user has accepted an offer or completed a task for a rewarded such as watching a video ad. This phase can be detected in order to issue an <nobr>in-app</nobr> reward like game currency. In this case, the [event.reward][plugin.fuse.event.adsRequest.reward] property will contain more information on the reward.