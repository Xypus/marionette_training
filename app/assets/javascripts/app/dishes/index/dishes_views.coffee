@TrainingLog.module 'Dishes', (Dishes, App, Backbone, Marionette, $, _) ->

  Dishes.IndexView = Marionette.ItemView.extend

    template: 'dishes/index'