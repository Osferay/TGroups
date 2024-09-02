dir   := DirectoryCurrent();
dir   := Filename(dir, "pkg/TGroups");
dir   := Directory( dir );
if IsBool( DirectoryContents( dir ) ) then
    Error( "The current directory is empty." );
fi;

paths := [ "tgrp.gd", "general.gi", "exam.gi", "series.gi", "lie.gi", "liedb.gi" ];

for path in paths do
    filename := Filename(dir, path);
    if not IsExistingFile(filename) then
        str := StringFormatted( "File {} is not in the current directory", filename);
        Error( str );
    else
        Read( filename );
    fi;
od;

Unbind( dir );
Unbind( paths ); 
Unbind( filename );
Unbind( str );