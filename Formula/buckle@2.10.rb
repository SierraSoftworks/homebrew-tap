class BuckleAT210 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.10.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.10.0/buckle-darwin-arm64"
      sha256 "3b8e5cb1ae0c04c0d504e96811b95ffcfc0a1af0a9cba141d1c65becfbd537b0"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.10.0/buckle-darwin-amd64"
      sha256 "dda383978be8b3e98f08f889340ae5a32b16e35bb09a6f7c20716776d98bfb66"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.10.0/buckle-linux-arm64"
      sha256 "278ec2ddad15db9888057aea936ab4f94e9bc071e2e76dd1c95a3b331d50bf3e"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.10.0/buckle-linux-amd64"
      sha256 "e6269c3631cda8dc26626bd2ddf6da0366577857012d18b4ba337e998f2e8d68"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
