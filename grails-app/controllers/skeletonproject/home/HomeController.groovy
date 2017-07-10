package skeletonproject.home

class HomeController {

    static layout = "main"

    def index() {
    def user = "admin"
    def password ="admin"
        render  (view:'home' ,var: [user: user,password:password])

         }
}
