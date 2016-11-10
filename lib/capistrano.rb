class Capistrano
  def initialize path
    @path = path
  end
  
  def self.get_revision
    File.exists?(File.join(@path, 'REVISION')) ? File.open(File.join(@path, 'REVISION'), 'r') { |f| GIT_REVISION = f.gets.chomp } : nil
  end
end

