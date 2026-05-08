cask "hora" do
  version "0.1.0"

  on_intel do
    sha256 "PLACEHOLDER_INTEL_SHA256" # Update when Intel binary is built
    url "https://github.com/dholendar27/Hora/releases/download/v#{version}/Hora_#{version}_x64.dmg"
  end
  on_arm do
    sha256 "52553f61bba6c2bc1fb70f16f9553e0fd4baea561fab25629d9d22e2920ace9f"
    url "https://github.com/dholendar27/Hora/releases/download/v#{version}/Hora_#{version}_aarch64.dmg"
  end

  name "Hora"
  desc "SI Time Tracker - Desktop productivity and time tracking application"
  homepage "https://github.com/dholendar27/Hora"

  depends_on macos: ">= :catalina"

  app "Hora.app"

  zap trash: [
    "~/Library/Application Support/com.pothireddy.hora",
    "~/Library/Caches/com.pothireddy.hora",
    "~/Library/Preferences/com.pothireddy.hora.plist",
    "~/Library/Saved Application State/com.pothireddy.hora.savedState",
  ]
end
