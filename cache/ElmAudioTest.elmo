Elm.ElmAudioTest = Elm.ElmAudioTest || {};
Elm.ElmAudioTest.make = function (_elm) {
   "use strict";
   _elm.ElmAudioTest = _elm.ElmAudioTest || {};
   if (_elm.ElmAudioTest.values)
   return _elm.ElmAudioTest.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _A = _N.Array.make(_elm),
   _E = _N.Error.make(_elm),
   $moduleName = "ElmAudioTest";
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Mouse = Elm.Mouse.make(_elm);
   var Native = Native || {};
   Native.Json = Elm.Native.Json.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var Window = Elm.Window.make(_elm);
   var _op = {};
   var createColor = function (x) {
      return A4(Color.rgba,
      Basics.floor(x * 1280.0),
      111,
      111,
      0.6);
   };
   var c = 400;
   var b = 50;
   var display = F3(function (x,
   myColor,
   _v0) {
      return function () {
         switch (_v0.ctor)
         {case "_Tuple2":
            return A3(Graphics.Collage.collage,
              _v0._0,
              _v0._1,
              _L.fromArray([A2(Graphics.Collage.move,
              {ctor: "_Tuple2",_0: 0,_1: 0},
              A2(Graphics.Collage.filled,
              myColor,
              Graphics.Collage.circle(c * x + b)))]));}
         _E.Case($moduleName,
         "between lines 14 and 16");
      }();
   });
   var micLevel = Native.Ports.portIn("micLevel",
   Native.Ports.incomingSignal(function (v) {
      return typeof v === "number" ? v : _E.raise("invalid input, expecting JSNumber but got " + v);
   }));
   var myColor = A2(Signal.lift,
   createColor,
   micLevel);
   var main = A4(Signal.lift3,
   display,
   micLevel,
   myColor,
   Window.dimensions);
   _elm.ElmAudioTest.values = {_op: _op
                              ,main: main
                              ,b: b
                              ,c: c
                              ,display: display
                              ,createColor: createColor
                              ,myColor: myColor};
   return _elm.ElmAudioTest.values;
};