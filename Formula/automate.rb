class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.3"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.3/automate-darwin-arm64"
      sha256 "ad67125d76305956708270a1adeacd7bf64f6bb850b7c15e6e7fef159740b3cd"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.3/automate-darwin-amd64"
      sha256 "3937a4e80acd4f93dbf0f83a0a7232cd438d9f91db0309314ebae1861c279137"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.3/automate-linux-arm64"
      sha256 "fcae2147d50ca35897ed040f06d13621dfe3f0032800da4bff3389a7a08114f2"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.3/automate-linux-amd64"
      sha256 "63139d2ff3aa5a85c81530c294e291c9a3958be93959099010509a00254cb6c2"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
