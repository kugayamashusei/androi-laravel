USE [db_android_CongThucMonAn]
GO
/****** Object:  Table [dbo].[VungMien]    Script Date: 10/26/2020 10:07:00 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VungMien]') AND type in (N'U'))
DROP TABLE [dbo].[VungMien]
GO
/****** Object:  Table [dbo].[ThongTinUser]    Script Date: 10/26/2020 10:07:00 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThongTinUser]') AND type in (N'U'))
DROP TABLE [dbo].[ThongTinUser]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/26/2020 10:07:00 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaiKhoan]') AND type in (N'U'))
DROP TABLE [dbo].[TaiKhoan]
GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 10/26/2020 10:07:00 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MonAn]') AND type in (N'U'))
DROP TABLE [dbo].[MonAn]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 10/26/2020 10:07:00 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChuDe]') AND type in (N'U'))
DROP TABLE [dbo].[ChuDe]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 10/26/2020 10:07:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[ID] [float] NULL,
	[ten_CD] [nvarchar](255) NULL,
	[status_CD] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 10/26/2020 10:07:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAn](
	[ID] [float] NULL,
	[ten_MA] [nvarchar](255) NULL,
	[hinhanh_MA] [nvarchar](255) NULL,
	[vungmien_MA] [nvarchar](255) NULL,
	[chude_MA] [nvarchar](255) NULL,
	[nguyenlieu_MA] [nvarchar](max) NULL,
	[soche_MA] [nvarchar](max) NULL,
	[thuchien_MA] [nvarchar](max) NULL,
	[cachdung_MA] [nvarchar](255) NULL,
	[status_MA] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/26/2020 10:07:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [float] NULL,
	[ten_KH] [nvarchar](255) NULL,
	[cmnd_KH] [float] NULL,
	[email_KH] [nvarchar](255) NULL,
	[std_KH] [nvarchar](255) NULL,
	[ngaysinh_KH] [datetime] NULL,
	[dsyt_KH] [nvarchar](255) NULL,
	[status_KH] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinUser]    Script Date: 10/26/2020 10:07:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinUser](
	[ID] [float] NULL,
	[username_TK] [nvarchar](255) NULL,
	[password_TK] [float] NULL,
	[status_TK] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VungMien]    Script Date: 10/26/2020 10:07:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VungMien](
	[ID] [float] NULL,
	[ten_VM] [nvarchar](255) NULL,
	[gioithieu_VM] [nvarchar](max) NULL,
	[status_VM] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChuDe] ([ID], [ten_CD], [status_CD]) VALUES (1, N'Nước uống', N'1')
INSERT [dbo].[ChuDe] ([ID], [ten_CD], [status_CD]) VALUES (2, N'Món nhậu', N'1')
INSERT [dbo].[ChuDe] ([ID], [ten_CD], [status_CD]) VALUES (3, N'Hải Sản', N'1')
INSERT [dbo].[ChuDe] ([ID], [ten_CD], [status_CD]) VALUES (4, N'Món ăn gia đình', N'1')
INSERT [dbo].[ChuDe] ([ID], [ten_CD], [status_CD]) VALUES (5, N'Món khai vị', N'1')
GO
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (1, N'Trà sữa hoa đậu biếc', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe
Hoa đậu biếc khô	10 hoa
Trà Sữa Royal "Blendy"	2 gói
Soda	1 lon
Đá bi
Gia vị: đường', N'– Hoa đậu biếc ngâm với 50ml nước nóng, lọc lấy nước cốt
– Pha 2 gói trà sữa Royal “Blendy” với 60ml nước sôi, khuấy tan, để nguội.', N'– Cho đá vào ly, rót trà sữa vào, rót soda lên trên, cuối cùng cho cốt hoa đậu biếc lên trên cùng. Trang trí hoa đậu biếc      ', N'– Khuấy đều và thưởng thức.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (2, N'Thăn heo chiên giòn rau quế', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Thịt thăn ngoại	300g
Rau quế	20 lá
Ăn kèm : xà lách, cà chua bi
Gia vị : Dầu ăn, tỏi băm
Xốt Mayonnaise Xốt Mayonnaise Aji-mayo®
Gia vị nêm sẵn Gia vị nêm sẵn Aji-Quick® Bột tẩm khô chiên giòn Bột tẩm khô chiên giòn', N'– Thăn heo cắt lát mỏng 5mm vừa ăn, đập dập, khứa vảy rồng 2 mặt.

– Rau quế lấy 10 lá cắt sợi nhuyễn, phần còn lại để riêng.', N'– Đun nóng dầu ăn, chiên giòn lá quế, vớt ra để ráo. Tẩm thịt heo với 1 gói Gia vị nêm sẵn Aji-Quick® Bột Tẩm Khô Chiên Giòn, đem chiên chín vàng, vớt thịt ra để nghỉ ít phút rồi cho thịt vào chiên lần 2, đến khi thịt chín vàng, vớt ra để ráo dầu.

– Pha xốt: Trộn đều 2M Xốt Mayonnaise Aji-mayo®, 1M rau quế và 1m tỏi băm.', N'– Xếp thịt ra dĩa, khi ăn chấm kèm xốt pha.   ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (3, N'Chả đùm dê', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Thịt dê	300g
Giò sống	50g
Gan gà hoặc vịt	2 bộ
Mỡ chài	2 miếng 20cm
Đậu petit pois	50g
Hành tím băm	2M
Tỏi băm	1M
Bún tàu	1 lọn nhỏ
Lòng đỏ trứng muối	2 cái
Sữa tươi không đường	50ml
Hành lá	2 nhánh
Đậu phộng rang	2M
Bột năng	1m
Tiêu xanh	1M
Nấm mèo	2M
RAU NÊM: Rau om, ngò gai, ớt lát
ĂN KÈM: Bánh tráng nướng, nước tương, ớt sa tế
Gia vị: dầu ăn, muối, tiêu, đường, rượu Mai Quế Lộ
Bột ngọt Bột ngọt AJI-NO-MOTO®
Hạt nêm Hạt nêm Aji-ngon® Heo Heo', N'– Thịt dê xay nhỏ. Mỡ chài xát muối và rượu, rửa sạch.

– Gan gà làm sạch, ngâm sữa 30′ vớt để ráo. Hòa bột năng với sữa.

– Bún tàu ngâm mềm, cắt khúc. Hành lá cắt nhỏ.

– Đun nóng dầu làm mỡ hành. Hòa 1m đường với nước.', N'– Phi thơm hành tỏi, cho gan gà vào xào săn, khử 1m rượu Mai Quế Lộ, để nguội. Xay nhuyễn cùng với sữa pha bột năng.

– Trộn thịt dê, gan, giò sống vào máy quết dẻo. Thêm bún tàu, đậu petit pois, nấm mèo, tiêu xanh, nêm 1/3m muối, 1m tiêu, 2m đường, 1m Bột ngọt AJI-NO-MOTO®, 2m Hạt nêm Aji-ngon® Heo vào quết đều.

– Trải mỡ chài vào chén, cho lòng đỏ trứng muối và cho nhân vào, bọc kín viên nhân. Hấp chả chín. Sau đó úp ngược chả ra khay nướng.

– Mở lò nướng nóng 250°C. Phết nước đường lên mặt chả, nướng vàng nâu.', N'– Cắt chả ra miếng vừa ăn. Phết mỡ hành và rải đậu phộng lên trên. Dùng chung với bánh tráng. Nước tương tương ớt hay ớt sa tế.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (4, N'Bún gạo xào mayo', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Bún gạo khô:	150g
Thịt bò phi lê:	100g
Cà rốt cắt sợi:	50g
Bông hẹ:	50g
Nấm đông cô cắt sợi:	50g
Ớt sừng:	1 trái
RAU NÊM: Ngò rí
GIA VỊ: Hành tỏi băm, muối, đường, tiêu, bột năng, dầu ăn, tương ớt
Bột ngọt Bột ngọt AJI-NO-MOTO®
Xốt Mayonnaise Xốt Mayonnaise Aji-mayo®
Nước tương Nước tương ', N'– Thịt bò cắt mỏng, ướp 1/2m đường, 1/2m bột ngọt AJI-NO-MOTO®, 1M nước tương “Phú Sĩ” và 2m tỏi băm, để thấm.

– Bún gạo ngâm nước ấm 5 phút, vớt ra để ráo.

– Bông hẹ cắt khúc. Ớt sừng bỏ hạt, cắt sợi.

– Khuấy tan xốt xào: 1m đường, 1m bột ngọt AJI-NO-MOTO®, 2M nước tương “Phú Sĩ”.', N'– Phi thơm tỏi, xào thịt bò, trút ra để riêng. Cho cà rốt, nấm vào xào nhanh, cho tiếp bông hẹ, ớt sừng vào, và cho bún gạo vào, nêm xốt xào, trộn nhanh tay cho các nguyên liệu đều nhau, tắt lửa.', N'– Cho bún xào ra dĩa, xếp thịt bò lên trên, tạo hình zic zac với Xốt Mayonnaise Aji-mayo® và tương ớt. Khi ăn trộn đều.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (5, N'Lẩu gà cơm mẻ', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Gà tre 1 con (1,2kg)
Mẻ 5M
Hành tím bào 50g
Ớt đỏ sừng	5 trái
Cà chua	1 trái
Riềng	1M
Sả	4 cây
Rau nêm : Lá quế, ngò rí, hành lá
Ăn kèm : Bún, rau quế, hành lá, cải con, nấm rơm, nước mắm ớt, rau cần nước, rau nhút, rau muống, hành lá, thì là.
Gia vị: Dầu ăn, đường, nước mắm
Bột ngọt Bột ngọt AJI-NO-MOTO®
Hạt nêm Hạt nêm Aji-ngon® Gà Gà', N'– Gà rửa sạch, chặt miếng vừa ăn. Khuấy đều 2M mẻ và 1/2M Hạt nêm Aji-ngon® Gà, ướp gà, để thấm 15 phút.

– Mẻ tán nhuyễn. Cà chua cắt múi cau. Riềng cắt sợi. Sả đập dập, cắt khúc 5cm.', N'– Phi thơm hành tím, ớt sừng, riềng, sả với dầu ăn, xào gà săn, nêm 1M đường, 2M nước mắm, 1m Bột ngọt AJI-NO-MOTO®, 1/2M Hạt nêm Aji-ngon® Gà, tiếp tục xào cho thịt gà dậy mùi thơm, thêm 1 lít nước lọc vào nấu sôi vớt bọt để nhỏ lửa, cho phần mẻ còn lại vào khuấy đều, nấu thêm 5 phút, cho cà chua vào, tắt lửa thêm hành lá, ngò rí, rau quế vào.', N'Dùng nóng kèm các loại rau, bún và nước mắm ớt.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (6, N'Tôm rim thịt thơm', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Tôm bạc thẻ tươi:	300g
Thịt ba chỉ :	200g
Thơm:	1/2 trái
Hành tây:	1/2 củ
Hành lá
Ớt sừng:	1 ít
Gia vị: Tiêu, đường, nước mắm, dầu điều, dầu ăn, ớt bột, hành tỏi băm, hành lá', N'– Tôm làm sạch, cắt đầu và đuôi, xẻ dọc sống lưng. Thịt ba chỉ cắt lát dày 2mm bản to.

– Thơm xẻ dọc, cắt lát dày 4mm. Hành lá cắt khúc 3cm. Ớt sừng bỏ hạt, cắt xéo.', N'– Phi thơm hành tỏi với 2M dầu ăn, 1M dầu điều, cho thịt vào đảo cho thịt săn và thơm, tiết ra ít mỡ. Cho tôm vào đảo đều cho tôm săn lại, nêm 2m đường, 1m Bột ngọt AJI-NO-MOTO®, 2M nước mắm, 1/2m ớt bột, rim 2 – 3 phút rồi cho thơm vào, cho thêm hành tây và hành lá, nếu thấy ít nước, không đủ thời gian cho thấm vị thì thêm 2M nước, rim nhỏ lửa cho đến khi nước thịt và tôm rim sánh lại, tôm bóng giòn. Tắt lửa, rắc tiêu và hành lá.', N'– Dùng kèm cơm trắng.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (7, N'Cơm chanh ấn độ', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Thịt gà:	150g
Cơm nguội:	2 chén
Đậu phộng khô:	50g
Hạt mù tạt:	1m
Chanh vàng:	1 quả
Hành tây tím:	1/2 củ
RAU NÊM: Lá chanh tươi, lá cà ri tươi, ớt sừng xanh đỏ, ngò rí
Gia vị: Bột nghệ, muối, dầu ăn
Hạt nêm Hạt nêm Aji-ngon® Gà Gà', N'– Thịt gà cắt hạt lựu. Ướp thịt gà với 1m bột nghệ, 1m Hạt nêm Aji-ngon® Gà.

– Lá chanh băm nhỏ. Lá cà ri xé nhỏ (để nguyên vài lá chiên trang trí). Ớt xanh đỏ cắt hình thoi. Chanh vàng mài vỏ, sau đó vắt lấy nước cốt.', N'– Đun nóng 1/2 chén dầu, chiên lá cà ri, vớt ra và bớt dầu chừa lại 2M. Tiếp tục cho đậu phộng vào xào với lửa nhỏ đến khi đậu phộng chín, thêm 1m hạt mù tạt, hành tím, 1M lá cà ri, cho thịt gà vào xào thơm. Khi tất cả nguyên liệu vừa chín thì tắt lửa, thêm 2M nước cốt chanh và 1M vỏ chanh vào. Múc nhân ra dĩa.

– Phi thơm hành tím với 1M dầu ăn, cho cơm vào đảo đều, nêm 2/3m Hạt nêm Aji-ngon® Gà, cho nhân vào trộn đều, xào với lửa nhẹ. Tắt lửa cho lá chanh băm nhỏ vào.', N'– Múc cơm ra dĩa, trang trí ngò rí, ớt và lá cà ri chiên lên mặt, dùng nóng.  ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (8, N'Cá kèo nướng muối ớt', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Cá kèo:	300g
Muối ớt tôm khô Tây Ninh:	2M
Rau nêm: Rau răm
Ăn kèm: Muối ớt, dưa leo muối xổi, chanh
Gia vị: Ớt bột, tỏi, cốt chanh, dầu hào, dầu ăn, dầu điều, tương ớt, đậu phộng rang, ớt sừng xanh
Bột ngọt Bột ngọt AJI-NO-MOTO®
Hạt nêm Hạt nêm Aji-ngon® Heo Heo', N'– Cá kèo làm sạch, xiên que. Trộn đều 1m Hạt nêm Aji-ngon® Heo, 2M muối ớt tôm khô, 1M tương ớt, 1/2m dầu hào, 2m nước mắm, 1/2m dầu điều và 2m dầu ăn. Ướp cá thấm gia vị.

– Đậu phộng rang giã nhuyễn.', N'– Áp chảo cá trên chảo đến khi chín vàng.

– Pha muối ớt chấm: Giã nhuyễn 2M muối hột, 1m Bột ngọt AJI-NO-MOTO®, 1/2m ớt bột, 2 trái ớt sừng xanh.', N'– Xếp cá ra dĩa rắc thêm 2M đậu phộng rang giã nhuyễn, dùng kèm rau răm, chấm muối ớt vắt thêm chanh.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (9, N'Súp măng vịt chua cay', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Vịt quay:	1/4 con
Măng vàng luộc:	80g
Giá:	40g
Nấm đùi gà:	80g
Đậu hũ non:	80g
Bột năng:	2M
Dầu mè:	1m
Trứng gà:	1 quả
RAU NÊM: Ngò rí
Gia vị: dầu ăn, đường
Gia vị nêm sẵn Gia vị nêm sẵn Aji-Quick® Lẩu Kim chi Lẩu Kim chi', N'– Thịt vịt cắt sợi. Xương vịt quay nấu lấy 1,5 lít nước dùng.

– Trứng gà đánh tan. Măng vàng cắt sợi, chần qua nước sôi. Nấm đùi gà cắt sợi.

– Bột năng hòa tan với nước. Đậu hũ non cắt hạt lựu.', N'– Xào nhanh măng và nấm với ít dầu ăn, cho 1.5 lít nước dùng vào đun sôi, nêm 1 gói Gia vị nêm sẵn Aji-Quick® Lẩu Kim Chi, nếm vị chua cay vừa ăn. Hòa nước bột năng tạo độ sánh cho súp, sau đó cho trứng vào tạo vân mây. Tắt lửa.', N'– Cho giá, đậu hủ non vào tô, múc súp vào và thêm thịt vịt lên trên, thêm dầu mè. Trang trí với ngò rí, dùng nóng.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (10, N'Cá hồi sake chiên giòn', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Fillet cá hồi:	200g
Sake:	1/6 trái
Chanh vàng:	1 trái
Thì là băm:	1m
Gia vị: Tương ớt, tiêu, dầu ăn
Hạt nêm Hạt nêm Aji-ngon® Gà Gà
Gia vị nêm sẵn Gia vị nêm sẵn Aji-Quick® Bột chiên giòn Bột chiên giòn (Tên cũ: Bột Chiên Giòn Hải Sản)', N'– Cá hồi cắt que dày 7mm. Ướp cá với 1/2M vỏ chanh mài, 1/2m tiêu, 1/2m Hạt nêm Aji-ngon® Gà, 1/2m thì là băm.

– Sake cắt miếng hình tam giác, dày 5mm, sau đó cắt đôi hình chiếc kẹp.

– Chanh vàng mài vỏ, sau đó vắt nước để riêng.

– Pha 1 gói Gia vị nêm sẵn Aji-Quick® Bột chiên giòn theo hướng dẫn trên bao bì. Để lại 1M bột khô.', N'– Đun nóng dầu ăn, lăn cá qua bột khô, dùng miếng sake kẹp cá vào giữa tẩm qua bột đã pha và chiên giòn chín tới. Vớt ra để ráo dầu.

– Pha xốt: trộn đều 2M Xốt Mayonnaise Aji-mayo®, 1M tương ớt và 1/2m thì là băm', N'– Xếp cá ra dĩa, dùng nóng chấm kèm xốt đã pha.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (11, N'Canh cá rô bông súng', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Cá rô:	600g
Cà chua:	1 trái
Bông súng:	100g
Kèo nèo:	60g
Tỏi băm:	1M
Ớt hiểm:	1 trái
RAU NÊM: Rau om, ngò gai, tỏi phi
Ăn kèm: Cơm, bún
Gia vị: Muối, đường, nước mắm
Bột ngọt Bột ngọt AJI-NO-MOTO®
Giấm gạo lên men Giấm gạo lên men LISA®', N'– Cá rô làm sạch, khứa trên thân cá một đường.

– Cà chua cắt múi cau. Bông súng tước vỏ, cắt khúc. Kèo nèo cắt khúc. Rau om, ngò gai cắt nhỏ.', N'– Phi thơm tỏi, dùng một ít dầu tỏi để rưới đều lên cá. Sau đó, xào cà chua, ớt hiểm cho 1.2L nước vào nấu sôi, cho cá rô vào nấu chín với 2m muối, 4M giấm gạo lên men LISA®, vớt cá ra để riêng. Tiếp tục cho bông súng, kèo nèo vào nấu chín, nêm 2m Bột ngọt AJI-NO-MOTO®, 1M nước mắm, 1m đường. Tắt lửa.', N'Múc canh ra tô, thêm rau om, ngò gai và tỏi phi lên trên. Dùng nóng.     ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (12, N'Súp tôm măng tây vị lẩu thái', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Tôm sú:	300g
Măng tây:	100g
Nấm rơm búp:	50g
Bột năng:	3M
Trứng gà:	2 quả
Tàu hủ non:	1/2 cây
Gia vị: Tiêu, ngò gai, đường
Gia vị nêm sẵn Gia vị nêm sẵn Aji-Quick® Lẩu Thái Lẩu Thái', N'– Tôm sú: Bóc vỏ, chừa đuôi và chẻ lưng 4 con tôm, phần tôm còn lại chần qua nước sôi, sau đó bóc vỏ, cắt hạt lựu.

– Rang khô đầu và vỏ tôm, cho nước vào nấu sôi khoảng 15 phút, lọc qua rây để lấy nước dùng. Đong lại 1 lít nước dùng tôm.

– Măng tây cắt hạt lựu. Nấm rơm chần qua nước sôi, cắt lát mỏng. Tàu hủ non cắt hạt lựu.

– Bột năng pha loãng với 2/3 chén nước. Trứng gà đánh tan, lượt qua rây.', N'– Đun sôi nước dùng, nêm 1/2 gói Gia vị nêm sẵn Aji-Quick® Lẩu Thái, 1m đường cho nấm rơm, măng tây, tôm vào nấu chín. Khuấy nước bột năng tạo độ sánh, tiếp tục cho trứng gà đã đánh tan tạo vân, thêm 4 con tôm nấu vừa chín thì tắt lửa, thêm đậu hủ non.', N'– Múc súp ra chén, thêm tiêu và ngò gai cắt nhỏ. Dùng nóng.     ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (13, N'Bánh mì que xốt thịt cay Mayo', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Bánh mì que	4 ổ
Thịt đầu vai	150g
Dưa leo	1 trái
Hành tây	50g
Ớt Ba Tri	1 trái
Hành tím xay	1M
Pate	1/4 hộp
RAU NÊM: Ngò rí
Gia vị: ớt sa tế, đường, bột năng
Bột ngọt Bột ngọt AJI-NO-MOTO®
Hạt nêm Hạt nêm Aji-ngon® Heo Heo
Nước tương Nước tương 
Xốt Mayonnaise Xốt Mayonnaise Aji-mayo® ', N'– Dùng dao xẻ dọc bánh mì, nướng sơ cho bánh mì giòn.

– Thịt heo cắt lát mỏng, ướp 1M hành tím, 1M ớt sa tế, 1/2m đường, 1/3m bột năng, 1/2m Bột ngọt AJI-NO-MOTO®, 1/2m Hạt nêm Aji-ngon® Heo, 2m Nước tương “Phú Sĩ”, để thấm.

– Ớt Ba Tri cắt sợi. Hành tây cắt mỏng. Dưa leo bào sơ vỏ, cắt lát mỏng dài.', N'– Làm nóng dầu, xào thịt và hành tây với lửa lớn đến khi thịt chín, tắt lửa.', N'– Phết Xốt Mayonnaise Aji-mayo® và pate vào bánh mì, lần lượt xếp dưa leo, ớt, thịt xào, ngò rí, thêm 1 ít nước tương “Phú Sĩ” cuối cùng thêm xốt MY lên trên. Dùng nóng.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (14, N'Cá hấp tàu xì', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Cá Chẽm 600g
Hạt tàu xì 2M
Hành tây 1 Củ
Hành tím bào 50g
Gừng cắt sợi	50g
Gừng băm 2M
Hành lá, cần tàu 100g
Ớt cắt sợi 15g
RAU NÊM: Hành lá, ớt, gừng
ĂN KÈM: Cơm trắng, ớt cắt lát.
Gia vị: Dầu ăn, đường, tiêu, rượu trắng
Bột ngọt Bột ngọt AJI-NO-MOTO®
Nước tương Nước tương ', N'– Cá chẽm làm sạch, cắt xéo hai bên thân cá. Trộn đều gia vị 1m tiêu, 1/2m đường, 1/2M rượu trắng, 1m Bột ngọt AJI-NO-MOTO®, 2M Nước tương “Phú Sĩ” ướp vào bụng cá để 15 phút cho cá thấm gia vị.

– Hạt tàu xì băm nhỏ. Hành tây cắt múi cau. Hành lá, cần tàu cắt khúc. Hành lá, ớt cắt sợi. Chiên giòn một ít gừng cắt sợi.', N'– Sốt hấp cá:  Phi thơm gừng băm và hành tím, cho 2M hạt tàu xì vào xào để lửa vừa, cho vào 1 chén nước lọc, nêm 1/2M đường, 1/2m Bột ngọt AJI-NO-MOTO®, 1M Nước tương “Phú Sĩ” khuấy đều, khi thấy sốt sánh, tắt lửa.

– Trộn đều hành tây, hành lá, cần tàu cho lên dĩa, để cá lên trên và rưới đều sốt, nhồi một ít sốt và hành cần vào bụng cá, tiếp tục cho gừng, ớt cắt sợi lên trên, hấp 20 phút (tính từ khi nước sôi), cá chín tắt lửa cho thêm ít hành lá, ớt cắt sợi và gừng chiên lên trên cùng.', N'– Dùng nóng kèm cơm trắng và Nước tương “Phú Sĩ” và ớt cắt lát.', NULL)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (15, N'Pancake lá dứa', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Nước cốt dừa lon	80g
Trứng gà 2 trứng
Lá dứa 70g
Sữa tươi không đường	100g
Bơ	20g
Vani 2 ống
Bột năng 2,5M
Ăn kèm: Dừa bào sợi
Gia vị: Muối, đường
Bột bánh rán pha sẵn từ Ajinomoto Bột Bánh rán pha sẵn vị truyền thống', N'– Nhân lá dứa: Cho lá dứa đã cắt nhỏ cùng 100g nước, xay nhuyễn, sau đó vắt lấy nước, lọc lại. Tiếp theo cho vào cối xay nước lá dứa cùng 60g đường, 2 quả trứng gà, 100g sữa tươi, 1/4m muối, 2.5M bột năng và 80g nước cốt dừa. Sên lửa nhỏ trên bếp cho nhân đặc lại, cho 2 ống vani vào, tắt lửa cho 20g bơ vào trộn đểu.', N'– Pha bột bánh rán pha sẵng vị truyền thống với nước theo hướng dẫn trên bao bì, làm nóng chảo không dính, sau đó hạ nhiệt chảo với khăn ướt. Tiếp theo đổ một vá bột vào giữa chảo, tạo hình tròn, đợi bánh chín 1 mặt, lật bánh lại chờ thêm 1 phút để chín mặt còn lại. Cho bánh ra dĩa, lần lượt đổ bánh cho đến hết bột.', N'– Xếp bánh ra đĩa, cho nhân lá dứa và dừa sợi lên trên, đặt lớp bánh thứ 2 lên và trang trí bằng dừa sợi.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (16, N'Đậu hũ um nước cốt dừa', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Đậu hủ trắng 1 miếng lớn
Lá cách non	150g
Tàu hủ ky cọng (loại chiên sẳn)	150g
Nấm đầu khỉ tươi	150g
Hành Boaro băm	2M
Sả ớt băm	2M
Sả cây 5 cây
Nước cốt dừa 0.5 lít
Nước dão dừa 1 Chén
RAU NÊM: Rau om, ngò gai, đậu phộng rang
ĂN KÈM: Bún hoặc bánh mì, Muối chấm
Gia vị: Dầu ăn, bột nghệ, đường
Bột ngọt Bột ngọt AJI-NO-MOTO®
Hạt nêm Hạt nêm Aji-ngon® Nấm hương & Hạt sen Nấm hương & Hạt sen', N'– Đậu hũ cắt miếng vuông cạnh 3cm. Lá cách rửa sạch, để ráo, cắt rối. Tàu hũ ky cắt khúc 5cm. nấm đầu khỉ cắt lát. Sả đập dập cắt khúc. Giã bể đậu phộng.

– Xào nấm đầu khỉ: Xào thơm hành boaro, sả ớt băm với dầu ăn, cho nấm đầu khỉ vào xào nhanh, thêm 1 chén nước dão dừa, 1m bột nghệ khuấy đều, nêm 1/2M đường, 1m Bột ngọt AJI-NO-MOTO®, 1M Hạt nêm Aji-ngon® (Nấm hương & Hạt sen) để lửa nhỏ 5 phút tắt lửa.', N'– Lần lượt xếp sả cây, lá cách, đậu hủ và tàu hủ ky xung quanh nồi, cho nấm đã xào vào giữa cùng 1/2m Hạt nêm Aji-ngon® (Nấm hương & Hạt sen), thêm nước cốt dừa vào đậy nắp um lửa vừa khoảng 10 phút cho nấm đầu khỉ và đậu hủ thấm vị, thêm rau om, ngò gai, tắt lửa cho đậu phộng lên trên cùng.', N'– Dùng nóng kèm bún, bánh mì và muối chấm.    ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (17, N'Lươn nướng sả', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Lươn	1 con
Sả 6 cây
Hành tỏi băm	1M
Ớt hiểm	1 trái
Nghệ tươi	1 củ
Nước cốt me	1.5M
Tỏi ớt băm	1m
RAU NÊM: Rau om, ngò gai, đậu phộng rang
Ăn kèm: bún hoặc cơm
Gia vị: Bột nghệ, dầu ăn, nước mắm, đường
Bột ngọt Bột ngọt AJI-NO-MOTO®
Hạt nêm Hạt nêm Aji-ngon® Heo Heo', N'– Lươn sơ chế sạch, khứa 2 bên mình lươn, cắt khúc vừa ăn, ướp nghệ, hành tỏi băm, ớt hiểm, 1m Hạt nêm Aji-ngon® Heo, 1/2m bột ngọt AJI-NO-MOTO®, 1/2m đường, 1m dầu ăn và 1/2 lượng sả đập dập, phần sả còn lại nhét vào bụng lươn, để thấm 20 phút.

– Sả cây đập dập, cắt khúc. Ớt hiểm, nghệ tươi băm nhỏ. Rau om, ngò gai cắt khúc.', N'– Xếp giấy bạc thành khay hình chữ nhật, lót sả cây đập dập bên dưới, xếp lươn lên trên, rải thêm 1 lớp sả đập dập. Nướng lươn nhiệt độ 180 độ trong 25 phút.

– Làm mắm me: Khuấy tan 1M nước, 1M nước mắm, 1.5M nước me với 2M đường, tỏi và ớt băm.', N'Trình bày lươn nướng ra khay, rắc thêm rau om, ngò gai và đậu phộng. Dùng kèm bún hoặc cơm. Chấm nước mắm me.  ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (18, N'Súp hoành thánh', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Nước dùng gà	1.2 Lít
Tôm sú làm sạch	100g
Lá hoành thánh tươi	15 lá
Gừng băm	1 m
Thịt xay	50g
Hành lá	2 nhánh
Cà rốt	1/2 củ
Củ cải trắng	1/2 củ
Nấm rơm	100g
Rau Nêm: Hành ngò
ĂN KÈM: Xà lách
Gia vị: dầu mè, tiêu, dầu ăn, lòng trắng trứng gà, dầu ăn
Bột ngọt Bột ngọt AJI-NO-MOTO®
Bột canh  BỘT CANH của Ajinomoto', N'– Tôm sú bóc vỏ, xay nhuyễn tôm, thịt với đầu hành lá, 1m lá hành 1/2m Bột Canh, 1 ít tiêu, 1 lòng trắng trứng gà ta, 1m gừng băm và 1/2m dầu mè.

– Gói hoành thánh: Dùng muỗng café, múc nhân vào giữa lá hoành thánh, gói lá hoành thánh lại. Phần lá hoành thánh còn dư cắt sợi.

– Cà rốt, củ cải trắng tỉa hoa, cắt lát dày 3mm. Nấm rơm cắt đôi. Hành lá cắt nhỏ, đầu và lá hành để riêng.', N'– Chiên giòn 1/2 lượng hoành thánh và lá hoành thánh cắt sợi với dầu ăn. Phần hoành thánh còn lại luộc riêng, vớt ra để ráo, trộn với ít dầu ăn.

– Nấu sôi nước dùng, thêm cà rốt, nấm rơm và củ cải trắng vào nấu chín, nêm 1/2M Bột Canh, 1/2m bột ngọt AJI-NO-MOTO®.', N'– Cho hoành thánh chiên và luộc ra tô, múc nước dùng và rau củ vảo, rắc thêm tiêu, hành ngò cùng với lá hoành thánh chiên, dùng kèm xà lách.     ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (19, N'Jambon cuộn thanh cua', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Tôm hấp đông lạnh:	150g
Giò sống:	150g
Jambon lát:	4 lá
Gốc hành lá băm:	1M
Ớt sừng băm:	1M
Tiêu xanh:	2 nhánh
Thanh cua:	16 cây
ĂN KÈM: xà lách, cà chua, dưa chuột ngâm giấm, kiệu chua, dưa leo
Gia vị: tiêu, tương ớt
Xốt Mayonnaise Xốt Mayonnaise Aji-mayo®', N'– Tôm cắt hạt lựu. Cho tôm, giò sống vào tô cùng 1M gốc hành lá băm, 1M ớt sừng băm và 1/2m tiêu sau đó trộn đều và dùng tay quết cho nhân có độ dai.', N'– Trải giấy bạc ra, cho miếng jambon lên trên, tiếp theo trải đều nhân tôm lên mặt, xếp 4 miếng thanh cua theo chiều dài của jambon, cuối cùng là cho tiêu xanh trải đều theo chiều dài và cuộn jambon lại cùng với giấy bạc để định hình. Lần lượt làm cho đến khi hết nhân.

– Cho jambon cuộn vào xửng hấp 12-15 phút, sau đó để nguội và cho vào tủ lạn', N'– Cắt khoanh jambon thành miếng vừa ăn, trang trí cùng xà lách, kiệu chua, dưa chuột ngâm giấm, cà chua và dưa leo. Khi ăn chấm kèm Xốt Mayonnaise Aji-mayo® và tương ớt.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (20, N'Chả mực bánh xe chiên giòn', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Mực lá:	150g
Củ sen:	600g
Đậu petit pois hạt (xanh):	3M
Lá mè to:	10 lá
Giò sống:	50g
Trứng gà:	1 quả
Cà rốt cắt hạt lựu:	1M
Ăn kèm : Cải mầm nhiều màu
Gia vị : Hành tỏi băm, tiêu xanh, đường, ớt sừng, đầu hành lá, dầu ăn, tương xí muội, bột bắp
Gia vị nêm sẵn Gia vị nêm sẵn Aji-Quick® Bột tẩm khô chiên giòn Bột tẩm khô chiên giòn
Hạt nêm Hạt nêm Aji-ngon® Heo Heo
Xốt Mayonnaise Xốt Mayonnaise Aji-mayo®', N'– Mực sơ chế sạch, để ráo.

– Củ sen cắt khoanh dày 4mm, để lại 1 ít cắt hạt lựu (1M), luộc chín củ sen. Đậu petit pois, cà rốt luộc chín.

– Quết mực với 1M hành tỏi băm, 1m đường, 1m Hạt nêm Aji-ngon® Heo, trộn thêm 1M đầu hành băm. Trộn mực với giò sống với 2M tiêu xanh đập dập, đậu petit pois và củ sen cắt hạt lựu.', N'– Tạo hình viên tròn ấn dẹp miếng chả đường kính 5cm, dày 6 ly. Gắn 2 miếng củ sen 2 bên lăn qua Gia vị nêm sẵn Aji-Quick® Bột Tẩm Khô Chiên Giòn. Ấn thêm đậu petit pois và cà rốt cắt hạt lựu xen kẽ vào củ sen.

– Đun nóng dầu ăn, chiên chả mực chín vàng đều, vớt ra để ráo dầu.

– Lá mè quét 1 chút lòng trắng trứng, rắc 1 lớp bột bắp mỏng, sau đó chiên giòn với lửa nhẹ nhỏ, vớt ra để ráo dầu.

– Pha xốt chấm: trộn đều 2M Xốt Mayonnaise Aji-mayo® và 1M tương xí muội.', N'– Bày chả mực bánh xe ra đĩa. Trang trí với lá mè chiên, ăn kèm xốt đã pha.   ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (21, N'Trà sữa thạch kem hạt chia', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Kem tươi:	150g
Sữa đặc: 1/3 lon
Hạt chia:	15g
Bột rau câu giòn (agar): 10g
Vani:	1 ống
RAU NÊM: Húng lủi
Trà Matcha Sữa “Blendy”', N'– Hạt chia ngâm nở. Pha 2 gói Trà Matcha Sữa “Blendy” với 100g nước nóng.

– Cho 650g nước ấm và 10g agar ngâm nở 30 phút, sau đó cho Trà Matcha Sữa “Blendy” đã pha vào đun sôi, rồi vớt bọt, tiếp theo 100g sữa đặc và 150g kem tươi vào đun sôi lại cùng 1 ống vani để cho thạch nguội bớt rồi cho hạt chia đã ngâm nở vào khuấy đều. Sau cùng là đổ ra khay để nguội bỏ tủ lạnh múc viên tròn.', N'– Cho 80ml nước đun sôi hòa tan cùng 2 gói Trà sữa royal “Blendy” cho đá vào bình lắc, lắc đều. Múc thạch ra ly và đổ trà sữa đã pha vào trong tiếp theo là 1 muỗng hạt chia còn lại cho lên trên trang trí húng lủi.', N'– Dùng lạnh kèm ống hút.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (22, N'Bún xào hải sản', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Bún khô	150g
Tôm sú	8 con (200g)
Mực ống	1 con (200g)
Củ hồi (fennel)	150g
Cà chua bi	50g
Hành tây 1/2 củ
Ớt chuông vàng	1/3 trái
Trang trí: Ngò rí
Gia vị: Muối, đường, dầu ăn, tiêu, hành tỏi băm, nước cốt chanh
Nước tương Nước tương 
Bột ngọt Bột ngọt AJI-NO-MOTO®', N'– Tôm sú chẻ lưng, chừa đuôi. Mực ống làm sạch, cắt khoanh 1cm. Ướp tôm mực với 1M hành tỏi, 1m tiêu, 1m muối, 2m đường, 1m bột ngọt AJI-NO-MOTO®, 1M nước cốt chanh.

– Củ hồi cắt sợi. Cà chua bi cắt đôi. Hành tây cắt múi cau. Ớt chuông vàng cắt sợi.

– Bún khô ngâm nước (theo hướng dẫn), để ráo ướp gia vị: 2M nước tương “Phú Sĩ”, 1M đường, 1/2m Bột ngọt AJI-NO-MOTO®.', N'– Phi thơm 2M hành tỏi băm với 2M dầu ăn, xào săn tôm mực, trút ra để riêng. Tiếp tục cho thêm 1M dầu vào chảo xào nhanh củ hồi, hành tây và cà chua bi, thêm bún xào nhanh tay, cho tôm mực trở lại, xốc đều. Tắt lửa.', N'Cho bún xào ra dĩa, rắc tiêu và ngò rí. Dùng kèm nước tương “Phú Sĩ” và ớt cắt lát.    ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (23, N'Sò lông nướng bơ tỏi', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Sò lông con lớn	1kg
Bơ lạt	50g
Tỏi băm	1M
Ngò tây băm	2M
Bột xù 4M
Ớt hiểm xanh cắt nhỏ	1M
Sữa đặc có đường	2M
Cốt chanh	1M
Bột canh  BỘT CANH của Ajinomoto', N'– Sò lông rửa sạch, luộc sò lông vừa chín tách bỏ 1 bên vỏ.

– Xốt bơ tỏi: Xay chung 50g bơ với 1M tỏi, 1M ngò tây, 1/2m Bột Canh.

– Xốt ớt xanh: Xay chung 1M ngò tây còn lại với 1/2M Bột Canh, 1M ớt xanh, 2M sữa đặc, 1M cốt chanh.', N'– Phết bơ tỏi lên mặt sò, rải mỏng bột xù cho vào lò nướng lửa trên 250oC đến khi bột xù vàng.', N'– Xếp sò lông ra dĩa, khi ăn chấm chung với xốt ớt xanh. ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (24, N'Gà kho nấm', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Đùi gà góc tư	1 cái
Nấm đông cô khô	3 tai
Nấm đông cô tươi	5 tai
Bắp non	4 trái
Cà rốt	40g
Hành tỏi băm	1M
Gừng băm	1M
RAU NÊM: Ngò rí
ĂN KÈM: Cơm trắng
Gia vị: Đường, tiêu, dầu ăn
Bột ngọt Bột ngọt AJI-NO-MOTO®
Nước tương Nước tương 
Hạt nêm Hạt nêm Aji-ngon® Gà Gà', N'– Đùi gà chặt miếng vừa ăn, ướp 2m Hạt nêm Aji-ngon® Gà, 1m Bột ngọt AJI-NO-MOTO®, 1m nước tương “Phú Sĩ”, hành tỏi và gừng băm để thấm.

– Nấm đông cô khô ngâm mềm, bỏ chân, cắt lát. Nấm đông cô tươi bỏ chân, cắt lát. Bắp non cắt xéo. Cà rốt tỉa hoa, cắt lát dày 3mm.', N'– Phi 2m đường với dầu ăn làm caramel, cho gà vào xào săn, thêm 1 chén nước xâm xấp gà, kho lửa vừa đến khi gà gần chín, thêm cà rốt và bắp vào nấu. Gà và rau củ vừa chín. Tắt lửa.', N'– Cho gà kho nấm ra dĩa, trang trí ngò rí và rắc thêm tiêu. Dùng nóng với cơm.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (25, N'Canh cá đồng nấu khế', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Cá lóc đồng 2 con
Khế chua 3 trái vừa
Cà chua chín đỏ	1 Trái lớn
Hành tím 30g
Ớt hiểm	3 trái
Sả	3 cây
RAU NÊM: Rau răm, rau quế.
Gia vị: Dầu ăn, nước mắm, đường, ớt bột vẩy, bột nghệ
Bột ngọt Bột ngọt AJI-NO-MOTO®
Hạt nêm Hạt nêm Aji-ngon® Heo Heo', N'– Cá làm sạch khứa nhẹ trên thân cá, cắt đôi.

– Ướp cá: Khuấy đều 1/2m bột nghệ, 1M nước mắm, 1m Bột ngọt AJI-NO-MOTO®  cho cá vào tẩm đều để 15 phút cho cá thấm gia vị.

– Khế cắt bỏ rìa, cắt lát vừa ăn. Cà chua cắt múi cau. Ớt hiểm đập dập. Hành tím đập dập. Sả cắt khúc 5cm, đập dập. Rau nêm cắt nhỏ.', N'– Nấu Canh: Phi thơm hành tím, ớt hiểm và sả đập dập, áp chảo cá săn, gắp ra dĩa, cho cà chua và 1/2M ớt bột vào xào nhanh, cho 1,5 lít nước vào nấu sôi, thêm khế, cá vào nấu để lửa vừa, nêm 1M đường, 1/2m muối, 1M nước mắm, 1M Hạt nêm Aji-ngon® Heo khuấy đều nấu thêm 10 phút cá chín, tắt lửa cho rau răm và rau quế vào.', N'– Múc canh ra tô dùng nóng kèm cơm trắng và nước mắm ớt.    ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (26, N'Súp óc heo tóc tiên', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Óc heo	1 cái
Tóc tiên	2 nhúm nhỏ
Nấm kim châm	80g
Trứng gà	1 quả
Trứng bắc thảo	1 quả
Nước dùng gà	1 lít
Gừng	1 củ nhỏ
Cà rốt cắt sợi	2M
Bột năng
RAU NÊM: Ngò rí
ĂN KÈM: Trứng bắc thảo
Gia vị: Đường, tiêu, bột năng, dầu mè đen
Bột ngọt Bột ngọt AJI-NO-MOTO®
Nước tương Nước tương 
Hạt nêm Hạt nêm Aji-ngon® Heo Heo', N'– Óc heo sơ chế sạch, ngâm rượu. Chưng cách thủy óc heo với 1/2m Hạt nêm Aji-ngon® Heo cùng với một ít tiêu và ít lát gừng. Sau khi óc heo đã chín, để nguội và cắt khối lớn.

– Tóc tiên ngâm nước. Trứng bắc thảo bóc vỏ, cắt hạt lựu lớn. Nấm kim châm cắt khúc. Gừng cắt lát 1/2 củ, cắt sợi 1/2 củ. Trứng gà đánh tan. Bột năng pha loãng với nước.', N'– Nấu sôi nước dùng gà, cho nấm kim châm và cà rốt, nêm 2m Hạt nêm Aji-ngon® Heo, 1m đường, 1m Bột ngọt AJI-NO-MOTO®, thêm trứng gà đánh tan tạo vân cho bột năng vào tạo độ sánh, cho tóc tiên vào sau cùng, khuấy đều , tắt lửa, rắc ngò và tiêu.', N'– Múc súp ra chén, thêm óc heo và trứng bắc thảo lên trên, thêm dầu mè đen, ngò rí và tiêu. Dùng kèm nước tương “Phú Sĩ” và ớt cắt lát.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (27, N'Cá hồi áp chảo xốt tiêu', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Cá hồi	200g
Tiêu xanh	3 nhánh
Nấm linh chi	50g
Hành tây	30g
Hành tỏi băm	1m
Gừng băm	1m
Bột năng	1m
ĂN KÈM: Cơm trắng
Gia vị: đường, bột năng, dầu ăn
Hạt nêm Hạt nêm Aji-ngon® Heo Heo
Bột ngọt Bột ngọt AJI-NO-MOTO®
Giấm gạo lên men Giấm gạo lên men LISA®
Nước tương Nước tương ', N'– Cá hồi sơ chế sạch. Ướp cá với 1 nhánh tiêu xanh đập dập, 2m Nước tương “Phú Sĩ”, 1/2m Bột ngọt AJI-NO-MOTO®, 1/2m đường, 1m dầu ăn, để thấm.

– Nấm linh chi xé nhỏ. Tiêu xanh đập dập, băm sơ. Hành tây cắt múi cau. Bột năng pha loãng với nước.', N'– Cá hồi áp chảo cho chín đều hai mặt.

– Xốt tiêu xanh: Phi thơm hành tỏi gừng băm, cho nấm, 2 nhánh tiêu xanh đập dập và hành tây vào xào, thêm 1/2 chén nước, nêm 2m Nước tương “Phú Sĩ”, 1/2m Hạt nêm Aji-ngon® Heo, 1/2m Bột ngọt AJI-NO-MOTO®, 1m đường, 1 ít Giấm gạo lên men LISA® thêm bột năng pha loãng tạo độ sánh. Cuối cùng, cho thêm 1 m dầu ăn vào tạo độ bóng cho xốt.        ', N'– Cho 1/2 lượng xốt ra dĩa, xếp cá lên trên, rưới phần xốt còn lại lên trên cùng. Dùng nóng với cơm trắng.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (28, N'Càng cua chiên mè xốt Mayo', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Càng cua	8 cái
Giò sống	150g
Hành tây	1/4 củ
Mè đen 1/2M
Ăn kèm : Salad, húng lủi, cà bi
Gia vị: Hành tỏi băm, tiêu, cọng ngò rí, ớt sừng băm, tương xí muội, rượu trắng, gừng, dầu ăn
Gia vị nêm sẵn Gia vị nêm sẵn Aji-Quick® Bột chiên giòn Bột chiên giòn (Tên cũ: Bột Chiên Giòn Hải Sản)
Xốt Mayonnaise Xốt Mayonnaise Aji-mayo®', N'– Chần càng cua qua nước sôi có pha 1M rượu trắng, gừng đập dập. Vớt ra để ráo, trộn với chút tiêu khi càng cua còn nóng.

– Hành tây cắt hạt lựu. Cọng ngò rí băm nhỏ.

– Trộn đều giò sống với 2M hành tây, 1/2M cọng ngò băm, 1/2m tiêu và 1M ớt sừng băm.

– Tạo hình: Bọc giò sống quanh càng cua, chừa càng que nhọn.

– Lấy 2M Gia vị nêm sẵn Aji-Quick® Bột Chiên Giòn để riêng. Phần bột còn lại pha với nước theo tỷ lệ trên bao bì, trộn thêm 1/2M mè.', N'– Đun nóng dầu ăn, chiên lá húng lủi với dầu, vớt ra để ráo. Lần lượt tẩm càng cua qua bột khô, nhúng vào hỗn hợp bột chiên giòn, chừa 2 que nhọn của càng cua ra, chiên càng cua chín vàng, vớt ra để ráo dầu.

– Pha xốt: Trộn đều 2M Xốt Mayonnaise Aji-mayo® và 1M tương xí muội.         ', N'– Xếp càng cua chiên mè ra dĩa, dùng nóng với rau ăn kèm, chấm xốt đã pha.      ', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (29, N'Cháo đậu chà bông cá hồi', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Cá hồi phi lê không da	250g
Xương bọng gà	1 cái
Đậu phộng	100g
Gạo Nhật/gạo nếp	50g
Gạo tẻ	100g
Rau bồ ngót	1 bó
Cà rốt	1/2 củ
Gừng	nhánh 1cm
RAU NÊM: Hành ngò
Gia vị: Rươụ trắng, muối, tiêu, đường, dầu mè, rượu trắng
Hạt nêm Hạt nêm Aji-ngon® Gà Gà
Bột ngọt Bột ngọt AJI-NO-MOTO®', N'– Cá hồi rửa nhanh qua nước muối pha loãng, để ráo.

– Xương gà chặt làm 4 ngâm phai tiết, rửa sạch, để ráo.

– Đậu phộng ngâm 30 phút. Vo sạch gạo. Rau ngót lặt sạch, vò kĩ. Cà rốt cắt hạt lựu. Gừng đập dập. Hành ngò cắt nhỏ.', N'– Nấu cháo: Nấu chung xương gà, đậu phộng, 2 loại gạo với 2 lít nước đến khi gạo đậu nở mềm. Gắp bỏ xương gà thêm cà rốt, rau ngót nêm 1m muối, 1m Bột ngọt AJI-NO-MOTO® và 2m Hạt nêm Aji-ngon® Gà.

– Chà bông: Luộc cá hồi với gừng, 1m rượu trắng đề nguội, xé tơi. Rang nhỏ lửa cá hồi, nêm 1/2m Bột ngọt AJI-NO-MOTO®, 1/2 đường, 1/4m tiêu, 1/4m muối ,1/2m đường,1/2m nước mắm, đến khi cá khô tơi.', N'– Múc cháo ra tô, dùng nóng với chà bông cá hồi, thêm dầu mè và rau nêm.', 1)
INSERT [dbo].[MonAn] ([ID], [ten_MA], [hinhanh_MA], [vungmien_MA], [chude_MA], [nguyenlieu_MA], [soche_MA], [thuchien_MA], [cachdung_MA], [status_MA]) VALUES (30, N'Lẩu nấm tiềm củ quả', NULL, NULL, NULL, N'M: muỗng canh - m: muỗng cafe

Nấm hương ngâm mềm	100g
Nấm đầu khỉ	150g
Táo đỏ khô 50g
Củ năng gọt sạch	100g
Ngưu bàng 100g
Hạt sen tươi (Huế) 100g
Nước lọc	1,6 lít
Tiêu xanh 50g
Hành boaro	50g
ĂN KÈM: Mì trứng, rau xà lách xoong
Gia vị: Dầu ăn, muối, tiêu
Bột ngọt Bột ngọt AJI-NO-MOTO®
Nước tương Nước tương 
Hạt nêm Hạt nêm Aji-ngon® Nấm hương & Hạt sen Nấm hương & Hạt sen', N'– Nấm hương ngâm mềm, cắt bỏ chân. Nấm đầu khỉ ngâm mềm, cắt lát. Táo đỏ ngâm mềm. Củ năng cắt đôi. Ngưu bàng bào vỏ, cắt lát xéo dầy 1,5cm. Tiêu xanh đập dập. Boaro cắt khúc, đập dập. Hạt sen luộc sơ.

– Cho nấm hương, nấm đầu khỉ, củ năng vào tô ướp vào 1m tiêu, 1m Hạt nêm Aji-ngon® (Nấm Hương và Hạt Sen) trộn đều để 15 phút cho thấm gia vị.', N'– Phi thơm hành boaro, xào sơ nấm hương, nấm đầu khỉ, củ năng, thêm 1,6 lít nước vào nấu sôi, để nhỏ lửa cho táo đỏ, hạt sen, tiêu xanh, ngưu bàng vào, nêm 1/2m muối, 1m Bột ngọt AJI-NO-MOTO® và 1/2M Hạt nêm Aji-ngon® (Nấm Hương và Hạt Sen), tiềm đến khi tất cả củ quả mềm, tắt lửa.', N'– Dùng lẩu nóng, nhúng thêm xà lách xoong, ăn kèm mì trứng và chấm Nước tương “Phú Sĩ”.          ', 1)
GO
INSERT [dbo].[TaiKhoan] ([ID], [ten_KH], [cmnd_KH], [email_KH], [std_KH], [ngaysinh_KH], [dsyt_KH], [status_KH]) VALUES (1, N'Bùi Huy Hoàng', 3620008252, N'buihuyhoang9a3@gmai.com', N'0911784363', CAST(N'2000-11-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ThongTinUser] ([ID], [username_TK], [password_TK], [status_TK]) VALUES (1, N'hoangleader', 123456, 1)
INSERT [dbo].[ThongTinUser] ([ID], [username_TK], [password_TK], [status_TK]) VALUES (2, N'liemphotong', 123456, 1)
INSERT [dbo].[ThongTinUser] ([ID], [username_TK], [password_TK], [status_TK]) VALUES (3, N'sonngocnghech', 123456, 1)
INSERT [dbo].[ThongTinUser] ([ID], [username_TK], [password_TK], [status_TK]) VALUES (4, N'phuccucxuc', 123456, 1)
GO
INSERT [dbo].[VungMien] ([ID], [ten_VM], [gioithieu_VM], [status_VM]) VALUES (1, N'Bắc', N'Miền Bắc không chỉ được biết đến qua những danh lam thắng cảnh những ngôi chùa lọt Top thế giới tiêu biểu như Vịnh Hạ Long Sa Pa hay chùa Yên Tử, chùa Tam Chúc, chùa Hương, Bái Đính... mà còn được biết qua câu tục ngữ “Ăn Bắc Mặc Nam” .Vì chia ra thành nhiều tiểu vùng như Đồng bằng sông Hồng, Tây Bắc, Đông Bắc.. và khí hậu lại có bốn mùa xuân hạ thu đông nên ẩm thực miền Bắc rất đa dạng và đặc trưng.', 1)
INSERT [dbo].[VungMien] ([ID], [ten_VM], [gioithieu_VM], [status_VM]) VALUES (2, N'Trung', N'Với những món đặc sản miền Trung vô cùng phong phú và đa dạng, mỗi địa phương có cho mình những sản vật món ăn thơm ngon, hấp dẫn, góp phần tô điểm thêm nét đậm đà mang bản sắc riêng, hương vị riêng cho mảnh đất cằn cỗi, đầy nắng và gió này.', 1)
INSERT [dbo].[VungMien] ([ID], [ten_VM], [gioithieu_VM], [status_VM]) VALUES (3, N'Nam', N'Nếu như ẩm thực miền Bắc chú trọng sự tinh tế và cầu kỳ, miền Trung đậm đà hương vị thì văn hóa ẩm thực miền Nam mang nét chân chất, giản đơn rất riêng. Hãy cùng Đào Tạo Bếp Trưởng Á Âu khám phá những nét đặc trưng văn hóa ẩm thực miền Nam nhé.
Khi nhắc đến miền Nam thì người ta thường nghĩ đến câu “dưới sông có cá, trên bờ có rau”. Đây là một vùng đất phì nhiêu, màu mỡ được bồi đắp bởi hệ thống các sông, kênh, rạch chằng chịt. Miền Nam luôn được thiên nhiên ưu đãi rất nhiều sản vật đa dạng, phong phú. Ẩm thực Nam Bộ mang nét phóng khoáng và hoang dã bởi chính thiên nhiên trù phú và hào phóng của miền sông nước phương Nam.', 1)
GO
