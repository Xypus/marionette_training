@TrainingLog.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->

    Entities.Product = Backbone.Model.extend
      urlRoot: '/products'

      validation: {
        name: {
          required: true
          msg: 'Please enter product name!'
        }
        proteins: {
          pattern: 'number'
          msg: 'Proteins value must be a number!'
        }
        fats:  {
          pattern: 'number'
          msg: 'Fats value must be a number!'
        }
        carbs:  {
          pattern: 'number'
          msg: 'Carbs value must be a number!'
        }
        calories:  {
          pattern: 'number'
          msg: 'Calories value must be a number!'
        }
      }

    Entities.Products = Backbone.Collection.extend
      model: Entities.Product
      url: '/products'
      fetchCollection: ->
        @fetch(reset: true)




