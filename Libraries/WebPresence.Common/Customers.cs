using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebPresence.DataAccessLayer;

namespace WebPresence.Common
{
    public  class Customers
    {

       

        public  List<Role> GetRole()
        {
            try
            {
                using (WebPresenceEntities _context = new WebPresenceEntities())
                {
                    return (from rl in _context.Roles
                            orderby rl.Name
                            select rl).ToList();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public  UserLogin GetUserByEmail(string Email)
        {
            using (WebPresenceEntities _context = new WebPresenceEntities())
            {
                return _context.UserLogins.Include("Customer").Include("Role").Where(x => x.EmailId == Email).FirstOrDefault();
            }
        }


        public  string InsertOrUpdateUser(Customer usr)
        {
            try
            {
                using (WebPresenceEntities _context = new WebPresenceEntities())
                {
                    if (usr.ID > 0)
                    {
                        _context.Customers.Single(o => o.ID == usr.ID);
                        _context.Customers.ApplyCurrentValues(usr);
                    }
                    else
                    {
                        _context.Customers.AddObject(usr);
                    }

                    _context.SaveChanges();
                    return usr.ID.ToString();
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public  string PhoneNum_V2(string p)
        {
            try
            {
                string inVal = p.Trim();
                char[] newPhon = new char[inVal.Length];
                int i = 0;
                foreach (char c in inVal)
                    if (c.CompareTo('0') >= 0 && c.CompareTo('9') <= 9)
                        newPhon[i++] = c;
                inVal = new string(newPhon, 0, 10);
                return inVal.Trim();
            }
            catch { return ""; }
        }

        public static UserLogin EmailVerification(int CustomerID, string EmailID, string VerificationCode)
        {
            try
            {
                using (WebPresenceEntities _context = new WebPresenceEntities())
                {
                    return _context.UserLogins.Where(x => x.CustomerId == CustomerID && x.EmailId == EmailID && x.EmailVerificationCode == VerificationCode).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
