---
layout: page
title: Multi-ended solving
---
Multi-ended solving is the solving of a problem by attacking it from multiple _ends_. Most problems
have two ends: the _start_ and the _finish_. One advantage of a multi-ended effort is that the
effective length of the path of what must still be solved is smaller. This tends to make that
path finding problem easier.

One of the simplest ways of visualizing this is with a maze. It has two ends. If path finding from
the start, then generally, as the distance from the start increases, the larger the branching space.
If also solving from the end at the same time, then as the paths grow, the vector between the paths
("as the crow flies") can be used as a guiding heuristic for which branches to explore first.
