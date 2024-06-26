﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TaleLearnCode.FlightTrackingDemo.SqlData.Models;

/// <summary>
/// Table to store the fluid levels for a hydraulic system data record.
/// </summary>
public partial class TelemetryHydraulicSystemFluidLevel
{
    /// <summary>
    /// Identifier of the fluid level for a hydraulic system data record.
    /// </summary>
    public long TeleHydraulicSystemFluidLevelId { get; set; }

    /// <summary>
    /// Identifier of the hydraulic system data for a flight.
    /// </summary>
    public long TelemetryHydraulicSystemId { get; set; }

    /// <summary>
    /// The fluid level in the hydraulic system in liters.
    /// </summary>
    public double FluidLevel { get; set; }

    public virtual TelemetryHydraulicSystem TelemetryHydraulicSystem { get; set; }
}