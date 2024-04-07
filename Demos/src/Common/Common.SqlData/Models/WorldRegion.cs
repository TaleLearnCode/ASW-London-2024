﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TaleLearnCode.FlightTrackingDemo.SqlData.Models;

/// <summary>
/// Lookup table representing the world regions as defined by the UN M49 specification.
/// </summary>
public partial class WorldRegion
{
    /// <summary>
    /// Identifier of the world region.
    /// </summary>
    public string WorldRegionCode { get; set; }

    /// <summary>
    /// Name of the world region.
    /// </summary>
    public string WorldRegionName { get; set; }

    /// <summary>
    /// Identifier of the world region parent (for subregions).
    /// </summary>
    public string ParentId { get; set; }

    /// <summary>
    /// Flag indicating whether the world region is active.
    /// </summary>
    public bool IsActive { get; set; }

    public virtual ICollection<Country> CountryWorldRegionCodeNavigations { get; set; } = new List<Country>();

    public virtual ICollection<Country> CountryWorldSubregionCodeNavigations { get; set; } = new List<Country>();

    public virtual ICollection<WorldRegion> InverseParent { get; set; } = new List<WorldRegion>();

    public virtual WorldRegion Parent { get; set; }
}