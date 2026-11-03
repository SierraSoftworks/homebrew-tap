class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "2.3.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.0/buckle-darwin-arm64"
      sha256 "063ae15b1b65442e17ee0d3bcfacc610e4c81b85d14097c1ee7566a3073c5c96"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.0/buckle-darwin-amd64"
      sha256 "b4d76c250dc6b9d6492d420beb19c8957184d2801126da13c09561091605a78d"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.0/buckle-linux-arm64"
      sha256 "326b968daffcbdc52aa97d75f3ad4f3fb80aec07bc3dcb7bdc5ece15eae09c48"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.0/buckle-linux-amd64"
      sha256 "8e01b8cff326cc8c4dc781a25206ebc0cc58dbada3c1a6f82e819b9c82ab50cc"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
