Template.home.helpers
	title: ->
		return RocketChat.settings.get 'Layout_Home_Title'
	body: ->
		return RocketChat.settings.get 'Layout_Home_Body'


Template.home.events
	'click #callButton': (event, instance) ->
		numberToDial = document.getElementById('numberToDial').value
		console.log numberToDial
		Meteor.call 'getUserSip', (error, result) ->
		 user = result
		 console.log user
		