class GreyAT2 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.11"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.11/grey-darwin-arm64"
      sha256 "e8b316879ea6fb3052de0b75613686ae6feb04415df8cf5259baf147e04dbef3"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.11/grey-darwin-amd64"
      sha256 "a282fff2d0bf968e1ab4e1201982819d290972386bdd2976875294b60b9aa8c2"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.11/grey-linux-arm64"
      sha256 "27f5d5350995b527fbb560103d3d6b27439035560f870044516d352f3f8f74e5"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.11/grey-linux-amd64"
      sha256 "999ac8d30f644c3a1b0ae03f956e8019b7fb1c4d817831f98f4e0f536f5dc16f"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
