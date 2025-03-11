
Alias: $fhir-types = http://hl7.org/fhir/fhir-types // doesnot work in R4
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


* code.coding.code = #SubscriptionTopic  // hard codes since SubscriptionTopic code is not available in R4. Would need to create a new CodeSystem.

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
    
    $R5SubTop_resourceTrigger named resource-trigger 1..*

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

