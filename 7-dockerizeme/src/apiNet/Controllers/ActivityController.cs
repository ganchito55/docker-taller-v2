using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using apiNet.Model;
using Microsoft.AspNetCore.Mvc;

namespace apiNet.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ActivityController : ControllerBase
    {
        // GET api/activity
        [HttpGet]
        public ActionResult<IEnumerable<Activity>> Get()
        {
            var activities =  Activity.GetActivities();
            return Ok(activities);
        }       
    }
}
