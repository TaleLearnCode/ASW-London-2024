﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TaleLearnCode.FlightTrackingDemo.SqlData.Models;

/// <summary>
/// Lookup table representing the aiports supported by the system.
/// </summary>
public partial class Airport
{
    /// <summary>
    /// The IATA code for the airline.
    /// </summary>
    public string Iatacode { get; set; }

    /// <summary>
    /// The ICAO code for the airline.
    /// </summary>
    public string Icaocode { get; set; }

    /// <summary>
    /// The name of the airport.
    /// </summary>
    public string AirportName { get; set; }

    /// <summary>
    /// The name of the city where the airport is located.
    /// </summary>
    public string CityName { get; set; }

    /// <summary>
    /// The code of the country where the airport is located.
    /// </summary>
    public string CountryCode { get; set; }

    /// <summary>
    /// The elevation of the airport in feet.
    /// </summary>
    public int Elevation { get; set; }

    /// <summary>
    /// The latitude of the airport.
    /// </summary>
    public decimal Latitude { get; set; }

    /// <summary>
    /// The longitude of the airport.
    /// </summary>
    public decimal Longitude { get; set; }

    /// <summary>
    /// Flag indicating whether the airport is active within the system.
    /// </summary>
    public bool IsActive { get; set; }

    public virtual Country CountryCodeNavigation { get; set; }

    public virtual ICollection<FlightPlan> FlightPlanDestinationAirportCodeNavigations { get; set; } = new List<FlightPlan>();

    public virtual ICollection<FlightPlan> FlightPlanOriginAirportCodeNavigations { get; set; } = new List<FlightPlan>();

    public virtual ICollection<FlightSchedule> FlightScheduleArrivalAirportCodeNavigations { get; set; } = new List<FlightSchedule>();

    public virtual ICollection<FlightSchedule> FlightScheduleDepartureAirportCodeNavigations { get; set; } = new List<FlightSchedule>();
}