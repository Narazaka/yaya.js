yaya.js
=======================================

Yet Another AYA on JavaScript

Original SHIORI module
---------------------------------------

[YAYA](https://code.google.com/p/yaya-shiori/) by [The Maintenance Shop](http://ms.shillest.net/)

**Caution**:
This module is maintained by [Narazaka](http://narazaka.net/) and not officially supported by The Maintenance Shop.
Do not report bugs or something that is caused by yaya.js to The Maintenance Shop.

Installation
---------------------------------------

    bower install yaya.js

or download zip archive and get yaya.js

Usage
---------------------------------------

This module has only low level API, that is provided by emscripten.

So use the wrapper module, [nativeshiori](https://github.com/Narazaka/nativeshiori), and do like below.

    <script src="encoding.min.js"></script>
    <script src="nativeshiori.js"></script>
    <script src="yaya.js"></script>
    <script>
    
    var yaya_txt_str = 'dic, test.dic\r\n';
    var yaya_txt = Encoding.convert(Encoding.stringToCode(yaya_txt_str), 'SJIS', 'UNICODE');
    var test_dic_str = 'request{"Hello World"}\r\n';
    var test_dic = Encoding.convert(Encoding.stringToCode(test_dic_str), 'SJIS', 'UNICODE');
    var storage = {
      'yaya.txt': new Uint8Array(yaya_txt), // filename: ArrayBufferView
      'test.dic': new Uint8Array(test_dic)
    };
    
    // Shiori instance and optional storage (/path/to/ghost/master/*)
    var nativeshiori = new NativeShiori(new YAYA(), storage);
    
    // write files in storage to FS then load() if storage exists, else load()
    var load_code = nativeshiori.load('/path/to/ghost/master'); 
    
    // request()
    var response = nativeshiori.request('GET SHIORI/3.0\r\nCharset: Shift_JIS\r\ID: OnBoot\r\n\r\n');
    
    // unload()
    var unload_code = nativeshiori.unload();
    
    </script>

LICENSE
--------------------------------

(C) 2014 Narazaka : Licensed under [The BSD 3-Clause License](http://narazaka.net/license/BSD3?2014)
