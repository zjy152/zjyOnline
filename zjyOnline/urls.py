import xadmin

from django.urls import path,include,re_path

from django.views.generic import TemplateView
from apps.users.views import LoginView, RegisterView, ActiveUserView, ForgetPwdView, ModifyPwdView,ResetView,LogoutView
from apps.organization.views import OrgView

from django.views.static import serve
from zjyOnline.settings import MEDIA_ROOT


urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    path('', TemplateView.as_view(template_name='index.html'), name='index'),
    path('login/', LoginView.as_view(), name='login'),  # 登录
    path('logout/', LogoutView.as_view(), name="logout"),   # 退出登录
    path('register/', RegisterView.as_view(), name='register'),  # 注册
    path('forget/', ForgetPwdView.as_view(), name='forget_pwd'),    # 忘记密码
    path('modify_pwd/', ModifyPwdView.as_view(), name='modify_pwd'),    # 重置密码
    path('captcha/',include('captcha.urls')),       # 验证码
    re_path('active/(?P<active_code>.*)/',ActiveUserView.as_view(), name='user_active'),    # 邮箱登录
    re_path('reset/(?P<active_code>.*)', ResetView.as_view(), name='reset_pwd'),                # 修改密码


    path("users/", include('users.urls', namespace="users")),        # 个人信息
    path('org/',include('apps.organization.urls',namespace="org")),     # 课程机构
    path('course/',include('apps.course.urls',namespace="course")),     # 课程

    # 文件
    path('media/<path:path>/', serve, {'document_root': MEDIA_ROOT}),
    path('ueditor/', include('DjangoUeditor.urls')),        # 富文本编辑

    # 处理图片显示的url,使用Django自带serve,传入参数告诉它去哪个路径找，我们有配置好的路径MEDIAROOT
    re_path(r'^media/(?P<path>.*)', serve, {"document_root": MEDIA_ROOT })
]
