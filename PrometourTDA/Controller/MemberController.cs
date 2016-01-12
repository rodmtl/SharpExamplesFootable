using Newtonsoft.Json;
using PrometourTDA.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace PrometourTDA.Controller
{
    public class MemberController : ApiController
    {
        Repository _repository = new Repository();

        [HttpGet]
        [ActionName("GetMembers")]
        public string GetMembers()
        {
            List<Member> members = _repository.GetMembers();
            //return JsonConvert.SerializeObject(members);
            return JsonConvert.SerializeObject(new { members = members });
        }
    }
}
