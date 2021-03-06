USE [dl_sac]
GO
/****** Object:  StoredProcedure [dbo].[insert_csv_files]    Script Date: 18/07/2021 00:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

ALTER PROCEDURE [dbo].[insert_csv_files] AS

BEGIN

DELETE FROM [dbo].dim_motivosContato

BULK INSERT [dbo].dim_motivosContato

FROM 'C:\Users\55219\Desktop\BaseDados\motivos_contato.csv'
WITH
(
    FIRSTROW=2,
    FIELDTERMINATOR=';',
    ROWTERMINATOR='\n'
)

DELETE FROM [dbo].fato_ocorrencias

BULK INSERT [dbo].fato_ocorrencias

FROM 'C:\Users\55219\Desktop\BaseDados\ocorrencias.csv'
WITH
(
    FIRSTROW=2,
    FIELDTERMINATOR=';',
    ROWTERMINATOR='\n'
)

DELETE FROM [dbo].dim_SLA


BULK INSERT [dbo].dim_SLA

FROM 'C:\Users\55219\Desktop\BaseDados\sla_config.csv'
WITH
(
    FIRSTROW=2,
    FIELDTERMINATOR=';',
    ROWTERMINATOR='\n'
)

DELETE FROM [dbo].dim_Status

BULK INSERT [dbo].dim_Status

FROM 'C:\Users\55219\Desktop\BaseDados\status.csv'
WITH
(
    FIRSTROW=2,
    FIELDTERMINATOR=';',
    ROWTERMINATOR='\n'
)

DELETE FROM [dbo].f_tempoOcorrencias

BULK INSERT [dbo].f_tempoOcorrencias

FROM 'C:\Users\55219\Desktop\BaseDados\tempo_ocorrencias.csv'
WITH
(
    FIRSTROW=2,
    FIELDTERMINATOR=';',
    ROWTERMINATOR='\n'
)

DELETE FROM [dbo].dim_usuario

BULK INSERT [dbo].dim_usuario

FROM 'C:\Users\55219\Desktop\BaseDados\usuarios.csv'
WITH
(
    FIRSTROW=2,
    FIELDTERMINATOR=';',
    ROWTERMINATOR='\n'
)

END