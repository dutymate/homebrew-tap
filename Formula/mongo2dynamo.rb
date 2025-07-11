class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.7.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "545d20d4bf8454f891ab2970684f9ad165bd507c18e730ebeebc3a9b1e4847d7"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.7.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "4d1d7db1de3ad5e3d67310a01734627b342278329d00c5ffa414e40c1c74e311"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.7.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "7d7fb49311cd1c92b6de3838eee513737d8aa15b632a87c5fad56bf28903cba1"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.7.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "6d8dbf652fbc497390523637efb61656425b50f50943121bc6961c51327bc5a1"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
