# KungFuscator

KungFuscator is a Lua obfuscator with the following features:

- Bytecode manipulation to make it harder to reverse engineer Lua code.
- Constant array obfuscation to hide the values of constants in the code.
- Proxified locals to make it harder to read and understand variable names.
- Lua virtualization to obfuscate the control flow of the code.
- So much more!

These features can be used together or individually to obfuscate Lua code and make it more difficult for attackers to understand and modify.

KungFuscator is designed for Lua 5.1, 5.2, 5.3, and LuaJIT, and can be used with any Lua codebase that is compatible with these versions.

To use KungFuscator, simply download by click this link below and open the text file named 'instructions.txt'
or watch the video here: 

## INSTRUCTIONS ON HOW TO USE

1. Extract the folder named 'KungFuscatorFree' into your desktop or your directory of your choice.
2. Run the 'RUN.bat' file or you may see the name as 'RUN' for those who don't have file extension display on by default on their PCs.
3. After executing 'RUN.bat' or 'RUN' batch file. It will open as a prompt you can interact. Press continue and PLEASE READ on what the text says. (This batch file is completely editable)
4. After reaching the point where it asks you to put your script in a lua file, it will automatically open a lua file for you. When it opens, you must put your lua script inside the opened lua file.
5. After putting your script in the input lua file, you may close it. (You might see some weird text like some date or stuff but that is just lua stuff)
6. Wait for the process to finish
7. Wait for prometheus to finish protecting. (CLI is set to strong by default which may affect performance and speed)
8. After it finishes, it will automatically open the output and you can copy it and simply test it on either replit or exploit it on roblox using synapse or whatever

## ERROR HANDLING

1. A case where your script won't run. Most of the time its because of interpretation errors, just obfuscate again and it will run perfectly fine.
2. A case where it crashes your roblox. Open secondCompiler.lua, then scroll down till line 64 or till you see 'os.execute'. Then basically change it to: 'lua Prome/cli.lua --LuaU --preset Medium tempOutput.lua --out output.lua'
3. A case where it gets stuck in a loop. Simply reobfuscate or do case number 2.

## Credits
- [Prometheus by Levno-710](https://github.com/prometheus-lua/Prometheus).
- [JustAPerson's Lua Bytecode Interpreter](https://github.com/JustAPerson/lbi).

## License

KungFuscator is released under the [MIT License](https://opensource.org/licenses/MIT).
