{{
  let obj = {
    title: 'Base64 Encode/Decode',
    process: {
      encode: x => btoa(x),
      decode: x => atob(x)
    }
  };
}}

{{+ 'block/string/encode-decode',  obj }}