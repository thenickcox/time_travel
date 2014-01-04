TimeTravel.Hotel = DS.Model.extend
  name: DS.attr('string')
  description: DS.attr('string')
  price: DS.attr('number')
  nightsOrdered: DS.attr('number')
  trip: DS.belongsTo('trip')

  revenue: (->
    @get('nightsOrdered') * @get('price')
  ).property('nightsOrdered', 'price')
