import grails.util.Environment
import org.macsuite.financial.Role
import org.macsuite.financial.User
import org.macsuite.financial.UserRole
import org.macsuite.financial.category.MainCategory
import org.macsuite.financial.category.Category



class BootStrap {

    Role role
    User user

    def init = { servletContext ->
        switch (Environment.current){
            case Environment.DEVELOPMENT:
                createDevData()
                break
            case Environment.TEST:
                break
            case Environment.PRODUCTION:
                createAdmin()
                break
        }
        createAdmin()
    }

    def createDevData(){
        createRoles()
        createMainCategory()
    }

    def createRoles(){
        Role.findByAuthority('ROLE_ADMIN')?:new Role(authority:'ROLE_ADMIN').save(failOnError:true)
    }
    def createAdmin(){
        role = Role.findByAuthority('ROLE_ADMIN')
        user = User.findByUsername('super')?:new User(username:'super',firstName: "Admin", lastName: 'User', email: 'mcclainan@gmail.com', enabled:true,password:'password').save(failOnError:true)
        if(!user.authorities.contains(role)){
            UserRole.create(user,role,true)
        }
    }

    def createMainCategory(){
        log.debug("Creating Main Categories")
        def mainCategory = new MainCategory(name: 'Food').save(failOnError: true)
        def category = new Category(mainCategory:mainCategory, name:'Groceries',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Fast Food',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Dinning Out',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Clothing').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'New',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Used',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Housing').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Rent',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Power',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Water',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Gas',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Trash',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Fees').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'NSF',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Transportation').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Fuel',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Maintenance',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Communications').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Cable',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Phone',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Medical').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Co-pays',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Medication',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Education').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Tuition',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Books',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Supplies',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Financing').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Cars 4 U',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Child Care').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Day Care',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Entertainment').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Movies',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Skating',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Memberships').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Netflix',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Hulu',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Lynda',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Job').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Tony',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Kia',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Investment').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'401K',cash: true,type: 'E').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Miscellaneous').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Miscellaneous Expense',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Miscellaneous Income',cash: true,type: 'I').save(failOnError: true)
        mainCategory = new MainCategory(name: 'Untracked').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Untracked Expense',cash: true,type: 'E').save(failOnError: true)
        category = new Category(mainCategory:mainCategory, name:'Untracked income',cash: true,type: 'I').save(failOnError: true)
    }
}
