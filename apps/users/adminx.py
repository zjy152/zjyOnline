import xadmin
from apps.users.models import UserProfile
from xadmin import views


class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


# 全局修改，固定写法
class GlobalSettings(object):
    '''
        设置网站标题和页脚
    '''
    site_title = "在线教育后台管理系统"
    site_footer = "Powered By 1906c - 2020"
    menu_style = "accordion"            # 设置菜单折叠


class UserProfileAdmin(object):
    list_display = ['username','gender','mobile','address']
    search_fields = ['username','gender','mobile','address']
    list_filter = ['username','gender','mobile','address']
    model_icon = 'fa fa-user'

    # 显示为富文本的字段
    style_fields = {"address": "ueditor"}
    ordering = ['date_joined']          # 排序
    readonly_fields = ['nick_name']    # 只读字段，不能编排
    exclude = ['fav_nums']              # 不显示的字段
    list_editable = ['mobile']          # 可编辑的字段
    refresh_times = [3, 5]              # 自动刷新时间设置为3秒和5秒



xadmin.site.register(views.BaseAdminView,BaseSetting)
xadmin.site.register(views.CommAdminView,GlobalSettings)

xadmin.site.unregister(UserProfile)
xadmin.site.register(UserProfile,UserProfileAdmin)