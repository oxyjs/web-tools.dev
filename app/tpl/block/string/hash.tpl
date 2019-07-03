
<h1>{{< args.title }}</h1>

<textarea>
</textarea>

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

root.find('textarea').on('keydown run', () => {
    const chunks = prepare();

    if (args.process_chunks && args.process_chunks.encode)
        chunks.map(x => 
            target.html(target.html() + args.process_chunks.encode(x))
        )
    else
        target.html(args.process.encode(chunks.join("")));
  })
  .trigger('run')

}}
