class Flusso < Formula
  desc "Sync MoneyMoney transactions to YNAB"
  homepage "https://github.com/johannesbraeunig/flusso"
  url "https://github.com/johannesbraeunig/flusso/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ac504610c28f8d14308cfcd2cb6deb0aa63309cc3e56b61da50621296bfd3c2a"
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
