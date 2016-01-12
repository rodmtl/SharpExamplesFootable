using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Web;
using System.Web.Http;

namespace PrometourTDA.App_Start
{
    public class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
           config.EnableCors();

           config.Routes.MapHttpRoute(
              name: "DefaultApi",
              routeTemplate: "api/{controller}/{Action}/{id}",
              defaults: new { Controller = "Product", 
              Action = "GetHelloWorld", id = RouteParameter.Optional }
           );
           // To return json return
           config.Formatters.JsonFormatter.SupportedMediaTypes.Add(new MediaTypeHeaderValue("text/html"));
        }
    }
    
}