# [scrollbar-width.js](https://github.com/olmokramer/scrollbar-width.js) 1.0.1

## <a name="installation-usage"></a>Installation/Usage

### Node.js ([atom-shell](https://github.com/atom/atom-shell), [node-webkit](https://github.com/rogerwang/node-webkit) etc.)

To install for usage with node.js

    npm install scrollbar-width

Then just call once in the setup of your page

    require("scrollbar-width");

A global variable `global.SCROLLBAR_WIDTH` will then be available.

### Browser

To install in the browser just save scrollbarWidth.js to your project and include it in your html.
A global variable `window.SCROLLBAR_WIDTH` will then be available.

## <a name="compatibility"></a>Compatibility

Tested in and compatible with:
- Chrome (35.0.1916.153)
- FireFox (IceWeasel 30.0)
- IE (8+)

## <a name="issues"></a>Issues

If you have any issues, you can file an issue on the
[github page](https://github.com/olmokramer/scrollbar-width.js/issues).

## <a name="license"></a>License

scrollbarWidth is licensed under the [MIT license](LICENSE).
