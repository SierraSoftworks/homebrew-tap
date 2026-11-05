class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.11.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.0/buckle-darwin-arm64"
      sha256 "a89743337fe5d47c9521b2a266cd33dfa32041cc77e6dc438f1556cb22f5a6fd"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.0/buckle-darwin-amd64"
      sha256 "f65078fe4781f2c7abbf64c22f2f00700236d0856244261dca2fb42e7bb1112d"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.0/buckle-linux-arm64"
      sha256 "3ab0ebc1738ed40e09c7738f520aa1bedb25ef82706f35c3c2af20d10b269af9"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.11.0/buckle-linux-amd64"
      sha256 "2dff9b2ff2c296f1a5140d1f389f2257d67886711368aa1cc90264a4e50631ca"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
