class BuckleAT212 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.6"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.6/buckle-darwin-arm64"
      sha256 "af71705dc29d5657361a8fe3aba45b5dff8a5199ea1307c69684477077248e7f"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.6/buckle-darwin-amd64"
      sha256 "b8f1e0479b2953f598e1357e036333ffb5ebd2554264e33c8b6c5c21373b1a13"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.6/buckle-linux-arm64"
      sha256 "459888cf11d23e9064b1dfb857482c0572640e18ba38d8bb26a33cdca419b909"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.6/buckle-linux-amd64"
      sha256 "7afa4509b42a2f5c2dbd41c6470763d42a04bbf4516520368a992c27b8d8e33f"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
