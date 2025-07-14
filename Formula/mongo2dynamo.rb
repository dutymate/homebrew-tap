class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.8.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "2882ed7e28e9a1ae214d359f49e037d15392f4b4aefea31c9cb096489a972ed0"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.8.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "987379a89419a48e5cf41223da64acbafbb2915de8b3cc2ae264f4e886112b05"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.8.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "d05c8fafa89e8708714dcc01a89ed71a1e5f57275db7591272fb1c23fee4a465"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.8.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "98ab54d2f9efe137480760940afcc323a6b69a341ba2b7d8fce5b34a5acc766c"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
