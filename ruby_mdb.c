#define MDB_API_VERSION         3
#include <sys/mdb_modapi.h>

static int dcmd_rubystack(uintptr_t addr, uint_t flags, int argc, const mdb_arg_t *argv)
{
  return (DCMD_OK);
};

static const mdb_dcmd_t ruby_mdb_dcmds[] = {
  { "rstack", "", "print a Ruby stacktrace", dcmd_rubystack }
};

static const mdb_walker_t ruby_mdb_walkers[] = {
  { NULL }
};

static mdb_modinfo_t ruby_mdb = { MDB_API_VERSION, ruby_mdb_dcmds, NULL };

const mdb_modinfo_t *
_mdb_init(void)
{
  return (&ruby_mdb);
}

