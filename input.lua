-- Function to encode a string using a custom Caesar cipher
function caesarEncode(text, shift)
    local encoded = ""
    for i = 1, #text do
      local c = text:sub(i,i)
      local code = string.byte(c)
      -- Apply shift to ASCII code of character
      code = code + shift
      -- Handle wraparound for uppercase letters
      if code > 90 and code < 97 then
        code = code - 26
      end
      -- Handle wraparound for lowercase letters
      if code > 122 then
        code = code - 26
      end
      encoded = encoded .. string.char(code)
    end
    return encoded -- convert encoded string to all caps
  end
  
  
  -- Function to decode a string encoded with the custom Caesar cipher
  function caesarDecode(encoded, shift)
    return caesarEncode(encoded, -shift)
  end
  
  -- Function to interpret and execute Lua code from an encoded string
  function executeEncodedLua(encoded)
    local decoded = caesarDecode(encoded, 3) -- use shift of 3 for decoding
    load(decoded)() -- execute decoded Lua code
  end

  local example = 'print("hello test")'
  shiftLol = 66
  local ABC = caesarEncode(example, shiftLol)
  print(ABC)
  local ABC2 = caesarDecode(ABC, shiftLol)
  print(ABC2)
  
  