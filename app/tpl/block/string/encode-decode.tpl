
<h1>{{< args.title }}</h1>

<textarea>
</textarea>

<button class='encode'>{{< args.btn && args.btn.encode || 'encode' }}</button>
<button class='decode'>{{< args.btn && args.btn.encode || 'decode' }}</button>

<div>

</div>

{{$
const target = root.find('div');

const prepare = () => {
    target.html('');

    const chunks = 
    root.find('textarea').val()
        .match(/.{0,1000}/g)

    return chunks;
}

root.find('button.encode')
  .on('click', () => {
    const chunks = prepare();

    if (args.process_chunks && args.process_chunks.encode)
        chunks.map(x => 
            target.html(target.html() + args.process_chunks.encode(x))
        )
    else
        target.html(args.process.encode(chunks.join("")));
  })

root.find('button.decode')
  .on('click', () => {
    const chunks = prepare();

    if (args.process_chunks && args.process_chunks.decode)
        chunks.map(x => 
            target.html(target.html() + args.process_chunks.decode(x))
        )
    else
        target.html(args.process.decode(chunks.join("")));
  })


}}
