if(DEFINED ENV{OTPROOT})
  set(ERL_LIB_DIR $ENV{OTPROOT}/lib)
else()
  # fatal error
  message(FATAL_ERROR "OTPROOT is not set, please set it to the path of your erlang root directory, using this command: 
  export OTPROOT=`erl -noshell -eval 'io:format(code:root_dir())' -eval 'init:stop()'`")
endif()

# create a function that will add a new library to the erlang path
function(set_erlang_lib var_name lib_name)
  set(ERL_LIB_PATH ${ERL_LIB_DIR}/${lib_name})

  if(EXISTS ${ERL_LIB_PATH})
    set(${var_name} ${ERL_LIB_PATH} PARENT_SCOPE)
  else()
    message(FATAL_ERROR "The erlang library ${lib_name} does not exist in ${ERL_LIB_DIR}")
  endif()
endfunction()