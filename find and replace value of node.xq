xquery version "3.0" encoding "UTF-8";
declare namespace mods="http://www.loc.gov/mods/v3";
copy $input := .
modify (
  for $text in $input//mods:roleTerm
  return replace value of node $text with fn:replace ($text, "Contributing Institution", "curator")
)
return $input
