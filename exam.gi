########################################################################################
##  Examples of finitely generated torsion-free nilpotent groups, T-Groups in short   ##
########################################################################################

InstallGlobalFunction( RandomTGroup, function( arg )
    #The arguments of the function are the follwing
    #h is the hirsch number
    #c is the class of the group
    #n is an optional argument in case that there are multiple groups with classe c and Hirsch number h

    local   h,c,n,                  #Inputs
            N,                      #Auxiliar matrix
            t,                      #Matrix t of relations
            ftl,                    #Collector of relations
            rel,                    #Auxiliar variable to store each relation
            e,d,a,r,U,v,g,w,m,b,s,u,#Auxiliar variables
            l,B,
            i,j,k,                  #bucle variable
            type,                   #Stores the type of the group
            G;                      #Stores the group to return

    #Catch arguments
    h := arg[1];
    c := arg[2];
    if Length(arg) = 3 then
        n := arg[3];
    else 
        n := 1;
    fi;

    if (h>5 or c>4) then
        Error(" The example function only works for h<5 and c<4.\n");
    elif ( ( c > h ) or ( c <> 1 and c = h ) ) then
        Error(" There are no T groups of class ", c , " and Hirsch number less than", h , ".\n");
    fi;

    #Prepare the matrix of coeficients
    t := [];
    for i in [1..(h-2)] do
        N := NullMat(h,h);
        for j in [(i+1)..(h-1)] do
            for k in [(j+1)..h] do
                N[j][k] := Random( Integers );
            od;
        od;
        Add(t,N);
    od;

    if c=1 then
    #Free abelian groups of rank equal to h
        type := [h];
        for i in [1..(h-2)] do
            for j in [(i+1)..(h-1)] do
                for k in [(j+1)..h] do
                    t[i][j][k] := 0;
                od;
            od;
        od;

    elif c=2 then

        if h=5 and n=2 then
        # Group of type (3,2)
            type := [3,2];

            # Conditions to be this type
            t[1][2][3] := 0;
            t[1][4][5] := 0;
            t[2][4][5] := 0;
            t[3][4][5] := 0;

            # Conditions to be minimal
            B := [ [t[1][2][4], t[1][2][5] ], [ t[1][3][4], t[1][3][5] ], [ t[2][3][4], t[2][3][5] ] ];
            U := SmithNormalFormIntegerMat(B);
            t[1][2][4] := U[1][1];
            t[1][3][5] := U[2][2];
            t[1][2][5] := 0;
            t[1][3][4] := 0;
            t[2][3][4] := 0;
            t[2][3][5] := 0;

        else 
        # Group of type (h-1,1)
            type := [h-1,1];

            for i in [1..(h-2)] do
                for j in [(i+1)..(h-1)] do
                    for k in [(j+1)..h] do
                        if k <> h then
                            t[i][j][k] := 0;
                        fi;
                    od;
                od;
            od;

        fi;

    elif c=3 then
        if h=4 then
        # Group of type (2,1,1)
            type := [2,1,1];
            # Conditions to be this type
            t[2][3][4] := 0;

            if t[1][2][3]*t[1][3][4] = 0 then
                t[1][2][3] := Random( 1, 10 );
            fi;

        elif h=5 and n=1 then
        # Group of type (3,1,1)
            type := [3,1,1];
            #Conditions to be this type
            t[1][2][3] := 0;
            t[2][3][4] := 0;
            t[2][4][5] := 0;
            t[3][4][5] := 0;

            # t[1][4][5] <> 0
            if t[1][4][5] = 0 then
                t[1][4][5] := Random( 1, 10 );
            fi;

            # Either t[1][2][4]<>0 or t[1][3][4]<>0
            if ( t[1][2][4] = 0 and t[1][3][4] = 0 ) then
                t[1][2][4] := Random( 1, 10 );
            fi;

        elif h=5 and n=2 then
        # Group of type (2,1,2)
            type := [2,1,2];

            #Conditions to be this type
            t[1][4][5] := 0;
            t[2][4][5] := 0;
            t[3][4][5] := 0;

            if t[1][2][3] = 0 then
                t[1][2][3] := Random( 1, 10 );
            fi;

            if t[1][3][4]*t[2][3][5] = 0 and  t[1][3][5]*t[2][3][4] = 0 then
                t[1][3][4] := Random( 1, 10 );
                t[2][3][5] := Random( 1, 10 );
            fi;            

        fi;

    elif c=4 then
        if h=5 then
        # Group of type (2,1,1,1)
            type := [2,1,1,1];
            #Conditions to be this type
            t[2][3][4] := 0;
            t[2][4][5] := 0;
            t[3][4][5] := 0;

            # t[1][2][3], t[1][3][4], t[1][4][5] <> 0
            if t[1][2][3] = 0 then
                t[1][2][3] := Random( 1, 10 );
            fi;

            if t[1][3][4] = 0 then
                t[1][3][4] := Random( 1, 10 );
            fi;

            if t[1][4][5] = 0 then
                t[1][4][5] := Random( 1, 10 );
            fi;
            #Make t minimal
            
            g := Gcd(t[1][2][3], t[1][3][4]);
            e := Pref(t[1][2][4], g)[1];
            t[1][2][4] := (e*t[1][2][4]) mod g;

            U := GcdRepresentation(t[1][2][3], t[1][3][4]);
            n := ( e*t[1][2][4] - ( e*t[1][2][4] mod g ) )/g;
            l := n*t[1][4][5]*t[1][3][4]/g;
            a := Gcd( l, t[1][3][4], t[2][3][5] );
            t[1][3][5] := ( e*t[1][3][5] + e*t[1][4][5]*n*U[1] ) mod a;

            k := Gcd(l, t[1][3][4]);
            v := GcdRepresentation( l, t[1][3][4] );
            w := GcdRepresentation( l, t[1][3][4], t[2][3][5] );
            m := ( e*t[1][3][5] - ( e*t[1][3][5] mod h ) )/h;
            b := t[1][3][4]*U[2]*w[2]*n*m-e*( t[1][2][4]*w[2]*m+t[1][3][5]*U[2]*n )-t[1][3][5]*w[1]*n*m*t[1][2][3]/g;
            r := m*( e*t[1][2][4]*l/k-n*t[1][3][5]*( t[1][2][3]/g )*( t[1][3][4]/k ) );
            s := m*( t[2][3][5]/h )*( t[1][3][5]*v[1]*n*t[1][2][3]/g+e*t[1][2][4]*v[2] );
            t[1][2][5] := ( t[1][2][5] + b ) mod Gcd( t[1][2][3], t[1][4][5], t[2][3][5], r, s);

        fi;
    fi;
    
    #Create the relations
    ftl := FromTheLeftCollector(h);
    v   := [];
    for i in [1..(h-2)] do
        for j in [(i+1)..(h-1)] do
            rel := [j,1];
            for k in [(j+1)..h] do
                Add( v, t[i][j][k] );
                if t[i][j][k] <> 0 then
                    Add( rel,k );
                    Add( rel,t[i][j][k] );
                fi;
            od;
        SetConjugate( ftl, j, i, rel);
        od;
    od;

    G := PcpGroupByCollector( ftl );
    SetIsTGroup( G, true );
    SetType( G, type );
    SetTvector( G, v );

    #Create the group
    return G;

end );
