class Flusso < Formula
  desc "Sync MoneyMoney transactions to YNAB"
  homepage "https://github.com/johannesbraeunig/flusso"
  url "https://github.com/johannesbraeunig/flusso/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c500bdf0cb45d1db84d31108ca43e5614c9da8d994b26a419666ba49ac7c2208"
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
