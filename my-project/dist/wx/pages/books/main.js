require("../../common/manifest.js")
require("../../common/vendor.js")
global.webpackJsonpMpvue([6],{

/***/ 141:
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),

/***/ 49:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_vue__ = __webpack_require__(3);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_vue___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_vue__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__book__ = __webpack_require__(50);



// add this to handle exception
__WEBPACK_IMPORTED_MODULE_0_vue___default.a.config.errorHandler = function (err) {
  if (console && console.error) {
    console.error(err);
  }
};

var app = new __WEBPACK_IMPORTED_MODULE_0_vue___default.a(__WEBPACK_IMPORTED_MODULE_1__book__["a" /* default */]);
app.$mount();

/***/ }),

/***/ 50:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__babel_loader_node_modules_mpvue_loader_lib_selector_type_script_index_0_book_vue__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__node_modules_mpvue_loader_lib_template_compiler_index_id_data_v_5c52b386_hasScoped_true_transformToRequire_video_src_source_src_img_src_image_xlink_href_fileExt_template_wxml_script_js_style_wxss_platform_wx_node_modules_mpvue_loader_lib_selector_type_template_index_0_book_vue__ = __webpack_require__(89);
var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(141)
}
var normalizeComponent = __webpack_require__(2)
/* script */

/* template */

/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-5c52b386"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __WEBPACK_IMPORTED_MODULE_0__babel_loader_node_modules_mpvue_loader_lib_selector_type_script_index_0_book_vue__["a" /* default */],
  __WEBPACK_IMPORTED_MODULE_1__node_modules_mpvue_loader_lib_template_compiler_index_id_data_v_5c52b386_hasScoped_true_transformToRequire_video_src_source_src_img_src_image_xlink_href_fileExt_template_wxml_script_js_style_wxss_platform_wx_node_modules_mpvue_loader_lib_selector_type_template_index_0_book_vue__["a" /* default */],
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "src\\pages\\books\\book.vue"
if (Component.esModule && Object.keys(Component.esModule).some(function (key) {return key !== "default" && key.substr(0, 2) !== "__"})) {console.error("named exports are not supported in *.vue files.")}
if (Component.options.functional) {console.error("[vue-loader] book.vue: functional components are not supported with templates, they should use render functions.")}

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-5c52b386", Component.options)
  } else {
    hotAPI.reload("data-v-5c52b386", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

/* harmony default export */ __webpack_exports__["a"] = (Component.exports);


/***/ }),

/***/ 52:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__util__ = __webpack_require__(26);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//



/* harmony default export */ __webpack_exports__["a"] = ({
  data: function data() {
    return {
      msg: 'book',
      bookTypes: [{
        "id": "242",
        "catalog": "中国文学"
      }, {
        "id": "252",
        "catalog": "人物传记"
      }, {
        "id": "244",
        "catalog": "儿童文学"
      }, {
        "id": "248",
        "catalog": "历史"
      }, {
        "id": "257",
        "catalog": "哲学"
      }, {
        "id": "243",
        "catalog": "外国文学"
      }, {
        "id": "247",
        "catalog": "小说"
      }, {
        "id": "251",
        "catalog": "心灵鸡汤"
      }, {
        "id": "253",
        "catalog": "心理学"
      }, {
        "id": "250",
        "catalog": "成功励志"
      }, {
        "id": "249",
        "catalog": "教育"
      }, {
        "id": "245",
        "catalog": "散文"
      }, {
        "id": "256",
        "catalog": "理财"
      }, {
        "id": "254",
        "catalog": "管理"
      }, {
        "id": "246",
        "catalog": "经典名著"
      }, {
        "id": "255",
        "catalog": "经济"
      }, {
        "id": "258",
        "catalog": "计算机"
      }],
      books: []
    };
  },
  created: function created() {
    //this.getBooktypeData();
  },
  mounted: function mounted() {},

  methods: {
    getBooktypeData: function getBooktypeData() {
      var _this = this;
      wx.request({
        url: 'http://apis.juhe.cn/goodbook/catalog?dtype=&key=9a52a17273c6c1b42808f1cf847fdca6',
        success: function success(res) {
          if (res.data.result != null) {
            _this.bookTypes = res.data.result;
            console.log(_this.bookTypes);
          }
        }
      });
    }
  }
});

/***/ }),

/***/ 89:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var render = function () {var _vm=this;var _h=_vm.$createElement;var _c=_vm._self._c||_h;
  return _c('div', {
    staticClass: "fixed-wrapper"
  }, [_c('div', {
    staticClass: "container"
  }, [_c('div', {
    staticClass: "type"
  }, [_c('p', {
    staticClass: "title"
  }, [_vm._v("图书分类")]), _vm._v(" "), _c('div', {
    staticClass: "type-box"
  }, [_c('ul', [_vm._l((_vm.bookTypes), function(book, index) {
    return _c('li', {
      key: book.catalog
    }, [_vm._v("\n            " + _vm._s(book.catalog) + "\n          ")])
  }), _vm._v(" "), _c('p', {
    staticClass: "clear"
  })], 2)], 1)], 1), _vm._v(" "), _c('div', {
    staticClass: "context"
  }, [_c('ul', {
    staticClass: "book-box"
  }, [_c('li', {
    staticClass: "book-item"
  }, [_c('div', [_c('img', {
    attrs: {
      "src": "",
      "alt": ""
    }
  })])])], 1)], 1)])])
}
var staticRenderFns = []
render._withStripped = true
var esExports = { render: render, staticRenderFns: staticRenderFns }
/* harmony default export */ __webpack_exports__["a"] = (esExports);
if (false) {
  module.hot.accept()
  if (module.hot.data) {
     require("vue-hot-reload-api").rerender("data-v-5c52b386", esExports)
  }
}

/***/ })

},[49]);