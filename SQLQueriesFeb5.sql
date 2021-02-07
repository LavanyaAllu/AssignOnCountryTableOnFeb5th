use WFA3DotNet

Create Table Country  
(  
   CountryId Int Primary Key,  
   County Varchar(30)  
)  

Create Table StateTable
(  
   StateId Int Primary Key,  
   CountryId Int Foreign Key References Country(CountryId),  
   State Varchar(30)  
)  

Create Table CityTable  
(  
   CityId Int,  
   StateId Int Foreign Key References StateTable(StateId),  
   City Varchar(30)  
)  


Insert Into Country Values(101,'India')  
Insert Into Country Values(102,'Russia')  
Insert Into Country Values(103,'Japan')  
Insert Into Country Values(104,'Afganistan')  
Insert Into Country Values(105,'China')  


select * from Country

Insert Into StateTable Values(11,101,'Punjab')  
Insert Into StateTable Values(12,101,'Kerala')  
Insert Into StateTable Values(13,101,'Tamilnadu')  
Insert Into StateTable Values(21,102,'kiwi')  
Insert Into StateTable Values(22,102,'corg')  
Insert Into StateTable Values(23,102,'Goart')  
Insert Into StateTable Values(31,103,'Pura')  
Insert Into StateTable Values(32,103,'Carni')  
Insert Into StateTable Values(33,103,'Sincha')
Insert Into StateTable Values(41,104,'Agasta')  
Insert Into StateTable Values(42,104,'Hancia')  
Insert Into StateTable Values(43,104,'Karnia')  
Insert Into StateTable Values(51,105,'Rentia')  
Insert Into StateTable Values(52,105,'Jobha')  
Insert Into StateTable Values(53,105,'Khani')  

select * from StateTable

Insert Into CityTable Values(1,11,'Kaza')  
Insert Into CityTable Values(2,11,'Bhurg')  
Insert Into CityTable Values(3,12,'Pavili')  
Insert Into CityTable Values(4,12,'Ceria')  
Insert Into CityTable Values(5,13,'Kanaga')  
Insert Into CityTable Values(6,13,'Harori')  
Insert Into CityTable Values(7,21,'Pupal')  
Insert Into CityTable Values(8,21,'Yagar')  
Insert Into CityTable Values(9,22,'Bindha')  
Insert Into CityTable Values(10,22,'Calia')  
Insert Into CityTable Values(11,23,'Tavi')  
Insert Into CityTable Values(12,23,'Lati')  
Insert Into CityTable Values(13,31,'Hore')  
Insert Into CityTable Values(14,31,'Failand')  
Insert Into CityTable Values(15,32,'Que')  
Insert Into CityTable Values(16,32,'Nasir')  
Insert Into CityTable Values(17,33,'Rachi')  
Insert Into CityTable Values(19,33,'Khas')
Insert Into CityTable Values(20,41,'Hatan')
Insert Into CityTable Values(21,41,'Yanar')
Insert Into CityTable Values(22,42,'Goli')
Insert Into CityTable Values(23,42,'Nagur')
Insert Into CityTable Values(24,43,'Dhagar')
Insert Into CityTable Values(25,43,'Meou')
Insert Into CityTable Values(26,51,'Pagan')
Insert Into CityTable Values(27,51,'Janger')
Insert Into CityTable Values(28,52,'Goher')
Insert Into CityTable Values(29,52,'Venis')
Insert Into CityTable Values(30,53,'Bhager')
Insert Into CityTable Values(31,53,'Japar')

select * from CityTable





