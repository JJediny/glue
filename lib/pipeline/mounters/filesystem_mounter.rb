require 'pipeline/mounters/base_mounter'

class Pipeline::FileSystemMounter < Pipeline::BaseMounter
  Pipeline::Mounters.add self
  
  #Pass in path to the root of the Rails application
  def initialize trigger, options
    super(trigger)
    @options = options
    @name = "FileSystem"
    @description = "Mount a file via normal file system commands."
  end

  def mount target
    return target
  end

  def supports? target
    last = target.slice(-1)
    if last === "/"
      return true
    else
      return false
    end
  end
end