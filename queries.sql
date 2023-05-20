insert into blogger (username,password,name,created_at,email)
values 
('user_1','123455','userOne','2001-01-03','userOne@test.com'),
('user_2','1789','userTwo','2011-03-11','userTwo@test.com'),
('user_3','3489','userThree','2015-06-11','userThree@test.com');

insert into blog_post(content,title,created_at,blogger_id)
values
('this is the first blog content','title_one','2018-05-02','1'),
('this is the second blog content','title_two','2019-06-06','2'),
('this is the third blog content','title_one','2018-05-02','2'),
('this is the fourth blog content','title_two','2019-03-01','1'),
('this is the fifth blog content','title_three','2020-05-02','3'),
('this is the sixth blog content','title_three','2017-02-04','3');

insert into blog_post_comment(content,created_at,blogger_id,blog_post)
values 
('this is the first content','2020-01-02',1,1),
('this is the second content','2023-01-02',2,1),
('this is the third content','2017-03-02',3,2),
('this is the fourth content','2020-04-04',1,3),
('this is the fifth content','2018-06-07',1,2);

select blogger.name  from blogger 
where blogger.created_at>='2020-01-01';

update blogger 
set password='bad_password' where password='pass'

select b.username,bp.content,bp.title
from blogger b inner join blog_post bp on b.id=bp.blogger_id 
where bp.id;

select  b.username,bp.title,bpc.content
from blogger b inner join blog_post_comment bpc on b.id=bpc.blogger_id 
inner join blog_post bp on bp.id=bpc.blog_post ;

delete bpc
from blog_post_comment bpc 
where bpc.content REGEXP 'delete me';