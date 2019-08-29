# Exercises from Chapter 4 of "Think Julia"
using ThinkJulia

🐢 = Turtle()

## There appears to be a problem building Cairo. Here is the last 100 lines of the log:
# Versions and API surfaces shifting like sand is not what I call 'programming'.
# Debugging is important, so I'll get this figured out!
# Maybe there's an opportunity to make a pull request to Cairo or ThinkJulia or Luxor or something.
# Then THAT would be programming :)

# Error: Error building `Cairo`, showing the last 100 of log:
# │ checking for grep that handles long lines and -e... /usr/bin/grep
# │ checking for egrep... /usr/bin/grep -E
# │ checking whether we are using the GNU C Library 2.1 or newer... no
# │ checking whether to enable garbage collector friendliness... no
# │ checking whether to disable memory pools... no
# │ readlink: illegal option -- f
# │ usage: readlink [-n] [file ...]
# │ checking for c++... c++
# │ checking whether we are using the GNU C++ compiler... yes
# │ checking whether c++ accepts -g... yes
# │ checking dependency style of c++... gcc3
# │ checking for gcc... (cached) gcc
# │ checking whether we are using the GNU C compiler... (cached) yes
# │ checking whether gcc accepts -g... (cached) yes
# │ checking for gcc option to accept ISO C89... (cached) none needed
# │ checking dependency style of gcc... (cached) gcc3
# │ checking whether gcc and cc understand -c and -o together... yes
# │ checking for special C compiler options needed for large files... no
# │ checking for _FILE_OFFSET_BITS value needed for large files... no
# │ checking for pkg-config... no
# │ checking for gawk... (cached) awk
# │ checking for perl5... no
# │ checking for perl... perl
# │ checking for indent... indent
# │ checking for perl... /usr/bin/perl
# │ checking for a Python interpreter with version >= 2.5... python
# │ checking for python... /usr/local/anaconda3/bin/python
# │ checking for python version... 3.7
# │ checking for python platform... darwin
# │ checking for python script directory... ${prefix}/lib/python3.7/site-packages
# │ checking for python extension module directory... ${exec_prefix}/lib/python3.7/site-packages
# │ checking for iconv_open... no
# │ checking for libiconv_open in -liconv... no
# │ checking for iconv_open in -liconv... yes
# │ checking whether to cache iconv descriptors... yes
# │ checking for ZLIB... no
# │ checking for ANSI C header files... yes
# │ checking for sys/types.h... yes
# │ checking for sys/stat.h... yes
# │ checking for stdlib.h... yes
# │ checking for string.h... yes
# │ checking for memory.h... yes
# │ checking for strings.h... yes
# │ checking for inttypes.h... yes
# │ checking for stdint.h... yes
# │ checking for unistd.h... yes
# │ checking for inflate in -lz... yes
# │ checking zlib.h usability... yes
# │ checking zlib.h presence... yes
# │ checking for zlib.h... yes
# │ checking for LIBFFI... no
# │ configure: error: in `/Users/xronos/.julia/packages/Cairo/p68X8/deps/builds/gobject':
# │ configure: error: The pkg-config script could not be found or is too old.  Make sure it
# │ is in your PATH or set the PKG_CONFIG environment variable to the full
# │ path to pkg-config.
# │
# │ Alternatively, you may set the environment variables LIBFFI_CFLAGS
# │ and LIBFFI_LIBS to avoid the need to call pkg-config.
# │ See the pkg-config man page for more details.
# │
# │ To get pkg-config, see <http://pkg-config.freedesktop.org/>.
# │ See `config.log' for more details
# │ [ Info: Attempting to create directory /Users/xronos/.julia/packages/Cairo/p68X8/deps/downloads
# │ [ Info: Directory /Users/xronos/.julia/packages/Cairo/p68X8/deps/downloads already exists
# │ [ Info: Downloading file http://ftp.gnome.org/pub/gnome/sources/glib/2.34/glib-2.34.3.tar.xz
# │ [ Info: Done downloading file http://ftp.gnome.org/pub/gnome/sources/glib/2.34/glib-2.34.3.tar.xz
# │ [ Info: Attempting to create directory /Users/xronos/.julia/packages/Cairo/p68X8/deps/src
# │ [ Info: Directory /Users/xronos/.julia/packages/Cairo/p68X8/deps/src already exists
# │ [ Info: Attempting to create directory /Users/xronos/.julia/packages/Cairo/p68X8/deps
# │ [ Info: Directory /Users/xronos/.julia/packages/Cairo/p68X8/deps already exists
# │ [ Info: Path /Users/xronos/.julia/packages/Cairo/p68X8/deps/src/glib-2.34.3 already exists
# │ [ Info: Attempting to create directory /Users/xronos/.julia/packages/Cairo/p68X8/deps/builds/gobject
# │ [ Info: Directory /Users/xronos/.julia/packages/Cairo/p68X8/deps/builds/gobject already exists
# │ [ Info: Changing directory to /Users/xronos/.julia/packages/Cairo/p68X8/deps/builds/gobject
# │ ERROR: LoadError: failed process: Process(setenv(`/Users/xronos/.julia/packages/Cairo/p68X8/deps/src/glib-2.34.3/configure --prefix=/Users/xronos/.julia/packages/Cairo/p68X8/deps/usr`,["XPC_FLAGS=0x0", "PATH=/Users/xronos/.julia/packages/Cairo/p68X8/deps/usr/bin:/Users/xronos/.julia/packages/Homebrew/s09IX/deps/usr/bin:/Users/xronos/.julia/packages/Homebrew/s09IX/deps/usr/sbin:/usr/local/opt/curl/bin:/Users/xronos/opt/bin:/usr/local/cuda/bin:/usr/local/anaconda3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Users/xronos/development/adt-bundle-mac-x86_64-20140321/sdk/tools:/Users/xronos/development/adt-bundle-mac-x86_64-20140321/sdk/platform-tools:/Users/xronos/.composer/vendor/bin:/Users/xronos/.julia/packages/Homebrew/s09IX/deps/usr/opt/git/libexec/git-core", "NODE_PATH=/Applications/Atom.app/Contents/Resources/app.asar/exports", "PWD=/", "XPC_SERVICE_NAME=0", "GIT_EXEC_PATH=/Users/xronos/.julia/packages/Homebrew/s09IX/deps/usr/opt/git/libexec/git-core", "SHELL=/bin/bash", "__CF_USER_TEXT_ENCODING=0x1F5:0x0:0x0", "NODE_ENV=production", "TMPDIR=/var/folders/1k/rgrc00jj1j50sbswmmg2f41r0000gn/T/", "HOMEBREW_CACHE=/Users/xronos/Library/Caches/Homebrew.jl/", "CPPFLAGS= -I/Users/xronos/.julia/packages/Cairo/p68X8/deps/usr/include", "LDFLAGS= -L/Users/xronos/.julia/packages/Cairo/p68X8/deps/usr/lib -Wl,-rpath -Wl,/Users/xronos/.julia/packages/Cairo/p68X8/deps/usr/lib", "PS1=\\[\\033[0m\\]\$(git branch &>/dev/null;\\", "SHLVL=1", "CUDA_HOME=/usr/local/cuda", "LOGNAME=xronos", "HOMEBREW_NO_ENV_FILTERING=1", "SSH_AUTH_SOCK=/private/tmp/com.apple.launchd.t1wi7GERbV/Listeners", "ATOM_HOME=/Users/xronos/.atom", "PKG_CONFIG_PATH=/Users/xronos/.julia/packages/Cairo/p68X8/deps/usr/lib/pkgconfig", "JULIA_LOAD_PATH=@:/var/folders/1k/rgrc00jj1j50sbswmmg2f41r0000gn/T/tmpwq880M", "_=/usr/bin/env", "GIT_TEMPLATE_DIR=/Users/xronos/.julia/packages/Homebrew/s09IX/deps/usr/opt/git/share/git-core", "Apple_PubSub_Socket_Render=/private/tmp/com.apple.launchd.5FmVRmq0Rh/Render", "USER=xronos", "JULIA_EDITOR=atom  -a", "HOMEBREW_NO_AUTO_UPDATE=1", "HOME=/Users/xronos", "TERM=xterm-256color", "JULIA_NUM_THREADS=4", "OPENBLAS_MAIN_FREE=1", "HOMEBREW_NO_ANALYTICS=1"]), ProcessExited(1)) [1]
# │ Stacktrace:
# │  [1] error(::String, ::Base.Process, ::String, ::Int64, ::String) at ./error.jl:42
# │  [2] pipeline_error at ./process.jl:785 [inlined]
# │  [3] #run#515(::Bool, ::Function, ::Cmd) at ./process.jl:726
# │  [4] run(::Cmd) at ./process.jl:724
# │  [5] run(::BinDeps.SynchronousStepCollection) at /Users/xronos/.julia/packages/BinDeps/ZEval/src/BinDeps.jl:521
# │  [6] run(::FileRule) at /Users/xronos/.julia/packages/BinDeps/ZEval/src/BinDeps.jl:483
# │  [7] run(::BinDeps.SynchronousStepCollection) at /Users/xronos/.julia/packages/BinDeps/ZEval/src/BinDeps.jl:521 (repeats 2 times)
# │  [8] satisfy!(::BinDeps.LibraryDependency, ::Array{DataType,1}) at ./string:944
# │  [9] satisfy!(::BinDeps.LibraryGroup, ::Array{DataType,1}) at ./string:910
# │  [10] satisfy!(::BinDeps.LibraryGroup) at ./string:874
# │  [11] top-level scope at string:977
# │  [12] include at ./boot.jl:326 [inlined]
# │  [13] include_relative(::Module, ::String) at ./loading.jl:1038
# │  [14] include(::Module, ::String) at ./sysimg.jl:29
# │  [15] include(::String) at ./client.jl:403
# │  [16] top-level scope at none:0
# │ in expression starting at /Users/xronos/.julia/packages/Cairo/p68X8/deps/build.jl:176
# │ ignored: dlclose()
# │ ignored: dlclose()
# │ ignored: dlclose()
# │ ignored: dlclose()
# │ ignored: dlclose()
# │ ignored: dlclose()
# │ ignored: dlclose()
# │ ignored: dlclose()
