xquery version "3.0" encoding "UTF-8";
declare namespace mods="http://www.loc.gov/mods/v3";
copy $input := .
modify (
  for $text in $input//mods:namePart
  return replace value of node $text with "Iowa State University. Special Collections and University Archives"
)
return $input
