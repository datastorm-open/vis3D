// Add shim for Function.prototype.bind() from:
// https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/Function/bind#Compatibility
// for fix some RStudio viewer bug (Desktop / windows)
if (!Function.prototype.bind) {
  Function.prototype.bind = function (oThis) {
    if (typeof this !== "function") {
    // closest thing possible to the ECMAScript 5 internal IsCallable function
      throw new TypeError("Function.prototype.bind - what is trying to be bound is not callable");
    }

    var aArgs = Array.prototype.slice.call(arguments, 1),
        fToBind = this,
        fNOP = function () {},
        fBound = function () {
            return fToBind.apply(this instanceof fNOP && oThis
                                               ? this
                                               : oThis,
                                             aArgs.concat(Array.prototype.slice.call(arguments)));
        };

    fNOP.prototype = this.prototype;
    fBound.prototype = new fNOP();

    return fBound;
  };
}

HTMLWidgets.widget({

  name: 'vis3D',

  type: 'output',

  initialize: function(el, width, height) {

    return {
    }

  },

  renderValue: function(el, x, instance) {

    // network
    var data = new vis.DataSet();
    data.add(x.data);

    var options = x.options

    var container = document.getElementById(el.id);
   
    // create network
    instance.graph = new vis.Graph3d(container, data, options);
      
  },

  resize: function(el, width, height, instance) {
    if(instance.graph)
      instance.graph.redraw();
  }

});
