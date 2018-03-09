USE [HrApp]
GO
/****** Object:  Table [dbo].[App]    Script Date: 03/09/2018 23:16:27 ******/
SET IDENTITY_INSERT [dbo].[App] ON
INSERT [dbo].[App] ([Id], [AppName], [AppCode], [IsDelete]) VALUES (1, N'人力资源管理系统', N'HRApp', 0)
INSERT [dbo].[App] ([Id], [AppName], [AppCode], [IsDelete]) VALUES (2, N'物流资源管理系统', N'ERPApp', 0)
INSERT [dbo].[App] ([Id], [AppName], [AppCode], [IsDelete]) VALUES (4, N'后台管理系统', N'BackgroundApp', 0)
INSERT [dbo].[App] ([Id], [AppName], [AppCode], [IsDelete]) VALUES (5, N'汉字拼音纠正投票管理系统', N'ChineseSpellNameCorrectApp', 0)
SET IDENTITY_INSERT [dbo].[App] OFF
/****** Object:  Table [dbo].[CategoryItems]    Script Date: 03/09/2018 23:16:28 ******/
SET IDENTITY_INSERT [dbo].[CategoryItems] ON
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (1, N'启用redis缓存', -1, N'-1', N'UsingRedisCache', 0, 0, N'true', 0, CAST(0x0000A85E01298373 AS DateTime), 0, N'是否启用redis缓存存储系统常规配置')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (2, N'redis缓存丢失查询数据源', -1, N'-1', N'RedisLoseDataUsingDataSource', 0, 0, N'1', 0, CAST(0x0000A85E012A7820 AS DateTime), 0, N'redis 缓存数据时缓存过期使用什么数据源？ 1 文本文件 2 数据库')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (3, N'12306刷票频率', -1, N'-1', N'RefreshHZIn12306', 0, 0, N'2', 0, CAST(0x0000A85F012A0FE4 AS DateTime), 0, N'进行12306刷票时设置的抢票频率最小值为1 ，设置比1小则使用默认值1（单位为秒）')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (4, N'12306停止刷票时间间隔', -1, N'-1', N'StopRefreshTimeSpanIn12306', 0, 0, N'23:00', 0, CAST(0x0000A85F012A7571 AS DateTime), 0, N'进行12306刷票时设置的什么时间停止刷票.时间格式 HH:mm')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (5, N'12306开始启动刷票时间间隔', -1, N'-1', N'StartRefreshTimeSpanIn12306', 0, 0, N'07:45', 0, CAST(0x0000A85F012A9CA9 AS DateTime), 0, N'进行12306刷票时设置的什么时间启动刷票.时间格式 HH:mm')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (6, N'联系人类型管理', -1, N'-1', N'LianXiRenLeiXingGuanLi', 0, 0, N'-1', 0, CAST(0x0000A893017F6A59 AS DateTime), 0, N'系统中存储的联系人信息分类：如微信，qq，电话，手机号，邮箱')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (7, N'系统轮询调度的时间间隔', -1, N'-1', N'XiTongLunXunDiaoDuDeShiJianJianGe', 0, 0, N'3', 0, CAST(0x0000A895014F9D91 AS DateTime), 0, N'系统轮询调度的时间间隔')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (8, N'QQ', 6, N'LianXiRenLeiXingGuanLi', N'QQ', 0, 0, N'1', 0, CAST(0x0000A89C0001CBC6 AS DateTime), 0, N'联系人联系方式类型：QQ')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (9, N'微信', 6, N'LianXiRenLeiXingGuanLi', N'WebChat', 0, 0, N'2', 0, CAST(0x0000A89C0001E504 AS DateTime), 0, N'联系人联系方式类型：微信')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (10, N'邮箱', 6, N'LianXiRenLeiXingGuanLi', N'Email', 0, 0, N'3', 0, CAST(0x0000A89C0001FA85 AS DateTime), 0, N'联系人联系方式类型：邮箱')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (11, N'手机', 6, N'LianXiRenLeiXingGuanLi', N'Mobile', 0, 0, N'4', 0, CAST(0x0000A89C00021FF8 AS DateTime), 0, N'联系人联系方式类型：手机')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (12, N'座机', 6, N'LianXiRenLeiXingGuanLi', N'Phone', 0, 0, N'5', 0, CAST(0x0000A89C00024E5F AS DateTime), 0, N'联系人联系方式类型：座机')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (13, N'QQ群', -1, N'LianXiRenLeiXingGuanLi', N'QQGroup', 0, 0, N'6', 0, CAST(0x0000A89E01736B69 AS DateTime), 0, N'腾讯QQ下的QQ群')
INSERT [dbo].[CategoryItems] ([ID], [Name], [ParentID], [ParentCode], [Code], [Sort], [IsDelete], [ItemValue], [ItemUsingSize], [CreateTime], [NodeLevel], [ItemDesc]) VALUES (14, N'微信群', -1, N'LianXiRenLeiXingGuanLi', N'WebChatGroup', 0, 0, N'7', 0, CAST(0x0000A89E0173ABE8 AS DateTime), 0, N'腾讯微信下的微信群')
SET IDENTITY_INSERT [dbo].[CategoryItems] OFF

SET IDENTITY_INSERT [dbo].[Menu] ON
INSERT [dbo].[Menu] ([Id], [Name], [Code], [Url], [Remark], [CreateTime]) VALUES (1, N'新增菜单', N'XinZengCaiDan', N'/Menu/NewNemu', N'提供直接创建系统菜单的快捷通道', CAST(0x0000A8930171741F AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Code], [Url], [Remark], [CreateTime]) VALUES (2, N'系统配置', N'XiTongPeiZhi', N'/AppSettingManage/Index', N'系统配置', CAST(0x0000A89301721895 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Code], [Url], [Remark], [CreateTime]) VALUES (3, N'程序管理', N'ChengXuGuanLi', N'/AppSettingManage/AppDataDialog', N'程序名称维护通道', CAST(0x0000A89301726118 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Code], [Url], [Remark], [CreateTime]) VALUES (4, N'生僻字维护', N'ShengPiZiWeiHu', N'/SpellName/SpecialSpellNameDialog', N'录入生僻字的通道', CAST(0x0000A8930172E0B7 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Code], [Url], [Remark], [CreateTime]) VALUES (5, N'上传文件', N'ShangChuanWenJian', N'/FileHelper/FileUpload', N'该路径进行文件批量上传操作', CAST(0x0000A894016CF0E1 AS DateTime))
INSERT [dbo].[Menu] ([Id], [Name], [Code], [Url], [Remark], [CreateTime]) VALUES (6, N'新增联系人', N'XinZengLianXiRen', N'/ContactManage/AddContacterDialog', N'新增联系人联系信息的快捷通道', CAST(0x0000A89D01804199 AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
