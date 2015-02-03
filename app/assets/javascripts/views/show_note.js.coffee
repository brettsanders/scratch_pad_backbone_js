class App.Views.ShowNote extends Backbone.View
  template: JST['notes/show']

  className: 'note'

  events:
    'change': 'save'

  render: ->
    @$el.html(@template(note: @model))
    this

  showNote: ->
    Backbone.history.navigate(@model.url(), trigger: true)
    false

  save: ->
    @model.set
      title: @$('.note-title').val()
      content: @$('.note-content').val()
    @model.save()
    false