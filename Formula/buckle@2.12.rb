class BuckleAT212 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.4"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.4/buckle-darwin-arm64"
      sha256 "f9bf8bc0fe1debad46162564f74164638461045907687dee012dc029aec426b6"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.4/buckle-darwin-amd64"
      sha256 "23c83f202131eb4599d486ce238815826e9c521e3d2b90cb16b9fca42da48d0e"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.4/buckle-linux-arm64"
      sha256 "8bad57593e818df176af51dba060dad1f885deae628a192d1d57dfd8e6f9fe16"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.4/buckle-linux-amd64"
      sha256 "04abff3e976eb961e40cc1360bec58fe5db7368e2bbefa2f0477b9d7ee88b86d"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
