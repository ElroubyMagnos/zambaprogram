using DistributeurATM.Interfaces;
using DistributeurATM.Model.Source;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static DistributeurATM.Interfaces.StaticData;

namespace DistributeurATM.Model
{
    public class Customer : AClass
    {
        public Customer(int ID, string Username, string Password, decimal Money) : base(ID, Username)
        {
            this.ID = ID;
            this.Name = Username;
            this.Password = Password;
            this.Money = Money;
        }
        public string Password { get; set; }
        private decimal money;
        public decimal Money 
        {
            get => money; 
            set
            {
                money = value;

                SQL.SetMoney(ID, money);
            }
        }
    }
}
