-- 13.a: Retrieve the list of all Databases.
SELECT name
FROM sys.databases;

-- 13.b: Display the byte size of all tables in databases.
-- Display byte size of all tables in the current database
SELECT t.NAME                 AS TableName
     , s.Name                 AS SchemaName
     , p.rows                 AS RowCounts
     , SUM(a.total_pages) * 8 AS TotalSpaceKB
FROM sys.tables                     t
    INNER JOIN sys.indexes          i
        ON t.OBJECT_ID = i.object_id
    INNER JOIN sys.partitions       p
        ON i.object_id = p.OBJECT_ID
           AND i.index_id = p.index_id
    INNER JOIN sys.allocation_units a
        ON p.partition_id = a.container_id
    LEFT OUTER JOIN sys.schemas     s
        ON t.schema_id = s.schema_id
WHERE t.NAME NOT LIKE 'dt%'
      AND t.is_ms_shipped = 0
      AND i.OBJECT_ID > 255
GROUP BY t.Name
       , s.Name
       , p.Rows
ORDER BY TotalSpaceKB DESC;

-- 13.c: List of tables with the number of records.
SELECT t.NAME AS TableName
     , p.rows AS RowCounts
FROM sys.tables t
    INNER JOIN sys.indexes i
        ON t.OBJECT_ID = i.object_id
    INNER JOIN sys.partitions p
        ON i.object_id = p.OBJECT_ID
           AND i.index_id = p.index_id
WHERE i.index_id <= 1
ORDER BY p.rows DESC;

-- 13.d: List of Primary Key and Foreign Key for the Whole Database.
SELECT OBJECT_NAME(f.parent_object_id)                            AS TableName
     , COL_NAME(fc.parent_object_id, fc.parent_column_id)         AS ColumnName
     , OBJECT_NAME(f.referenced_object_id)                        AS ReferenceTableName
     , COL_NAME(fc.referenced_object_id, fc.referenced_column_id) AS ReferenceColumnName
FROM sys.foreign_keys                  AS f
    INNER JOIN sys.foreign_key_columns AS fc
        ON f.object_id = fc.constraint_object_id;

-- 13.e: Get all Nullable columns of a table.
SELECT t.NAME AS TableName
     , c.NAME AS ColumnName
FROM sys.tables            t
    INNER JOIN sys.columns c
        ON t.OBJECT_ID = c.OBJECT_ID
WHERE c.is_nullable = 1
ORDER BY t.NAME
       , c.NAME;


-- 13.f: Get All tables that do not have a primary key.
SELECT t.NAME AS TableName
FROM sys.tables t
WHERE NOT EXISTS
(
    SELECT 1
    FROM sys.indexes i
    WHERE i.is_primary_key = 1
          AND i.OBJECT_ID = t.OBJECT_ID
);


-- 13.g: Get All tables that do not have an identity column.
SELECT t.NAME AS TableName
FROM sys.tables t
WHERE NOT EXISTS
(
    SELECT 1
    FROM sys.columns c
    WHERE is_identity = 1
          AND c.OBJECT_ID = t.OBJECT_ID
);

-- 13.h: Get the First Date of the Current Month.
SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()), 0) AS FirstDayOfMonth;

-- 13.i: Get the Last date of the Current month.
SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 1, -1) AS LastDayOfMonth;

-- 13.j: Get the First date of the next month.
SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 1, 0) AS FirstDayOfNextMonth;

-- 13.k: Get the Last date of the next month.
SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 2, -1) AS LastDayOfNextMonth;

-- 13.l: Get all the information from the tables (columns, data types, and constraints).
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS

-- 13.m: Get all columns containing any constraints.
SELECT *
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE;

-- 13.n: Get all tables that contain a view.
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.VIEW_TABLE_USAGE;

-- 13.o: Get all columns of a table that are used in views.
SELECT *
FROM INFORMATION_SCHEMA.VIEW_COLUMN_USAGE;