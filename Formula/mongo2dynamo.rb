class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.1/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "8363fe82b986e66fd66f2cbc53847101ed1b422aa564aed9a28af50eb937619d"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.1/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "ab4de481913b5ea39bb296dfbfd3f3f00ee0c8eb5d6bfba201d1199daa2554bd"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.1/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "4a11abe2b7ead9716ff902b280c6196a949b7bbc8082607b0dc9928d66417e9c"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.1/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "569ac13eab6f00feb9636b4a0af2f11a26fb6235721262676ad1c95103fed3e6"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
