class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.9"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.9/buckle-darwin-arm64"
      sha256 "91b11222991f7942327bcad5518919dc61fb99b61034f8da95bf1191ac457d54"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.9/buckle-darwin-amd64"
      sha256 "e638a0c1b62602633733f5b1b027e5a0723befafdbd51992b2b01c1c0ebaadd5"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.9/buckle-linux-arm64"
      sha256 "cf99fb4109adb1035f4e4ab034973aeddd02a35f32220f53662689695db2e8eb"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.9/buckle-linux-amd64"
      sha256 "ce258ca4a076453c139cebe4ee8a674415120e09f069df40f7806082113895b4"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
