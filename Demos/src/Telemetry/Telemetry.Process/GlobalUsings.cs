﻿global using Azure.Messaging.EventHubs;
global using Microsoft.Azure.Cosmos;
global using Microsoft.Azure.Functions.Worker;
global using Microsoft.EntityFrameworkCore;
global using Microsoft.Extensions.Logging;
global using System.Text;
global using System.Text.Json;
global using TaleLearnCode.FlightTrackingDemo.Messages;
global using TaleLearnCode.FlightTrackingDemo.SqlData.Models;
global using CosmosModels = TaleLearnCode.FlightTrackingDemo.Common.CosmosData.Models;
global using SqlModels = TaleLearnCode.FlightTrackingDemo.SqlData.Models;