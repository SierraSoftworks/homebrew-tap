class BuckleAT215 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.15.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.15.0/buckle-darwin-arm64"
      sha256 "305551c6293a2fd104d20ec9a5a595ad9edfb8aa144181c7d2a3bcfca165b05e"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.15.0/buckle-darwin-amd64"
      sha256 "5efa21ac5364f9d607c6a8000d9cc9e16bd58be41f06a998f706247a8ce57bc8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.15.0/buckle-linux-arm64"
      sha256 "a9e97214bee26928181afba0253cd2483ba656acf8bd03383775612f1a5edb97"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.15.0/buckle-linux-amd64"
      sha256 "e77f7c7d9fc5bc87bbef3412e2b98b97da9fbcc5ef001d9564d2d13eff8a9340"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
