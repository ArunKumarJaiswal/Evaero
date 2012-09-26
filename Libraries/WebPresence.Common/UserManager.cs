using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebPresence.DataAccessLayer;

namespace WebPresence.Common
{
    public class UserManager
    {
        public static UserLogin RecoverPassword(UserLogin user)
        {
            using (WebPresenceEntities _context = new WebPresenceEntities())
            {
                return (from login in _context.UserLogins
                        where login.EmailId.Equals(user.EmailId)
                        select login).FirstOrDefault();
            }
        }

        public static bool ChangePassword(UserLogin user)
        {
            using (WebPresenceEntities _context = new WebPresenceEntities())
            {
                var NewPassword = (from n in _context.UserLogins
                                    where n.EmailId == user.EmailId
                                    select n).First();
                NewPassword.Password = user.Password;
                int i = _context.SaveChanges();
                if (i > 0)
                    return true;
                else
                    return false;
            }
        }

        public static List<Role> GetRole()
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
        
        public static UserLogin GetUserByEmail(string Email)
        {
            using (WebPresenceEntities _context = new WebPresenceEntities())
            {
                return _context.UserLogins.Include("Customer").Include("Role").Where(x => x.EmailId == Email).FirstOrDefault();
            }
        }


        public static string InsertOrUpdateUserLogin(UserLogin usr)
        {
            try
            {
                 using (WebPresenceEntities _context = new WebPresenceEntities())
                {
                    if (usr.Id > 0)
                    {
                        _context.UserLogins.Single(o => o.Id == usr.Id);
                        _context.UserLogins.ApplyCurrentValues(usr);
                    }
                    else
                    {
                        _context.UserLogins.AddObject(usr);
                    }
                    _context.SaveChanges();
                    return usr.Id.ToString();
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        
        public static string PhoneNum_V2(string p)
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

    }
}
