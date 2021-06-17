/*
 Navicat Premium Data Transfer

 Source Server         : 111
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : localhost:1433
 Source Catalog        : dinner
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 15/06/2021 14:16:37
*/


-- ----------------------------
-- Table structure for tb_desk
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_desk]') AND type IN ('U'))
	DROP TABLE [dbo].[tb_desk]
GO

CREATE TABLE [dbo].[tb_desk] (
  [num] varchar(5) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [seating] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tb_desk] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tb_desk
-- ----------------------------
INSERT INTO [dbo].[tb_desk] ([num], [seating]) VALUES (N'8001', N'6')
GO

INSERT INTO [dbo].[tb_desk] ([num], [seating]) VALUES (N'8002', N'6')
GO

INSERT INTO [dbo].[tb_desk] ([num], [seating]) VALUES (N'8003', N'8')
GO

INSERT INTO [dbo].[tb_desk] ([num], [seating]) VALUES (N'8004', N'2')
GO

INSERT INTO [dbo].[tb_desk] ([num], [seating]) VALUES (N'8006', N'8')
GO

INSERT INTO [dbo].[tb_desk] ([num], [seating]) VALUES (N'8008', N'8')
GO


-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[tb_menu]
GO

CREATE TABLE [dbo].[tb_menu] (
  [num] char(8) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sort_id] int  NOT NULL,
  [name] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] varchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [unit] varchar(4) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [unit_price] int  NOT NULL,
  [state] char(4) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tb_menu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122401', N'22', N'红烧狮子头', N'hsszt', N'盘', N'168', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122402', N'22', N'虾兵蝎将', N'xbxj', N'盘', N'128', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122403', N'23', N'雪蒙火焰山', N'xmhys', N'盘', N'16', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122404', N'22', N'水煮肉片', N'szrp', N'碗', N'66', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122405', N'24', N'纯生', N'cs', N'瓶', N'3', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122406', N'24', N'可乐', N'kl', N'瓶', N'6', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122407', N'26', N'水饺', N'sj', N'斤', N'16', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122408', N'22', N'清蒸鲤鱼', N'qzly', N'盘', N'68', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122801', N'22', N'干拌鲫鱼', N'gbjy', N'盘', N'56', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122802', N'22', N'干拌蚕蛹', N'gbcy', N'盘', N'98', N'销售')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'08011501', N'23', N'a', N'33', N'33', N'33', N'删除')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'08011502', N'23', N'f', N'f', N'f', N'3', N'删除')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'08011503', N'23', N'd', N'd', N'd', N'4', N'删除')
GO

INSERT INTO [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'08011504', N'22', N'小鱼', N'XY', N'盘', N'10', N'删除')
GO


-- ----------------------------
-- Table structure for tb_order_form
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_order_form]') AND type IN ('U'))
	DROP TABLE [dbo].[tb_order_form]
GO

CREATE TABLE [dbo].[tb_order_form] (
  [num] char(11) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [desk_num] varchar(5) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [datetime] datetime  NULL,
  [money] int  NOT NULL,
  [user_id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tb_order_form] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tb_order_form
-- ----------------------------
INSERT INTO [dbo].[tb_order_form] ([num], [desk_num], [datetime], [money], [user_id]) VALUES (N'20210614001', N'8001', N'2021-06-14 18:10:50.000', N'9', N'14')
GO

INSERT INTO [dbo].[tb_order_form] ([num], [desk_num], [datetime], [money], [user_id]) VALUES (N'20210615001', N'8002', N'2021-06-15 13:30:37.000', N'6', N'14')
GO


-- ----------------------------
-- Table structure for tb_order_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_order_item]') AND type IN ('U'))
	DROP TABLE [dbo].[tb_order_item]
GO

CREATE TABLE [dbo].[tb_order_item] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [order_form_num] char(11) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [menu_num] char(8) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [amount] int  NOT NULL,
  [total] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tb_order_item] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tb_order_item
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tb_order_item] ON
GO

INSERT INTO [dbo].[tb_order_item] ([id], [order_form_num], [menu_num], [amount], [total]) VALUES (N'70', N'20210614001', N'07122405', N'1', N'3')
GO

INSERT INTO [dbo].[tb_order_item] ([id], [order_form_num], [menu_num], [amount], [total]) VALUES (N'71', N'20210614001', N'07122406', N'1', N'6')
GO

INSERT INTO [dbo].[tb_order_item] ([id], [order_form_num], [menu_num], [amount], [total]) VALUES (N'72', N'20210615001', N'07122406', N'1', N'6')
GO

SET IDENTITY_INSERT [dbo].[tb_order_item] OFF
GO


-- ----------------------------
-- Table structure for tb_sort
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_sort]') AND type IN ('U'))
	DROP TABLE [dbo].[tb_sort]
GO

CREATE TABLE [dbo].[tb_sort] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [name] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tb_sort] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tb_sort
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tb_sort] ON
GO

INSERT INTO [dbo].[tb_sort] ([id], [name]) VALUES (N'22', N'炖炒类')
GO

INSERT INTO [dbo].[tb_sort] ([id], [name]) VALUES (N'23', N'凉菜类')
GO

INSERT INTO [dbo].[tb_sort] ([id], [name]) VALUES (N'24', N'酒水类')
GO

INSERT INTO [dbo].[tb_sort] ([id], [name]) VALUES (N'25', N'饮料类')
GO

INSERT INTO [dbo].[tb_sort] ([id], [name]) VALUES (N'26', N'主食类')
GO

INSERT INTO [dbo].[tb_sort] ([id], [name]) VALUES (N'27', N'汤类')
GO

SET IDENTITY_INSERT [dbo].[tb_sort] OFF
GO


-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND type IN ('U'))
	DROP TABLE [dbo].[tb_user]
GO

CREATE TABLE [dbo].[tb_user] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [name] varchar(8) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sex] char(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [birthday] datetime  NOT NULL,
  [id_card] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [password] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [freeze] char(4) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[tb_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tb_user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tb_user] ON
GO

INSERT INTO [dbo].[tb_user] ([id], [name], [sex], [birthday], [id_card], [password], [freeze]) VALUES (N'14', N'zrm', N'男', N'2000-01-01 00:00:00.000', N'111', N'518126zz', N'正常')
GO

SET IDENTITY_INSERT [dbo].[tb_user] OFF
GO


-- ----------------------------
-- View structure for v_order_item_and_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[v_order_item_and_menu]') AND type IN ('V'))
	DROP VIEW [dbo].[v_order_item_and_menu]
GO

CREATE VIEW [dbo].[v_order_item_and_menu] AS SELECT     dbo.tb_order_item.id, dbo.tb_order_item.order_form_num, dbo.tb_menu.name, dbo.tb_order_item.amount
FROM         dbo.tb_menu INNER JOIN
                      dbo.tb_order_item ON dbo.tb_menu.num = dbo.tb_order_item.menu_num
GO


-- ----------------------------
-- procedure structure for dt_generateansiname
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_generateansiname]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_generateansiname]
GO

CREATE PROCEDURE [dbo].[dt_generateansiname](@name varchar(255) output) 
as 
	declare @prologue varchar(20) 
	declare @indexstring varchar(20) 
	declare @index integer 
 
	set @prologue = 'MSDT-A-' 
	set @index = 1 
 
	while 1 = 1 
	begin 
		set @indexstring = cast(@index as varchar(20)) 
		set @name = @prologue + @indexstring 
		if not exists (select value from dtproperties where value = @name) 
			break 
		 
		set @index = @index + 1 
 
		if (@index = 10000) 
			goto TooMany 
	end 
 
Leave: 
 
	return 
 
TooMany: 
 
	set @name = 'DIAGRAM' 
	goto Leave
GO


-- ----------------------------
-- procedure structure for dt_adduserobject
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_adduserobject]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_adduserobject]
GO

CREATE PROCEDURE [dbo].[dt_adduserobject]
as
	set nocount on
	/*
	** Create the user object if it does not exist already
	*/
	begin transaction
		insert dbo.dtproperties (property) VALUES ('DtgSchemaOBJECT')
		update dbo.dtproperties set objectid=@@identity 
			where id=@@identity and property='DtgSchemaOBJECT'
	commit
	return @@identity
GO


-- ----------------------------
-- procedure structure for dt_setpropertybyid
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_setpropertybyid]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_setpropertybyid]
GO

CREATE PROCEDURE [dbo].[dt_setpropertybyid]
	@id int,
	@property varchar(64),
	@value varchar(255),
	@lvalue image
as
	set nocount on
	declare @uvalue nvarchar(255) 
	set @uvalue = convert(nvarchar(255), @value) 
	if exists (select * from dbo.dtproperties 
			where objectid=@id and property=@property)
	begin
		--
		-- bump the version count for this row as we update it
		--
		update dbo.dtproperties set value=@value, uvalue=@uvalue, lvalue=@lvalue, version=version+1
			where objectid=@id and property=@property
	end
	else
	begin
		--
		-- version count is auto-set to 0 on initial insert
		--
		insert dbo.dtproperties (property, objectid, value, uvalue, lvalue)
			values (@property, @id, @value, @uvalue, @lvalue)
	end
GO


-- ----------------------------
-- procedure structure for dt_getobjwithprop
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getobjwithprop]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getobjwithprop]
GO

CREATE PROCEDURE [dbo].[dt_getobjwithprop]
	@property varchar(30),
	@value varchar(255)
as
	set nocount on

	if (@property is null) or (@property = '')
	begin
		raiserror('Must specify a property name.',-1,-1)
		return (1)
	end

	if (@value is null)
		select objectid id from dbo.dtproperties
			where property=@property

	else
		select objectid id from dbo.dtproperties
			where property=@property and value=@value
GO


-- ----------------------------
-- procedure structure for dt_getpropertiesbyid
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getpropertiesbyid]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getpropertiesbyid]
GO

CREATE PROCEDURE [dbo].[dt_getpropertiesbyid]
	@id int,
	@property varchar(64)
as
	set nocount on

	if (@property is null) or (@property = '')
		select property, version, value, lvalue
			from dbo.dtproperties
			where  @id=objectid
	else
		select property, version, value, lvalue
			from dbo.dtproperties
			where  @id=objectid and @property=property
GO


-- ----------------------------
-- procedure structure for dt_setpropertybyid_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_setpropertybyid_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_setpropertybyid_u]
GO

CREATE PROCEDURE [dbo].[dt_setpropertybyid_u]
	@id int,
	@property varchar(64),
	@uvalue nvarchar(255),
	@lvalue image
as
	set nocount on
	-- 
	-- If we are writing the name property, find the ansi equivalent. 
	-- If there is no lossless translation, generate an ansi name. 
	-- 
	declare @avalue varchar(255) 
	set @avalue = null 
	if (@uvalue is not null) 
	begin 
		if (convert(nvarchar(255), convert(varchar(255), @uvalue)) = @uvalue) 
		begin 
			set @avalue = convert(varchar(255), @uvalue) 
		end 
		else 
		begin 
			if 'DtgSchemaNAME' = @property 
			begin 
				exec dbo.dt_generateansiname @avalue output 
			end 
		end 
	end 
	if exists (select * from dbo.dtproperties 
			where objectid=@id and property=@property)
	begin
		--
		-- bump the version count for this row as we update it
		--
		update dbo.dtproperties set value=@avalue, uvalue=@uvalue, lvalue=@lvalue, version=version+1
			where objectid=@id and property=@property
	end
	else
	begin
		--
		-- version count is auto-set to 0 on initial insert
		--
		insert dbo.dtproperties (property, objectid, value, uvalue, lvalue)
			values (@property, @id, @avalue, @uvalue, @lvalue)
	end
GO


-- ----------------------------
-- procedure structure for dt_getobjwithprop_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getobjwithprop_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getobjwithprop_u]
GO

CREATE PROCEDURE [dbo].[dt_getobjwithprop_u]
	@property varchar(30),
	@uvalue nvarchar(255)
as
	set nocount on

	if (@property is null) or (@property = '')
	begin
		raiserror('Must specify a property name.',-1,-1)
		return (1)
	end

	if (@uvalue is null)
		select objectid id from dbo.dtproperties
			where property=@property

	else
		select objectid id from dbo.dtproperties
			where property=@property and uvalue=@uvalue
GO


-- ----------------------------
-- procedure structure for dt_getpropertiesbyid_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getpropertiesbyid_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getpropertiesbyid_u]
GO

CREATE PROCEDURE [dbo].[dt_getpropertiesbyid_u]
	@id int,
	@property varchar(64)
as
	set nocount on

	if (@property is null) or (@property = '')
		select property, version, uvalue, lvalue
			from dbo.dtproperties
			where  @id=objectid
	else
		select property, version, uvalue, lvalue
			from dbo.dtproperties
			where  @id=objectid and @property=property
GO


-- ----------------------------
-- procedure structure for dt_dropuserobjectbyid
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_dropuserobjectbyid]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_dropuserobjectbyid]
GO

CREATE PROCEDURE [dbo].[dt_dropuserobjectbyid]
	@id int
as
	set nocount on
	delete from dbo.dtproperties where objectid=@id
GO


-- ----------------------------
-- procedure structure for dt_droppropertiesbyid
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_droppropertiesbyid]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_droppropertiesbyid]
GO

CREATE PROCEDURE [dbo].[dt_droppropertiesbyid]
	@id int,
	@property varchar(64)
as
	set nocount on

	if (@property is null) or (@property = '')
		delete from dbo.dtproperties where objectid=@id
	else
		delete from dbo.dtproperties 
			where objectid=@id and property=@property
GO


-- ----------------------------
-- procedure structure for dt_verstamp006
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_verstamp006]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_verstamp006]
GO

CREATE PROCEDURE [dbo].[dt_verstamp006]
as
	select 7000
GO


-- ----------------------------
-- procedure structure for dt_getpropertiesbyid_vcs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getpropertiesbyid_vcs]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getpropertiesbyid_vcs]
GO

CREATE PROCEDURE [dbo].[dt_getpropertiesbyid_vcs]
    @id       int,
    @property varchar(64),
    @value    varchar(255) = NULL OUT

as

    set nocount on

    select @value = (
        select value
                from dbo.dtproperties
                where @id=objectid and @property=property
                )
GO


-- ----------------------------
-- procedure structure for dt_displayoaerror
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_displayoaerror]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_displayoaerror]
GO

CREATE PROCEDURE [dbo].[dt_displayoaerror]
    @iObject int,
    @iresult int
as

set nocount on

declare @vchOutput      varchar(255)
declare @hr             int
declare @vchSource      varchar(255)
declare @vchDescription varchar(255)

    exec @hr = sp_OAGetErrorInfo @iObject, @vchSource OUT, @vchDescription OUT

    select @vchOutput = @vchSource + ': ' + @vchDescription
    raiserror (@vchOutput,16,-1)

    return
GO


-- ----------------------------
-- procedure structure for dt_adduserobject_vcs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_adduserobject_vcs]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_adduserobject_vcs]
GO

CREATE PROCEDURE [dbo].[dt_adduserobject_vcs]
    @vchProperty varchar(64)

as

set nocount on

declare @iReturn int
    /*
    ** Create the user object if it does not exist already
    */
    begin transaction
        select @iReturn = objectid from dbo.dtproperties where property = @vchProperty
        if @iReturn IS NULL
        begin
            insert dbo.dtproperties (property) VALUES (@vchProperty)
            update dbo.dtproperties set objectid=@@identity
                    where id=@@identity and property=@vchProperty
            select @iReturn = @@identity
        end
    commit
    return @iReturn
GO


-- ----------------------------
-- procedure structure for dt_addtosourcecontrol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_addtosourcecontrol]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_addtosourcecontrol]
GO

CREATE PROCEDURE [dbo].[dt_addtosourcecontrol]
    @vchSourceSafeINI varchar(255) = '',
    @vchProjectName   varchar(255) ='',
    @vchComment       varchar(255) ='',
    @vchLoginName     varchar(255) ='',
    @vchPassword      varchar(255) =''

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @iStreamObjectId int
select @iStreamObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

declare @vchDatabaseName varchar(255)
select @vchDatabaseName = db_name()

declare @iReturnValue int
select @iReturnValue = 0

declare @iPropertyObjectId int
declare @vchParentId varchar(255)

declare @iObjectCount int
select @iObjectCount = 0

    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError


    /* Create Project in SS */
    exec @iReturn = sp_OAMethod @iObjectId,
                                'AddProjectToSourceSafe',
                                NULL,
                                @vchSourceSafeINI,
                                @vchProjectName output,
                                @@SERVERNAME,
                                @vchDatabaseName,
                                @vchLoginName,
                                @vchPassword,
                                @vchComment


    if @iReturn <> 0 GOTO E_OAError

    exec @iReturn = sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT

    if @iReturn <> 0 GOTO E_OAError

    /* Set Database Properties */

    begin tran SetProperties

    /* add high level object */

    exec @iPropertyObjectId = dbo.dt_adduserobject_vcs 'VCSProjectID'

    select @vchParentId = CONVERT(varchar(255),@iPropertyObjectId)

    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSProjectID', @vchParentId , NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSProject' , @vchProjectName , NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSSourceSafeINI' , @vchSourceSafeINI , NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSSQLServer', @@SERVERNAME, NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSSQLDatabase', @vchDatabaseName, NULL

    if @@error <> 0 GOTO E_General_Error

    commit tran SetProperties

    declare cursorProcNames cursor for
        select convert(varchar(255), name) from sysobjects where type = 'P' and name not like 'dt_%'
    open cursorProcNames

    while 1 = 1
    begin
        declare @vchProcName varchar(255)
        fetch next from cursorProcNames into @vchProcName
        if @@fetch_status <> 0
            break

        select colid, text into #ProcLines
        from syscomments
        where id = object_id(@vchProcName)
        order by colid

        declare @iCurProcLine int
        declare @iProcLines int
        select @iCurProcLine = 1
        select @iProcLines = (select count(*) from #ProcLines)
        while @iCurProcLine <= @iProcLines
        begin
            declare @pos int
            select @pos = 1
            declare @iCurLineSize int
            select @iCurLineSize = len((select text from #ProcLines where colid = @iCurProcLine))
            while @pos <= @iCurLineSize
            begin
                declare @vchProcLinePiece varchar(255)
                select @vchProcLinePiece = convert(varchar(255),
                    substring((select text from #ProcLines where colid = @iCurProcLine),
                              @pos, 255 ))
                exec @iReturn = sp_OAMethod @iStreamObjectId, 'AddStream', @iReturnValue OUT, @vchProcLinePiece
                if @iReturn <> 0 GOTO E_OAError
                select @pos = @pos + 255
            end
            select @iCurProcLine = @iCurProcLine + 1
        end
        drop table #ProcLines

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'CheckIn_StoredProcedure',
                                    NULL,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sServerName = @@SERVERNAME,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sObjectName = @vchProcName,
                                    @sComment = @vchComment,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword,
                                    @iVCSFlags = 0,
                                    @iActionFlag = 0,
                                    @sStream = ''

        if @iReturn = 0 select @iObjectCount = @iObjectCount + 1

    end

CleanUp:
	close cursorProcNames
	deallocate cursorProcNames
    select @vchProjectName
    select @iObjectCount
    return

E_General_Error:
    /* this is an all or nothing.  No specific error messages */
    goto CleanUp

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- procedure structure for dt_checkinobject
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_checkinobject]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_checkinobject]
GO

CREATE PROCEDURE [dbo].[dt_checkinobject]
    @chObjectType  char(4),
    @vchObjectName varchar(255),
    @vchComment    varchar(255)='',
    @vchLoginName  varchar(255),
    @vchPassword   varchar(255)='',
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0,   /* 0 => AddFile, 1 => CheckIn */
    @txStream1     Text = '', /* There is a bug that if items are NULL they do not pass to OLE servers */
    @txStream2     Text = '',
    @txStream3     Text = ''


as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'


declare @iPropertyObjectId int
select @iPropertyObjectId  = 0

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        if @iActionFlag = 1
        begin
            /* Procedure Can have up to three streams
            Drop Stream, Create Stream, GRANT stream */

            begin tran compile_all

            /* try to compile the streams */
            exec (@txStream1)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream2)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream3)
            if @@error <> 0 GOTO E_Compile_Fail
        end

        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        if @iActionFlag = 1
        begin
            exec @iReturn = sp_OAMethod @iObjectId,
                                        'CheckIn_StoredProcedure',
                                        NULL,
                                        @sProjectName = @vchProjectName,
                                        @sSourceSafeINI = @vchSourceSafeINI,
                                        @sServerName = @vchServerName,
                                        @sDatabaseName = @vchDatabaseName,
                                        @sObjectName = @vchObjectName,
                                        @sComment = @vchComment,
                                        @sLoginName = @vchLoginName,
                                        @sPassword = @vchPassword,
                                        @iVCSFlags = @iVCSFlags,
                                        @iActionFlag = @iActionFlag,
                                        @sStream = @txStream2
        end
        else
        begin
            declare @iStreamObjectId int
            declare @iReturnValue int

            exec @iReturn = sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT
            if @iReturn <> 0 GOTO E_OAError

            select colid, text into #ProcLines
            from syscomments
            where id = object_id(@vchObjectName)
            order by colid

            declare @iCurProcLine int
            declare @iProcLines int
            select @iCurProcLine = 1
            select @iProcLines = (select count(*) from #ProcLines)
            while @iCurProcLine <= @iProcLines
            begin
                declare @pos int
                select @pos = 1
                declare @iCurLineSize int
                select @iCurLineSize = len((select text from #ProcLines where colid = @iCurProcLine))
                while @pos <= @iCurLineSize
                begin
                    declare @vchProcLinePiece varchar(255)
                    select @vchProcLinePiece = convert(varchar(255),
                        substring((select text from #ProcLines where colid = @iCurProcLine),
                                  @pos, 255 ))
                    exec @iReturn = sp_OAMethod @iStreamObjectId, 'AddStream', @iReturnValue OUT, @vchProcLinePiece
                    if @iReturn <> 0 GOTO E_OAError
                    select @pos = @pos + 255
                end
                select @iCurProcLine = @iCurProcLine + 1
            end
            drop table #ProcLines

            exec @iReturn = sp_OAMethod @iObjectId,
                                        'CheckIn_StoredProcedure',
                                        NULL,
                                        @sProjectName = @vchProjectName,
                                        @sSourceSafeINI = @vchSourceSafeINI,
                                        @sServerName = @vchServerName,
                                        @sDatabaseName = @vchDatabaseName,
                                        @sObjectName = @vchObjectName,
                                        @sComment = @vchComment,
                                        @sLoginName = @vchLoginName,
                                        @sPassword = @vchPassword,
                                        @iVCSFlags = @iVCSFlags,
                                        @iActionFlag = @iActionFlag,
                                        @sStream = ''
        end

        if @iReturn <> 0 GOTO E_OAError

        if @iActionFlag = 1
        begin
            commit tran compile_all
            if @@error <> 0 GOTO E_Compile_Fail
        end

    end

CleanUp:
    return

E_Compile_Fail:
    declare @lerror int
    select @lerror = @@error
    rollback tran compile_all
    RAISERROR (@lerror,16,-1)
    goto CleanUp

E_OAError:
    if @iActionFlag = 1 rollback tran compile_all
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- procedure structure for dt_checkoutobject
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_checkoutobject]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_checkoutobject]
GO

CREATE PROCEDURE [dbo].[dt_checkoutobject]
    @chObjectType  char(4),
    @vchObjectName varchar(255),
    @vchComment    varchar(255),
    @vchLoginName  varchar(255),
    @vchPassword   varchar(255),
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0/* 0 => Checkout, 1 => GetLatest, 2 => UndoCheckOut */

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

declare @iReturnValue int
select @iReturnValue = 0

declare @vchTempText varchar(255)

/* this is for our strings */
declare @iStreamObjectId int
select @iStreamObjectId = 0

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        /* Procedure Can have up to three streams
           Drop Stream, Create Stream, GRANT stream */

        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'CheckOut_StoredProcedure',
                                    NULL,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sObjectName = @vchObjectName,
                                    @sServerName = @vchServerName,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sComment = @vchComment,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword,
                                    @iVCSFlags = @iVCSFlags,
                                    @iActionFlag = @iActionFlag

        if @iReturn <> 0 GOTO E_OAError


        exec @iReturn = sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #commenttext (id int identity, sourcecode varchar(255))


        select @vchTempText = 'STUB'
        while @vchTempText IS NOT NULL
        begin
            exec @iReturn = sp_OAMethod @iStreamObjectId, 'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError

            if (@vchTempText IS NOT NULL) insert into #commenttext (sourcecode) select @vchTempText
        end

        select 'VCS'=sourcecode from #commenttext order by id
        select 'SQL'=text from syscomments where id = object_id(@vchObjectName) order by colid

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- procedure structure for dt_isundersourcecontrol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_isundersourcecontrol]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_isundersourcecontrol]
GO

CREATE PROCEDURE [dbo].[dt_isundersourcecontrol]
    @vchLoginName varchar(255) = '',
    @vchPassword  varchar(255) = '',
    @iWhoToo      int = 0 /* 0 => Just check project; 1 => get list of objs */

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

declare @iReturnValue int
select @iReturnValue = 0

declare @iStreamObjectId int
select @iStreamObjectId   = 0

declare @vchTempText varchar(255)

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if (@vchProjectName IS NULL) or (@vchSourceSafeINI  IS NULL) or (@vchServerName IS NULL) or (@vchDatabaseName IS NULL)
    begin
        RAISERROR('Not Under Source Control',16,-1)
        return
    end

    if @iWhoToo = 1
    begin

        /* Get List of Procs in the project */
        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'GetListOfObjects',
                                    NULL,
                                    @vchProjectName,
                                    @vchSourceSafeINI,
                                    @vchServerName,
                                    @vchDatabaseName,
                                    @vchLoginName,
                                    @vchPassword

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #ObjectList (id int identity, vchObjectlist varchar(255))

        select @vchTempText = 'STUB'
        while @vchTempText IS NOT NULL
        begin
            exec @iReturn = sp_OAMethod @iStreamObjectId, 'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError

            if (@vchTempText IS NOT NULL) insert into #ObjectList (vchObjectlist ) select @vchTempText
        end

        select vchObjectlist from #ObjectList order by id
    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- procedure structure for dt_removefromsourcecontrol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_removefromsourcecontrol]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_removefromsourcecontrol]
GO

CREATE PROCEDURE [dbo].[dt_removefromsourcecontrol]

as

    set nocount on

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    exec dbo.dt_droppropertiesbyid @iPropertyObjectId, null

    /* -1 is returned by dt_droppopertiesbyid */
    if @@error <> 0 and @@error <> -1 return 1

    return 0
GO


-- ----------------------------
-- procedure structure for dt_validateloginparams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_validateloginparams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_validateloginparams]
GO

CREATE PROCEDURE [dbo].[dt_validateloginparams]
    @vchLoginName  varchar(255),
    @vchPassword   varchar(255)
as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchSourceSafeINI varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT

    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError

    exec @iReturn = sp_OAMethod @iObjectId,
                                'ValidateLoginParams',
                                NULL,
                                @sSourceSafeINI = @vchSourceSafeINI,
                                @sLoginName = @vchLoginName,
                                @sPassword = @vchPassword
    if @iReturn <> 0 GOTO E_OAError

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- procedure structure for dt_vcsenabled
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_vcsenabled]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_vcsenabled]
GO

CREATE PROCEDURE [dbo].[dt_vcsenabled]

as

set nocount on

declare @iObjectId int
select @iObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

    declare @iReturn int
    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 raiserror('', 16, -1) /* Can't Load Helper DLLC */
GO


-- ----------------------------
-- procedure structure for dt_whocheckedout
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_whocheckedout]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_whocheckedout]
GO

CREATE PROCEDURE [dbo].[dt_whocheckedout]
        @chObjectType  char(4),
        @vchObjectName varchar(255),
        @vchLoginName  varchar(255),
        @vchPassword   varchar(255)

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        declare @vchReturnValue varchar(255)
        select @vchReturnValue = ''

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'WhoCheckedOut',
                                    @vchReturnValue OUT,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sObjectName = @vchObjectName,
                                    @sServerName = @vchServerName,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword

        if @iReturn <> 0 GOTO E_OAError

        select @vchReturnValue

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- procedure structure for dt_addtosourcecontrol_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_addtosourcecontrol_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_addtosourcecontrol_u]
GO

CREATE PROCEDURE [dbo].[dt_addtosourcecontrol_u]
    @vchSourceSafeINI nvarchar(255) = '',
    @vchProjectName   nvarchar(255) ='',
    @vchComment       nvarchar(255) ='',
    @vchLoginName     nvarchar(255) ='',
    @vchPassword      nvarchar(255) =''

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @iStreamObjectId int
select @iStreamObjectId = 0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'

declare @vchDatabaseName varchar(255)
select @vchDatabaseName = db_name()

declare @iReturnValue int
select @iReturnValue = 0

declare @iPropertyObjectId int
declare @vchParentId nvarchar(255)

declare @iObjectCount int
select @iObjectCount = 0

    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError


    /* Create Project in SS */
    exec @iReturn = sp_OAMethod @iObjectId,
                                'AddProjectToSourceSafe',
                                NULL,
                                @vchSourceSafeINI,
                                @vchProjectName output,
                                @@SERVERNAME,
                                @vchDatabaseName,
                                @vchLoginName,
                                @vchPassword,
                                @vchComment


    if @iReturn <> 0 GOTO E_OAError

    exec @iReturn = sp_OAGetProperty @iObjectId, N'GetStreamObject', @iStreamObjectId OUT

    if @iReturn <> 0 GOTO E_OAError

    /* Set Database Properties */

    begin tran SetProperties

    /* add high level object */

    exec @iPropertyObjectId = dbo.dt_adduserobject_vcs 'VCSProjectID'

    select @vchParentId = CONVERT(nvarchar(255),@iPropertyObjectId)

    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSProjectID', @vchParentId , NULL
    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSProject' , @vchProjectName , NULL
    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSSourceSafeINI' , @vchSourceSafeINI , NULL
    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSSQLServer', @@SERVERNAME, NULL
    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSSQLDatabase', @vchDatabaseName, NULL

    if @@error <> 0 GOTO E_General_Error

    commit tran SetProperties

    declare cursorProcNames cursor for
        select convert(nvarchar(255), name) from sysobjects where type = N'P' and name not like N'dt_%'
    open cursorProcNames

    while 1 = 1
    begin
        declare @vchProcName nvarchar(255)
        fetch next from cursorProcNames into @vchProcName
        if @@fetch_status <> 0
            break

        select colid, text into #ProcLines
        from syscomments
        where id = object_id(@vchProcName)
        order by colid

        declare @iCurProcLine int
        declare @iProcLines int
        select @iCurProcLine = 1
        select @iProcLines = (select count(*) from #ProcLines)
        while @iCurProcLine <= @iProcLines
        begin
            declare @pos int
            select @pos = 1
            declare @iCurLineSize int
            select @iCurLineSize = len((select text from #ProcLines where colid = @iCurProcLine))
            while @pos <= @iCurLineSize
            begin
                declare @vchProcLinePiece nvarchar(255)
                select @vchProcLinePiece = convert(nvarchar(255),
                    substring((select text from #ProcLines where colid = @iCurProcLine),
                              @pos, 255 ))
                exec @iReturn = sp_OAMethod @iStreamObjectId, N'AddStream', @iReturnValue OUT, @vchProcLinePiece
                if @iReturn <> 0 GOTO E_OAError
                select @pos = @pos + 255
            end
            select @iCurProcLine = @iCurProcLine + 1
        end
        drop table #ProcLines

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'CheckIn_StoredProcedure',
                                    NULL,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sServerName = @@SERVERNAME,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sObjectName = @vchProcName,
                                    @sComment = @vchComment,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword,
                                    @iVCSFlags = 0,
                                    @iActionFlag = 0,
                                    @sStream = ''

        if @iReturn = 0 select @iObjectCount = @iObjectCount + 1

    end

CleanUp:
	close cursorProcNames
	deallocate cursorProcNames
    select @vchProjectName
    select @iObjectCount
    return

E_General_Error:
    /* this is an all or nothing.  No specific error messages */
    goto CleanUp

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- procedure structure for dt_checkinobject_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_checkinobject_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_checkinobject_u]
GO

CREATE PROCEDURE [dbo].[dt_checkinobject_u]
    @chObjectType  char(4),
    @vchObjectName nvarchar(255),
    @vchComment    nvarchar(255)='',
    @vchLoginName  nvarchar(255),
    @vchPassword   nvarchar(255)='',
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0,   /* 0 => AddFile, 1 => CheckIn */
    @txStream1     Text = '', /* There is a bug that if items are NULL they do not pass to OLE servers */
    @txStream2     Text = '',
    @txStream3     Text = ''


as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'


declare @iPropertyObjectId int
select @iPropertyObjectId  = 0

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   nvarchar(255)
    declare @vchSourceSafeINI nvarchar(255)
    declare @vchServerName    nvarchar(255)
    declare @vchDatabaseName  nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        if @iActionFlag = 1
        begin
            /* Procedure Can have up to three streams
            Drop Stream, Create Stream, GRANT stream */

            begin tran compile_all

            /* try to compile the streams */
            exec (@txStream1)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream2)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream3)
            if @@error <> 0 GOTO E_Compile_Fail
        end

        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        if @iActionFlag = 1
        begin
            exec @iReturn = sp_OAMethod @iObjectId,
                                        N'CheckIn_StoredProcedure',
                                        NULL,
                                        @sProjectName = @vchProjectName,
                                        @sSourceSafeINI = @vchSourceSafeINI,
                                        @sServerName = @vchServerName,
                                        @sDatabaseName = @vchDatabaseName,
                                        @sObjectName = @vchObjectName,
                                        @sComment = @vchComment,
                                        @sLoginName = @vchLoginName,
                                        @sPassword = @vchPassword,
                                        @iVCSFlags = @iVCSFlags,
                                        @iActionFlag = @iActionFlag,
                                        @sStream = @txStream2
        end
        else
        begin
            declare @iStreamObjectId int
            declare @iReturnValue int

            exec @iReturn = sp_OAGetProperty @iObjectId, N'GetStreamObject', @iStreamObjectId OUT
            if @iReturn <> 0 GOTO E_OAError

            select colid, text into #ProcLines
            from syscomments
            where id = object_id(@vchObjectName)
            order by colid

            declare @iCurProcLine int
            declare @iProcLines int
            select @iCurProcLine = 1
            select @iProcLines = (select count(*) from #ProcLines)
            while @iCurProcLine <= @iProcLines
            begin
                declare @pos int
                select @pos = 1
                declare @iCurLineSize int
                select @iCurLineSize = len((select text from #ProcLines where colid = @iCurProcLine))
                while @pos <= @iCurLineSize
                begin
                    declare @vchProcLinePiece nvarchar(255)
                    select @vchProcLinePiece = convert(nvarchar(255),
                        substring((select text from #ProcLines where colid = @iCurProcLine),
                                  @pos, 255 ))
                    exec @iReturn = sp_OAMethod @iStreamObjectId, N'AddStream', @iReturnValue OUT, @vchProcLinePiece
                    if @iReturn <> 0 GOTO E_OAError
                    select @pos = @pos + 255
                end
                select @iCurProcLine = @iCurProcLine + 1
            end
            drop table #ProcLines

            exec @iReturn = sp_OAMethod @iObjectId,
                                        N'CheckIn_StoredProcedure',
                                        NULL,
                                        @sProjectName = @vchProjectName,
                                        @sSourceSafeINI = @vchSourceSafeINI,
                                        @sServerName = @vchServerName,
                                        @sDatabaseName = @vchDatabaseName,
                                        @sObjectName = @vchObjectName,
                                        @sComment = @vchComment,
                                        @sLoginName = @vchLoginName,
                                        @sPassword = @vchPassword,
                                        @iVCSFlags = @iVCSFlags,
                                        @iActionFlag = @iActionFlag,
                                        @sStream = ''
        end

        if @iReturn <> 0 GOTO E_OAError

        if @iActionFlag = 1
        begin
            commit tran compile_all
            if @@error <> 0 GOTO E_Compile_Fail
        end

    end

CleanUp:
    return

E_Compile_Fail:
    declare @lerror int
    select @lerror = @@error
    rollback tran compile_all
    RAISERROR (@lerror,16,-1)
    goto CleanUp

E_OAError:
    if @iActionFlag = 1 rollback tran compile_all
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- procedure structure for dt_checkoutobject_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_checkoutobject_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_checkoutobject_u]
GO

CREATE PROCEDURE [dbo].[dt_checkoutobject_u]
    @chObjectType  char(4),
    @vchObjectName nvarchar(255),
    @vchComment    nvarchar(255),
    @vchLoginName  nvarchar(255),
    @vchPassword   nvarchar(255),
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0/* 0 => Checkout, 1 => GetLatest, 2 => UndoCheckOut */

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'

declare @iReturnValue int
select @iReturnValue = 0

declare @vchTempText nvarchar(255)

/* this is for our strings */
declare @iStreamObjectId int
select @iStreamObjectId = 0

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   nvarchar(255)
    declare @vchSourceSafeINI nvarchar(255)
    declare @vchServerName    nvarchar(255)
    declare @vchDatabaseName  nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        /* Procedure Can have up to three streams
           Drop Stream, Create Stream, GRANT stream */

        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAMethod @iObjectId,
                                    N'CheckOut_StoredProcedure',
                                    NULL,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sObjectName = @vchObjectName,
                                    @sServerName = @vchServerName,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sComment = @vchComment,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword,
                                    @iVCSFlags = @iVCSFlags,
                                    @iActionFlag = @iActionFlag

        if @iReturn <> 0 GOTO E_OAError


        exec @iReturn = sp_OAGetProperty @iObjectId, N'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #commenttext (id int identity, sourcecode nvarchar(255))


        select @vchTempText = N'STUB'
        while @vchTempText IS NOT NULL
        begin
            exec @iReturn = sp_OAMethod @iStreamObjectId, N'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError

            if (@vchTempText IS NOT NULL) insert into #commenttext (sourcecode) select @vchTempText
        end

        select N'VCS'=sourcecode from #commenttext order by id
        select N'SQL'=text from syscomments where id = object_id(@vchObjectName) order by colid

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- procedure structure for dt_displayoaerror_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_displayoaerror_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_displayoaerror_u]
GO

CREATE PROCEDURE [dbo].[dt_displayoaerror_u]
    @iObject int,
    @iresult int
as

set nocount on

declare @vchOutput      nvarchar(255)
declare @hr             int
declare @vchSource      nvarchar(255)
declare @vchDescription nvarchar(255)

    exec @hr = sp_OAGetErrorInfo @iObject, @vchSource OUT, @vchDescription OUT

    select @vchOutput = @vchSource + ': ' + @vchDescription
    raiserror (@vchOutput,16,-1)

    return
GO


-- ----------------------------
-- procedure structure for dt_getpropertiesbyid_vcs_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getpropertiesbyid_vcs_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getpropertiesbyid_vcs_u]
GO

CREATE PROCEDURE [dbo].[dt_getpropertiesbyid_vcs_u]
    @id       int,
    @property varchar(64),
    @value    nvarchar(255) = NULL OUT

as

    set nocount on

    select @value = (
        select uvalue
                from dbo.dtproperties
                where @id=objectid and @property=property
                )
GO


-- ----------------------------
-- procedure structure for dt_isundersourcecontrol_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_isundersourcecontrol_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_isundersourcecontrol_u]
GO

CREATE PROCEDURE [dbo].[dt_isundersourcecontrol_u]
    @vchLoginName nvarchar(255) = '',
    @vchPassword  nvarchar(255) = '',
    @iWhoToo      int = 0 /* 0 => Just check project; 1 => get list of objs */

as

	set nocount on

	declare @iReturn int
	declare @iObjectId int
	select @iObjectId = 0

	declare @VSSGUID nvarchar(100)
	select @VSSGUID = N'SQLVersionControl.VCS_SQL'

	declare @iReturnValue int
	select @iReturnValue = 0

	declare @iStreamObjectId int
	select @iStreamObjectId   = 0

	declare @vchTempText nvarchar(255)

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   nvarchar(255)
    declare @vchSourceSafeINI nvarchar(255)
    declare @vchServerName    nvarchar(255)
    declare @vchDatabaseName  nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if (@vchProjectName IS NULL) or (@vchSourceSafeINI  IS NULL) or (@vchServerName IS NULL) or (@vchDatabaseName IS NULL)
    begin
        RAISERROR(N'Not Under Source Control',16,-1)
        return
    end

    if @iWhoToo = 1
    begin

        /* Get List of Procs in the project */
        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAMethod @iObjectId,
                                    N'GetListOfObjects',
                                    NULL,
                                    @vchProjectName,
                                    @vchSourceSafeINI,
                                    @vchServerName,
                                    @vchDatabaseName,
                                    @vchLoginName,
                                    @vchPassword

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAGetProperty @iObjectId, N'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #ObjectList (id int identity, vchObjectlist nvarchar(255))

        select @vchTempText = N'STUB'
        while @vchTempText IS NOT NULL
        begin
            exec @iReturn = sp_OAMethod @iStreamObjectId, N'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError

            if (@vchTempText IS NOT NULL) insert into #ObjectList (vchObjectlist ) select @vchTempText
        end

        select vchObjectlist from #ObjectList order by id
    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- procedure structure for dt_validateloginparams_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_validateloginparams_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_validateloginparams_u]
GO

CREATE PROCEDURE [dbo].[dt_validateloginparams_u]
    @vchLoginName  nvarchar(255),
    @vchPassword   nvarchar(255)
as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchSourceSafeINI nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT

    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError

    exec @iReturn = sp_OAMethod @iObjectId,
                                N'ValidateLoginParams',
                                NULL,
                                @sSourceSafeINI = @vchSourceSafeINI,
                                @sLoginName = @vchLoginName,
                                @sPassword = @vchPassword
    if @iReturn <> 0 GOTO E_OAError

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- procedure structure for dt_whocheckedout_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_whocheckedout_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_whocheckedout_u]
GO

CREATE PROCEDURE [dbo].[dt_whocheckedout_u]
        @chObjectType  char(4),
        @vchObjectName nvarchar(255),
        @vchLoginName  nvarchar(255),
        @vchPassword   nvarchar(255)

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   nvarchar(255)
    declare @vchSourceSafeINI nvarchar(255)
    declare @vchServerName    nvarchar(255)
    declare @vchDatabaseName  nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        declare @vchReturnValue nvarchar(255)
        select @vchReturnValue = ''

        exec @iReturn = sp_OAMethod @iObjectId,
                                    N'WhoCheckedOut',
                                    @vchReturnValue OUT,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sObjectName = @vchObjectName,
                                    @sServerName = @vchServerName,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword

        if @iReturn <> 0 GOTO E_OAError

        select @vchReturnValue

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- Primary Key structure for table tb_desk
-- ----------------------------
ALTER TABLE [dbo].[tb_desk] ADD CONSTRAINT [PK_TB_DESK] PRIMARY KEY CLUSTERED ([num])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tb_menu
-- ----------------------------
ALTER TABLE [dbo].[tb_menu] ADD CONSTRAINT [PK_TB_MENU] PRIMARY KEY CLUSTERED ([num])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tb_order_form
-- ----------------------------
ALTER TABLE [dbo].[tb_order_form] ADD CONSTRAINT [PK_TB_ORDER_FORM] PRIMARY KEY CLUSTERED ([num])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tb_order_item
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tb_order_item]', RESEED, 72)
GO


-- ----------------------------
-- Primary Key structure for table tb_order_item
-- ----------------------------
ALTER TABLE [dbo].[tb_order_item] ADD CONSTRAINT [PK_TB_ITEMIZE] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tb_sort
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tb_sort]', RESEED, 27)
GO


-- ----------------------------
-- Primary Key structure for table tb_sort
-- ----------------------------
ALTER TABLE [dbo].[tb_sort] ADD CONSTRAINT [PK_TB_SORT] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tb_user
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tb_user]', RESEED, 14)
GO


-- ----------------------------
-- Primary Key structure for table tb_user
-- ----------------------------
ALTER TABLE [dbo].[tb_user] ADD CONSTRAINT [PK_TB_USER] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table tb_order_form
-- ----------------------------
ALTER TABLE [dbo].[tb_order_form] ADD CONSTRAINT [FK_TB_ORDER_REFERENCE_TB_DESK] FOREIGN KEY ([desk_num]) REFERENCES [dbo].[tb_desk] ([num]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tb_order_form] ADD CONSTRAINT [FK_TB_ORDER_REFERENCE_TB_USER] FOREIGN KEY ([user_id]) REFERENCES [dbo].[tb_user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tb_order_item
-- ----------------------------
ALTER TABLE [dbo].[tb_order_item] ADD CONSTRAINT [FK_TB_ITEMI_REFERENCE_TB_ORDER] FOREIGN KEY ([order_form_num]) REFERENCES [dbo].[tb_order_form] ([num]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tb_order_item] ADD CONSTRAINT [FK_TB_ITEMI_REFERENCE_TB_MENU] FOREIGN KEY ([menu_num]) REFERENCES [dbo].[tb_menu] ([num]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

