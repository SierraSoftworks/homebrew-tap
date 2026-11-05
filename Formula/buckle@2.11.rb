class BuckleAT211 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.11.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.1/buckle-darwin-arm64"
      sha256 "8b9246f78b3629b7d82804e077651c47686031f7a0734cc5cf0be7e9b25ad34c"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.1/buckle-darwin-amd64"
      sha256 "df4b8fb110bd0bb7ad66c14c9e491e0e480b1fd3a60fd3e8279fb3034fcbb33e"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.1/buckle-linux-arm64"
      sha256 "5c31763dda85d1a5a76a99d84a071322dbac364e1cbe85c8749f496f50eb2b79"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.1/buckle-linux-amd64"
      sha256 "68f5dc043a821a0edc98af5d43638e7483b93d78d964d5c057162293ff5e7736"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
