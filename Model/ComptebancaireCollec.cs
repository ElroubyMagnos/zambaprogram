using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DistributeurATM.Model
{
    public class ComptebancaireCollection : ObservableCollection<Comptebancaire>
    {
        public void AddComptebancaire(Comptebancaire Comptebancaire)
        {
            if (!this.Any(r => r.ID == Comptebancaire.ID))
            {
                this.Add(Comptebancaire);
            }
        }


        public void DeleteComptebancaire(string Username)
        {
            var ComptebancaireToDelete = this.FirstOrDefault(r => r.Username == Username);
            if (ComptebancaireToDelete != null)
            {
                this.Remove(ComptebancaireToDelete);
            }
        }
        public void DeleteComptebancaire(int ID)
        {
            var ComptebancaireToDelete = this.FirstOrDefault(r => r.ID == ID);
            if (ComptebancaireToDelete != null)
            {
                this.Remove(ComptebancaireToDelete);
            }
        }
    }
}
