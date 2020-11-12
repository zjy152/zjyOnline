from datetime import datetime


from django.db import models
from django.contrib.auth.models import AbstractUser
from DjangoUeditor.models import UEditorField
# Create your models here.


class UserProfile(AbstractUser):

    GENDER_CHOICES = (
        ('male', ' 男'),
        ('female', '女')
    )


    nick_name = models.CharField(max_length=50, default='',verbose_name='昵称')
    birthday = models.DateField(null=True,blank=True,verbose_name='生日')
    gender = models.CharField( max_length=10,choices=GENDER_CHOICES,default='female',verbose_name='性别')
    address = UEditorField(max_length=100, default='',verbose_name='地址')
    mobile = models.CharField(max_length=11,null=True,blank=True,verbose_name='手机号')
    # 头像
    head_portrait  = models.ImageField(upload_to='image/%Y%m',default='image/default.png',max_length=100)
    image = models.ImageField(upload_to='image/%Y%m', default='image/default.png', max_length=100)

    class Meta:
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name


    def __str__(self):
        return self.username


# 验证码
class EmailVerifyRecord(models.Model):
    send_choices = (
        ('register', '注册'),
        ('forget', '找回密码'),
        ('update_email', '修改邮箱')
    )


    code = models.CharField(max_length=20,verbose_name='验证码')
    email = models.EmailField(max_length=50,verbose_name='邮箱')
    send_type = models.CharField(choices=send_choices,max_length=30)
    send_time = models.DateTimeField(default=datetime.now)


    class Meta:
        verbose_name = '邮箱验证码'
        verbose_name_plural = verbose_name


# 轮播图
class Banner(models.Model):
    title = models.CharField(max_length=100,verbose_name='标题')
    # 轮播图
    slideshow = models.ImageField(upload_to='banner/%Y%m',max_length=100,verbose_name='轮播图')
    url = models.URLField(max_length=200,verbose_name='访问地址')
    # 序列 顺序
    sequence = models.IntegerField(default=100,verbose_name='顺序')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')


    class Meta:
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name