# lut

Read the Word of God in your terminal!

Forked from [https://github.com/LukeSmithxyz/kjv.git](https://github.com/LukeSmithxyz/kjv.git), which is forked from [https://github.com/bontibon/kjv.git](https://github.com/bontibon/kjv.git).

This is the Luther 1545 Bible as accurately as I may do it; any issues are to be assumed not on my part content-wise.

In terms of original material, it is wholly unmodified, but I did capitalise all instances of *der Herr* in the Old Testament to *der HERR*, irrespective of the Hebrew word, so do not assume that all instnaces of *der HERR* are 1:1 with YHWH in the Hebrew--the *.pdf* that I found, unfortunatelly, used *der GOtt* and *der HErr* (an issue on their part.) As you read, PLEASE feel free to jot down the corrections, edit the *.tsv* in your source code directory and request a modification here on Github.

In Romans 3:28, Martin Luther controversially added the word *allein*; while I do understand why he did this, and I don't disagree with it in context of the New Testament, nevertheless, it is untrue to both the Majority and Minority texts and so I added parentheses around it.

Technically, I added a "-w" option, over the "-W."

## Usage

    usage: ./lut [flags] [reference...]

      -l      list books
      -w      no line wrap
      -W      no line wrap (same as -w)
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern

## Build

I recommend creating a folder in your ~/Downloads, called ~/Downloads/.src for all source code; if you plan on using other people's forks of a particular software, like bontibon's "kjv," then make a subfolder appropriately named.

    mkdir ~/Downloads/.src
    mkdir ~/Downloads/.src/cmd-bibles

Now, clone lut's repository and then run make:

    git clone https://github.com/Matthew-Tate-Scarbrough/kjva/tree/lut.git ~/Downloads/.src/cmd-bibles/lut
    cd ~/Downloads/.src/cmd-bibles/lut
    sudo make install

## License

Public domain
