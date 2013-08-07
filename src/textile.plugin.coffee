# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class TextilePlugin extends BasePlugin
		# Plugin name
		name: 'textile'

		# Render
		# Called per document, for each extension conversion. Used to render one extension to another.
		render: (opts) ->
			# Prepare
			{inExtension,outExtension,file} = opts

			# Upper case the text document's content if it is using the convention html.textile
			if inExtension in ['textile'] and outExtension in ['html',null]
				# Requires
				marked = require('textile-js')
				#marked.setOptions(config.textileOptions)

				# Render
				opts.content = textile.parse(opts.content)

			# Done
			return
