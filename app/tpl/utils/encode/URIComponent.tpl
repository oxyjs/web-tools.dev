{{
  let obj = {
    title: 'URL Encode/Decode',
    process: {
      encode: x => encodeURIComponent(x),
      decode: x => decodeURIComponent(x)
    }
  };
}}

{{+ 'block/string/encode-decode',  obj }}