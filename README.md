tcat-monotonic
==============

Prepends shell output with monotonic timestamps. A mix of tcat and monotonic_timer. Works by reading stdin until newline and outputting that line prepended with the timestamp.

Install
=======

``
make
make install
``

Or just ``make`` and copy the ``tcat-monotonic`` binary to wherever you want.

Why?
====

Because I needed it for a project [asp-gv-convert-py](https://github.com/vukk/asp-gv-convert-py).

Previous work
=============

See tcat below.

tcat
====

Time Cat is a program to add timestamps to text. It is useful for adding timestamps to the logs of long running operations, so that you can easily monitor the progress and time elapsed.

See [Marc O'Morain's tcat](https://github.com/marcomorain/tcat).

monotonic_timer
===============

A cross platform monotonic timer implementation.

See [Alex Reece's monotonic_timer](https://github.com/awreece/monotonic_timer).


