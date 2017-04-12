<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/static/img/avatar5.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>TinyKing</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li class="header">导航菜单</li>       
            <@jcs_menus>
                <#list tag_menus as menu>
                    <li class="
                     <#if menu.menus?? && (menu.menus?size > 0) >
                        treeview
                     </#if>
                    ">
                        <a href="${menu.link}">
                            <i class="fa ${menu.icon}"></i> <span>${menu.name}</span>
                        
                    <#if menu.menus?? && (menu.menus?size > 0) >
                        <span class="pull-right-container">
                          <i class="fa fa-angle-left pull-right"></i>
                        </span>
                        </a>
                        <ul class="treeview-menu">
                        <#list menu.menus as m>
                            <li><a href="${m.link}"><i class="fa ${m.icon}"></i> ${m.name}</a></li>
                        </#list>
                        </ul>
                    <#else >
                        </a>
                    </#if>
                    </li>
                </#list>
            </@jcs_menus>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>