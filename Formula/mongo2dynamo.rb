class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.1.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "e9d6180872c0ba0b99c7fcdb87a8f9d18dfa6f07a1b38a5b61098c0a10d24ca3"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.1.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "0362ab103f488628a559d2ee940a55a1bb0ca89eaa5e112950798a004661db16"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.1.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "8233136bd420f6cd13ca788a25be91ce120c1ee67b057dd1d40dbb6922061225"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.1.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "a517327263aa58b9eac9f2814710fce3c096783687e02a726c5601b437758e9a"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
