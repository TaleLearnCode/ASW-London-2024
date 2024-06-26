﻿MERGE dbo.Airport AS TARGET
USING (VALUES ('AMS', 'EHAM', 'NL',   -3, 53.2,         4.765,    1, 'Amsterdam Schiphol Airport',                        'Haarlemmermeer'),
              ('ATL', 'KATL', 'US',  313, 33.636667,  -84.428056, 1, 'Hartsfield-Jackson Atlanta International Airport',  'Atlanta, GA'),
              ('BOM', 'VABB', 'IN',   11, 19.088611,   72.868056, 1, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai, Maharashtra'),
              ('BOS', 'KBOS', 'US',    6, 42.363056,  -71.006389, 1, 'Logan International Airport',                       'Boston, MA'),
              ('CDG', 'LFPG', 'FR',  119, 49.009722,    2.547778, 1, 'Charles de Gaulle International Airport',           'Paris, Île-de-France'),
              ('DEL', 'CIDP', 'IN',  237, 28.568611,   77.112222, 1, 'Indira Gandhi International Airport',               'Delhi'),
              ('DTW', 'KDTW', 'US',  197, 42.2125,    -83.353333, 1, 'Detroit Metropolitan Wayne County Airport',         'Detroit, MI'),
              ('IAD', 'KIAD', 'US',   95, 38.944444,  -77.455833, 1, 'Washington Dulles International Airport',           'Washington, D.C.'),
              ('JFK', 'KJFK', 'US',    4, 40.639722,  -73.778889, 1, 'John F. Kennedy International Airport',             'New York, NY'),
              ('LAS', 'KLAS', 'US',  665, 36.08,     -115.152222, 1, 'Harry Reid International Airport',                  'Las Vegas, NV'),
              ('LAX', 'KLAX', 'US',   39, 33.9425,   -118.408056, 1, 'Los Angeles International Airport',                 'Los Angeles, CA'),
              ('LHR', 'EGLL', 'GB',   25, 51.4775,     -0.461389, 1, 'Heathrow Airport',                                  'London'),
              ('LOS', 'DNMM', 'NG',   41, 6.577222,     3.321111, 1, 'Murtala Mohammed International Airport',            'Lagos'),
              ('MCO', 'KMCO', 'US',   29, 28.429444,  -81.308889, 1, 'Orlando International Airport',                     'Orlando, FL'),
              ('MIA', 'KMIA', 'US',    3, 25.793333,  -80.290556, 1, 'Miami International Airport',                       'Miami, FL'),
              ('MSP', 'KMSP', 'US',  256, 44.881944,  -93.221667, 1, 'Minneapolis-Saint Paul International Airport',      'Minneapolis, MN'),
              ('NBO', 'HKJK', 'KE', 1624, -1.318611,   36.925833, 1, 'Jomo Kenyatta International Airport',               'Nairobi'),
              ('NCE', 'LFMN', 'FR',    4, 43.665278,    7.215,    1, 'Côte d''Azur International Airport',                'Nice, Provence-Alpes-Côte d''Azur'),
              ('SEA', 'KSEA', 'US',  132, 47.448889, -122.309444, 1, 'Seattle-Tacoma International Airport',              'Seattle, WA'),
              ('SFO', 'KSFO', 'US',    4, 37.618889, -122.375,    1, 'San Francisco International Airport',               'San Francisco, CA'),
              ('SLC', 'KSLC', 'US', 1288, 40.788333, -111.977778, 1, 'Salt Lake City International Airport',              'Salt Lake City, UT'),
              ('TPA', 'KTPA', 'US',    8, 27.979722,  -82.534722, 1, 'Tampa International Airport',                       'Tampa, FL'),
              ('SDF', 'KSDF', 'US',  153, 38.174167,  -85.736389, 1, 'Louisville Muhammad Ali International Airport',     'Louisville, KY'))
AS SOURCE (IATACode,
           ICAOCode,
           CountryCode,
           Elevation,
           Latitude,
           Longitude,
           IsActive,
           AirportName,
           CityName)
ON TARGET.IATACode = SOURCE.IATACode
WHEN MATCHED THEN UPDATE SET TARGET.ICAOCode    = SOURCE.ICAOCode,
                             TARGET.CountryCode = SOURCE.CountryCode,
                             TARGET.Elevation   = SOURCE.Elevation,
                             TARGET.Latitude    = SOURCE.Latitude,
                             TARGET.Longitude   = SOURCE.Longitude,
                             TARGET.IsActive    = SOURCE.IsActive,
                             TARGET.AirportName = SOURCE.AirportName,
                             TARGET.CityName    = SOURCE.CityName
WHEN NOT MATCHED BY TARGET THEN INSERT (IATACode,
                                       ICAOCode,
                                       CountryCode,
                                       Elevation,
                                       Latitude,
                                       Longitude,
                                       IsActive,
                                       AirportName,
                                       CityName)
                               VALUES (SOURCE.IATACode,
                                       SOURCE.ICAOCode,
                                       SOURCE.CountryCode,
                                       SOURCE.Elevation,
                                       SOURCE.Latitude,
                                       SOURCE.Longitude,
                                       SOURCE.IsActive,
                                       SOURCE.AirportName,
                                       SOURCE.CityName)
WHEN NOT MATCHED BY SOURCE THEN DELETE;