class GreyAT20 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.0.5"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.5/grey-darwin-arm64"
      sha256 "246d6a864f51c0a66410d81f619eb0cc9228c27f7c40a9a4c48fc5a27effd0cc"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.5/grey-darwin-amd64"
      sha256 "9a10cc313e5777f1ac3937cf61450468134dda31e7472c65672fe0f007bcdf05"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.5/grey-linux-arm64"
      sha256 "b6b12ac9d7414151b098ee579eb73153e78d3d01a32dbdfccef76c78c47b0524"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.5/grey-linux-amd64"
      sha256 "2771af7789d3c2721c73e43319c038ab2bf0e19345bf33f6d58aa846f966e0c0"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
