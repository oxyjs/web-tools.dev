{{r https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.9-1/crypto-js.min.js }}

{{
  let obj = {
    title: 'MD5 Hash',
    process: {
      encode: x => CryptoJS.MD5(x)
    }
  };
}}

{{+ 'block/string/hash',  obj }}