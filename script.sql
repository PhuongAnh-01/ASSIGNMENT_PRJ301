USE [Assignment_PRJ301]
GO
/****** Object:  Table [dbo].[Attendence]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendence](
	[AttendentID] [int] NOT NULL,
	[SchEmpID] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[Alpha] [float] NOT NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[AttendentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] NOT NULL,
	[DepartmentName] [nvarchar](150) NOT NULL,
	[type] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [nvarchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[address] [varchar](150) NOT NULL,
	[dob] [date] NOT NULL,
	[RoleID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[salary] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan](
	[PlanID] [int] NOT NULL,
	[PlanName] [nvarchar](150) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[PlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanCampain]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanCampain](
	[PlanCampnID] [int] NOT NULL,
	[PlanID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Estimate] [int] NOT NULL,
 CONSTRAINT [PK_PlanCampain] PRIMARY KEY CLUSTERED 
(
	[PlanCampnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[QuantityTotal] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchedualCampaign]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchedualCampaign](
	[ScID] [int] NOT NULL,
	[PlanCampnID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Shift] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_SchedualCampaign] PRIMARY KEY CLUSTERED 
(
	[ScID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchedualEmployee]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchedualEmployee](
	[SchEmpID] [int] NOT NULL,
	[ScID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_SchedualEmployee] PRIMARY KEY CLUSTERED 
(
	[SchEmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[UserName] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserEmployee]    Script Date: 10/7/2024 1:13:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEmployee](
	[UserID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserEmployee] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [type]) VALUES (1, N'Production Workshop1', N'Manufacturing')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [type]) VALUES (2, N'Production Workshop2', N'Manufacturing')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [type]) VALUES (3, N'Production Workshop3', N'Manufacturing')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [type]) VALUES (4, N'Production Planning', N'Plan')
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [QuantityTotal]) VALUES (1, N'Giỏ', 1000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [QuantityTotal]) VALUES (2, N'Thúng', 1000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [QuantityTotal]) VALUES (3, N'Mẹt', 1000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [QuantityTotal]) VALUES (4, N'Lồng Bàn', 1000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [QuantityTotal]) VALUES (5, N'Rổ', 1000)
GO
INSERT [dbo].[Role] ([RoleID], [RoleName], [Description]) VALUES (1, N'Production Manager', N'NULLproduction process management')
INSERT [dbo].[Role] ([RoleID], [RoleName], [Description]) VALUES (2, N'Production Planning Director', N'implement production plan')
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_SchedualEmployee] FOREIGN KEY([SchEmpID])
REFERENCES [dbo].[SchedualEmployee] ([SchEmpID])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_SchedualEmployee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Plan]  WITH CHECK ADD  CONSTRAINT [FK_Plan_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Plan] CHECK CONSTRAINT [FK_Plan_Department]
GO
ALTER TABLE [dbo].[PlanCampain]  WITH CHECK ADD  CONSTRAINT [FK_PlanCampain_Plan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[PlanCampain] CHECK CONSTRAINT [FK_PlanCampain_Plan]
GO
ALTER TABLE [dbo].[PlanCampain]  WITH CHECK ADD  CONSTRAINT [FK_PlanCampain_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[PlanCampain] CHECK CONSTRAINT [FK_PlanCampain_Product]
GO
ALTER TABLE [dbo].[SchedualCampaign]  WITH CHECK ADD  CONSTRAINT [FK_SchedualCampaign_PlanCampain] FOREIGN KEY([PlanCampnID])
REFERENCES [dbo].[PlanCampain] ([PlanCampnID])
GO
ALTER TABLE [dbo].[SchedualCampaign] CHECK CONSTRAINT [FK_SchedualCampaign_PlanCampain]
GO
ALTER TABLE [dbo].[SchedualEmployee]  WITH CHECK ADD  CONSTRAINT [FK_SchedualEmployee_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[SchedualEmployee] CHECK CONSTRAINT [FK_SchedualEmployee_Employee]
GO
ALTER TABLE [dbo].[SchedualEmployee]  WITH CHECK ADD  CONSTRAINT [FK_SchedualEmployee_SchedualCampaign] FOREIGN KEY([ScID])
REFERENCES [dbo].[SchedualCampaign] ([ScID])
GO
ALTER TABLE [dbo].[SchedualEmployee] CHECK CONSTRAINT [FK_SchedualEmployee_SchedualCampaign]
GO
ALTER TABLE [dbo].[UserEmployee]  WITH CHECK ADD  CONSTRAINT [FK_UserEmployee_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[UserEmployee] CHECK CONSTRAINT [FK_UserEmployee_Employee]
GO
ALTER TABLE [dbo].[UserEmployee]  WITH CHECK ADD  CONSTRAINT [FK_UserEmployee_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserEmployee] CHECK CONSTRAINT [FK_UserEmployee_User]
GO
