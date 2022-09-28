require "./lib/script.rb"

describe Cipher do
    describe "#caesar_cipher" do
        it "returns caesar cipher" do
            cipher = Cipher.new
            expect(cipher.caesar_cipher("adljkfas", 1)).to eql("zckijezr")
        end
    end
end
#zckijezr