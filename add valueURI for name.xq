declare namespace mods="http://www.loc.gov/mods/v3";

copy $xml := .
modify (
    let $valueURI := $xml//mods:name[@valueURI=''][mods:namePart[contains(text(), 'Des Moines Audubon Society')]]/@valueURI
    return replace value of node $valueURI with "http://id.loc.gov/authorities/names/no2023045341"
)
return $xml
