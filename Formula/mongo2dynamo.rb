class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "dce406d9556468ce1480e0932672583bde94e366c0ef9cc38536f27a0de31d34"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "65aa61d593c1f0af4a72cd36ac46e3493bdc3df3aaee8ced3e5f22104ee33389"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "1c7f60f16a9d7ce051627ad0261e341fd9856b221b4b6c10cae02481bf10b519"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.4.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "20382ec7ad480c33a9137711f6edf796e498599b96623c2d0a1c7c34ed70592a"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
