# scrollbar-width.coffee
#
# calculate the width of the scrollbar in the browser.
# exports a function (AMD/CommonJS), or sets function
# window.scrollbarWidth (standard browser environment)
# Will cache the value, untill the function is called
# with the recalculate parameter set to true.

factory = (doc) ->
  scrollbarWidth = null

  (recalculate = false) ->
    return scrollbarWidth if scrollbarWidth? and not recalculate

    return undefined if doc.readyState is 'loading'

    div1 = doc.createElement 'div'
    div2 = doc.createElement 'div'

    div1.style.width = div2.style.width = '100px'
    div1.style.overflowX = 'scroll'
    div2.style.overflowY = 'hidden'

    doc.body.appendChild div1
    doc.body.appendChild div2

    scrollbarWidth = div1.offsetHeight - div2.offsetHeight

    doc.body.removeChild div1
    doc.body.removeChild div2

    scrollbarWidth

do (root = @, factory) ->
  unless root.document?
    return console.warn 'WARNING: root.document doesn\'t exist'
  if typeof define is 'function' and define.amd
    define [], ->
      factory root.document
  else if typeof exports isnt 'undefined'
    module.exports = factory root.document
  else
    root.scrollbarWidth = factory root.document
