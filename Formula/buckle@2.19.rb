class BuckleAT219 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.19.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.0/buckle-darwin-arm64"
      sha256 "48af81dc095db6333f9d0620c88c2e0e6ce4c411a1aa8e5b9e3d43db93875e84"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.0/buckle-darwin-amd64"
      sha256 "28f5b0f4388f8111793c1f5de29276fe573e474ee35fe11411da69a96d389105"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.0/buckle-linux-arm64"
      sha256 "a91e1e14e0b0545d2652d5cd0ebbc086ff7c207cf84e2d16f865bba5b344da31"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.0/buckle-linux-amd64"
      sha256 "422aa3553bbb913b9e987cf183c3337095e72d1ae64e2ad95f133dbcfbf5fb15"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
