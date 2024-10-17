using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DistributeurATM.Model
{
    public class Comptebancaire
    {
        public Comptebancaire(int ID, string Username, string Password, bool Interne, decimal Money) 
        {
            this.ID = ID;
            this.Username = Username;
            this.Password = Password;
            this.Interne = Interne;
            this.Money = Money;
        }
        public int ID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public bool Interne { get; set; }
        public decimal Money { get; set; }
    }
}
