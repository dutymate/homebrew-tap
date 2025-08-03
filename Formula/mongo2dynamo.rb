class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.11.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "4ea37d4a3ef315dbb174ae43d774c1bde95e64ba43658d66b135f7d558b58e86"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.11.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "7c79d02bd627795ebe7d887048b36398f81f61de7a688a02bb57f7df183df614"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.11.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "ccb4fa08006ccefa456dd4dbbfd59b2a7b73a8b64d20ff9d1a3c8f455a19b530"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.11.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "656af8cb054bd6ffa11232beb22f48be7f998ad6394614cb7447e1c5c811db03"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
