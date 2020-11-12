from datetime import datetime


from django.db import models

# Create your models here.


# CityDict 城市信息
class CityDict(models.Model):
    name = models.CharField(max_length=20, verbose_name="城市")
    desc = models.CharField(max_length=200, verbose_name="描述")
    add_time = models.DateTimeField(default=datetime.now)


    class Meta:
        verbose_name = "城市"
        verbose_name_plural = verbose_name


    def __str__(self):
        return self.name


# 课程机构基本信息
class CourseOrg(models.Model):
    ORG_CHOICES = (
        ("pxjg", u'培训机构'),
        ("gx", u"高校"),
        ("gr", u"个人"),
    )


    name = models.CharField(max_length=50,verbose_name="机构名称")
    desc = models.TextField(verbose_name="机构描述")
    category = models.CharField(max_length=20, choices=ORG_CHOICES, default="pxjg",verbose_name=u"机构类别")
    click_nums = models.IntegerField(default=0,verbose_name="点击数")
    fav_nums = models.IntegerField(default=0,verbose_name="收藏数")
    students = models.IntegerField(default=0,verbose_name="学习人数")
    course_nums = models.IntegerField(default=0,verbose_name="课程数")
    image = models.ImageField(upload_to='org/%Y%m', max_length=100, verbose_name="封面图")
    address = models.CharField(max_length=150, verbose_name="机构地址")
    city = models.ForeignKey(CityDict,on_delete=models.CASCADE,verbose_name='所在城市')
    add_time = models.DateTimeField(default=datetime.now)


    class Meta:
        verbose_name = "课程机构"
        verbose_name_plural = verbose_name

    def get_teacher_nums(self):
        # 获取机构的教师数
        return self.teacher_set.all().count()

    def __str__(self):
        return self.name

# Teacher 教师基本信息
class Teacher(models.Model):
    org = models.ForeignKey(CourseOrg,on_delete=models.CASCADE,verbose_name="所属机构")
    name = models.CharField(max_length=50,verbose_name="教师名")
    work_years = models.IntegerField(default=0,verbose_name="工作年限")
    work_company = models.CharField(max_length=50,verbose_name="就职公司")
    points = models.CharField(max_length=50,verbose_name="教学特点")
    click_nums = models.IntegerField(default=0,verbose_name="点击数")
    fav_nums = models.IntegerField(default=0,verbose_name="收藏数")
    add_time = models.DateTimeField(default=datetime.now)
    image = models.ImageField(default='',upload_to="teacher/%Y/%m",max_length=100,verbose_name="头像")
    teacher_age = models.IntegerField(default=25,verbose_name="年龄")


    class Meta:
        verbose_name = "教师"
        verbose_name_plural = verbose_name


    def get_course_nums(self):
        return self.course_set.all().count()


    def __str__(self):
        return "[{0}]的教师： {1}".format(self.org,self.name)


