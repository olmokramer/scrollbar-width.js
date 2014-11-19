# [scrollbar-width.js](https://github.com/olmokramer/scrollbar-width.js) 2.0.1

scrollbar-width.js is a library for calculating the scrollbar size of a browser window. It is compatible with AMD, CommonJS and the standard browser environment.

## Installation/Usage

### AMD

Usage with AMD is straightforward:

```
require([
  'js/scrollbar-width'
], function(calcScrollbarWidth) {
  var scrollbarWidth = calcScrollbarWidth();
  // ...
});
```

### Node.js

Install with npm:

```
npm install scrollbar-width
```

Then require it and call the function:

```
var scrollbarWidth = require("scrollbar-width")();
```

### Browser

Include it in your HTML:

```
<script src="js/scrollbar-width.js"></script>
```

Then just call the function:

```
var scrollbarWidth = window.scrollbarWidth();
```

## Notes

### Cached value

The function will cache the value it has calculated. You can force to calculate again by calling it with it's first parameter set to `true`:

```
var newScrollbarWidth = calcScrollbarWidth(true);
```

### scrollbarWidth() returns undefined

Until the document is loaded (document.readyState !== 'loading'), scrollbarWidth() will return undefined. So be sure to call it when the document has loaded.

## Compatibility

Tested in and compatible with:
- Chrome (35.0.1916.153)
- FireFox (IceWeasel 30.0)
- IE (8+)

## Issues

If you find any issues, please file an issue on the
[github page](https://github.com/olmokramer/scrollbar-width.js/issues).

## License

scrollbarWidth is licensed under the [MIT license](LICENSE).
