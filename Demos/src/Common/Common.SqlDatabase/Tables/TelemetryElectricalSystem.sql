﻿CREATE TABLE dbo.TelemetryElectricalSystem
(
  TeleElectricalSystemId  BIGINT           NOT NULL IDENTITY(1,1),
  FlightTelemetryId       UNIQUEIDENTIFIER NOT NULL,
  PowerGeneration         FLOAT                NULL,
  PowerDistribution       VARCHAR(100)         NULL,
  BatteryStatus           VARCHAR(100)         NULL,
  IsIncomplete            BIT                  NULL CONSTRAINT dfTelemetryElectricalSystem_IsIncomplete DEFAULT(0),
  CONSTRAINT pkcTelemetryElectricalSystem PRIMARY KEY (TeleElectricalSystemId),
  CONSTRAINT fkTelemetryElectricalSystem_Telemetry FOREIGN KEY (FlightTelemetryId) REFERENCES dbo.Telemetry (FlightTelemetryId)
)
GO

EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem',                                                         @value = N'Table to store the electrical system data for a flight.', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE';
GO
EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem', @level2name = N'TeleElectricalSystemId',                @value = N'Identifier of the electrical system data for a flight.', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level2type = N'COLUMN';
GO
EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem', @level2name = N'FlightTelemetryId',                     @value = N'Identifier of the Telemetry data for a flight.', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level2type = N'COLUMN';
GO
EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem', @level2name = N'PowerGeneration',                       @value = N'The amount of power generated by the electrical system in watts.', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level2type = N'COLUMN';
GO
EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem', @level2name = N'PowerDistribution',                     @value = N'The distribution of power in the electrical system.', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level2type = N'COLUMN';
GO
EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem', @level2name = N'BatteryStatus',                         @value = N'The status of the battery in the electrical system.', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level2type = N'COLUMN';
GO
EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem', @level2name = N'IsIncomplete',                          @value = N'Indicates if the electrical system data is incomplete.', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level2type = N'COLUMN';
GO
EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem', @level2name = N'pkcTelemetryElectricalSystem',          @value = N'Defines the primary key for the TelemetryElectricalSystem table using the TeleElectricalSystemId column.', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level2type = N'CONSTRAINT';
GO
EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem', @level2name = N'fkTelemetryElectricalSystem_Telemetry', @value = N'Defines the relationship between the TelemetryElectricalSystem and Telemetry tables using the FlightTelemetryId column.', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level2type = N'CONSTRAINT';
GO
EXEC sp_addextendedproperty @level1name = N'TelemetryElectricalSystem', @level2name = N'dfTelemetryElectricalSystem_IsIncomplete', @value = N'Defines the default value for the IsIncomplete field as 0 (false).', @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level2type = N'CONSTRAINT';
GO