class GreyAT22 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.8"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.8/grey-darwin-arm64"
      sha256 "21cf312523709440f7d88157d75ebad3d7a9f018a9908465a0e6bb47f050e330"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.8/grey-darwin-amd64"
      sha256 "31a8bea054d854b64bf7f061254dbefeff398e701e8b85b113670129055a6b01"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.8/grey-linux-arm64"
      sha256 "64438596b336ab1216843ddcf280ad014dc98ac7342b3b7210632147bfaf6f69"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.8/grey-linux-amd64"
      sha256 "784f718dd6e838ee1d58b97e060c2113da49e47947fe7a712f425ad6e3ae1a59"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
