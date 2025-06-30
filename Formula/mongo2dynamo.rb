class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.2.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "67860f957c29eb3bff7e8885068f578ae4ccc976d7a121aa6c323a3921cc51ba"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.2.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "ff9df6d71f956678c2575c063fc03010f89c39eb0a6e73440a59e0a3b2f012e0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.2.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "0582258fbbc83bbe3a3e82a2a5c818003a332a4ba10be7ffbbc6c6409d8d7a68"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.2.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "6fe42724696735f834e231effaa3ae9503bbf2e3cf194c9329e74ebf22d38c4e"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
