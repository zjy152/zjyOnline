from datetime import datetime


from django.db import models
from apps.organization.models import CourseOrg,Teacher

# Create your models here.


# Course课程表
class Course(models.Model):

    DEGREE_CHOICES = (
        ('cj', '初级'),
        ('zj', '中级'),
        ('gj', '高级'),
    )

    name = models.CharField(max_length=50, verbose_name="课程名")
    desc = models.CharField(max_length=300, verbose_name="课程描述")
    detail = models.TextField(verbose_name="课程详情")
    degree = models.CharField(choices=DEGREE_CHOICES,max_length=2,verbose_name="难度")
    learn_times = models.IntegerField(default=0,verbose_name='学习时长(分钟数)')
    students = models.IntegerField(default=0,verbose_name="学习人数")
    fav_nums = models.IntegerField(default=0,verbose_name="收藏人数")
    image = models.ImageField(upload_to="courses/%Y/%m",max_length=200,verbose_name="封面图")
    click_nums = models.IntegerField(default=0,verbose_name="点击数")
    tag = models.CharField(default='', max_length=10, verbose_name="课程标签")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")
    course_org = models.ForeignKey(CourseOrg, on_delete=models.CASCADE, null=True, blank=True,verbose_name="所属机构")
    category = models.CharField(max_length=20, default="", verbose_name="课程类别")
    teacher = models.ForeignKey(Teacher,null=True, blank=True, on_delete=models.CASCADE, verbose_name="讲师")
    youneed_know = models.CharField(max_length=300, default='',verbose_name="课程须知")
    teacher_tell = models.CharField( max_length=300, default='',verbose_name="老师告诉你")


    class Meta:
        verbose_name = "课程"
        verbose_name_plural = verbose_name

    def get_zj_nums(self):
        # 获取课程的章节数
        return self.lesson_set.all().count()

    def get_learn_users(self):
        # 获取这门课程的学习用户
        return self.usercourse_set.all()[:5]

    def get_course_lesson(self):
        # 获取课程的章节
        return self.lesson_set.all()

    def __str__(self):
        return self.name


# Lesson 章节信息表
class Lesson(models.Model):
    course = models.ForeignKey(Course,on_delete=models.CASCADE,verbose_name='课程')
    name = models.CharField(max_length=100,verbose_name="章节名")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")


    class Meta:
        verbose_name = "章节"
        verbose_name_plural = verbose_name

    def get_lesson_video(self):
        # 获取章节所有视频
        return self.video_set.all()

    def __str__(self):
        return '<<{0}>> 课程的章节 >> {1}'.format(self.course,self.name)



# Video 视频
class Video(models.Model):
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE, verbose_name="章节")
    name = models.CharField(max_length=100, verbose_name="视频名")
    url = models.CharField(default='',max_length=200,verbose_name="访问地址")
    learn_times = models.IntegerField(default=0,verbose_name="学习时长(分钟数)")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")


    class Meta:
        verbose_name = "视频"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


# CourseResourse 课程资源
class CourseResourse(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE,verbose_name="课程")
    name = models.CharField(max_length=100,verbose_name="名称")
    download = models.FileField(upload_to="course/%Y/%m",max_length=100,verbose_name="资源文件")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")


    class Meta:
        verbose_name = "课程资源"
        verbose_name_plural = verbose_name


