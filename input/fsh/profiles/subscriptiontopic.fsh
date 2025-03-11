
Alias: $fhir-types = http://hl7.org/fhir/fhir-types
//Alias: $fhir-types = http://hl7.org/fhir/resource-types
Alias: $R5SubTop_version = http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.version
Alias: $R5SubTop_name = http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.name
Alias: $R5SubTop_title = http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title
Alias: $R5SubTop_date = http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.date
Alias: $R5SubTop_description = http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.description
Alias: $R5SubTop_resourceTrigger = http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger
Alias: $R5SubTop_canFilterBy = http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy
Alias: $R5SubTop_notificationShape = http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.notificationShape
Alias: $R5SubTop_status = http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status


Profile: MySubscriptionTopic
Parent: Basic
Title: "Subscription Topic - Basic Profile"
Description: "Subscription Topic - Basic Profile"


* code.coding.code = #SubscriptionTopic

* modifierExtension contains
    $R5SubTop_status named status 1..1

* modifierExtension[status].value[x] 1..1
* modifierExtension[status].value[x] only code
* modifierExtension[status].valueCode = #draft

* extension contains
    $R5SubTop_version named version 0..1 and
    $R5SubTop_name named name 0..1 and
    $R5SubTop_title named title 0..1 and
    $R5SubTop_date named date 1..1 and
    $R5SubTop_description named description 0..1 and
    
    $R5SubTop_resourceTrigger named resource-trigger 1..* /* and
    $R5SubTop_canFilterBy named can-filter-by 1..* and
    $R5SubTop_notificationShape named notification-shape 1..*
*/

* extension[version].value[x] only string
* extension[version].value[x] ^type.code = "string"
* extension[version].value[x] ^short = "Business version of the subscription topic"

* extension[name].value[x] only string
* extension[name].value[x] ^short = "Name for this subscription topic (computer friendly)"

* extension[title].value[x] only string
* extension[title].value[x] ^short = "Name for this subscription topic (human friendly)"


* extension[date].value[x] only dateTime
* extension[date].value[x] ^short = "Date status first applied"

* extension[description].value[x] only markdown
* extension[description].value[x] ^short = "Natural language description of the SubscriptionTopic"



* extension[resource-trigger].extension[description] 1..1
* extension[resource-trigger].extension[description].value[x] 1..1
* extension[resource-trigger].extension[description].value[x] only markdown


//* extension[resource-trigger].extension[description] 1..1
//* extension[resource-trigger].extension contains
//    $R5SubTop_resourceTrigger_description named description 1..1
    
/*
* extension[resource-trigger].extension[resource] 1..1
* extension[resource-trigger].extension[resource].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"

* extension[resource-trigger].extension[supportedInteraction] ^slicing.discriminator.type = #value
* extension[resource-trigger].extension[supportedInteraction] ^slicing.discriminator.path = "$this"
* extension[resource-trigger].extension[supportedInteraction] ^slicing.rules = #open
* extension[resource-trigger].extension[supportedInteraction] ^slicing.ordered = false   // can be omitted, since false is the default
* extension[resource-trigger].extension[supportedInteraction] ^slicing.description = "Slice based on $this value"

* extension[resource-trigger].extension[supportedInteraction] contains  
    create 1..1 and 
    update 1..1

* extension[resource-trigger].extension[supportedInteraction][create].valueCode = #create
* extension[resource-trigger].extension[supportedInteraction][update].valueCode = #update



*/




//* extension[resource-trigger].extension[queryCriteria] 1..1 


//* extension[resource-trigger].extension[supportedInteraction][+].valueCode = #update
/*
* extension[resource-trigger].extension[queryCriteria][+].valueCode = #create
* extension[=].extension[+].url = "queryCriteria"
//* extension[=].extension[=].extension[0].url = "previous"
//* extension[=].extension[=].extension[=].valueString = "type=aeob-document"
* extension[=].extension[=].extension[+].url = "resultForCreate"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "current"
* extension[=].extension[=].extension[=].valueString = "type=aeob-document"
* extension[=].extension[=].extension[+].url = "resultForDelete"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "requireBoth"
* extension[=].extension[=].extension[=].valueBoolean = false
*/

// finish the profile with can filter by and notification shape

/*

RuleSet: BaseAEOBAvailableSubscriptionTopic
* meta.versionId = "1"
* meta.lastUpdated = "2025-01-21T17:56:45.645113+00:00"

//* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
//* extension[=].valueUri = "https://build.fhir.org/ig/HL7/davinci-pct/aeob-available"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.version"
* extension[=].valueString = "2.3.0-draft"

//* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.name"
//* extension[=].valueString = "Advanced Explanation Of Benefit (AEOB) Complete Subscription Topic"

//* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
//* extension[=].valueString = "AEOB Available"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.date"
* extension[=].valueDateTime = "2025-01-21"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.description"
* extension[=].valueMarkdown = "Subscription Topic for when an Advanced Explanation of Benefit DocumentReference is created or updated (for FHIR R4). This represents that an AEOB Bundle, either contained in or referred to by the DocumentReference has been newly created and is available or has been updated, should updates be made."

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueMarkdown = "Triggered when an AEOB DocumentReference is created or updated"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #update


* extension[=].extension[+].url = "queryCriteria"
//* extension[=].extension[=].extension[0].url = "previous"
//* extension[=].extension[=].extension[=].valueString = "type=aeob-document"
* extension[=].extension[=].extension[+].url = "resultForCreate"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "current"
* extension[=].extension[=].extension[=].valueString = "type=aeob-document"
* extension[=].extension[=].extension[+].url = "resultForDelete"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "requireBoth"
* extension[=].extension[=].extension[=].valueBoolean = false
*/
/*
* extension[=].extension[+].url = "queryCriteria"
* extension[=].extension[=].extension[0].url = "previous"
* extension[=].extension[=].extension[=].valueString = "status:not=current"
* extension[=].extension[=].extension[+].url = "resultForCreate"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "current"
* extension[=].extension[=].extension[=].valueString = "status=current"
* extension[=].extension[=].extension[+].url = "resultForDelete"
* extension[=].extension[=].extension[=].valueCode = #test-fails
* extension[=].extension[=].extension[+].url = "requireBoth"
* extension[=].extension[=].extension[=].valueBoolean = true
*/

/*
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "(%previous.id.empty() or (%previous.status != 'current')) and (%current.status = 'current')"
*/

/*
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the subject of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "subject"
*

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status (current | superseded | entered-in-error) of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "status"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the document status (registered | partial | preliminary | final | amended | corrected | appended | cancelled | entered-in-error | deprecated | unknown) of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "docStatus"

/* This does not seem to apply to a DocumentReference. _in is for collections like List, Group, CareTeam 
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the group membership of the subject of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "_in"
*/
/*
* extension[+].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on related of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "relatesTo.target"
* extension[=].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
*


* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.notificationShape"
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "include"
* extension[=].extension[=].valueString = "DocumentReference:subject"

// TODO DISCUSS Inclusion of content?
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "include"
* extension[=].extension[=].valueString = "DocumentReference:content.attachment.url"


* modifierExtension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* modifierExtension.valueCode = #draft
* code = http://hl7.org/fhir/fhir-types#SubscriptionTopic

/*


Instance: MySubscriptionTopicExample1
InstanceOf: MySubscriptionTopic
Usage: #example
* insert BaseAEOBAvailableSubscriptionTopic

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://build.fhir.org/ig/HL7/davinci-pct/aeob-available-subject"


* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.name"
* extension[=].valueString = "Advanced Explanation Of Benefit (AEOB) Available for Subject Subscription Topic"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "AEOB Available - Subject"


* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the subject (patient/member) of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "subject"




Instance: MySubscriptionTopicExample2
InstanceOf: MySubscriptionTopic
Usage: #example
* insert BaseAEOBAvailableSubscriptionTopic

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://build.fhir.org/ig/HL7/davinci-pct/aeob-available-author"


* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.name"
* extension[=].valueString = "Advanced Explanation Of Benefit (AEOB) Available for Author Subscription Topic"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "AEOB Available - Author"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the authors of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author"

*/




/*

Instance: aeob-complete-subscription-topic
InstanceOf: Basic
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-10T17:56:45.645113+00:00"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "http://example.org/FHIR/SubscriptionTopic/aeob-complete"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.version"
* extension[=].valueString = "1.0.0-fhir.r4"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.name"
* extension[=].valueString = "AEOB Complete Topic"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* extension[=].valueCode = #active

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "aeob-complete"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.date"
* extension[=].valueDateTime = "2025-01-15"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.description"
* extension[=].valueMarkdown = "Subscription topic for completed AEOBs"

* extension[+].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "An AEOB has been completed"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #update
* extension[=].extension[+].extension[0].url = "previous"
* extension[=].extension[=].extension[=].valueString = "status:not=current"
* extension[=].extension[=].extension[+].url = "resultForCreate"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "current"
* extension[=].extension[=].extension[=].valueString = "status=current"
* extension[=].extension[=].extension[+].url = "resultForDelete"
* extension[=].extension[=].extension[=].valueCode = #test-fails
* extension[=].extension[=].extension[+].url = "requireBoth"
* extension[=].extension[=].extension[=].valueBoolean = true
* extension[=].extension[=].url = "queryCriteria"
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "(%previous.id.empty() or (%previous.status != 'current')) and (%current.status = 'current')"
* extension[=].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"

* extension[+].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the subject of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "subject"
* extension[=].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"

* extension[+].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the type of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "type"
* extension[=].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"

* extension[+].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the authors of a DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author"
* extension[=].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"

*
*

* modifierExtension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* modifierExtension.valueCode = #draft
* code = http://hl7.org/fhir/fhir-types#SubscriptionTopic

*/


// TODO, how do we create a subscription for a subject or author
/*
Instance: MySubscriptionExample1
InstanceOf: Subscription
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-01-15T10:50:28.4906421-05:00"
* status = #requested
* meta.lastUpdated = "2030-01-15T00:00:00-05:00"
* reason = "Notification for available AEOBs for members"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?type=aeob-document"
* criteria = "http://example.org/FHIR/SubscriptionTopic/aeob-available-subject"
* channel.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-heartbeat-period"
* channel.extension.valueInteger = 120
* channel.type = #rest-hook
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/$subscription-hook"
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only
* channel.payload = #application/fhir+json


Instance: MySubscriptionExample2
InstanceOf: Subscription
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-01-15T10:50:28.4906421-05:00"
* status = #requested
* meta.lastUpdated = "2030-01-15T00:00:00-05:00"
* reason = "Notification for available AEOBs for authors"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?type=aeob-document"
* criteria = "http://example.org/FHIR/SubscriptionTopic/aeob-available-author"
* channel.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-heartbeat-period"
* channel.extension.valueInteger = 120
* channel.type = #rest-hook
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/$subscription-hook"
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only
* channel.payload = #application/fhir+json
*/

/*


to present
current: type=aeob-document

Create a profile for Subscription topic


Items to discuss

resultForCreate: test-passes
resultForDelete: test-passes


*

*/