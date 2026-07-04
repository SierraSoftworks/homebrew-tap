class GreyAT20 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.0.4"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.4/grey-darwin-arm64"
      sha256 "40a23162eff350705f959b98b1803e814cfad087735ce24930e375c6a820b4e9"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.4/grey-darwin-amd64"
      sha256 "ee96bdd00277a5304a0e4abf8bee3156c631d37cb81f0b71920515e0ea7a4d56"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.4/grey-linux-arm64"
      sha256 "67104ec0c6f4269f2f0d6b819a3d9b2c98483ca9dd4d92f30db1ec9aacbfd1cc"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.4/grey-linux-amd64"
      sha256 "125e6ee3e6e346cf80b6d13df41f6b9e6313b04d7659dba56285f5e42b589816"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
