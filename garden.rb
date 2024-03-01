class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.0/garden-linux-aarch64-static.tar.gz"
      sha256 "8d8435528f17352469141684ebe19baf3ae44c6a368117c00ace27d05eaeb44e"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.0/garden-linux-amd64-static.tar.gz"
      sha256 "8d8435528f17352469141684ebe19baf3ae44c6a368117c00ace27d05eaeb44e"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.0/garden-macos-aarch64.tar.gz"
      sha256 "f730ff30af9ad850a830e2266b2c14717baab292dcca929d98410d2da97e87a0"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.0/garden-macos-amd64.tar.gz"
      sha256 "7076c5e5b1a84e7786bdff063d04c52309f7cee0db06ac50d265d2485565819b"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
