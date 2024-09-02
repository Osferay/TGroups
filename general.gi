####################################################################
## IsTGroup(G), checks if the group is nilpotent and torsion free ##
####################################################################

InstallMethod(  IsTGroup, 
                "for pcp groups", [IsPcpGroup],
function( G )

    return ((IsNilpotentGroup(G) and IsTorsionFree(G) ));

end );

####################################################################
## Pref(x, y), generates the prefix of the reduction (+-x) mod y  ##
####################################################################

InstallGlobalFunction( "Pref", function(x,y)

    local   s,      #Minimum x mod y, -x mod y
            pref;   #Value to return

    s := Minimum( x mod y, -x mod y);
    pref :=[];

    if IsInt((x-s)/y) then
        Add(pref, 1);
    fi;

    if IsInt((-x-s)/y) then
        Add(pref, -1);
    fi;

    return pref;

end );

####################################################################
## TauVector(G), generates the vector of relations of G           ##
####################################################################
# 
InstallMethod( Tvector, [IsTGroup], function(G)

    local   pcp,    #pcp of G
            i,j,k,  #Bucle variables
            v,      #Tau vector 
            h;      #Hirsch number of G.

    h   := HirschLength(G);
    pcp := Pcp(G);
    v   := [];

    for i in [1..(h-2)] do
        for j in [(i+1)..(h-1)] do
            for k in [(j+1)..h] do
                Add( v,Exponents( pcp[j]^pcp[i] )[k] );
            od;
        od;
    od;

    return v;

end );

####################################################################
## Generates the matrix of relations of G using a vector v        ##
##                                      and Hirsch length h       ##
####################################################################

MatrixRelationsByVector := function(v,h)

    local   t,      #Matrix of relations
            cont,   #count of the iteration
            N,      #Auxiliar matrix
            i,j,k;  #Bucle variables

    cont := 1;
    t := [];

    for i in [1..(h-2)] do
        N := NullMat(h,h);

        for j in [(i+1)..(h-1)] do

            for k in [(j+1)..h] do
                N[j][k] := v[cont];
                cont := cont + 1;
            od;

        od;

        Add(t,N);
    od;

    return t;

end ;

####################################################################
## Generates the torsion free group G using a vector v and        ##
##                                          Hirsch length h       ##
####################################################################

TGroupByVector := function(v,h)

    local   cont,   #Count of iteration
            ftl,    #Collector of relations
            rel,    #Variable auxiliar
            G,      #Group to return
            i,j,k;  #Bucle variables

    #Create the relations
    ftl := FromTheLeftCollector(h);
    cont := 1;

    for i in [1..(h-2)] do

        for j in [(i+1)..(h-1)] do

            rel := [j,1];
            for k in [(j+1)..h] do

                if v[cont] <> 0 then
                    Add(rel,k);
                    Add(rel,v[cont]);
                fi;

                cont := cont + 1;
            od;

        SetConjugate( ftl, j, i, rel);
        od;
    od;

    #Create the group
    G := PcpGroupByCollector( ftl );
    SetIsTGroup( G, true );
    SetTvector( G, v );

    return G;

end ;

CanonicalGcd := function( arg )

    local   l,
            i;

    l := [ arg[1] ];

    if Length(arg) = 1 then
        return l;
    else
        for i in [ 2..Length(arg) ] do
            Add( l, arg[i] );
        od;
    fi;

end;