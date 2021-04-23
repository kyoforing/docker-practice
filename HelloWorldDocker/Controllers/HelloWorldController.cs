using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HelloWorldDocker.Controllers
{
    [Route("/")]
    public class HelloWorldController : Controller
    {
        [HttpGet]
        public string Index()
        {
            return "Hello World!";
        }
    }
}
