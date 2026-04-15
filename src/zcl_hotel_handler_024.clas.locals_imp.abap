CLASS lhc_HotelBooking DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR HotelBooking RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE HotelBooking.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE HotelBooking.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE HotelBooking.

    METHODS read FOR READ
      IMPORTING keys FOR READ HotelBooking RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK HotelBooking.

    METHODS rba_Serviceitems FOR READ
      IMPORTING keys_rba FOR READ HotelBooking\_Serviceitems FULL result_requested RESULT result LINK association_links.

    METHODS cba_Serviceitems FOR MODIFY
      IMPORTING entities_cba FOR CREATE HotelBooking\_Serviceitems.

ENDCLASS.

CLASS lhc_HotelBooking IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Serviceitems.
  ENDMETHOD.

  METHOD cba_Serviceitems.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ServiceItem DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE ServiceItem.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE ServiceItem.

    METHODS read FOR READ
      IMPORTING keys FOR READ ServiceItem RESULT result.

    METHODS rba_Hotelbooking FOR READ
      IMPORTING keys_rba FOR READ ServiceItem\_Hotelbooking FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ServiceItem IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Hotelbooking.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZCIT_HOTEL_I_024 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZCIT_HOTEL_I_024 IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
