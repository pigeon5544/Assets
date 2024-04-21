for Index, Data in next, getgc(true) do
    if typeof(Data) == "table" and typeof(rawget(Data, "CX1")) == "function" then
        Data.CX1 = function() end

		continue
    end

    if typeof(Data) == "table" and rawget(Data, "Detected") and typeof(rawget(Data, "Detected")) == "function" then    
		hookfunction(Data["Detected"], function(Action, Info, NoCrash)
            if rawequal(Action, "_") then return true end
            if rawequal(Info, "_") then return true end

            return task.wait(9e9)
        end)

		continue
    end
end
