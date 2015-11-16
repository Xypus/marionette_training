@TrainingLog.module 'Dishes', (Dishes, App, Backbone, Marionette, $, _) ->

  Dishes.SomeOther = Marionette.ItemView.extend

    template: 'dishes/other'