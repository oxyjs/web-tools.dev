{{r https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.9-1/crypto-js.min.js }}

{{
  let obj = {
    title: 'SHA-3 Hash',
    process: {
      encode: x => CryptoJS.SHA3(x)
    }
  };
}}

{{+ 'block/string/hash',  obj }}