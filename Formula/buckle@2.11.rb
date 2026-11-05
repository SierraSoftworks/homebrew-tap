class BuckleAT211 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.11.3"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.3/buckle-darwin-arm64"
      sha256 "01828dd75c743d8b36aec5d61141e9b0ebd470010963a8a13d787a8fa3455110"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.3/buckle-darwin-amd64"
      sha256 "12558b6cdcd66d237c8651fc7942bad4bcb13f741add4a12bbecdd266b02ec0a"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.3/buckle-linux-arm64"
      sha256 "d03da2a6c4f2ea394a30054f1f705999fec5e844be6701b0ebf5d0b712e87b4f"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.3/buckle-linux-amd64"
      sha256 "0a026eebaf2da1267527316e50772b306d0c03ef975802eab18f065c33ccea5f"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
