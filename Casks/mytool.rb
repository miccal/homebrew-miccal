cask 'mytool' do
  version '1'
  sha256 'ec57cff849ab35ebafff268771225a27801808c72ec5bbbdc1f486c04d7b742a'
  url "https://s3.amazonaws.com/geekleeg.com/mytool"

  name 'My Tool'
  homepage 'https://somewhereelse.com'

  container type: :naked

  binary "mytool"
  postflight do
    suppress_move_to_applications key: 'suppressMoveToApplications'
    set_permissions "#{staged_path}/mytool", '0755'
  end

end
