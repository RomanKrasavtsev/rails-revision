class Capistrano
  def initialize path
    @path = path
  end

  def get_revision
    "cat #{@path}/REVISION"
  end
end
