class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.12"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.12/buckle-darwin-arm64"
      sha256 "91ea70c1ffde709505d7cc20de4640c08274b9b01dce6d0792af359377a4d988"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.12/buckle-darwin-amd64"
      sha256 "0e4af26441d78850c13d337f5fd0aa5c7c19e7dcfe14994b5ed741e70b837acd"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.12/buckle-linux-arm64"
      sha256 "ef9966c2ff3de799def8ffe60c9ddaa3e2d954588d5c64ad70df8a771fe61fa4"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.12/buckle-linux-amd64"
      sha256 "0332479e5c6f16ab7027d56460cf7f4570a4f2c30f1c551d7e68686e8a1e44b6"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
