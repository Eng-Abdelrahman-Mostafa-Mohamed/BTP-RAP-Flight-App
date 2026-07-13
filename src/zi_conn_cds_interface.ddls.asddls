@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'INTERFACE FOR DATA MODELING LAYER'

@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_CONN_CDS_INTERFACE
  as select from /dmo/connection

{
  key carrier_id      as CarrierId,
  key connection_id   as ConnectionId,

      airport_from_id as AirportFromId,
      airport_to_id   as AirportToId,
      departure_time  as DepartureTime,
      arrival_time    as ArrivalTime,
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      cast ( distance as abap.dec( 16, 2 )) as Distance,
      distance_unit   as DistanceUnit
}
