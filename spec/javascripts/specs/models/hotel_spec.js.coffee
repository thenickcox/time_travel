describe 'Hotels', ->
  describe 'price calculation', ->
    it 'calculates the total revenue', ->
      Ember.run ->
        hotel = store.createRecord('hotel',
          price: '100',
          nightsOrdered: '3'
        )
        expect(hotel.get('revenue')).toEqual 300

