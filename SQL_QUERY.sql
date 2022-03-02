## Simple SQL QUERY, used to filter dataset leveragin google bigQuery

SELECT Year, Quarter, Month, DayOfMonth, DayOfWeek, FlightDate, Reporting_Airline,
ORIGIN, OriginCityName, OriginState, DestState, DestStateName, DepDelay, DepDelayMinutes, WheelsOn, TaxiOut,
TaxiIn, ArrDelay, ArrDelayminutes, Cancelled, Distance, CarrierDelay, WeatherDelay, NASDelay, SecurityDelay, LateAircraftDelay
FROM `tribal-facility-342503.airline_data.AIRLINE`
WHERE ORIGIN LIKE "%PHX%" AND ArrDelay > 0 AND Year >= 2003
OR ORIGIN LIKE "%TUS%" AND ArrDelay > 0 AND Year >= 2003
ORDER BY Year;
