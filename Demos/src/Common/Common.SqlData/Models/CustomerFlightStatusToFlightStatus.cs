﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TaleLearnCode.FlightTrackingDemo.SqlData.Models;

/// <summary>
/// Lookup table to associate a customer&apos;s flight status with a flight status.
/// </summary>
public partial class CustomerFlightStatusToFlightStatus
{
    /// <summary>
    /// The unique identifier for the CustomerFlightStatusToFlightStatus table.
    /// </summary>
    public int CustomerFlightStatusToFlightStatusId { get; set; }

    /// <summary>
    /// The code for the customer&apos;s flight status.
    /// </summary>
    public string CustomerFlightStatusCode { get; set; }

    /// <summary>
    /// The code for the flight status.
    /// </summary>
    public string FlightStatusCode { get; set; }

    public virtual CustomerFlightStatus CustomerFlightStatusCodeNavigation { get; set; }

    public virtual FlightStatus FlightStatusCodeNavigation { get; set; }
}