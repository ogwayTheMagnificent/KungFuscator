-- This function takes the filename of the Lua file to run
-- and returns the captured output as a string
function capture_output(filename)
    f = io.popen("lua " .. filename)
    local output = f:read("*a")
    f:close()
    return output
end
-- This function takes the filenames of the source and destination Lua files,
-- the filename of the Lua file to insert, and the comment to search for
function copy_and_insert(source_filename, dest_filename, insert_filename, comment)
    -- Read the source file
    local source_file = io.open(source_filename, "r")
    local source_content = source_file:read("*a")
    source_file:close()

    -- Read the file to insert
    local insert_file = io.open(insert_filename, "r")
    local insert_content = insert_file:read("*a")
    insert_file:close()

    -- Find the comment and insert the content
    local index = source_content:find(comment)
    if index then
        source_content = source_content:sub(1, index + #comment) .. "\n" .. insert_content .. "\n" .. source_content:sub(index + #comment + 1)
    end

    -- Write the modified content to the destination file
    local dest_file = io.open(dest_filename, "w")
    dest_file:write(source_content)
    dest_file:close()

    -- Run the destination file
    os.execute("lua " .. dest_filename)
end

-- Example usage:
copy_and_insert("src/main.lua", "copiedMainer.lua", "tempOutput.lua", "-- SCRIPT_HERE")

-- Example usage:
local output = capture_output("copiedMainer.lua")

local BytecodeGeneration = math.random(50, 99)


local function encode(str)
    local chars = {}
    for i = 1, #str do
        chars[i] = string.char(str:byte(i) + BytecodeGeneration)
    end
    return table.concat(chars)
end

local AntiBeautify = encode('if(debug.getinfo(1).currentline~=1)then error("your trash kid.") end;')


local funny = [[('fakeconstantlmaoyou_really_fell_overfell_for_ityour_a_retard_trying_so_hard_asfuckdumping_my_luac_is_a_bad_idea'):gsub('.+',function(a)_liLIliLIilILlLlLl=a end);local Alol = ]]..BytecodeGeneration..[[ local function a(b)local c={}for d=1,#b do c[d]=string.char(b:byte(d)-Alol)end;return table.concat(c)end;local E = [=[]]..encode(output)..[[]=]; local ABC = [=[]]..AntiBeautify..[[]=];getfenv()['\108\111\97\100\115\116\114\105\110\103'](a(ABC))(); getfenv()['\108\111\97\100\115\116\114\105\110\103'](a(E))();local a={"apple","banana","orange","grape","watermelon","kiwi","mango","pineapple","pear","peach","apricot","plum","cherry","raspberry","blueberry","strawberry","blackberry","lemon","lime","grapefruit","tangerine","clementine","pomegranate","fig","date","coconut","avocado","papaya","guava","passion fruit","dragon fruit","star fruit","persimmon","cranberry","gooseberry","currant","elderberry","mulberry","boysenberry","loganberry","kiwano","mamey sapote","soursop","durian","jackfruit","breadfruit","lychee","longan","rambutan","custard apple","cherimoya","sugar apple","guanabana","kiwifruit","cloudberry","lingonberry","sea buckthorn","salmonberry","blackcurrant","redcurrant","whitecurrant","tayberry","boysenberry","tangelo","ugli fruit","miracle fruit","açaí","acorn squash","alfalfa sprouts","amaranth","anise","artichoke","arugula","asparagus","aubergine","azuki beans","banana squash","basil","bean sprouts","beetroot","bell pepper","black beans","black-eyed peas","bok choy","borlotti bean","broad beans","broccoflower","broccoli","brussels sprouts","butternut squash","cabbage","calabrese","caraway","carrot","cauliflower","cayenne pepper","celeriac","celery","chamomile","chard","chayote","chickpeas","chives","cilantro","collard greens","corn","corn salad","courgette","cucumber","daikon","delicata squash","dill","eggplant","endive","fennel","fiddlehead ferns","frisee","garlic","gem squash","ginger","green beans","green onion","gumbo","horseradish","hubbard squash","iceberg lettuce","jerusalem artichoke","jicama","kale","kidney beans","kohlrabi","lentils"} do local A = 'You tried. You failed.' local sss = '' end]]

-- Write the captured output to another file
file = io.open("output.lua", "w")
file:write(output)
file:close()

os.execute("lua Prome/cli.lua --LuaU --preset Medium tempOutput.lua --out output.lua")
os.remove("copiedMainer.lua")