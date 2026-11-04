class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.5.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.5.0/buckle-darwin-arm64"
      sha256 "f16d1c0ca7e9d5352ee7a4814c7d7f1e3f995ab44f695f7d73ea503449016de2"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.5.0/buckle-darwin-amd64"
      sha256 "938c028f2b9120b293d503a18fbe3d17dfd24b4dab3396d6d18eb111dc6a44d6"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.5.0/buckle-linux-arm64"
      sha256 "d68ec3d7a8edeb85e2e36a7c4d5aa26514c445d40f001a6024eeb3c2bbe761bc"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.5.0/buckle-linux-amd64"
      sha256 "7d73041e774cecbc51c9bf01a518f77274d8f8a1f02c46dfab454bb1a3f3d77b"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
