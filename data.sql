USE [OnlineDietitian]
GO
SET IDENTITY_INSERT [dbo].[Dietitian] ON 

INSERT [dbo].[Dietitian] ([DietitianID], [DietitianLicense], [CV], [DietitianPhone], [DietitianName], [DietitianSurname], [DietitianEmail], [DietitianPassword], [Address], [Gender]) VALUES (1, N'Deu', N'cv', N'55555555', N'Ahmet', N'Gülsever', N'ahmet@gmail.com', N'81dc9bdb52d04dc20036dbd8313ed055', N'sk.102 no 2 güllükent sitesi a blok Buca/İzmir', N'Male')
SET IDENTITY_INSERT [dbo].[Dietitian] OFF
SET IDENTITY_INSERT [dbo].[DietRequest] ON 

INSERT [dbo].[DietRequest] ([RequestID], [RequestContent], [Health], [Fitness], [WeightGain], [WeightLoss]) VALUES (1, N'<p>I eat everything</p>', 1, 0, 0, 0)
INSERT [dbo].[DietRequest] ([RequestID], [RequestContent], [Health], [Fitness], [WeightGain], [WeightLoss]) VALUES (4, N'<p>I like every food but can not eat red vegetables, I want a diet more healty life.</p>', 1, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[DietRequest] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserEmail], [UserPassword], [UserName], [UserSurname], [UserPhone], [UserBirth], [BodyPhoto], [UserAddress], [Gender], [isAdmin]) VALUES (1, N'deniz@gmail.com', N'81dc9bdb52d04dc20036dbd8313ed055', N'Deniz', N'Gezgin', N'', CAST(N'2017-01-26T00:00:00.000' AS DateTime), N'/img/NoUser.jpg', N'', N'Male', 1)
INSERT [dbo].[User] ([UserID], [UserEmail], [UserPassword], [UserName], [UserSurname], [UserPhone], [UserBirth], [BodyPhoto], [UserAddress], [Gender], [isAdmin]) VALUES (2, N'asye-ozgen@gmail.com', N'81dc9bdb52d04dc20036dbd8313ed055', N'Aşye', N'Özgen', NULL, CAST(N'1990-05-05T00:00:00.000' AS DateTime), N'/img/NoUser.jpg', NULL, NULL, 0)
INSERT [dbo].[User] ([UserID], [UserEmail], [UserPassword], [UserName], [UserSurname], [UserPhone], [UserBirth], [BodyPhoto], [UserAddress], [Gender], [isAdmin]) VALUES (3, N'mehmet@gmail.com', N'81dc9bdb52d04dc20036dbd8313ed055', N'Mehmet', N'Adıgüzel', N'', CAST(N'1980-09-04T00:00:00.000' AS DateTime), N'/img/3-d58w761.jpg', N'Ankara', N'Male', 0)
INSERT [dbo].[User] ([UserID], [UserEmail], [UserPassword], [UserName], [UserSurname], [UserPhone], [UserBirth], [BodyPhoto], [UserAddress], [Gender], [isAdmin]) VALUES (4, N'yeliz@gmail.com', N'81dc9bdb52d04dc20036dbd8313ed055', N'Yeliz', N'Anlıpak', N'0 505 11111', CAST(N'1998-12-10T00:00:00.000' AS DateTime), N'/img/4-uo2TI9rd.jpeg', N'sk 80 no 5 İstanbul', N'Male', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Diet] ON 

INSERT [dbo].[Diet] ([DietID], [DietitianID], [UserID], [DietRequestID], [DietContent]) VALUES (1, 1, 1, 1, N'<p>okey eat everythin then</p>')
INSERT [dbo].[Diet] ([DietID], [DietitianID], [UserID], [DietRequestID], [DietContent]) VALUES (4, 1, 4, 4, NULL)
SET IDENTITY_INSERT [dbo].[Diet] OFF
SET IDENTITY_INSERT [dbo].[MedicalReport] ON 

INSERT [dbo].[MedicalReport] ([ReportID], [DietID], [UserID], [Date], [UsedDrugs], [Disease], [Height], [Weight], [UrineTest], [BloodTest]) VALUES (1, 1, 1, CAST(N'2017-01-07T19:58:40.830' AS DateTime), N'no', N'no', N'180', N'80', N'no', N'no')
INSERT [dbo].[MedicalReport] ([ReportID], [DietID], [UserID], [Date], [UsedDrugs], [Disease], [Height], [Weight], [UrineTest], [BloodTest]) VALUES (4, 4, 4, CAST(N'2017-01-07T21:12:17.740' AS DateTime), N'no', N'Type 1 Diabetes', N'160', N'50', N'no', N'no')
SET IDENTITY_INSERT [dbo].[MedicalReport] OFF
SET IDENTITY_INSERT [dbo].[Appointment] ON 

INSERT [dbo].[Appointment] ([AppointmentID], [UserID], [DietitianID], [AppointmentDate], [AppointmentContent]) VALUES (1, 1, 1, CAST(N'2017-01-25T15:00:00.000' AS DateTime), N'<p>I''m bored lets talk</p>')
INSERT [dbo].[Appointment] ([AppointmentID], [UserID], [DietitianID], [AppointmentDate], [AppointmentContent]) VALUES (2, 1, 1, CAST(N'2017-01-27T15:00:00.000' AS DateTime), N'<p>Why you dont come</p>')
INSERT [dbo].[Appointment] ([AppointmentID], [UserID], [DietitianID], [AppointmentDate], [AppointmentContent]) VALUES (3, 3, 1, CAST(N'2017-01-29T00:00:00.000' AS DateTime), N'<p>I want face to face diet.</p>')
SET IDENTITY_INSERT [dbo].[Appointment] OFF
SET IDENTITY_INSERT [dbo].[BlogPost] ON 

INSERT [dbo].[BlogPost] ([BlogID], [DietitianID], [Title], [BlogContent], [PostDate]) VALUES (1, 1, N'asfasfasg', N'<p>asgggggggggggggggggggggggggggggggggg</p>', CAST(N'2017-01-07T19:03:25.687' AS DateTime))
INSERT [dbo].[BlogPost] ([BlogID], [DietitianID], [Title], [BlogContent], [PostDate]) VALUES (2, 1, N'Title', N'<p>Contentsafsafsafasfsafasfasf</p>', CAST(N'2017-01-07T19:03:50.310' AS DateTime))
INSERT [dbo].[BlogPost] ([BlogID], [DietitianID], [Title], [BlogContent], [PostDate]) VALUES (3, 1, N'Effects of Rose Tea on Humans', N'<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras luctus lacinia turpis. Aenean quis arcu sed arcu interdum venenatis. Curabitur aliquam, eros id varius ornare, diam quam aliquet lacus, vel sagittis sem nisi eget erat. Suspendisse id vehicula magna, eget imperdiet velit. Vestibulum iaculis, erat eu malesuada pellentesque, sem erat laoreet est, at feugiat felis metus eu justo. Nunc tristique lorem quis metus fringilla cursus. Etiam varius non odio vitae convallis. Vestibulum a consequat ipsum. Maecenas facilisis felis at ipsum scelerisque varius.</p><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Fusce vulputate nulla tellus, vitae eleifend magna eleifend vel. Vivamus non sodales justo. In in euismod lorem, eget aliquam mi. Proin ligula dui, iaculis commodo sapien id, bibendum porttitor magna. Mauris eleifend ipsum in ligula aliquet, sed egestas mauris feugiat. Morbi ultrices, lorem vel faucibus vulputate, purus mi imperdiet lacus, nec mattis ante nulla eu urna. Vestibulum bibendum nibh mi, et consectetur nulla aliquam quis. Aenean pellentesque fringilla sodales. Donec gravida ante quis purus faucibus cursus. Donec finibus varius eros ut mollis. Quisque ultrices at elit eu aliquet. Sed iaculis enim placerat, commodo nunc at, ultricies metus.</p><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Cras at fermentum massa. Morbi quis purus tempor dolor efficitur bibendum vitae ac lacus. Phasellus nec tellus vitae risus tempus efficitur a at sem. Vivamus ac porttitor nisl. Etiam arcu ante, commodo id rhoncus sed, lobortis ut nisl. Morbi rhoncus rhoncus lacus vitae dictum. Curabitur quis egestas sapien. Donec suscipit scelerisque diam, et aliquet orci imperdiet vitae. Nulla hendrerit lectus ut ex bibendum, eu venenatis nulla pretium. Proin lorem risus, blandit vitae suscipit et, dapibus et nunc. Pellentesque euismod porttitor risus a volutpat.</p><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Mauris nunc nunc, iaculis quis ante vel, euismod dignissim arcu. Proin ornare imperdiet nunc. Nam cursus ut enim eget lacinia. Maecenas porttitor felis in mattis suscipit. Vestibulum maximus enim vel neque dignissim, ac tempor velit placerat. Sed convallis ornare odio, eu mattis est varius sollicitudin. Suspendisse sit amet auctor diam. Donec pharetra laoreet purus id egestas. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum turpis quis laoreet molestie. Vestibulum at enim dignissim, fringilla neque et, rhoncus velit. In hendrerit arcu eu iaculis aliquet. Vestibulum pretium purus eu commodo facilisis. Ut porta bibendum velit vel euismod.</p><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Maecenas eleifend velit a mi porttitor, ac porttitor nibh eleifend. Ut id elementum justo. Maecenas in hendrerit tellus. Integer ac libero in lectus hendrerit varius ac vel arcu. Sed eu ligula sed ex dictum consectetur eget sed sem. Integer eget commodo tellus. Donec placerat feugiat quam, a fermentum augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus id odio pellentesque, varius neque ac, tempor neque. Praesent aliquam odio orci, vitae venenatis sem pharetra sagittis. Etiam fringilla varius turpis, eu hendrerit eros egestas eu. Cras eu leo nunc.</p><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Duis sodales dolor in augue tristique, eu condimentum purus elementum. Aliquam sit amet mi tempor, congue sem in, consequat dui. Pellentesque imperdiet neque mattis tortor feugiat consectetur. Quisque libero leo, volutpat et facilisis eget, consequat sit amet mauris. Donec lobortis pellentesque mauris cursus condimentum. Vivamus tempor erat a erat volutpat, eu vulputate massa porttitor. Phasellus tempus varius enim. Proin lacinia massa finibus massa congue, nec malesuada justo iaculis. Nam maximus facilisis velit at fringilla. Maecenas pharetra, lacus quis cursus congue, massa tellus pellentesque turpis, rhoncus laoreet leo neque ut elit. Fusce ac ullamcorper ligula.</p><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Duis vulputate cursus urna efficitur pharetra. Nulla congue nisi sit amet massa euismod tincidunt. In hac habitasse platea dictumst. Duis ut est cursus, tincidunt neque eget, consequat dui. Nam vitae nisl ac mauris aliquam iaculis. Fusce posuere quis eros quis feugiat. Aenean iaculis diam eu ex ornare scelerisque. Aliquam in congue nisi. Nam sapien turpis, feugiat ut tincidunt sit amet, auctor sit amet est. Aliquam cursus risus ante, id euismod magna sodales sed. Morbi non nibh quis erat egestas commodo.</p><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Nunc imperdiet felis et porta facilisis. Ut dapibus ultrices metus, at fringilla tellus. Sed metus lorem, commodo vel diam a, euismod consequat enim. Morbi commodo turpis et consectetur consectetur. Mauris quam mauris, egestas a odio ut, ullamcorper vehicula ipsum. Mauris eget vehicula eros. Cras sodales et turpis bibendum molestie.</p><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Nunc fermentum id nunc vel tincidunt. In ut consectetur turpis, ut tincidunt eros. Phasellus pellentesque dapibus urna at pellentesque. Aenean vel volutpat massa. Fusce non risus viverra, tristique eros nec, mattis velit. Mauris cursus quam et lorem ullamcorper bibendum. Morbi consequat mollis leo, in pharetra augue pulvinar eu. Duis scelerisque fringilla justo, auctor hendrerit nisi placerat ac. Nam at ante quis arcu rutrum posuere. Nulla ullamcorper sodales tortor, non sollicitudin arcu imperdiet a.</p><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: ''Open Sans'', Arial, sans-serif;">Maecenas tristique tempor velit porttitor vulputate. Etiam a metus semper, eleifend tellus sed, pharetra ligula. Ut elementum erat nibh, at facilisis lorem ornare sed. Sed quis odio eleifend, lacinia massa sit amet, rutrum leo. Etiam sit amet lectus nisi. Aliquam justo sem, eleifend iaculis auctor vitae, molestie et nisl. Curabitur a eros et dui maximus consectetur eget nec arcu. Mauris facilisis sit amet justo at interdum. Mauris vel mollis mi. Curabitur efficitur fringilla erat, vitae malesuada urna.</p>', CAST(N'2017-01-07T21:19:49.467' AS DateTime))
SET IDENTITY_INSERT [dbo].[BlogPost] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PayID], [DietitianID], [UserID], [PayDate], [Fee], [BankCard]) VALUES (1, 1, 1, NULL, N'30', 0)
INSERT [dbo].[Payment] ([PayID], [DietitianID], [UserID], [PayDate], [Fee], [BankCard]) VALUES (2, 1, 3, NULL, N'50', 0)
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (1, N'Register', N'1', CAST(N'2017-01-07T15:21:27.420' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (2, N'LoginU', N'1', CAST(N'2017-01-07T15:30:15.840' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (3, N'LoginU', N'1', CAST(N'2017-01-07T15:31:05.040' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (4, N'LoginU', N'1', CAST(N'2017-01-07T15:32:01.223' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (5, N'LoginU', N'1', CAST(N'2017-01-07T15:40:27.617' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (7, N'LoginU', N'1', CAST(N'2017-01-07T18:13:38.377' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (15, N'LoginU', N'1', CAST(N'2017-01-07T19:58:07.443' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (16, N'CreateDiet', N'userID: 1 DietID: 1', CAST(N'2017-01-07T19:58:15.120' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (17, N'CreateDiet', N'userID: 1 DietID: 2', CAST(N'2017-01-07T20:00:14.667' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (18, N'LoginU', N'1', CAST(N'2017-01-07T20:03:04.463' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (19, N'LoginU', N'1', CAST(N'2017-01-07T20:03:08.173' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (20, N'LoginU', N'1', CAST(N'2017-01-07T20:03:11.763' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (21, N'LoginU', N'1', CAST(N'2017-01-07T20:03:14.640' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (22, N'LoginU', N'1', CAST(N'2017-01-07T20:03:18.673' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (23, N'LoginU', N'1', CAST(N'2017-01-07T20:03:21.323' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (24, N'LoginU', N'1', CAST(N'2017-01-07T20:03:24.027' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (25, N'LoginU', N'1', CAST(N'2017-01-07T20:03:26.597' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (26, N'LoginU', N'1', CAST(N'2017-01-07T20:03:29.660' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (27, N'LoginU', N'1', CAST(N'2017-01-07T20:03:40.780' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (28, N'LoginU', N'1', CAST(N'2017-01-07T20:03:44.007' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (29, N'LoginU', N'1', CAST(N'2017-01-07T20:03:46.700' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (30, N'LoginU', N'1', CAST(N'2017-01-07T20:03:49.197' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (31, N'LoginU', N'1', CAST(N'2017-01-07T20:03:52.380' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (32, N'LoginU', N'1', CAST(N'2017-01-07T20:03:55.577' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (33, N'LoginU', N'1', CAST(N'2017-01-07T20:06:48.807' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (34, N'UpdateUser', N' userID: 1 update id: 1', CAST(N'2017-01-07T20:07:23.517' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (39, N'LoginD', N'1', CAST(N'2017-01-07T20:48:54.727' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (40, N'LoginU', N'1', CAST(N'2017-01-07T20:49:08.880' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (41, N'LoginU', N'1', CAST(N'2017-01-07T20:53:47.273' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (42, N'Register', N'2', CAST(N'2017-01-07T20:54:57.243' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (43, N'Register', N'3', CAST(N'2017-01-07T20:55:46.623' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (44, N'Register', N'4', CAST(N'2017-01-07T20:58:55.727' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (45, N'LoginU', N'4', CAST(N'2017-01-07T20:59:31.227' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (46, N'CreateDiet', N'userID: 4 DietID: 0', CAST(N'2017-01-07T21:11:16.430' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (47, N'LoginD', N'1', CAST(N'2017-01-07T21:15:59.557' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (48, N'LoginD', N'1', CAST(N'2017-01-07T21:18:39.660' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (49, N'newBlogPost', N'DietitanID: 1 BlogPostID: 3', CAST(N'2017-01-07T21:19:49.470' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (50, N'LoginU', N'3', CAST(N'2017-01-07T21:24:04.970' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (51, N'LoginU', N'1', CAST(N'2017-01-07T21:27:48.377' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (6, N'LoginU', N'1', CAST(N'2017-01-07T16:24:24.087' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (8, N'LoginU', N'1', CAST(N'2017-01-07T18:57:26.657' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (9, N'LoginU', N'1', CAST(N'2017-01-07T19:02:34.380' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (10, N'InsertDietitian', N' userID: 1 insert id: 1', CAST(N'2017-01-07T19:02:53.883' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (11, N'LoginD', N'1', CAST(N'2017-01-07T19:03:15.407' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (12, N'newBlogPost', N'DietitanID: 1 BlogPostID: 1', CAST(N'2017-01-07T19:03:25.690' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (13, N'newBlogPost', N'DietitanID: 1 BlogPostID: 2', CAST(N'2017-01-07T19:03:50.310' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (14, N'LoginU', N'1', CAST(N'2017-01-07T19:43:18.880' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (35, N'CreateDiet', N'userID: 1 DietID: 4', CAST(N'2017-01-07T20:27:22.513' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (36, N'LoginD', N'1', CAST(N'2017-01-07T20:28:39.837' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (37, N'LoginD', N'1', CAST(N'2017-01-07T20:31:26.710' AS DateTime))
INSERT [dbo].[Log] ([id], [type], [message], [date]) VALUES (38, N'CreateDietFollowUp', N'diettianID: 1 DietID: 1', CAST(N'2017-01-07T20:38:08.447' AS DateTime))
SET IDENTITY_INSERT [dbo].[Log] OFF
