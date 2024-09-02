# Introduction

Functions to work with finitely presented nilpotent groups.
To install al the functions save the files inside the GAP directory/pkg/TGroups and then run in GAP.
```
Read( "*Gap Directory*/pkg/Tgroups/read.g");
```

# Contents

### read.g:       File to read in gap.

### tgrp.gd:      Definition of the functions.

### general.gi:   Offers some functions that are general for the other files.

### exam.gi:      Functions to generate the groups used in experiments.
  - *RandomTGroup( h, c, [n] )* : Retruns a random minimal T group of Hirsch length h<6 and nilpotent class c. The argument n is optional in the cases that there are more than one type in the class c.

### series.gi: Functions to calculate the extended isolator series:
- *IsolatorSeries( G )* : Returns the isolator series of G.
- *PcpsOfIsolatorSeries( G, g, h )* : Returns the pcps of the isolator series of G.
- *Type( G )* : Returns the type of G.
- *ExtendedIsolatorSeries( G )* : Returns the extended isolator series of G.
- *ExtendedType( G, list )* : Returns the extended type of G.

### lie.gi: Functions to solve the subgroup conjugacy problems:
  - *BCHFormula( L, elms )* : Returns the value of the BCH formula for elms in L. Works up to nilpotent class 6.
  - *LowerExtendedSeries( L )* : Returns the lower extended series of L.
  - *MalCevGroupFromLie( L )* : Returns the relations of the Mal'cev group associated to L.
  - *LieNilpotentSequence( L )* : Returns the nilpotent sequence of L.
  - *LieExtendedSequence( L )* : Returns the extended sequence of L.
### inter.gi: Intersection functions.
  - *IndeterminateNilpotentLieAlgebra( dim, no, p )* : Returns a the Lie algebra of dimension *dim* and identification *no* with the T-presentation *p*. If there are more than one T-presentation the parameter p can be more than one.

# Cites

> - Eddie H. Lo. Finding intersections and normalizers in finitely generated nilpotent groups. J. Symbolic Comput., 25(1):45–59, 1998.
> - Charles C. Sims. Computation with finitely presented groups, volume 48 of Encyclopedia of Mathematics and its Applications. Cambridge University Press, Cambridge, 1994.
> - B. Eick and G. Ostheimer. On the orbit-stabilizer problem for integral matrix actions of polycyclic groups. Mathematics of Computation,72(243):1511–1529, 2003.
> - B. Eick and O. F. Ayala. The conjugacy problem and canonical representatives in finitely generated nilpotent groups.
