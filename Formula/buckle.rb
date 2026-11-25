class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.22.2"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.2/buckle-darwin-arm64"
      sha256 "0be1f1dc5fcacbcac37b658fc2998d56d6dcee0c6cdeaf608ee05327c75f02a2"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.2/buckle-darwin-amd64"
      sha256 "728b312f15ecda4adfedae49b0bf1ecaaddde55295fc11111cb7d784e6c29d96"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.2/buckle-linux-arm64"
      sha256 "aaa32ea557d6280f32211a51d78471731bec74a1b46eb3d4c1997ec096e9ba76"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.2/buckle-linux-amd64"
      sha256 "40d1e9cf0a94f7a7c7fbac2a45c408cb1f846344d48b18e55f62fb9f322aa1ae"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
