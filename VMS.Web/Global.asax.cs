﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using VMS.App_Start;
using VMS.Controllers;
using VMS.Models;
using VMS.Utils;

namespace VMS
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            WebApiConfig.Register(GlobalConfiguration.Configuration);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            log4net.Config.XmlConfigurator.Configure();
            //应用程序启动时，自动加载配置log4Net  
            //XmlConfigurator.Configure();
            //注册自定义ControllerFactory
            //ControllerBuilder.Current.SetControllerFactory(new CustomControllerFactory());

            //开启一个线程，用于扫描异常信息队列
            ThreadPool.QueueUserWorkItem((a) =>
            {
                while (true)
                {
                    if (MvcExceptionAttribute.exceptionQueue.Count() > 0)
                    {
                        Exception ex = MvcExceptionAttribute.exceptionQueue.Dequeue();

                        if (ex != null)
                        {
                            //将异常信息写到日志文件中
                            Log4NetHelper.Error(ex.StackTrace);
                        }
                        else
                        {
                            Thread.Sleep(3000);
                        }
                    }
                    else
                    {
                        Thread.Sleep(3000);
                    }
                }
            });
        }
        public override void Init()
        {
            //注册事件
            this.AuthenticateRequest += WebApiApplication_AuthenticateRequest;
            base.Init();
        }

        //开启session支持
        void WebApiApplication_AuthenticateRequest(object sender, EventArgs e)
        {
            //启用 webapi 支持session 会话
            HttpContext.Current.SetSessionStateBehavior(System.Web.SessionState.SessionStateBehavior.Required);
        }
    }
}
