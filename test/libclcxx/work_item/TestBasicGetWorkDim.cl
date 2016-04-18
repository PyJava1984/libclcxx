// RUN: %clang_cc1 %s -triple spir-unknown-unknown -cl-std=c++ -fsyntax-only -pedantic -verify
// expected-no-diagnostics

#include <opencl_work_item>
using namespace cl;

kernel void worker()
{
    uint dim = get_work_dim();
}
