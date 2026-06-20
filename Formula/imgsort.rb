class Imgsort < Formula
  desc "Automatically sort and deduplicate your photographs based on their EXIF metadata"
  homepage "https://github.com/SierraSoftworks/imgsort"
  version "1.0.2"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/imgsort/releases/download/v1.0.2/imgsort-darwin-arm64"
      sha256 "0488fff2fb32e284bd7418d71cb51db109953d6b9889bf17d92c4d69b6721367"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/imgsort/releases/download/v1.0.2/imgsort-darwin-amd64"
      sha256 "a30d1cdb58554253b67b1d16410408645ff1f568954bc8bd9994d656ee5b7f9f"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/imgsort/releases/download/v1.0.2/imgsort-linux-arm64"
      sha256 "a7a98ad8e09cc7f24ce460b78b9bad1893c43444e8296fa00ad5b9f37ed2c35d"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/imgsort/releases/download/v1.0.2/imgsort-linux-amd64"
      sha256 "d32a5d590dbb492ffd209ad111f75144a59bce313f3158b264cdd3a661b27173"
    end
  end

  def install
    bin.install Dir["*"][0] => "imgsort"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imgsort --version 2>&1 || true")
  end
end
