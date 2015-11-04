@TrainingLog.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->

    Entities.Product = Backbone.Model.extend
      urlRoot: '/products'

      validate: (attrs) ->
        if !attrs.name
          console.log 'Please enter name!'
        if !attrs.calories
          console.log 'Please enter calories!'
        if !attrs.proteins
          console.log 'Please enter proteins!'
        if !attrs.carbs
          console.log 'Please enter carbs!'
        if !attrs.fats
          console.log 'Please enter fats!'

    Entities.Products = Backbone.Collection.extend
      model: Entities.Product
      url: '/products'
      fetchCollection: ->
        @fetch(reset: true)




