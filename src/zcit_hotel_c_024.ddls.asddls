@EndUserText.label: 'Hotel Booking Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZCIT_HOTEL_C_024 as projection on ZCIT_HOTEL_I_024
{
  key BookingId,
  GuestName,
  RoomType,
  Status,
  /* Associations */
  _ServiceItems : redirected to composition child ZCIT_ITEM_C_024
}
