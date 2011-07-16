using System.Collections.Generic;
using System.Linq;

using ProductSite.Data;

namespace ProductSite.Web.Services {
    public class UserService : ServiceBase {
        public object SaveUser(User user) {
            if (user.UserID > 0)
                return base.GetRepository<User>().Update(user);

            return base.GetRepository<User>().Add(user);
        }

        public List<User> GetUsers() {
            return base.db.Users.ToList();
        }

        public User ValidateUser(string username, string password) {
            return base.db.Users.Where(u => u.Username == username && u.Password == password).FirstOrDefault();
        }

        public User GetUserById(int userId) {
            return base.db.Users.Where(u => u.UserID == userId).FirstOrDefault();
        }

        public User GetUserByEmail(string email) {
            return base.db.Users.Where(u => u.Email == email).First();
        }

        public bool EmailAvailable(string email) {
            return base.db.Users.Where(u => u.Email == email).Count() == 0;
        }

        public bool UsernameAvailable(string username) {
            return base.db.Users.Where(u => u.Username == username).Count() == 0;
        }
    }
}
