xquery version "3.0" encoding "UTF-8";
declare namespace mods="http://www.loc.gov/mods/v3";
copy $input := .
modify (
  for $authority in $input//mods:name[1]/@authority
  return replace value of node $authority with "naf"
)
return $input
