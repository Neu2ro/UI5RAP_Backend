@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View: Students'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zviv_i_studs
  as select from zviv_t_students
{
  key sid   as Sid,
  key email as Email,
      fname as Fname,
      lname as Lname,
      age   as Age,
      gndr  as Gndr
}
