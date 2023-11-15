class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.5/garden.tar.gz"
  version "0.0.5"
  sha256 "28cba4abef05a3f34abfc57dc8c92b2e9ff97cea80d4f9cedca26e0534042685"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "--version"
  end
end
