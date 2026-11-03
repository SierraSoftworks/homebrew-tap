class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "2.3.1"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.1/buckle-darwin-arm64"
      sha256 "a357851e093a9ac36b1f5df3d69ce1bcc9457c1544b5070af296419dad3cf33f"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.1/buckle-darwin-amd64"
      sha256 "3ce3d7add2e379ae635f5651f44778077af4f99426c3dea787ac0df96c1a9b43"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.1/buckle-linux-arm64"
      sha256 "71261f858c49fc94a8627c3f50fd3f036d823a674893cc1436d53ee0f2247d42"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.1/buckle-linux-amd64"
      sha256 "bd0025d781ebcc5722f08a675eb4a8ed6603bf0ef3e52851ae993ec39b5417bf"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
