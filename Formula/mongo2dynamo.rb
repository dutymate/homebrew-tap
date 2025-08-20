class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.13.1/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "0df96cea6792e70f95d6924ef5ef28206a80bad78c0aa3cc31235e1374579865"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.13.1/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "dcb116c8b89538dc68e0f193d2d11676e626ddb087d5b72a8ac172382fb7e3ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.13.1/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "bb2236d17f911dcd77fff102bae3ed2003c408530ca764de221c85b3952d40be"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.13.1/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "f8222e3b95336ed2f61babcb683682961c1e3ae81124256e4d95a8e6f5c5ebc2"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
