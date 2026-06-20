class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "1.3.5"
  license "MIT"

  depends_on arch: :x86_64

  on_macos do
    # tap:darwin-amd64
    url "https://github.com/SierraSoftworks/buckle/releases/download/v1.3.5/buckle-darwin-amd64"
    sha256 "2e83f93e5c5ef41af58c513b3c9512d6158ba64f3133f568f4a953b012c9dc72"
  end

  on_linux do
    # tap:linux-amd64
    url "https://github.com/SierraSoftworks/buckle/releases/download/v1.3.5/buckle-linux-amd64"
    sha256 "af8bd3610775343c3ce5b5b586d188df47b343058a9cdd0d356b2b2996bc1e47"
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
