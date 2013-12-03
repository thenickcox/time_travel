App.IndexRoute = Ember.Route.extend
  model: ->
    console?.log @store.find('trip')
    @store.find('trip')
