class App.Views.LastUpdated extends Backbone.View
  render: ->
    @$el.html(@model.get("updated_at"))
    this