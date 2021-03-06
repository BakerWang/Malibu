@testable import Malibu
import Quick
import Nimble

class URLStringConvertibleSpec: QuickSpec {

  override func spec() {
    describe("URLStringConvertible") {
      var value: URLStringConvertible!

      describe("#URLString") {
        context("when it is String") {
          beforeEach {
            value = "http://hyper.no"
          }

          it("returns self") {
            expect(value.URLString).to(equal(String(value)))
          }
        }

        context("when it is NSURL") {
          let URL = NSURL(string: "http://hyper.no")!

          beforeEach {
            value = URL
          }

          it("returns self") {
            expect(value.URLString).to(equal(URL.absoluteString))
          }
        }
      }
    }
  }
}
