Meteor.methods
	getUserSip: (formData) ->
    console.log 'I am in getuser sip function'
    console.log Meteor.userId()
    user = RocketChat.models.Users.findOneById Meteor.userId();
    console.log user.sip;
    return user.sip