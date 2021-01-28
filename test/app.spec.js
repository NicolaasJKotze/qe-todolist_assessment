var server = require("../app");
var chai = require("chai");
var chaiHttp = require("chai-http");
var jsdom = require("jsdom");

var JSDOM = jsdom.JSDOM;
var VirtualConsole = jsdom.VirtualConsole;

var should = chai.should();
var expect = chai.expect;
chai.use(chaiHttp);

// Example unit test
describe("App", function() {
  describe("/randompage", function() {
    it("should send you to /todo", function(done) {
      chai
        .request(server)
        .get("/randompage")
        .end(function(err, res) {
          res.should.have.status(200);
          res.req.path.should.be.equal("/todo");
          done();
        });
    });
  });
});
