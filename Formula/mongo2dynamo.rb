class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.13.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "957d8f6fea57accf1791a77c1f057ace9441a6f9392ef962ade93cbad1765b86"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.13.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "122272733b7dd7e7baf8ed7885f0894e779aa3abda0d77d08d3adebc588da4ea"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.13.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "57ae3d4ee4e7968fa351c90bfe02525bc46b051c6862db4bdb09bfde4c85ffd2"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.13.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "65854fc21246bcd2e344937f5a336fd12406dbf14bac101e8adf3609a05c1345"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
