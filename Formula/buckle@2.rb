class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.22.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.1/buckle-darwin-arm64"
      sha256 "aa517523c7201f369b6c6522dbf8edf7583c8d689065e43ff992911026e039d5"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.1/buckle-darwin-amd64"
      sha256 "6d35dd6d984d414504fe43561e8c6d754ffc753ca6ee82c565118e4de15b1a61"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.1/buckle-linux-arm64"
      sha256 "3eef6d7f8c7af4512adab8020ae8a0cda85ad57f74228009d598239e53d49168"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.1/buckle-linux-amd64"
      sha256 "ad00cfb533ceec4810126e9f7533178bd7ee801db71a03c675c3d21e1e1a5aa6"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
