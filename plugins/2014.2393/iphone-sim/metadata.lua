local metadata =
{
	plugin =
	{
		format = 'staticLibrary',
		staticLibs = { 'plugin_fuse', 'z', 'xml2' },
		frameworks = { 'CoreTelephony', 'EventKit', 'EventKitUI', 'MobileCoreServices', 'Accelerate', 'AdSupport' },
		frameworksOptional = { 'Social', 'iAd', 'AssetsLibrary', 'Photos', 'Webkit' },
		delegates = { "CoronaFuseApplicationDelegate" }
	},
}

return metadata