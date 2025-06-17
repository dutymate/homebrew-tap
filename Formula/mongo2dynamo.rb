class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v0.0.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "DARWIN_AMD64_SHA"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v0.0.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "DARWIN_ARM64_SHA"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v0.0.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "LINUX_AMD64_SHA"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v0.0.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "LINUX_ARM64_SHA"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
