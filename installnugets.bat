@echo off
.nuget\NuGet.exe install Purple.Test/packages.config -o ./packages/
.nuget\NuGet.exe restore
