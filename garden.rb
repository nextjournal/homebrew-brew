class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.4/garden.tar.gz"
  version "0.0.4"
  sha256 "1cae1026b1c46618f24ddad384dcfcfee60f7d892ea076ccd95c3a8945d1a4c9"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "--version"
  end
end
