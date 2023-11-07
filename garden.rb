class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.3/garden.tar.gz"
  version "0.0.3"
  sha256 "e61fee14e4d40df05b924672cd2e88c5b8c9022d286128e29686d183134431c0"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "--version"
  end
end
