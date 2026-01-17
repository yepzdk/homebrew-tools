class Csm < Formula
  desc "CLI tool to monitor Claude Code sessions"
  homepage "https://github.com/yepzdk/claude-sessions-monitor"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.1/csm-darwin-arm64"
      sha256 "2a95698b0026d025ae8567a08c4ee55378c79c9817723bdbc89de27a8b928c9f"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.1/csm-darwin-amd64"
      sha256 "b5b5eb0d60e6c631532917638fa67e534e23c827e9a8499475edbbc73e3fdb25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.1/csm-linux-arm64"
      sha256 "2c432f7f0c4cd27e5f56934cb62477bf008a806d258e1054a8dd0806e01c9985"
    end
    on_intel do
      url "https://github.com/yepzdk/claude-sessions-monitor/releases/download/v0.2.1/csm-linux-amd64"
      sha256 "600a1d62fee3585f1e30584c622d5cc52d9e08557e364b4b949d36ef4fb40757"
    end
  end

  def install
    binary_name = "csm-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch == :arm64 ? "arm64" : "amd64"}"
    bin.install Dir["*"].first => "csm"
  end

  test do
    assert_match "csm version", shell_output("#{bin}/csm -v")
  end
end
