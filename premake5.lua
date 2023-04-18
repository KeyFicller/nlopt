project "nlopt"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
    targetdir(g_workspaceDir .. "/bin/" .. g_outputDir .. "/%{prj.name}")
    objdir(g_workspaceDir .. "/bin-int/" .. g_outputDir .. "/%{prj.name}")

    defines {"_CRT_SECURE_NO_WARNINGS"}
    files
    {
          "src/algs/direct/DIRect.c",
          "src/algs/direct/direct_wrap.c",
          "src/algs/direct/DIRserial.c",
          "src/algs/direct/DIRsubrout.c",
          "src/algs/direct/direct-internal.h",
          "src/algs/direct/direct.h",
          "src/algs/cdirect/cdirect.c",
          "src/algs/cdirect/hybrid.c",
          "src/algs/cdirect/cdirect.h",
          "src/algs/praxis/praxis.c",
          "src/algs/praxis/praxis.h",
          "src/algs/luksan/plis.c",
          "src/algs/luksan/plip.c",
          "src/algs/luksan/pnet.c",
          "src/algs/luksan/mssubs.c",
          "src/algs/luksan/pssubs.c",
          "src/algs/luksan/luksan.h",
          "src/algs/crs/crs.c",
          "src/algs/crs/crs.h",
          "src/algs/mlsl/mlsl.c",
          "src/algs/mlsl/mlsl.h",
          "src/algs/mma/mma.c",
          "src/algs/mma/mma.h",
          "src/algs/mma/ccsa_quadratic.c",
          "src/algs/cobyla/cobyla.c",
          "src/algs/cobyla/cobyla.h",
          "src/algs/newuoa/newuoa.c",
          "src/algs/newuoa/newuoa.h",
          "src/algs/neldermead/nldrmd.c",
          "src/algs/neldermead/neldermead.h",
          "src/algs/neldermead/sbplx.c",
          "src/algs/auglag/auglag.c",
          "src/algs/auglag/auglag.h",
          "src/algs/bobyqa/bobyqa.c",
          "src/algs/bobyqa/bobyqa.h",
          "src/algs/isres/isres.c",
          "src/algs/isres/isres.h",
          "src/algs/slsqp/slsqp.c",
          "src/algs/slsqp/slsqp.h",
          "src/algs/esch/esch.c",
          "src/algs/esch/esch.h",
          "src/api/general.c",
          "src/api/options.c",
          "src/api/optimize.c",
          "src/api/deprecated.c",
          "src/api/nlopt-internal.h",
          "src/api/nlopt.h",
          "src/api/f77api.c",
          "src/api/f77funcs.h",
          "src/api/f77funcs_.h",
          "build/nlopt.hpp",
          "src/util/mt19937ar.c",
          "src/util/sobolseq.c",
          "src/util/soboldata.h",
          "src/util/timer.c",
          "src/util/stop.c",
          "src/util/nlopt-util.h",
          "src/util/redblack.c",
          "src/util/redblack.h",
          "src/util/qsort_r.c",
          "src/util/rescale.c",
          "src/algs/stogo/global.cc",
          "src/algs/stogo/linalg.cc",
          "src/algs/stogo/local.cc",
          "src/algs/stogo/stogo.cc",
          "src/algs/stogo/tools.cc",
          "src/algs/stogo/global.h",
          "src/algs/stogo/linalg.h",
          "src/algs/stogo/local.h",
          "src/algs/stogo/stogo_config.h",
          "src/algs/stogo/stogo.h",
          "src/algs/stogo/tools.h",
          "src/algs/ags/data_types.hpp",
          "src/algs/ags/evolvent.hpp",
          "src/algs/ags/evolvent.cc",
          "src/algs/ags/solver.hpp",
          "src/algs/ags/solver.cc",
          "src/algs/ags/local_optimizer.hpp",
          "src/algs/ags/local_optimizer.cc",
          "src/algs/ags/ags.h",
          "src/algs/ags/ags.cc"
    }
    
    excludes
    {
    }

    includedirs
    {
        "**"
    }
    
    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
