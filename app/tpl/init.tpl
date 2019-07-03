<h1>Web developer online utils</h1>
<h2>Disclaimer: work in progress</h2>

<div id='target'>
  {{+ `home/index` }}
<div>

{{$

    $('body').on('click', 'a', e => {
      const tpl = $(e.target).attr('tpl');

      location.hash = tpl;

      const instance = oxy.tpl.render(tpl)
          .then(instance => instance.render.node)
          .then(node => root.find('#target').html('').append(node))

      return e.preventDefault(), false;
    })

}}

{{r https://cdnjs.cloudflare.com/ajax/libs/cash/4.1.2/cash.min.js }}

{{c

  #target {
    display: block;
    width: 100vw;
    height: 100vh;
  }

}}