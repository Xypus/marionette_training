@TrainingLog.module 'Dishes', (Dishes, App, Backbone, Marionette, $, _) ->

  Dishes.Category = Marionette.ItemView.extend

    tagName: 'li'

    template: 'dishes/category'

    onRender: ->
      console.log('single category')

  Dishes.CategorySelect = Marionette.CompositeView.extend

    template: 'dishes/select'
    childView: Dishes.Category
    childViewContainer: 'ul'

    ui:
     trigger: '#trigger'

    events:
     'click @ui.trigger': 'showList'

    showList: ->
      console.log('clicked trigger')
      @$('#category-list').slideToggle()


