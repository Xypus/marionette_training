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

    initialize: ->
      @listenTo(@model, 'destroy', @remove)

    productEdit: ->
      console.log('Clicked product edit')

    productDelete: ->
      @model.destroy()

  Products.All = Marionette.CompositeView.extend

    emptyView: Products.Empty
    template: 'products/all'
    childView: Products.Single
    childViewContainer: 'tbody'

    ui:
      newProduct: '.add'

    events:
      'click @ui.newProduct': 'newProductModal'

    newProductModal: ->
      newProductView = new Products.Modal
      @listenTo newProductView, 'model:saved', (model) ->
        @collection.add model
      App.modalRegion.show(newProductView)









