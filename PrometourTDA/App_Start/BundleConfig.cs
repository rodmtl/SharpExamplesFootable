using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace PrometourTDA.App_Start
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254726
        public static void RegisterBundles(BundleCollection bundles)
        {
            // Order of CSS or Js
            // 1. JQuery
            // 2. Bootstrap

            #region JS / SCRIPT

            bundles.Add(new ScriptBundle("~/bundles/jQuery").Include(
                "~/Scripts/jquery-2.1.4.js"
                //, "~/Scripts/jquery-2.1.4.intellisense.js"
                , "~/Scripts/bootstrap.js"
                ));


            #endregion

            #region CSS / STYLE

            bundles.Add(new StyleBundle("~/bundles/BootstrapCss").Include(
                   "~/Content/bootstrap.css"
                   , "~/Content/bootstrap-theme.css"
                   ));

            #endregion

            // Enable bundle optimization.
            BundleTable.EnableOptimizations = true;
        }
    }
}