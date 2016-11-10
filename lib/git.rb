class Git
  def initialize path
    @path = path
  end

  def self.get_revision
    `SHA1=$(git rev-parse --short HEAD 2> /dev/null); if [ $SHA1 ]; then echo $SHA1; else echo 'unknown'; fi`.chomp
  end
end

