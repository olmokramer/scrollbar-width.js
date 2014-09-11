# scrollbar-width.coffee
#
# calculates the width of the scrollbar in the browser
# and sets a property SCROLLBAR_WIDTH on the window or
# global object with the value.
#
# AUTHOR:
# Olmo Kramer
# - github.com: https://github.com/olmokramer
# - email: olmo.kramer@gmail.com
# - web: http://www.olmokramer.nl

do (root = this) ->
    doc = root.document

    ready = ->
        div1 = doc.createElement 'div'
        div1.style.width = '100px'
        div1.style.overflowX = 'scroll'

        div2 = doc.createElement 'div'
        div2.style.width = '100px'

        doc.body.appendChild div1
        doc.body.appendChild div2

        SCROLLBAR_WIDTH = div1.offsetHeight - div2.offsetHeight

        doc.body.removeChild div1
        doc.body.removeChild div2

        root.SCROLLBAR_WIDTH = SCROLLBAR_WIDTH

    readyStateChange = ->
        if doc.readyState is 'complete'
            ready()

    doc.addEventListener? 'DOMContentLoaded', ready, false
    root.addEventListener? 'load', ready, false
    doc.attachEvent? 'onreadystatechange', readyStateChange
    root.attachEvent? 'onload', ready