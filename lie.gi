BakerCampbellHausdorff := function( L, x, y)
    local z,F;

    F := LeftActingDomain( L );

    z := 0*x;
    z := z + x+y+One(F)/2*x*y;
    z := z + One(F)/12*( x*(x*y) + y*(y*x) );
    z := z - One(F)/24*( y*(x*(x*y)) );
    z := z - One(F)/720*( x*(x*(x*(x*y))) + y*(y*(y*(y*x))) );
    z := z + One(F)/360*( x*(y*(y*(y*x))) + y*(x*(x*(x*y))) );
    z := z - One(F)/120*( x*(y*(x*(x*y))) + y*(y*(x*(y*x)))  );
    z := z - One(F)/1440*( x*(y*(y*(y*(y*x)))) - y*(x*(x*(x*(x*y)))) );
    z := z + One(F)/720*( x*(x*(y*(y*(x*y)))) );
    z := z + One(F)/240*( x*(y*(y*(x*(x*y)))) );

    return z;
end;

InstallGlobalFunction( "BCHFormula", function( arg )

    local   L,
            z,
            i;

    L := arg[1];
    z := BakerCampbellHausdorff( L, arg[2], arg[3] );

    for i in [4..Length( arg )] do
        z := BakerCampbellHausdorff( L, z, arg[i] );
    od;

    return z;

end );

InstallMethod( LowerExtendedSeries, [ IsLieAlgebra ], function(L)

    local   ser,
            C;

    ser := LieLowerCentralSeries(L);
    g   := ser[ Length(ser)-2 ];
    C   := LieCentralizer(L, Subalgebra( L, GeneratorsOfLeftOperatorRing(g) ) );
    ser := ShallowCopy( ser );

    if not C in ser then
        Add(ser, C, 2);
    fi;

    return ser;

end );

InstallGlobalFunction( "MalCevGroupFromLie", function(L)

    local   gens,
            dim,
            rels,
            rel,
            a,b,
            i,j;

    gens := GeneratorsOfLeftOperatorAdditiveGroup(L);
    dim  := Dimension(L);
    rels := [];

    for i in [1..dim-1] do
        for j in [i+1..dim] do
            a   := BCHFormula( L, gens[i], gens[j] );
            b   := BCHFormula( L, gens[j], gens[i] );
            rel := 0*a;
            while a - b <> a*0 do
                rel := rel + b - a;
                a := BCHFormula( L, a, b-a );
            od;
            if rel <> 0*a then 
                rel := [ i, j, rel];
                Add( rels, rel ); 
            fi;
        od;
    od;

    return rels;

end );

InstallMethod( LieNilpotentSequence, [ IsLieAlgebra ], function(L) 

    local   ser,
            d,
            seq,
            i,
            n;

    ser := LieLowerCentralSeries( L );
    d   := List( ser, S -> Dimension(S) );
    seq := [];

    for i in [1..Length(d)-1] do
        n := d[i]-d[i+1];
        Add( seq , n );
    od;

    return seq;

end );

InstallMethod( LieExtendedSequence, [ IsLieAlgebra ], function(L) 

    local   ser,
            d,
            seq,
            i,
            n;

    ser := LowerExtendedSeries( L );
    d   := List( ser, S -> Dimension(S) );
    seq := [];

    for i in [1..Length(d)-1] do
        n := d[i]-d[i+1];
        Add( seq , n );
    od;

    return seq;

end );