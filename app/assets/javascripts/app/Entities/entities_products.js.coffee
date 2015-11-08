@TrainingLog.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->

    Entities.Product = Backbone.Model.extend
      urlRoot: '/products'

      validation: {
        name: {
          required: true
          msg: 'Please enter product name.'
        }
        proteins: [{
          pattern: 'number'
          msg: 'Please enter a number'
        },{
          required: true
          msg: 'Field can\'t be blank'
        }]
        fats: [{
          pattern: 'number'
          msg: 'Please enter a number'
        },{
            required: true
            msg: 'Field can\'t be blank'
          }]
        carbs: [{
          pattern: 'number'
          msg: 'Please enter a number'
        },{
            required: true
            msg: 'Field can\'t be blank'
          }]
        calories: [{
          pattern: 'number'
          msg: 'Please enter a number'
        },{
            required: true
            msg: 'Field can\'t be blank'
          }]
      }

    Entities.Products = Backbone.Collection.extend
      model: Entities.Product
      url: '/products'
      fetchCollection: ->
        @fetch(reset: true)




