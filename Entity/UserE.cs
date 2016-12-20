﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class UserE
    {
        public int UserID { get; set; }
        public int AddressID { get; set; }
        public string UserEmail { get; set; }
        public string UserPassword { get; set; }
        public string UserName { get; set; }
        public string UserSurname { get; set; }
        public string UserPhone { get; set; }
        public string UserBodyPhoto { get; set; }
        public DateTime UserBirth { get; set; }

        public String getNameSurname()
        {
            return UserSurname + " " + UserSurname;
        }

    }
}
