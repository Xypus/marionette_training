@TrainingLog.module 'Products', (Products, App, Backbone, Marionette, $, _) ->


  Products.Empty = Marionette.ItemView.extend

    tagName: 'tr'
    template: 'products/empty'

  Products.Single = Marionette.ItemView.extend

    tagName: 'tr'
    template: 'products/single'

    ui:
      productEdit: 'a.edit'
      productDelete: 'a.delete'

    events:
      'click @ui.productEdit': 'productEdit'
      'click @ui.productDelete': 'productDelete'

    productEdit: ->
      console.log('Clicked product edit')

    productDelete: ->
      console.log('Clicked product delete')

  Products.All = Marionette.CompositeView.extend

    emptyView: Products.Empty
    template: 'products/all'
    childView: Products.Single
    childViewContainer: 'tbody'