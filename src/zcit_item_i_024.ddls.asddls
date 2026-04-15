@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hotel Item Interface View'
define view entity ZCIT_ITEM_I_024 as select from zhotel_itm_024
association to parent ZCIT_HOTEL_I_024 as _HotelBooking
  on $projection.BookingId = _HotelBooking.BookingId
{
  key item_id as ItemId,
  key booking_id as BookingId,
  service_name as ServiceName,
  @Semantics.amount.currencyCode: 'Currency'
  price as Price,
  currency as Currency,
  _HotelBooking // Make association public
}
