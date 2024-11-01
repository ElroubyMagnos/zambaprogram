using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.Utilities.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DistributeurATM.ViewModel.EmployeeGroup
{
    public class AddCustomersViewModel : BaseViewModel
    {
        public AddCustomersViewModel() : base(new AlertServiceDisplay())
        {
        }
    }
}
