# Migration: AdRally => Fuse

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, fuse, adrally
> __See also__          [fuse.*][plugin.fuse]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

If you previously used the Adrally plugin, this document will help you migrate your code to the new [Fuse][plugin.fuse] plugin.

## Project Settings

Please refer to the 'Project Settings' section in the [fuse][plugin.fuse] docs.

## API Changes

The `fuse` plugin replaces the `adrally` plugin. In addition to the namespace change, there are several minor interface changes to several APIs:

* `checkLoaded()`
	+ The `adType` argument has been removed. If provided, a warning message in the console will appear.
* `init()`
	+ The `providerName` argument has been removed. 
	+ If you build with Corona SDK, you only need to supply the listener. The server will automatically assign one based on your app's bundle/package id.
* `load()`
	+ The `adType` argument has been removed. If provided, a warning message in the console will appear.
* `show()`
	+ The `adType` argument has been removed. If provided, a warning message in the console will appear.

## New APIs

* `checkContent()`
* `event.payload`
