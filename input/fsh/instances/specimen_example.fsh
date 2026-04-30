

Instance: SpecimenExample
InstanceOf: MySpecimen
Description: "An example of a specimen with a license to krill."
Usage: #example

// * type = $v2-0487#NASDR "Drainage, Nasal"
// The "type" description that was previously here does not appear to be correct. It looks like a method type rather than a specimen type. Please verify before reactivating RPS.
// * type.text = "Polymerase chain reaction (PCR)"
* type = http://snomed.info/sct#168141000 "Nasal fluid specimen (specimen)"
// * type.text = "Nasal fluid specimen (specimen)"
* subject = Reference(PatientExample)
