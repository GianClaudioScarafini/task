require_relative "task"
require_relative "repository"
require_relative "controler"
require_relative "view"
require_relative "router"


repository = Repository.new                 #database
view = View.new                             #html
controler = Controler.new(view, repository) #thiswill be a cotnroller
router = Router.new(controler)              #

router.run
