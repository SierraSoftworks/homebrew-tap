class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.11.2"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.2/buckle-darwin-arm64"
      sha256 "1a4743e75eecc1b8a9fd7105c59947e6e059f8c22fc79eec07fcdf746540a211"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.2/buckle-darwin-amd64"
      sha256 "fb59c95d77571e74e34bf46aec9cf5ec205b5e39ac6484e59638d502ce0cab96"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.2/buckle-linux-arm64"
      sha256 "89b728dfbdb341f733ce117993168b9742ae3dfc90197e2a0bba94781dde3ea8"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.2/buckle-linux-amd64"
      sha256 "7f9b62a3ef6f5744a39e7a917e6dc60c8bb84cbfafa4587c29cb7fb82d96ee06"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
