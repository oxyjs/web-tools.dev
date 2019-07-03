{{r https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.9-1/crypto-js.min.js }}

{{
  let obj = {
    title: 'SHA-1 Hash',
    process: {
      encode: x => CryptoJS.SHA1(x)
    }
  };
}}

{{+ 'block/string/hash',  obj }}