﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TaleLearnCode.FlightTrackingDemo.SqlData.Models;

/// <summary>
/// Table to store the engine data for a flight.
/// </summary>
public partial class TelemetryEngineDatum
{
    /// <summary>
    /// Identifier of the engine data for a flight.
    /// </summary>
    public long TelemetryEngineDataId { get; set; }

    /// <summary>
    /// Identifier of the Telemetry data for a flight.
    /// </summary>
    public Guid FlightTelemetryId { get; set; }

    /// <summary>
    /// The number of the engine.
    /// </summary>
    public int EngineNumber { get; set; }

    /// <summary>
    /// The speed of the engine in revolutions per minute.
    /// </summary>
    public double? EngineSpeed { get; set; }

    /// <summary>
    /// The rate of fuel flow to the engine in liters per hour.
    /// </summary>
    public double? FuelFlowRate { get; set; }

    /// <summary>
    /// The pressure of the engine oil in kilopascals.
    /// </summary>
    public double? OilPressure { get; set; }

    /// <summary>
    /// The temperature of the engine oil in degrees Celsius.
    /// </summary>
    public double? OilTemperature { get; set; }

    /// <summary>
    /// The temperature of the engine exhaust gases in degrees Celsius.
    /// </summary>
    public double? ExhaustGasTemperature { get; set; }

    /// <summary>
    /// The thrust of the engine in newtons.
    /// </summary>
    public double? Thrust { get; set; }

    /// <summary>
    /// Indicates if the engine data is incomplete.
    /// </summary>
    public bool? IsIncomplete { get; set; }

    public virtual Telemetry FlightTelemetry { get; set; }

    public virtual ICollection<TelemetryEngineDataFaultCode> TelemetryEngineDataFaultCodes { get; set; } = new List<TelemetryEngineDataFaultCode>();
}