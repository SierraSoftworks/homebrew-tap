class BuckleAT212 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.2"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.2/buckle-darwin-arm64"
      sha256 "ec0db82ee24c4a039ebfdf0837c94ce36e3093a76b8458ec8ad33f898042ae35"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.2/buckle-darwin-amd64"
      sha256 "2191b19e15b96cb945d0cef272738fbce264d7e4dc21c3a07f681600de5ce5a8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.2/buckle-linux-arm64"
      sha256 "1f1381db3f40638cf25453f84713460170e7e7e4798136429e07e42e67336df6"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.2/buckle-linux-amd64"
      sha256 "f1282722d594507a04a59112040050c207377c1a910bf4e918f144d19e30b7e8"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
