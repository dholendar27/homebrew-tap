cask "hora" do
  version "0.1.0"

  on_intel do
    sha256 "PLACEHOLDER_INTEL_SHA256" # Update when Intel binary is built
    url "https://pub-7229178f4aa94482b5b9c586fe4d5087.r2.dev/Hora_#{version}_aarch64.dmg"
  end
  on_arm do
    sha256 "f4698146e4bd9d050094ba142a8acb61d83ca83090d636c8cd428135b34f9506"
    url "https://pub-7229178f4aa94482b5b9c586fe4d5087.r2.dev/Hora_#{version}_aarch64.dmg"
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
