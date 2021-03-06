# Copyright (C) 2015-2016 Jonathan Müller <jonathanmueller.dev@gmail.com>
# This file is subject to the license terms in the LICENSE file
# found in the top-level directory of this distribution.

if(NOT COMP_API_VERSION)
    message(FATAL_ERROR "needs newer comp_base.cmake version")
endif()
comp_api_version(1)

comp_feature(right_angle_brackets "#include <vector>
typedef std::vector<std::vector<int> > Table;  // OK
typedef std::vector<std::vector<bool>> Flags;  // OK (Error < CPP11)
int main(){}" COMP_CPP11_FLAG)

