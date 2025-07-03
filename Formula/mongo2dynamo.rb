class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.3.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "86ef80e0207f7c9bf367998b72ef76e23f6375cda13d03d717650a66e7163dc4"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.3.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "f6e1edaf832adb6eeca1563c3a7a47f7bd4da0ca1fbb32b267fa122033a07078"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.3.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "2c763328c3cba818a3db3c887b1b90a4844931151a63f72cdeab5f24deabfb0f"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.3.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "ea93ab15ddb03b921be40328c1e703a362a16e0ce96c87a813ff9882b016ff82"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
