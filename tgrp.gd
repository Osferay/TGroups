### general.gi

DeclareProperty( "IsTGroup", IsPcpGroup );
DeclareAttribute( "Tvector", IsTGroup);
DeclareGlobalFunction( "Pref" );

### Series.gi

DeclareAttribute( "IsolatorSeries", IsTGroup );
DeclareAttribute( "PcpsOfIsolatorSeries", IsTGroup );
DeclareAttribute( "Type", IsTGroup );
DeclareAttribute( "ExtendedIsolatorSeries", IsTGroup );
DeclareAttribute( "ExtendedType", IsTGroup );

### Iso.gi

DeclareAttribute( "CanonicalTvector", IsTGroup);
DeclareGlobalFunction( "IsIsomorphic" );

### Lie.gi

DeclareGlobalFunction( "BCHFormula" );
DeclareGlobalFunction( "MalCevGroupFromLie" );
DeclareAttribute( "LowerExtendedSeries", IsLieAlgebra );
DeclareAttribute( "LieNilpotentSequence", IsLieAlgebra );
DeclareAttribute( "LieExtendedSequence", IsLieAlgebra );

### Liedb.gi

DeclareOperation( "IndeterminateNilpotentLieAlgebra", [ IsInt, IsInt, IsInt ] );

### Exam.gi

DeclareGlobalFunction( "RandomTGroup" );