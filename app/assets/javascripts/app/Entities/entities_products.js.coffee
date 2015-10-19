@TrainingLog.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->

    Entities.Product = Backbone.Model.extend()

    Entities.Products = Backbone.Collection.extend
      model: Entities.Product
      url: '/foods'
      fetchCollection: ->
        @fetch(reset: true)




