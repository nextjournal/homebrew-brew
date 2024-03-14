class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.5"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.5/garden-linux-aarch64-static.tar.gz"
      sha256 "e6373fe5eac6af7a2dd259baeff9baa2af382a540cb4170c5b84f7da4b9f1f58"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.5/garden-linux-amd64-static.tar.gz"
      sha256 "e6373fe5eac6af7a2dd259baeff9baa2af382a540cb4170c5b84f7da4b9f1f58"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.5/garden-macos-aarch64.tar.gz"
      sha256 "70b327d10172e49550a5205b4fd59a029c0aff2f675bac1584d583e194352fb7"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.5/garden-macos-amd64.tar.gz"
      sha256 "2cc0019f0d8a308bc1b8a5b466595666035e6f8c3827c3ca035665399aff8261"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
