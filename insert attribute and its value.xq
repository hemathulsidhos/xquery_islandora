xquery version "3.0" encoding "UTF-8";
declare namespace mods="http://www.loc.gov/mods/v3";
copy $input := .
modify insert node attribute valueURI {'http://id.loc.gov/authorities/names/no2021021777'} into $input/mods:mods/mods:name[1]
return $input
