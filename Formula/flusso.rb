class Flusso < Formula
  desc "Sync MoneyMoney transactions to YNAB"
  homepage "https://github.com/johannesbraeunig/flusso"
  url "https://github.com/johannesbraeunig/flusso/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "f88bf40cc1f5634b5bd68b339d83124b7a7976ee2357df7c4117b29ca6f045fa"
  license "MIT"

  depends_on :macos
  depends_on "jq"

  def install
    bin.install "flusso"
  end

  test do
    assert_match "flusso", shell_output("#{bin}/flusso --version")
  end
end
