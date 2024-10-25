using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DistributeurATM.Model.Source
{
    public class AClassCollection : ObservableCollection<AClass>
    {
        public bool AddNow(AClass Comptebancaire)
        {
            if (!this.Any(r => r.ID == Comptebancaire.ID))
            {
                this.Add(Comptebancaire);

                return true;
            }

            return false;
        }

        public bool DeleteNow(string Username)
        {
            var ComptebancaireToDelete = this.FirstOrDefault(r => r.Name == Username);
            if (ComptebancaireToDelete != null)
            {
                this.Remove(ComptebancaireToDelete);

                return true;
            }

            return false;
        }

        public bool DeleteByID(int ID)
        {
            var ComptebancaireToDelete = this.FirstOrDefault(r => r.ID == ID);
            if (ComptebancaireToDelete != null)
            {
                this.Remove(ComptebancaireToDelete);

                return true;
            }

            return false;
        }
    }
}
