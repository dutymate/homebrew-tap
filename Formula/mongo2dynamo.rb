class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.0.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "95b8a1f3a150df0f10cb669db0456ec37e0666497939d86db3ca18e4d1f5a865"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.0.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "8b28ed5c2970f8a7ecd29b123b1750824c1e14e161deb906855b62cfdb2a3ee1"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.0.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "eac7885ac8cba7f4338799d7a569e72497aec47ddaab6aee83514824bc5f6ad7"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.0.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "02f0ee4d15a713851d2308be70eed48d8f997ca1184e261f7e0fa1383f15556a"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
