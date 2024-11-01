using CommunityToolkit.Mvvm.ComponentModel;
using DistributeurATM.Interfaces;
using DistributeurATM.Model.Source;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static DistributeurATM.Interfaces.StaticData;

namespace DistributeurATM.Model
{
    public class Customer : AClass, INotifyPropertyChanged
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

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public decimal Money 
        {
            get => money; 
            set
            {
                money = value;
                
                OnPropertyChanged(nameof(Money));

                SQL.SetMoney(ID, money);
            }
        }
    }
}
