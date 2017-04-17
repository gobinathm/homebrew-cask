cask 'prexview-studio' do
  version '0.1.7'
  sha256 'e91bacfb19e6c4c9305e2155ccf22a566e222600fa9ec6847e5201288cf16d19'

  # github.com/prexview/prexview-studio was verified as official when first introduced to the cask
  url "https://github.com/prexview/prexview-studio/releases/download/v#{version}/prexview-studio-#{version}-mac.zip"
  appcast 'https://github.com/prexview/prexview-studio/releases.atom',
          checkpoint: '8164f8c083393db28dadadb0fa36d7f99ede2f0c6a25c6e7a11a1563c81cd53a'
  name 'PrexView Studio'
  homepage 'https://prexview.com/'

  app 'PrexView Studio.app'

  zap delete: [
                '~/Library/Application Support/PrexView Studio',
                '~/Library/Logs/PrexView Studio',
                '~/Library/Preferences/com.prexview.studio.helper.plist',
                '~/Library/Preferences/com.prexview.studio.plist',
                '~/Library/Saved Application State/com.prexview.studio.savedState',
              ]
end
