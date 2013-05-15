require('coffee-script')
require('../../src/js/yadda-0.2.2')
require('../../src/js/yadda-0.2.2-localisation')

library = require('./bottles-library').create()
yadda = new Yadda.yadda(library).after( -> 
    this.done()
)

exports.testABottleFallsFromTheWall = (test) ->
    yadda.yadda([
        "Given 100 green bottles are standing on the wall"
        "when 1 green bottle accidentally falls"
        "then there are 99 green bottles standing on the wall"

        "when another green bottle accidentally falls"
        "with a loud bang"
        "but bounces back"
        "then there are still 99 green bottles standing on the wall"
    ], test)
