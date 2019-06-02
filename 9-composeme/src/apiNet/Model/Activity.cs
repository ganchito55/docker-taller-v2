using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace apiNet.Model
{    
    public class Activity 
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int ClientId { get; set; } 

        public static IEnumerable<Activity> GetActivities(){
                yield return new Activity{Id = 1, Description = "Email enviado", ClientId = 333};
                yield return new Activity{Id = 2, Description = "Contacto realizado", ClientId = 4444};
                yield return new Activity{Id = 3, Description = "Contacto realizado", ClientId = 5555};
                yield return new Activity{Id = 4, Description = "Contacto realizado", ClientId = 6666};
        }
    }
}
