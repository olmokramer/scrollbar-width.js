/*
scrollbarWidth.js

calculates the width of the scrollbar in the browser
and sets a property SCROLLBAR_WIDTH on the window or
global object with the value.

AUTHOR:
Olmo Kramer
- github.com: https://github.com/olmokramer
- email: olmo.kramer@gmail.com
- web: http://www.olmokramer.nl
*/

(function(root, doc) {

    function ready() {
        var div1, div2, SCROLLBAR_WIDTH;

        // get the scrollbarWidth
        div1 = doc.createElement("div");
        div1.style.width = "100px";
        div1.style.overflowX = "scroll";

        div2 = doc.createElement("div");
        div2.style.width = "100px";

        doc.body.appendChild(div1);
        doc.body.appendChild(div2);

        SCROLLBAR_WIDTH = div1.offsetHeight - div2.offsetHeight;

        doc.body.removeChild(div1);
        doc.body.removeChild(div2);

        if(typeof module !== "undefined") {
            module.exports = SCROLLBAR_WIDTH;
        } else {
            root.SCROLLBAR_WIDTH = SCROLLBAR_WIDTH;
        }
    }

    /*
    everything after this borrowed from https://github.com/jfriend00/docReady
    */

    function readyStateChange() {
        if ( doc.readyState === "complete" ) {
            ready();
        }
    }

    // only execute after dom has loaded
    if (doc.addEventListener) {
        // first choice is DOMContentLoaded event
        doc.addEventListener("DOMContentLoaded", ready, false);
        // backup is window load event
        root.addEventListener("load", ready, false);
    } else {
        // must be IE
        doc.attachEvent("onreadystatechange", readyStateChange);
        root.attachEvent("onload", ready);
    }

})(window || global, document);
