@TrainingLog.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->

    Entities.Product = Backbone.Model.extend
      urlRoot: '/products'

      validation: {
        name: {
          required: true
          msg: 'Please enter product name'
        }
        proteins: {
          pattern: 'number'
          msg: 'Please enter a number'
        }
        fats:  {
          pattern: 'number'
          msg: 'Please enter a number'
        }
        carbs:  {
          pattern: 'number'
          msg: 'Please enter a number'
        }
        calories:  {
          pattern: 'number'
          msg: 'Please enter a number'
        }
      }

    Entities.Products = Backbone.Collection.extend
      model: Entities.Product
      url: '/products'
      fetchCollection: ->
        @fetch(reset: true)




