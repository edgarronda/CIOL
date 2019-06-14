using System;
using CIOL.Models;
using System.Data;
using System.Data.Entity;
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
                using (CIOLEntities ce = new CIOLEntities())
                {
                    var result = ce.OportunityLists.Select(x => new {
                        x.date_added,
                        x.entered_by,
                        x.description,
                        x.counter_measure,
                        x.person_responsible,
                        x.due_date,
                        x.completion_porcent
                    }).ToList();
                    return Json(result);
                }
            }
            catch (Exception e)
            {
                return Json(e);
            }
        }


    }
}