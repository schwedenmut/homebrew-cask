cask 'vnc-viewer' do
  version '6.19.1115'
  sha256 '461ac11bc94335d6b4f723421bd3a214ab580bca3ea5a5f8d1a1e4e26d3f2297'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  appcast 'https://www.realvnc.com/en/connect/download/viewer/macos/'
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap trash: [
               '~/Library/Preferences/com.realvnc.vncviewer.plist',
               '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
             ]
end
