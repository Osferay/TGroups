InstallMethod( IndeterminateNilpotentLieAlgebra,  "for a field and a list", true,
   [ IsInt, IsInt, IsInt ], 0, 

    function( dim, no, p )

   local    N5_1, N5_2, N5_3, N5_4, N5_5, N5_6, N5_7, N5_8, N5_9,
            N6_1 , N6_2 , N6_3 , N6_4 , N6_5 , N6_6 , N6_7 , N6_8 , N6_9,  N6_10,
            N6_11, N6_12, N6_13, N6_14, N6_15, N6_16, N6_17, N6_18, N6_19, N6_20,
            N6_21 ,N6_22, N6_23, N6_24, N6_25, N6_26, N6_27, N6_28, N6_29, N6_30,
            N6_31, N6_32, N6_33, N6_34, N6_35, N6_36,
            F,
            t_123, t_124, t_125, t_126, t_134, t_135, t_136, t_145, t_146, t_156,
            t_234, t_235, t_236, t_245, t_246, t_256, t_345, t_346, t_356, t_456,
            L, 
            ff;

    F       := FunctionField( Rationals, 20 );
    t_123   := Indeterminate( Rationals, 1  );
    t_124   := Indeterminate( Rationals, 2  );
    t_125   := Indeterminate( Rationals, 3  );
    t_126   := Indeterminate( Rationals, 4  );
    t_134   := Indeterminate( Rationals, 5  );
    t_135   := Indeterminate( Rationals, 6  );
    t_136   := Indeterminate( Rationals, 7  );
    t_145   := Indeterminate( Rationals, 8  );
    t_146   := Indeterminate( Rationals, 9  );
    t_156   := Indeterminate( Rationals, 10 );
    t_234   := Indeterminate( Rationals, 11 );
    t_235   := Indeterminate( Rationals, 12 );
    t_236   := Indeterminate( Rationals, 13 );
    t_245   := Indeterminate( Rationals, 14 );
    t_246   := Indeterminate( Rationals, 15 );
    t_256   := Indeterminate( Rationals, 16 );
    t_345   := Indeterminate( Rationals, 17 );
    t_346   := Indeterminate( Rationals, 18 );
    t_356   := Indeterminate( Rationals, 19 );
    t_456   := Indeterminate( Rationals, 20 );
    SetIndeterminateName( FamilyObj(t_123), 1 , "t_123" );
    SetIndeterminateName( FamilyObj(t_124), 2 , "t_124" );
    SetIndeterminateName( FamilyObj(t_125), 3 , "t_125" );
    SetIndeterminateName( FamilyObj(t_126), 4 , "t_126" );
    SetIndeterminateName( FamilyObj(t_134), 5 , "t_134" );
    SetIndeterminateName( FamilyObj(t_135), 6 , "t_135" );
    SetIndeterminateName( FamilyObj(t_136), 7 , "t_136" );
    SetIndeterminateName( FamilyObj(t_145), 8 , "t_145" );
    SetIndeterminateName( FamilyObj(t_146), 9 , "t_146" );
    SetIndeterminateName( FamilyObj(t_156), 10, "t_156" );
    SetIndeterminateName( FamilyObj(t_234), 11, "t_234" );
    SetIndeterminateName( FamilyObj(t_235), 12, "t_235" );
    SetIndeterminateName( FamilyObj(t_236), 13, "t_236" );
    SetIndeterminateName( FamilyObj(t_245), 14, "t_245" );
    SetIndeterminateName( FamilyObj(t_246), 15, "t_246" );
    SetIndeterminateName( FamilyObj(t_256), 16, "t_256" );
    SetIndeterminateName( FamilyObj(t_345), 17, "t_345" );
    SetIndeterminateName( FamilyObj(t_346), 18, "t_346" );
    SetIndeterminateName( FamilyObj(t_356), 19, "t_356" );
    SetIndeterminateName( FamilyObj(t_456), 20, "t_456" );

    N5_1:= function( F, p )

    local T;
    T:= EmptySCTable( 5, Zero(F), "antisymmetric" );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N5_2:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 5, Zero(F), "antisymmetric" );
    t := [ t_125, t_135, t_145, t_235, t_245, t_345 ];
    rel := [ [1,2], [1,3], [1,4], [2,3], [2,4], [3,4] ];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [t[p], 5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N5_3:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 5, Zero(F), "antisymmetric" );
    t := [ [ t_124, t_125 ], [ t_134, t_135 ] ];
    rel := [ [1,2], [1,3] ];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5] );
    SetEntrySCTable( T, 1, 4, [t_145,5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N5_4:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 5, Zero(F), "antisymmetric" );
    t := [ [ t_125, t_345 ], [ t_135, t_245 ], [ t_145, t_235 ] ];
    rel := [ [1,2,3,4], [1,3,2,4], [1,4,2,3] ];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [t[p][1], 5] );
    SetEntrySCTable( T, rel[p][3], rel[p][4], [t[p][2], 5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N5_5:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 5, Zero(F), "antisymmetric" );
    t := [ [ t_124, t_125 ], [ t_134, t_135 ] ];
    rel := [ [1,2], [1,3] ];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5 ] );
    SetEntrySCTable( T, 1, 4, [t_145,5] );
    SetEntrySCTable( T, 2, 3, [t_235,5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N5_6:= function( F, p )

    local T;
    T:= EmptySCTable( 5, Zero(F), "antisymmetric" );
    SetEntrySCTable( T, 1, 2, [t_123,3,t_124,4,t_125,5] );
    SetEntrySCTable( T, 1, 3, [t_134,4,t_135,5] );
    SetEntrySCTable( T, 1, 4, [t_145,5] );
    SetEntrySCTable( T, 2, 3, [t_235,5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N5_7:= function( F, p )

    local T;
    T:= EmptySCTable( 5, Zero(F), "antisymmetric" );
    SetEntrySCTable( T, 1, 2, [t_123,3,t_124,4,t_125,5] );
    SetEntrySCTable( T, 1, 3, [t_134,4,t_135,5] );
    SetEntrySCTable( T, 1, 4, [t_145,5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N5_8:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 5, Zero(F), "antisymmetric" );
    t := [  [ t_124, t_125, t_134, t_135 ], 
            [ t_124, t_125, t_234, t_235 ],
            [ t_134, t_135, t_234, t_235 ] ];
    rel := [ [1,2,1,3], [1,2,2,3], [1,3,2,3] ];
    T:= EmptySCTable( 5, Zero(F), "antisymmetric" );
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5] );
    SetEntrySCTable( T, rel[p][3], rel[p][4], [ t[p][3], 4, t[p][4], 5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N5_9:= function( F, p )

    local T;
    T:= EmptySCTable( 5, Zero(F), "antisymmetric" );
    SetEntrySCTable( T, 1, 2, [t_123,3,t_124,4,t_125,5] );
    SetEntrySCTable( T, 1, 3, [t_134,4,t_135,5] );
    SetEntrySCTable( T, 2, 3, [t_234,4,t_235,5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_1:= function( F, p )

    local T;
    T:= EmptySCTable( 6, Zero(F), "antisymmetric" );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_2:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ t_126, t_136, t_146, t_156, t_236, t_246, t_256, t_346, t_356, t_456 ];
    rel := [ [1,2], [1,3], [1,4], [1,5], [2,3], [2,4], [2,5], [3,4], [3,5], [4,5] ];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [t[p], 5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_3:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ [ t_125, t_126 ], [ t_135, t_136 ], [ t_145, t_146 ] ];
    rel := [ [1,2], [1,3], [1,4] ];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 5, t[p][2], 6] );
    SetEntrySCTable( T, 1, 5, [t_145,5] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_4:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [      [ t_126, t_346 ],
                [ t_126, t_356 ],
                [ t_126, t_456 ],
                [ t_136, t_246 ], 
                [ t_136, t_256 ],
                [ t_136, t_456 ],
                [ t_146, t_236 ], 
                [ t_146, t_256 ], 
                [ t_146, t_356 ], 
                [ t_156, t_236 ],
                [ t_156, t_246 ],
                [ t_156, t_346 ],
                [ t_236, t_456 ],
                [ t_246, t_356 ],
                [ t_256, t_346 ]];
    rel := [    [1,2,3,4], 
                [1,2,3,5],
                [1,2,4,5],
                [1,3,2,4], 
                [1,3,2,5], 
                [1,3,4,5],
                [1,4,2,3], 
                [1,4,2,5],
                [1,4,3,5],
                [1,5,2,3],
                [1,5,2,4],
                [1,5,3,4],
                [2,3,4,5],
                [2,4,3,5],
                [2,5,3,4] ];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [t[p][1], 6] );
    SetEntrySCTable( T, rel[p][3], rel[p][4], [t[p][2], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_5:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ [ t_125, t_126, t_236 ], [ t_125, t_126, t_246 ], [ t_135, t_136, t_236 ], [ t_135, t_136, t_346 ], [ t_145, t_146, t_246 ], [ t_145, t_146, t_346 ] ];
    rel := [ [1,2,2,3], [1,2,2,4], [1,3,2,3], [1,3,3,4], [1,4,2,4], [1,4,3,4] ];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 5, t[p][2], 6 ] );
    SetEntrySCTable( T, rel[p][3], rel[p][4], [ t[p][3], 6 ] );
    SetEntrySCTable( T, 1, 5, [t_156,6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_6:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ [ t_124, t_125, t_126, t_145, t_146, t_156, t_246 ],
           [ t_124, t_125, t_126, t_245, t_246, t_256, t_146 ],
           [ t_134, t_135, t_136, t_145, t_146, t_156, t_346 ],
           [ t_134, t_135, t_136, t_345, t_346, t_356, t_146 ],
           [ t_234, t_235, t_236, t_245, t_246, t_256, t_346 ],
           [ t_234, t_235, t_236, t_345, t_346, t_346, t_246 ] ];
    rel := [ [ 1, 2, 1, 2 ],
             [ 1, 2, 2, 1 ],
             [ 1, 3, 1, 3 ],
             [ 1, 3, 3, 1 ],
             [ 2, 3, 2, 3 ],
             [ 2, 3, 3, 2 ]];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5, t[p][3], 6 ] );
    SetEntrySCTable( T, rel[p][3], 4, [ t[p][4], 5, t[p][5], 6] );
    SetEntrySCTable( T, rel[p][3], 5, [ t[p][6], 6] );
    SetEntrySCTable( T, rel[p][4], 4, [ t[p][7], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_7:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ [ t_124, t_125, t_126, t_145, t_146, t_156 ],
           [ t_124, t_125, t_126, t_245, t_246, t_256 ],
           [ t_134, t_135, t_136, t_145, t_146, t_156 ],
           [ t_134, t_135, t_136, t_345, t_346, t_356 ],
           [ t_234, t_235, t_236, t_245, t_246, t_256 ],
           [ t_234, t_235, t_236, t_345, t_346, t_346 ] ];
    rel := [ [ 1, 2, 1 ],
             [ 1, 2, 2 ],
             [ 1, 3, 1 ],
             [ 1, 3, 3 ],
             [ 2, 3, 2 ],
             [ 2, 3, 3 ]];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5, t[p][3], 6 ] );
    SetEntrySCTable( T, rel[p][3], 4, [ t[p][4], 5, t[p][5], 6] );
    SetEntrySCTable( T, rel[p][3], 5, [ t[p][6], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_8:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [  [ t_125, t_126, t_135, t_136 ], 
            [ t_125, t_126, t_145, t_146 ],
            [ t_125, t_126, t_235, t_236 ], 
            [ t_125, t_126, t_245, t_246 ],
            [ t_135, t_136, t_145, t_146 ], 
            [ t_135, t_136, t_235, t_236 ],
            [ t_135, t_136, t_345, t_346 ], 
            [ t_145, t_146, t_245, t_246 ],
            [ t_145, t_146, t_345, t_346 ], 
            [ t_235, t_236, t_245, t_246 ],
            [ t_235, t_236, t_345, t_346 ], 
            [ t_245, t_246, t_345, t_346 ] ];
    rel := [    [1,2,1,3], [1,2,1,4], [1,2,2,3], [1,2,2,4], [1,3,1,4],
                [1,3,2,3], [1,3,3,4], [1,4,2,4], [1,4,3,4], [2,3,2,4],
                [2,3,3,4], [2,4,3,4] ];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 5, t[p][2], 6] );
    SetEntrySCTable( T, rel[p][3], rel[p][4], [ t[p][3], 5, t[p][4], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_9:= function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ [ t_124, t_125, t_126, t_145, t_146, t_245, t_246],
           [ t_134, t_135, t_136, t_145, t_146, t_345, t_346],
           [ t_234, t_235, t_236, t_245, t_246, t_345, t_346]];
    rel := [ [ 1, 2 ],
             [ 1, 3 ],
             [ 2, 3 ]];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5, t[p][3], 6] );
    SetEntrySCTable( T, rel[p][1], 4, [ t[p][4], 5, t[p][5], 6] );
    SetEntrySCTable( T, rel[p][2], 4, [ t[p][6], 5, t[p][7], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_10 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [  [t_125, t_126, t_346],
            [t_135, t_136, t_246],
            [t_145, t_146, t_236],];
    rel := [[2, 3, 4],
            [3, 2, 4],
            [4, 2, 3]];
    SetEntrySCTable( T, 1, rel[p][1], [t[p][1], 5, t[p][2], 6] );
    SetEntrySCTable( T, 1, 5, [t_156, 6] );
    SetEntrySCTable( T, rel[p][2], rel[p][3], [t[p][3], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;
    
    N6_11 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ [ t_124, t_125, t_126, t_145, t_146, t_156, t_246, t_236 ],
           [ t_124, t_125, t_126, t_245, t_246, t_256, t_146, t_136 ],
           [ t_134, t_135, t_136, t_145, t_146, t_156, t_346, t_236 ],
           [ t_134, t_135, t_136, t_345, t_346, t_356, t_146, t_126 ],
           [ t_234, t_235, t_236, t_245, t_246, t_256, t_346, t_136 ],
           [ t_234, t_235, t_236, t_345, t_346, t_346, t_246, t_126 ] ];
    rel := [ [ 1, 2, 1, 2, 2, 3 ],
             [ 1, 2, 2, 1, 1, 3 ],
             [ 1, 3, 1, 3, 2, 3 ],
             [ 1, 3, 3, 1, 1, 2 ],
             [ 2, 3, 2, 3, 1, 3 ],
             [ 2, 3, 3, 2, 1, 2 ]];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5, t[p][3], 6 ] );
    SetEntrySCTable( T, rel[p][3], 4, [ t[p][4], 5, t[p][5], 6] );
    SetEntrySCTable( T, rel[p][3], 5, [ t[p][6], 6] );
    SetEntrySCTable( T, rel[p][4], 4, [ t[p][7], 6] );
    SetEntrySCTable( T, rel[p][5], rel[p][6], [ t[p][8], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_12 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ [ t_124, t_125, t_126, t_145, t_146, t_156, t_236 ],
           [ t_124, t_125, t_126, t_245, t_246, t_256, t_136 ],
           [ t_134, t_135, t_136, t_145, t_146, t_156, t_236 ],
           [ t_134, t_135, t_136, t_345, t_346, t_356, t_126 ],
           [ t_234, t_235, t_236, t_245, t_246, t_256, t_136 ],
           [ t_234, t_235, t_236, t_345, t_346, t_346, t_126 ] ];
    rel := [ [ 1, 2, 1, 2, 3 ],
             [ 1, 2, 2, 1, 3 ],
             [ 1, 3, 1, 2, 3 ],
             [ 1, 3, 3, 1, 2 ],
             [ 2, 3, 2, 1, 3 ],
             [ 2, 3, 3, 1, 2 ]];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5, t[p][3], 6 ] );
    SetEntrySCTable( T, rel[p][3], 4, [ t[p][4], 5, t[p][5], 6] );
    SetEntrySCTable( T, rel[p][3], 5, [ t[p][6], 6] );
    SetEntrySCTable( T, rel[p][4], rel[p][5], [ t[p][7], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_13 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ [ t_124, t_125, t_126, t_145, t_146, t_156, t_236, t_346 ],
           [ t_124, t_125, t_126, t_245, t_246, t_256, t_136, t_346 ],
           [ t_134, t_135, t_136, t_145, t_146, t_156, t_236, t_246 ],
           [ t_134, t_135, t_136, t_345, t_346, t_356, t_126, t_246 ],
           [ t_234, t_235, t_236, t_245, t_246, t_256, t_136, t_146 ],
           [ t_234, t_235, t_236, t_345, t_346, t_346, t_126, t_146 ] ];
    rel := [ [ 1, 2, 1, 2, 3, 3 ],
             [ 1, 2, 2, 1, 3, 3 ],
             [ 1, 3, 1, 2, 3, 2 ],
             [ 1, 3, 3, 1, 2, 2 ],
             [ 2, 3, 2, 1, 3, 1 ],
             [ 2, 3, 3, 1, 2, 1 ]];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5, t[p][3], 6 ] );
    SetEntrySCTable( T, rel[p][3], 4, [ t[p][4], 5, t[p][5], 6] );
    SetEntrySCTable( T, rel[p][3], 5, [ t[p][6], 6] );
    SetEntrySCTable( T, rel[p][4], rel[p][5], [ t[p][7], 6] );
    SetEntrySCTable( T, rel[p][6], 4, [ t[p][8], 6] );
    return LieAlgebraByStructureConstants( F, T );


    end;

    N6_14 := function( F, p )

    local T, t, rel;
    t := [ [t_134, t_135, t_136, t_145, t_146, t_235, t_236, t_256],
           [t_234, t_235, t_236, t_245, t_246, t_135, t_136, t_156]];
    rel := [ [1, 2],
             [2, 1]];
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    SetEntrySCTable( T, 1, 2, [ t_123, 3, t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, rel[p][1], 3, [ t[p][1], 4, t[p][2], 5, t[p][3],  6 ]);
    SetEntrySCTable( T, rel[p][1], 4, [ t[p][4], 5, t[p][5], 6 ]);
    SetEntrySCTable( T, rel[p][2], 3, [ t[p][6], 5, t[p][7], 6 ]);
    SetEntrySCTable( T, rel[p][2], 4, [ t[p][8], 6 ]);
    SetEntrySCTable( T, 3, 4, [t_346, 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_15 := function( F, p )

    local T, t, rel;
    t := [ [t_134, t_135, t_136, t_145, t_146, t_156, t_235, t_236, t_246],
           [t_234, t_235, t_236, t_245, t_246, t_256, t_135, t_136, t_146]];
    rel := [ [1, 2],
             [2, 1]];

    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    SetEntrySCTable( T, 1, 2, [ t_123, 3, t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, rel[p][1], 3, [ t[p][1], 4, t[p][2], 5, t[p][3],  6 ]);
    SetEntrySCTable( T, rel[p][1], 4, [ t[p][4], 5, t[p][5], 6 ]);
    SetEntrySCTable( T, rel[p][1], 5, [ t[p][6], 6 ]);
    SetEntrySCTable( T, rel[p][2], 3, [ t[p][7], 5, t[p][8], 6 ]);
    SetEntrySCTable( T, rel[p][2], 4, [ t[p][9], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_16 := function( F, p )

    local T, t, rel;
    t := [ [t_134, t_135, t_136, t_145, t_146, t_256],
           [t_234, t_235, t_236, t_245, t_246, t_156]];
    rel := [ [1, 2],
             [2, 1]];
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    SetEntrySCTable( T, 1, 2, [ t_123, 3, t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, rel[p][1], 3, [ t[p][1], 4, t[p][2], 5, t[p][3],  6 ]);
    SetEntrySCTable( T, rel[p][1], 4, [ t[p][4], 5, t[p][5], 6 ]);
    SetEntrySCTable( T, rel[p][2], 5, [ t[p][6], 6 ]);
    SetEntrySCTable( T, 3, 4, [t_346, 6] );
    return LieAlgebraByStructureConstants( F, T );
    end;

    N6_17 := function( F, p )

    local T, t, rel;
    t := [ [t_134, t_135, t_136, t_145, t_146, t_156, t_236],
           [t_234, t_235, t_236, t_245, t_246, t_256, t_136]];
    rel := [ [1, 2],
             [2, 1]];
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    SetEntrySCTable( T, 1, 2, [ t_123, 3, t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, rel[p][1], 3, [ t[p][1], 4, t[p][2], 5, t[p][3],  6 ]);
    SetEntrySCTable( T, rel[p][1], 4, [ t[p][4], 5, t[p][5], 6 ]);
    SetEntrySCTable( T, rel[p][1], 5, [ t[p][6], 6 ]);
    SetEntrySCTable( T, rel[p][2], 3, [ t[p][7], 6 ]);
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_18 := function( F, p )

    local T, t, rel;
    t := [ [t_134, t_135, t_136, t_145, t_146, t_156 ],
           [t_234, t_235, t_236, t_245, t_246, t_256 ]];
    rel := [ [1],
             [2]];
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    SetEntrySCTable( T, 1, 2, [ t_123, 3, t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, rel[p][1], 3, [ t[p][1], 4, t[p][2], 5, t[p][3],  6 ]);
    SetEntrySCTable( T, rel[p][1], 4, [ t[p][4], 5, t[p][5], 6 ]);
    SetEntrySCTable( T, rel[p][1], 5, [ t[p][6], 6 ]);
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_19 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [  [t_124, t_125, t_126, t_134, t_135, t_136, t_146, t_246, t_356],
            [t_124, t_125, t_126, t_134, t_135, t_136, t_146, t_256, t_346],
            [t_124, t_125, t_126, t_134, t_135, t_136, t_156, t_246, t_356],
            [t_124, t_125, t_126, t_134, t_135, t_136, t_156, t_256, t_346],
            [t_124, t_125, t_126, t_234, t_235, t_236, t_146, t_246, t_356],
            [t_124, t_125, t_126, t_234, t_235, t_236, t_146, t_256, t_356],
            [t_124, t_125, t_126, t_234, t_235, t_236, t_156, t_246, t_346],
            [t_124, t_125, t_126, t_234, t_235, t_236, t_156, t_256, t_346],
            [t_134, t_135, t_136, t_234, t_235, t_236, t_146, t_256, t_346],
            [t_134, t_135, t_136, t_234, t_235, t_236, t_146, t_256, t_356],
            [t_134, t_135, t_136, t_234, t_235, t_236, t_156, t_246, t_346],
            [t_134, t_135, t_136, t_234, t_235, t_236, t_156, t_246, t_356] ];
    rel := [[ 2, 1, 4, 4, 5 ],
            [ 2, 1, 4, 5, 4 ],
            [ 2, 1, 5, 4, 5 ],
            [ 2, 1, 5, 5, 4 ],
            [ 2, 2, 4, 4, 5 ],
            [ 2, 2, 4, 5, 5 ],
            [ 2, 2, 5, 4, 4 ],
            [ 2, 2, 5, 5, 4 ],
            [ 3, 2, 4, 5, 4 ],
            [ 3, 2, 4, 5, 5 ],
            [ 3, 2, 5, 4, 4 ],
            [ 3, 2, 5, 4, 5 ]];
    SetEntrySCTable( T, 1, rel[p][1], [ t[p][1], 4, t[p][2], 5, t[p][3], 6]);
    SetEntrySCTable( T, rel[p][2], 3, [ t[p][4], 4, t[p][5], 5, t[p][6], 6]);
    SetEntrySCTable( T, 1, rel[p][3], [ t[p][7], 6 ] );
    SetEntrySCTable( T, 2, rel[p][4], [ t[p][8], 6 ] );
    SetEntrySCTable( T, 3, rel[p][5], [ t[p][9], 6 ] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_20 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );    
    t := [  [t_134, t_135, t_136, t_146, t_256],
            [t_134, t_135, t_136, t_156, t_246],
            [t_234, t_235, t_236, t_146, t_256],
            [t_234, t_235, t_236, t_156, t_246]];
    rel := [[ 1, 4, 5 ],
            [ 1, 5, 4 ],
            [ 2, 4, 5 ],
            [ 2, 5, 4 ]];
    SetEntrySCTable( T, 1, 2, [ t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, rel[p][1], 3, [ t[p][1], 4, t[p][2], 5, t[p][3], 6]);
    SetEntrySCTable( T, 1, rel[p][2], [ t[p][4], 6 ] );
    SetEntrySCTable( T, 2, rel[p][3], [ t[p][5], 6 ] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_21 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );    
    t := [  [t_146, t_256],
            [t_156, t_246]];
    rel := [[ 4, 5 ],
            [ 5, 4 ]];
    SetEntrySCTable( T, 1, 2, [ t_123, 3, t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, 1, 3, [ t_134, 4, t_135, 5, t_136, 6]);
    SetEntrySCTable( T, 2, 3, [ t_234, 4, t_235, 5, t_236, 6]);
    SetEntrySCTable( T, 1, rel[p][1], [ t[p][1], 6 ] );
    SetEntrySCTable( T, 2, rel[p][2], [ t[p][2], 6 ] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_22 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );    
    t := [  [t_125, t_126, t_135, t_136, t_245, t_256, t_345, t_346],
            [t_125, t_126, t_145, t_146, t_235, t_236, t_345, t_346],
            [t_135, t_136, t_145, t_146, t_235, t_236, t_245, t_246] ];
    rel := [[ 2, 3, 4, 3 ],
            [ 2, 4, 3, 3 ],
            [ 3, 4, 3, 2 ]];
    SetEntrySCTable( T, 1, rel[p][1], [ t[p][1], 5, t[p][2], 6 ]);
    SetEntrySCTable( T, 1, rel[p][2], [ t[p][3], 5, t[p][4], 6 ]);
    SetEntrySCTable( T, 2, rel[p][3], [ t[p][5], 5, t[p][6], 6 ]);
    SetEntrySCTable( T, rel[p][4], 4, [ t[p][7], 5, t[p][8], 6 ] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_23 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );    
    t := [  [t_146],
            [t_156]];
    rel := [[ 4 ],
            [ 5 ]];
    SetEntrySCTable( T, 1, 2, [ t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, 1, 3, [ t_134, 4, t_135, 5, t_136, 6]);
    SetEntrySCTable( T, 1, rel[p][1], [ t[p][1], 6 ] );
    SetEntrySCTable( T, 2, 3, [ t_236, 6 ] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_24 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );
    t := [ [ t_124, t_125, t_126, t_145, t_146, t_245, t_246, t_135, t_136, t_235, t_236 ],
           [ t_134, t_135, t_136, t_145, t_146, t_345, t_346, t_125, t_126, t_235, t_236  ],
           [ t_234, t_235, t_236, t_245, t_246, t_345, t_346, t_125, t_126, t_135, t_136  ]];
    rel := [ [ 1, 2, 3, 2 ],
             [ 1, 3, 2 ,2 ],
             [ 2, 3, 2, 1 ]];
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 4, t[p][2], 5, t[p][3], 6] );
    SetEntrySCTable( T, rel[p][1], 4, [ t[p][4], 5, t[p][5], 6] );
    SetEntrySCTable( T, rel[p][2], 4, [ t[p][6], 5, t[p][7], 6] );
    SetEntrySCTable( T, 1, rel[p][3], [ t[p][8], 5, t[p][9], 6] );
    SetEntrySCTable( T, rel[p][4], 3, [ t[p][10], 5, t[p][11], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_25 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" );    
    t := [  [t_146],
            [t_156]];
    rel := [[ 4 ],
            [ 5 ]];
    SetEntrySCTable( T, 1, 2, [ t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, 1, 3, [ t_134, 4, t_135, 5, t_136, 6]);
    SetEntrySCTable( T, 1, rel[p][1], [ t[p][1], 6 ] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_26 := function( F, p )

    local T, t, rel;
    T := EmptySCTable( 6, Zero(F), "antisymmetric" ); 
    SetEntrySCTable( T, 1, 2, [ t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, 1, 3, [ t_134, 4, t_135, 5, t_136, 6]);
    SetEntrySCTable( T, 2, 3, [ t_234, 4, t_235, 5, t_236, 6]);
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_27 := function( F, p )

    local T, t, rel;
    t := [  [t_124, t_125, t_126, t_146],
            [t_124, t_125, t_126, t_156],
            [t_134, t_135, t_136, t_146],
            [t_134, t_135, t_136, t_156]];
    rel := [[ 2, 4 ],
            [ 2, 5 ],
            [ 3, 4 ],
            [ 3, 5 ]];
    T := EmptySCTable( 6, Zero(F), "antisymmetric" ); 
    SetEntrySCTable( T, 1, rel[p][1], [ t[p][1], 4, t[p][2], 5, t[p][3], 6]);
    SetEntrySCTable( T, 2, 3, [ t_234, 4, t_235, 5, t_236, 6]);
    SetEntrySCTable( T, 1, rel[p][2], [ t[p][4], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    N6_28 := function( F, p )

    local T, t, rel;
    t := [  [t_146],
            [t_156],
            [t_246],
            [t_256]];
    rel := [[ 1, 4 ],
            [ 1, 5 ],
            [ 2, 4 ],
            [ 2, 5 ]];
    T := EmptySCTable( 6, Zero(F), "antisymmetric" ); 
    SetEntrySCTable( T, 1, 2, [ t_123, 3, t_124, 4, t_125, 5, t_126, 6]);
    SetEntrySCTable( T, 1, 3, [ t_134, 4, t_135, 5, t_136, 6]);
    SetEntrySCTable( T, 2, 3, [ t_234, 4, t_235, 5, t_236, 6]);
    SetEntrySCTable( T, rel[p][1], rel[p][2], [ t[p][1], 6] );
    return LieAlgebraByStructureConstants( F, T );

    end;

    if dim = 5 then
        ff := [ N5_1, N5_2, N5_3, N5_4, N5_5, N5_6, N5_7, N5_8, N5_9 ];
        L  := CallFuncList( ff[no], [ F, p ] );

    else 
        ff := [ N6_1 , N6_2 , N6_3 , N6_4 , N6_5 , N6_6 , N6_7 , N6_8 , N6_9,  
                N6_10, N6_11, N6_12, N6_13, N6_14, N6_15, N6_16, N6_17, N6_18, N6_19,
                N6_20, N6_21 ,N6_22, N6_23, N6_24, N6_25, N6_26, N6_27, N6_28 ];
        L := CallFuncList( ff[no], [ F, p ] );
    fi;

    return L;

end );