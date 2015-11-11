@TrainingLog.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->

  Entities.Category = Backbone.Model.extend
    urlRoot: '/categories'


  Entities.Categories = Backbone.Collection.extend
    model: Entities.Category
    url: '/categories'
    fetchCollection: ->
      @fetch(reset: true)




