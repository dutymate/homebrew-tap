class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.9.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "8e5e8f83010ea255f3ed85c9ae155a7e9aa67afa2f39b28b2d369f35d429c987"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.9.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "2e10ee1ef5797f72876fd5c1b4b7fa8fec4dc7da31884d8f9f4fe792c5a573f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.9.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "a1df49776ee70014c82e0e5228c3245a66eaa78b25c3e3c3405322878c745745"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.9.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "acdd1fe39f891540e8df3fb9ef3a295e89df9ac2ce1a5e29e56106ffccacfd28"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
