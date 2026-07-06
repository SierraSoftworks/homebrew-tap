class GreyAT2 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.0.6"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.6/grey-darwin-arm64"
      sha256 "bafe27239aa34bb006de26d8f5f4da16ed443bcd576f86f4b596a5ddf256cb11"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.6/grey-darwin-amd64"
      sha256 "75f60916d83dc702da1ede411b45ebf016028819b3d6b75e709e5593e7189b40"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.6/grey-linux-arm64"
      sha256 "8eb51f191262f9af2b2340b17292dd69940af9d9b8fb67819a671cf8b7492404"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.6/grey-linux-amd64"
      sha256 "0c9a20b879902a4b49d4a9910efb224e5213d5b51c87b2dd1bed33e291089255"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
