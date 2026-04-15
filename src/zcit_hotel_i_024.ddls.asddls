@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hotel Booking Interface View'
define root view entity ZCIT_HOTEL_I_024 as select from zhotel_hdr_024
composition [0..*] of ZCIT_ITEM_I_024 as _ServiceItems
{
  key booking_id as BookingId,
  guest_name as GuestName,
  room_type as RoomType,
  status as Status,
  _ServiceItems // Make association public
}
