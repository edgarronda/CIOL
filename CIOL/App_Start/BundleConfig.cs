using System.Web;
using System.Web.Optimization;

namespace CIOL
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-3.4.1.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.min.js",
                      "~/Scripts/moment.js"
                      ));

            bundles.Add(new ScriptBundle("~/bundles/datatables").Include(
                   "~/Scripts/jquery.dataTables.min.js",
                   "~/Scripts/dataTables.bootstrap4.min.js",
                   "~/Scripts/buttons.html5.min.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                    "~/Content/bootstrap.min.css",
                    "~/Content/jquery.dataTables.min.css",                                         
                    "~/Content/dataTables.bootstrap4.min.css",
                    "~/Content/site.css"));

        }
    }
}
