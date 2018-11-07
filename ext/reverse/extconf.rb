require 'mkmf'

LIBDIR     = RbConfig::CONFIG['libdir']
INCLUDEDIR = RbConfig::CONFIG['includedir']

local = File.expand_path(File.join(File.dirname(__FILE__), "lib"))
HEADER_DIRS = [INCLUDEDIR, local]
LIB_DIRS = [LIBDIR, local]
libs = ['-lreverse']

extension_name = 'reverse'

dir_config(extension_name, HEADER_DIRS, LIB_DIRS)
libs.each do |lib|
  $LOCAL_LIBS << "#{lib} "
end
create_makefile(extension_name)
