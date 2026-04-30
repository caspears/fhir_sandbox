ValueSet: MySpecimenType
Id: MySpecimenType
Title: "Specimen type"
Description: "This value set represents specimen types relevant to human clinical observations, including those used in laboratory and pathology studies, and excludes non-human or non-clinically relevant specimens."
* ^language = #en
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* ^extension[=].valueContactDetail.name = "HL7 US Realm Program Management Author"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate"
* ^extension[=].valueDate = "2025-08-18"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-effectiveDate"
* ^extension[=].valueDateTime = "2024-06-06"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-effectivePeriod"
* ^extension[=].valuePeriod.start = "2024-06-06"
* ^version = "20240606"
* ^status = #active
* ^date = "2024-06-06T01:23:01-04:00"
* ^publisher = "HL7 US Realm Program Management Steward"
* ^jurisdiction.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* ^jurisdiction.extension.valueCode = #unknown
* ^purpose = "(Clinical Focus: This set of values includes all potentially relevant specimen types for a human result observation.),(Data Element Scope: The intent of this set of values is to represent clinically relevant specimens that may be used for laboratory or other pathology studies.),(Inclusion Criteria: Any specimen that could be relevant in a human clinical use case),(Exclusion Criteria: Excludes a decapitated animal head specimen)"
* include codes from system SNOMED_CT where concept descendent-of #123038009
* exclude codes from system http://snomed.info/sct where concept = "704243004"