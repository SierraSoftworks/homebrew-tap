class GithubBackupAT3 < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.14"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.14/github-backup-darwin-arm64"
      sha256 "2add95541fb034d98ac1c318d8af7d27661897c4aa1f825db62eb319bc7bc388"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.14/github-backup-darwin-amd64"
      sha256 "acc056399a5d9efcc85f8636ad09e3875a503f9f23de40176ae87eba0b132714"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.14/github-backup-linux-arm64"
      sha256 "95b7d75bff2f890b065a3ddcec25c857425fed769fef9ba54409ef47bfee62d6"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.14/github-backup-linux-amd64"
      sha256 "bfeb82305a637e6633bb3594ed804ea90cbf02e9e998cc5d034aeb7a691627eb"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
