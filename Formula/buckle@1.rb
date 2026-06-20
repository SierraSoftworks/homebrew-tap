class BuckleAT1 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "1.3.7"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v1.3.7/buckle-darwin-arm64"
      sha256 "e825dcaeaaead96b4aafa2b2e03e162045946d254401210cf9d3d552e9437f3c"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v1.3.7/buckle-darwin-amd64"
      sha256 "6a919cf02e12154fee8660e8d9d5c05311c353bccc1deeaa214f245097069ebf"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v1.3.7/buckle-linux-arm64"
      sha256 "cf89bbe2493b27f09ef1006d72e1f70d249822161bf4d0820b8541fd48863876"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v1.3.7/buckle-linux-amd64"
      sha256 "8537b0b291024ea6a48bb641fb81da455097c98e3e4bbd0281b969d7d8dbfeef"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
