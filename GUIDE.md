# The definitive guide to ConTeXt MkIV documentation

On the [mailing list][list] (sign up, do it!) and on [TeX - LaTeX
Stack Exchange][texsx] (*abbr.:* TeX.SX) I often read the complaint
that the ConTeXt documentation is bad/old/incomplete.  I
wholeheartedly disagree.  However, I have to admit that ConTeXt
documentation is actually quite hard to *find*.  That is why I have
come to the conclusion that a definitive guide to the, in my opinion
outstanding, ConTeXt documentation is necessary.  I structured this
guide in such a way that a beginner can start reading the linked
resources from top to bottom.

Even though you read the words “beta” and “experimental” in many
places, the versions provided can be considered production quality
because Pragma ADE relies on these versions for commercial purposes.
If you have a deadline coming up I would recommend not updating
ConTeXt until you have finished your work, because some mechanism are
moving targets anyway.

[list]: https://mailman.ntg.nl/mailman/listinfo/ntg-context
[texsx]: https://tex.stackexchange.com

---

## Introductory material

This is the part of the documentation where ConTeXt is indeed
seriously lacking.  There seems to be no good and complete
introductory book for ConTeXt, while there exist literally hundreds of
more or less good books for [LaTeX][latex-docs].  But do not despair,
there is still a way for a beginner to start getting into ConTeXt and
here is how.

[latex-docs]: https://tex.stackexchange.com/questions/11

1. **[ConTeXt Mark IV an excursion][ma-cb-en]** This is the successor
    of [ConTeXt an excursion][mp-cb-en] which is often put forward as
    the beginner's guide.  However, [ConTeXt an excursion][mp-cb-en]
    was written in 1999 for ConTeXt MkII and therefore contains a lot
    of information which is outdated in MkIV.  Some people have
    complained that the layout is horrible but I think this document
    gives a very nice overview over the most frequently used commands
    on about 100 pages.  Unfortunately I still couldn't typeset
    ConTeXt documents after reading this.  I now knew what the
    building blocks are but I still had no idea how to put them
    together.  That is where the next resource enters...

[ma-cb-en]: http://www.pragma-ade.nl/general/manuals/ma-cb-en.pdf
[mp-cb-en]: http://www.pragma-ade.nl/general/manuals/mp-cb-en.pdf

2. **[Creating a clean presentation style in 40 commits][40-commits]**
    An amazing tutorial by Aditya Mahajan where a set of presentation
    slides is built step by step.  You can either browse the commits
    on GitHub or use the `git-walk` tool, instructions are provided on
    [Aditya's blog][blog-post].  This tutorial equipped me with the
    basic understanding of how to customize the most relevant elements
    of the document.

[40-commits]: https://github.com/adityam/context-slides-example
[blog-post]: https://adityam.github.io/context-blog/post/presentation-40-commits/

3. **[ConTeXt command reference][setups]** Now that you know how to
    customize your documents, you of course want to try out all the
    different settings.  But wait, what are actually *all* the
    settings?  What are the possible keys of, e.g. `\setuphead`?  That
    is where the ConTeXt command reference comes in.  This extremely
    minimalistic document is the most helpful I have encountered so
    far.  On over 300 pages every setup command with all accepted keys
    is listed.

[setups]: http://www.pragma-ade.nl/general/qrcs/setup-en.pdf

This concludes the section on introductory material.  From here on we
dive into more complicated topics.  Nevertheless after reading the
references (1) and (2) and having (3) at hand you should be able to
compose your first documents.

---

## Advanced

I don't recommend to try to read these references as a whole.  There
is no way you can memorize all that stuff.  Just skim through it to
get an idea of what is there, so you can come back and read in detail
when you actually need it.

You have probably started writing your own macros and are getting in
contact with the ConTeXt core and are wondering what all those weird
`\s!`, `\c!`, `\v!`, `\??` amd `\@@` is.  Then you might enjoy the
[System Macros][system] page in the ConTeXt Garden Wiki.

[system]: http://wiki.contextgarden.net/System_Macros

### Fonts

- **[Fonts out of ConTeXt][fonts-mkiv]** a.k.a “the new font manual”
    supersedes the old [Fonts chapter][co-fonts].  Once in a while you
    want to tweak things like ligatures, kerning, protusion, or even
    want to do complicated things like defining a virtual font to
    display your custom characters.  This is the go-to resource for
    all those complicated font-related questions.

[fonts-mkiv]: http://www.pragma-ade.nl/general/manuals/fonts-mkiv.pdf
[co-fonts]: http://context.aanhet.net/svn/contextman/context-reference/en/co-fonts.pdf

- **[Typescript files][type-imp]** If you only want to implement a
    typescript for a font which does not have one provided you are
    much better off just browsing the ConTeXt source for the
    [`type-imp-*.mkiv`][type-imp] files and see how it's done there.

[type-imp]: https://github.com/contextgarden/context-mirror/tree/beta/tex/context/fonts/mkiv

### Mathematics

- **[ConTeXt rehab for amsmath addicts][amsmath]** This is a short
    article which appeared in 2006 in the MAPS journal of the Dutch
    TeX user group.  It details how to achieve similar alignments to
    the ones known from the LaTeX `amsmath` package.  (This article
    appeared also in [My Way][myway])

[amsmath]: https://www.ntg.nl/maps/34/06.pdf
[myway]: http://dl.contextgarden.net/myway/context-latex-math.pdf

- **[math][math]** This manual discusses some advanced math stuff,
    like automatic replacements (the input `/=` is automatically
    converted to `≠`), interplay with grid typesetting, custom
    numbering, and some tricks for deficient math fonts.

[math]: http://www.pragma-ade.nl/general/manuals/math-mkiv.pdf

### Bibliographies (BibTeX)

- **[Bibliographies the ConTeXt way][mkiv-publications]** Probably
    you read about `\setupbibtex` in [ConTeXt Mark IV an
    excursion][ma-cb-en].  This mechanism has been superseded by the
    new `btx` mechanism which acts as a replacement for BibTeX
    entirely implemented in Lua.  Thanks to `btx` ConTeXt does not
    depend on external programs for processing bibliographies.
    However, it only provides two different styles, `apa` as an
    author-year style and `aps` as a numeric style.  A verbose style
    named [`ieee`][publ-imp-ieee] is in development.

[mkiv-publications]: http://pragma-ade.nl/general/manuals/mkiv-publications.pdf
[publ-imp-ieee]: https://gist.github.com/adityam/afda949f76676055e7906679599ec937

### Interaction with Lua

- **[ConTeXt Lua Documents][cld-mkiv]** ConTeXt MkIV is based on
    LuaTeX and LuaTeX development is driven solely by ConTeXt.  It is
    not surprising to find that there is amazing interaction between
    ConTeXt and Lua and in principle you can typeset whole documents
    in Lua.  Some things, like the PDF backend, have spare or don't
    have macro level interfaces at all.  Such low-level mechanisms are
    usually accessible in Lua.

[cld-mkiv]: http://www.pragma-ade.nl/general/manuals/cld-mkiv.pdf

### Grahpics

- **[Metafun][metafun]** Metafun is a set of MetaPost macros,
    specifically tailored for the interaction with ConTeXt.  You can
    do a lot of fun things, like overlays, drawing font outlines, or
    just basic shapes.  A LaTeX user would use Ti*k*Z for that (which
    is also available in ConTeXt) but Metafun runs orders of
    magnitudes faster and integrates quite naturally with everything
    related to frames, such as backgrounds, tables, and plain frames
    of course.

- **[Flowcharts][charts-mkiv]** Macro-level interfaces for drawing
    flow charts in Metafun.  Flowcharts are not part of the core
    functionality and have to be imported using `\usemodule[chart]`.

- **[Nodes][nodes]** Macro-level and MetaPost interfaces for drawing
    commutative diagrams.

[metafun]: http://www.pragma-ade.nl/general/manuals/metafun-p.pdf
[charts-mkiv]: http://www.pragma-ade.nl/general/manuals/charts-mkiv.pdf
[nodes]: http://www.pragma-ade.nl/general/manuals/nodes.pdf

### Layout

- **[It's in the details][details]** I consider this to be one of the
    most important documents for the advanced ConTeXt user.  It is a
    visual guide to all the cool features which made you switch from
    LaTeX to ConTeXt, namely grid typesetting and sidefloats.  As
    already noted, this is a visual guide and not really a manual
    which explains a lot of things.  Rather it lists different options
    and shows the visual effects of setting those options.

[details]: http://www.pragma-ade.nl/general/manuals/details.pdf

- **[Pages][pagecolumns]** Behind this rather misleading title hides
    a manual on how to typeset magazine style columns with floats
    which can span several columns.

[pagecolumns]: http://www.pragma-ade.nl/general/manuals/pagecolumns.pdf

---

## Expert

- **The progress reports** A lot of features which get added to
    ConTeXt are rather minor or affect the core directly, so they do
    not have dedicated manuals.  Nevertheless, Hans tirelessly
    documents these features in his progress reports on LuaTeX and
    ConTeXt development.  In chronological order these are:

    - [The history of LuaTeX][mk]
    - [MkIV Hybrid Technology][hybrid]
    - [about LuaTeX and ConTeXt][about]
    - [Still going on][still]
    - [on and on][onandon] (current working report)

    [The history of LuaTeX][mk] has mostly historical relevance
    because a lot of features described in here are documented
    elsewhere in much more details, like [OpenType fonts][fonts-mkiv],
    [Metafun][metafun], and [XML][xml-mkiv].

    The other documents give a very in-depth view of all the internals
    of ConTeXt MkIV and it is definitely worth skimming through them
    to see what is available.  Whenever I open these manuals and read
    a few paragraphs I find new hidden features.


[mk]: http://www.pragma-ade.nl/general/manuals/mk.pdf
[hybrid]: http://www.pragma-ade.nl/general/manuals/hybrid.pdf
[about]: http://www.pragma-ade.nl/general/manuals/about.pdf
[still]: http://www.pragma-ade.nl/general/manuals/still.pdf
[onandon]: http://www.pragma-ade.nl/general/manuals/onandon.pdf

- **[Dealing with XML in ConTeXt MkIV][xml-mkiv]** ConTeXt can export
    documents to XML.  This is possible thanks to the monolithic core
    and unified interfaces.  It is also possible to generate typeset
    output from XML input.  This manual details all the XML
    interaction with the macro and the Lua level.

[xml-mkiv]: http://www.pragma-ade.nl/general/manuals/xml-mkiv.pdf

- **[LuaTeX][luatex]** Because the relationship between ConTeXt MkIV
    and LuaTeX is so close it is absolutely necessary for the expert
    user to know the details of the underlying engine.  The link
    points to the LuaTeX manual hosted on Pragma ADE which always
    covers the latest development version used as a basis for ConTeXt
    MkIV.

[luatex]: http://www.pragma-ade.nl/general/manuals/luatex.pdf

---

# Further resources

All the manuals listed above are also shipped with the installation of
ConTeXt standalone and TeX Live.  The PDFs can be found in
[`doc/context/documents/general/manuals/`][manuals], the corresponding
sources in [`doc/context/sources/general/manuals/`][sources] (the
links point to the ConTeXt GitHub mirror).

In TeX Live manuals can also be opened using the `texdoc` tool by
providing the name of the PDF as an argument, e.g. `texdoc metafun-p`
will open the MetaFun manual.

[manuals]: https://github.com/contextgarden/context-mirror/tree/beta/doc/context/documents/general/manuals
[sources]: https://github.com/contextgarden/context-mirror/tree/beta/doc/context/sources/general/manuals

There are two other manuals which I see mentioned in some places and I
want to given my comments on these.

- **[Typographic Programming][style]** This should grow into a manual
    about general aspects of document design and how to translate
    design into style by the means of automated typesetting.  At the
    moment it is unfinished and is mostly about microtypographic
    features and page layout but doesn't go beyond the much more
    complete [Fonts out of ConTeXt][fonts-mkiv] and [It's in the
    details][details].  It also hasn't been updated in some time.

- **[ConTeXt reference manual][contextref]** This was supposed to be a
    comprehensive introduction to ConTeXt and could have evolved into
    a complete introductory user manual but got stuck somewhere
    halfway between MkII and MkIV with a few missing chapters.  I
    don't recommend reading it before you have a solid understanding
    of the difference between MkII and MkIV, because otherwise it is
    just too confusing.

[style]: http://www.pragma-ade.com/general/manuals/style.pdf
[contextref]: http://pmrb.free.fr/contextref.pdf

There is also the [command reference][garden] on the ConTeXt Garden
Wiki.  This is a total hit and miss because some commands are
documented really well, others not at all.  The good thing is that it
is publicly editable, so if you encounter bad documentation you should
log in and fix it.

[garden]: http://wiki.contextgarden.net/Category:Commands
