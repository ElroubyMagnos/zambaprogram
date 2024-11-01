using DistributeurATM.Interfaces;
using DistributeurATM.Model.Source;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DistributeurATM.Model.EmployeeGroup
{
    public class Employee : AClass
    {
        public string Password { get; set; }
        public StaticData.EmployeeType Type { get; set; }

        public Employee(int id, string username, string password, StaticData.EmployeeType type) : base(id, username)
        {
            ID = id;
            Name = username;
            Password = password;
            Type = type;
        }
    }
}
