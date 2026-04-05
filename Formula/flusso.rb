class Flusso < Formula
  desc "Sync MoneyMoney transactions to YNAB"
  homepage "https://github.com/johannesbraeunig/flusso"
  url "https://github.com/johannesbraeunig/flusso/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
