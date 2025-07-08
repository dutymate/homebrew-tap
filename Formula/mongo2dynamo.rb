class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.6.1/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "46c8bf469f59214a8cde3f464c3da5770e37885a876306907a689781aed52281"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.6.1/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "2330ae0bce0c2c3d8fb67e0724baa06160d0f1e41dc313a903d987f9857ebe11"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.6.1/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "72e523360716ba5242a63b4997745d1b64f08184ca01337640c4ef683e8ddc1a"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.6.1/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "7ae96c1054a6cbf3207a94f090931c2fd08aa814cd7134c699144343c9872943"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
