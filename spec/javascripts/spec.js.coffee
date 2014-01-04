//= require application
//= require_tree ./

store = null
Ember.testing = true
TimeTravel.Store = DS.Store.extend(
  adapter: TimeTravel.ApplicationAdapter
)
container = new Ember.Container()
container.register('model:hotel', TimeTravel.Hotel)
container.register('model:trip', TimeTravel.Trip)
@store = TimeTravel.Store.create(
  container: container
)

