declare namespace mods="http://www.loc.gov/mods/v3";

copy $xml := .
modify (
    let $valueURI1 := $xml//mods:name[@valueURI=''][mods:namePart[contains(text(), 'Brown, Woodward H.')]]/@valueURI
    return replace value of node $valueURI1 with "TEST",
    let $valueURI2 := $xml//mods:subject/mods:name[@valueURI=''][mods:namePart[contains(text(), 'Petersen, Peter C.')]]/@valueURI
    return replace value of node $valueURI2 with "TEST"
)
return $xml
