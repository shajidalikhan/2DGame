workspace "2DGame"
	architecture "x64"

	configurations
	{
		"Debug",
		"Release"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

IncludeDir = {}
IncludeDir["GLFW"] = 	"2DGame/vendor/GLFW/include"
IncludeDir["Glad"] = 	"2DGame/vendor/Glad/include"
IncludeDir["ImGui"] = 	"2DGame/vendor/ImGui"

include "2DGame/vendor/GLFW"
include "2DGame/vendor/Glad"
include "2DGame/vendor/ImGui"

project "2DGame"
	location "2DGame"
	kind "ConsoleApp"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
	}

	includedirs
	{
		"%{prj.name}/src",
		"%{prj.name}/vendor/spdlog/include",
		"%{prj.name}/vendor",
		"%{prj.name}/vendor/stb_image",
		"%{IncludeDir.GLFW}",
		"%{IncludeDir.Glad}",
		"%{IncludeDir.ImGui}"
	}

	links
	{
		"GLFW",
		"Glad",
		"ImGui",
		"opengl32.lib"
	}

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

	filter "configurations:Debug"


	filter "configurations:Release"
