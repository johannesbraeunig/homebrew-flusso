class Flusso < Formula
  desc "Sync MoneyMoney transactions to YNAB"
  homepage "https://github.com/johannesbraeunig/flusso"
  url "https://github.com/johannesbraeunig/flusso/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "92a46dbeab3bf0430e91a9ace545c02e1499953d9bc587c5547fd448e555ea3c"
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
