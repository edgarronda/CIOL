using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CIOL.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public ActionResult Opportunitylist()
        {
            try
            {
                return Json("test");
            }
            catch (Exception e)
            {
                return Json(e);
            }
        }


    }
}