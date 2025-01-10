@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View: Students'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zviv_c_studs
  as projection on zviv_i_studs
{
  key Sid,
  key Email,
      Fname,
      Lname,
      Age,
      Gndr,
      TryDate
}
