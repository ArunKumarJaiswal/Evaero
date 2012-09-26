using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebPresence.DataAccessLayer;

namespace WebPresence.Common
{
    public class DomainManager
    {
        public static DomainConfigure GetDomainConfigureInfo(int DomainID)
        {
            try
            {
                using (WebPresenceEntities _context = new WebPresenceEntities())
                {
                    return _context.DomainConfigures.Where(x => x.DomainId == DomainID).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static string InsertOrUpdateDomain(Domain domainDtls)
        {
            try
            {
                using (WebPresenceEntities _context = new WebPresenceEntities())
                {
                    if (domainDtls.ID > 0)
                    {
                        _context.Domains.Single(o => o.ID == domainDtls.ID);
                        _context.Domains.ApplyCurrentValues(domainDtls);
                    }
                    else
                    {
                        _context.Domains.AddObject(domainDtls);
                    }
                    _context.SaveChanges();
                    return domainDtls.ID.ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static string InsertOrUpdateDomainConfigure(DomainConfigure domainConfigure)
        {
            try
            {
                using (WebPresenceEntities _context = new WebPresenceEntities())
                {
                    if (domainConfigure.Id > 0)
                    {
                        _context.DomainConfigures.Single(o => o.Id == domainConfigure.Id);
                        _context.DomainConfigures.ApplyCurrentValues(domainConfigure);
                    }
                    else
                    {
                        _context.DomainConfigures.AddObject(domainConfigure);
                    }
                    _context.SaveChanges();
                    return domainConfigure.Id.ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}