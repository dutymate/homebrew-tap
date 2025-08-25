class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.14.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "fb459203bc4b677518b2dde5b4d72e340baee8900bbd102ca7e861494a440a44"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.14.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "23ad6cf2e2760697d44d9400ac5fd2e27c537a733effa8d72c83b6c2b6b0c7cf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.14.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "18a947b96d1fda6d93014be152ae30437fc00fe1b1adae5a2571bac1472530f2"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.14.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "665053e32bbdd27e888545ec4a8ddb112967d4f475940bd10d0856bb10f68ff4"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
