cask 'fingerlock' do
  version :latest
  sha256 :no_check

  url 'http://www.fingerkeyapp.com/download/FingerLock.dmg'
  name 'FingerLock'
  homepage 'http://www.fingerkeyapp.com/'

  app 'FingerLock.app'
end
