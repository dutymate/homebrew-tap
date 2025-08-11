class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.12.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "d27c7787373e1d9a6a130dbee48a6070bdb1c2ce82906bd76d19f148ef9abf04"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.12.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "b6f2ba069a61d9d084be1923dafdb78f7d50f2dcb52139125a8552bbfc79c6f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.12.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "867da77aea8f6e4dc612b085c8e7bc14db7e6b4e67b0f339fd1c3fd025e3e44e"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.12.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "5019c2892f94defbd20c9acb3933fcccd3025de63cf49935dc05423527a83334"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
