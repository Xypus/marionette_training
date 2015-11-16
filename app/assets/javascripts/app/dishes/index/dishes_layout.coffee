@TrainingLog.module 'Dishes', (Dishes, App, Backbone, Marionette, $, _) ->

  Dishes.IndexView = Marionette.LayoutView.extend

    template: 'dishes/layout'

    regions:
      categorySelect: '#category-select'
      someOther: '#some-other'

    onRender: ->
      collection = new App.Entities.Categories
      collection.fetchCollection()
      console.log(collection)
      @getRegion('categorySelect').show(new Dishes.CategorySelect(collection: collection))
      someOther = new Dishes.SomeOther
      @getRegion('someOther').show(someOther)
