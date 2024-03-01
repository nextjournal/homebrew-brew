class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.1"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.1/garden-linux-aarch64-static.tar.gz"
      sha256 "ed2035860498dd49f005b25ca4bad5a2f249d8f71e87777a0d2887c1f48639ba"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.1/garden-linux-amd64-static.tar.gz"
      sha256 "ed2035860498dd49f005b25ca4bad5a2f249d8f71e87777a0d2887c1f48639ba"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.1/garden-macos-aarch64.tar.gz"
      sha256 "60f60360c37b211b5804e3ab2117bfa183240c97ee3dc2a57f9f16ffe4a90084"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.1/garden-macos-amd64.tar.gz"
      sha256 "0fe44c0a8b477519655b5e8546407192c12b99b6e296a6e3d1bc37f9689ee821"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
