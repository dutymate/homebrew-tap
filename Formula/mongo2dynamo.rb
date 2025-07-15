class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.8.1/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "1d0e8ddeadfe2c506d0780743f1b49e67c4310304052e5eecff54bb8afac2f34"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.8.1/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "803ea39103e2c61c4c40ab1f3570fbe5091fcf62554db8fcaa8f8a4e070b1a0f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.8.1/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "d67f3cfba6c4daa546ff063ec729ee8bb3b08ad55840f4d136ee1abba606f9df"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.8.1/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "9a7df23d492fd198269dc1780315b9241d1edd8aa5edb3f1088bc8794ffac9a1"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
