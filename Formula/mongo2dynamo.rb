class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.2/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "b07a6bfdbb6ba79feb8288599a0b52782fc240d580b2502735ad8a9b3d246cfc"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.2/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "e03bb5d577a580a3ac6982ac0d4da583f1269373097566822f1ee932a280de29"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.2/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "df6f3084097d86f25738f07ffbfe3eaaaa64371bc7d823a0f5af95b5e24bf758"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.2/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "9b32d60e8530d2bdee013ead08d0c8efad49945261afca37e9e8f5b316d75ae4"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
