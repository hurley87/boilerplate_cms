using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Klick.Cms.Controllers;

namespace Purple.Test.Controllers {
	public class HomeController : CmsControllerBase {
		
		public virtual ActionResult Index() {
			return View();
		}	
	}
}
