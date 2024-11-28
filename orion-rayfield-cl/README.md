# Orion -> Rayfield Compatibility Layer

the title explains itself, this is a compatibility layer for the [Orion UI Library](https://github.com/shlexware/Orion/), to use [Rayfield](https://github.com/SiriusSoftwareLtd/Rayfield) instead. warning, this code may be extremely dumb.

## [The Script Itself](./layer.lua)

replace the orion library loadstring in any script with this loadstring to make it use rayfield instead.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/dumpstring/roblox-unauthorized/refs/heads/main/orion-rayfield-cl/layer.lua"))()
```

## Auto Compatibility

run the code below before executing any script that uses Orion UI Library, to auto-convert it to use Rayfield instead:
[auto-compat.lua](https://raw.githubusercontent.com/dumpstring/roblox-unauthorized/refs/heads/main/orion-rayfield-cl/auto-compat.lua)
