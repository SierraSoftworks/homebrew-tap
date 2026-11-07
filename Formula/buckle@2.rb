class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.7"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.7/buckle-darwin-arm64"
      sha256 "66f797836afa04462ecbe7639f37f46411ecd7484056ebefc4e0587f00e3b205"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.7/buckle-darwin-amd64"
      sha256 "2e13a477e417eb4c38a69cb1fb2530a7a4496c972d4e3b71ff7b9c96887822fd"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.7/buckle-linux-arm64"
      sha256 "139169e7454bfc7ef22915e0ced24e13d600a3b9c291059cd79a76c371ce4503"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.7/buckle-linux-amd64"
      sha256 "63cb7475107c0d9aa8e78934511e104572b97fda723d9d159712c576b58ea914"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
