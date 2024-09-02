DkAction := function( w, a, b, c)

    G := GL( 2, Integers );
    k := a/b;

    dict := NewDictonary( w, true );
    AddDictionary( dict, w, 1);

    for M in Dk do
        o    := w*M;
        o[1] := o[1] mod Gcd( a,c );
        o[2] := o[2] mod Gcd( b,c );

        j    := LookupDictionary( dic, o );
    od;

end;

InstallMethod( CanonicalTvector, [IsTGroup], function(G)

    local   type,
            vec,
            can,
            d,
            pref,
            e;

    type := Type( G );
    vec  := Tvector( G );
    can  := ListWithIdenticalEntries( Length(vec), 0 );

    if type = [ 2, 1, 1 ] then
        can[1] := AbsoluteValue( vec[1] );
        can[3] := AbsoluteValue( vec[3] );

        d      := Gcd( vec[1], vec[3] );
        pref   := Pref( vec[2], d );

        for e in pref do
            if ( can[2] > e*vec[2] mod d ) or ( can[2] = 0 ) then
                can[2] := e*vec[2] mod d;
            fi;
        od;

    elif type = [ 3, 1, 1 ] then

        can[2] := Gcd( vec[2], vec[4] );
        can[6] := AbsoluteValue( vec[6] );
        can[8] := AbsoluteValue( vec[8] );

        d      := Gcd( vec[6], vec[8]);
        
        U      := GcdRepresentation( vec[2], vec[4] );
        U[1]   := [ U[1], 0 ];
        U[2]   := [ U[2], 0 ];
        v      := [ vec[3], vec[5] ]*U;

        can[3] := Minimum( v[1] mod Gcd( can[2] ,d ,v[2] ) , -v[1] mod Gcd( can[2], d, v[2]) );
        can[5] := Minimum( v[2] mod d, -v[2] mod d);

    elif type = [ 2, 1, 1 ] then 

        can[1] := vec[1];

        U      := SmithNormalFormIntegerMatTransforms(B);
        U.rowtrans := Inverse(U.rowtrans);
        if Determinant(U.rowtrans) <> 1 then
            U.rowtrans := U.rowtrans*[ [ -1,0 ], [ 0,1 ] ];
            U.coltrans := U.coltrans*[ [ -1,0 ], [ 0,1 ] ];
        fi;

        S      := U.normal;
        V      := U.coltrans;
        U      := U.rowtrans;

        can[4] := S[1][1];
        can[3] := S[2][2];

        w      := [ vec[2], vec[3] ]*V;
        w[1]   := w[1] mod Gcd( can[4], vec[1] );
        v[2]   := w[2] mod Gcd( can[3], vec[1] );

    elif type = [2,1,1,1] then

        can[1] := vec[1];
        can[4] := vec[4];
        can[6] := vec[6];
        can[8] := vec[8];

    fi;

    return can;

end );


InstallGlobalFunction( IsIsomorphic, function(G,H)

    local   TauT,   #Tau type of the groups
            v,      #vector of relations of G
            w,      #vector of relations of H
            g;      #Auxiliar variable

    if not ( ( HirschLength(G) = HirschLength(H) ) or ( Type(G) = Type(H) ) ) then
        return false;

    else
        return ( CanonicalTvector(G) = CanonicalTvector(H) ) ;
    fi;

end );