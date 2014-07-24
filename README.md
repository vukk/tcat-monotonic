tcat-monotonic
==============

Prepends shell output with monotonic timestamps. A mix of tcat and monotonic_timer. Works by reading stdin until newline and outputting that line prepended with the timestamp.

Example output
--------------
```
1403794834.743190   clasp version 3.0.4
1403794834.743206   Reading from stdin
1403794834.754813   Solving...
1403794834.757051   Answer: 1
1403794834.757055   cycle(39,15) cycle(38,3) cycle(37,27) cycle(36,38) cycle(35,17) cycle(34,22) cycle(33,9) cycle(32$
1403794834.757070   Optimization: 103
1403794834.757318   Answer: 2
1403794834.757322   cycle(39,15) cycle(38,3) cycle(37,18) cycle(36,38) cycle(35,27) cycle(34,22) cycle(33,9) cycle(32$
1403794834.757337   Optimization: 98
1403794834.757474   Answer: 3
1403794834.757478   cycle(39,15) cycle(38,3) cycle(37,8) cycle(36,38) cycle(35,27) cycle(34,22) cycle(33,9) cycle(32,$
1403794834.757493   Optimization: 95
1403794834.758036   Answer: 4
1403794834.758040   cycle(39,15) cycle(38,3) cycle(37,8) cycle(36,38) cycle(35,27) cycle(34,22) cycle(33,9) cycle(32,$
1403794834.758055   Optimization: 81
1403794834.789060   Answer: 5
1403794834.789062   cycle(39,15) cycle(38,3) cycle(37,27) cycle(36,38) cycle(35,11) cycle(34,22) cycle(33,9) cycle(32$
1403794834.789068   Optimization: 80
1403794835.365754   Answer: 6
1403794835.365758   cycle(39,15) cycle(38,3) cycle(37,27) cycle(36,38) cycle(35,17) cycle(34,22) cycle(33,9) cycle(32$
1403794835.365765   Optimization: 79
1403794836.175077   Answer: 7
1403794836.175082   cycle(39,15) cycle(38,3) cycle(37,27) cycle(36,38) cycle(35,11) cycle(34,22) cycle(33,9) cycle(32$
1403794836.175088   Optimization: 73
1403794836.188430   Answer: 8
...
```

Install
-------

```
make
make install
```

Or just ``make`` and copy the ``tcat-monotonic`` binary to wherever you want.

Why?
----

Because I needed it for a project [asp-gv-convert-py](https://github.com/vukk/asp-gv-convert-py).

Previous work
-------------

See tcat below.

tcat
----

Time Cat is a program to add timestamps to text. It is useful for adding timestamps to the logs of long running operations, so that you can easily monitor the progress and time elapsed.

See [Marc O'Morain's tcat](https://github.com/marcomorain/tcat).

monotonic_timer
---------------

A cross platform monotonic timer implementation.

See [Alex Reece's monotonic_timer](https://github.com/awreece/monotonic_timer).


