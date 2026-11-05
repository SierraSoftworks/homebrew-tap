class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.11.4"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.4/buckle-darwin-arm64"
      sha256 "1abdb3eddae5b9843c8472fa0620246f7929221672233fbe2273c65dca8d1b19"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.4/buckle-darwin-amd64"
      sha256 "c7db514d13b56b8d7c4f8249cbb382f684cfa4fe5016491d4da60da099de079b"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.4/buckle-linux-arm64"
      sha256 "c6e626c96b10f609476007528864b88617f4d08e9af2cfa1427a47ef0c92bd0a"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.4/buckle-linux-amd64"
      sha256 "0293517ecb98f6755efa560f95aab9420b5e1e514e3df21f99da5609f23c6872"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
