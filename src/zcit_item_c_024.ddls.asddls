@EndUserText.label: 'Hotel Item Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZCIT_ITEM_C_024 as projection on ZCIT_ITEM_I_024
{
  key ItemId,
  key BookingId,
  ServiceName,
  Price,
  Currency,
  /* Associations */
  _HotelBooking : redirected to parent ZCIT_HOTEL_C_024
}
