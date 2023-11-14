xquery version "3.0" encoding "UTF-8";
declare namespace mods="http://www.loc.gov/mods/v3";
copy $input := .
modify (
  for $text in $input//mods:namePart
  return replace value of node $text with fn:replace ($text, "Futrell, Sue", "Futrell, Susan, 1955-"),
insert node attribute valueURI {'http://id.loc.gov/authorities/names/no2017018783'} into $input/mods:mods/mods:name[3]
)
return $input
