classdef os
    
methods(Static)
    
    function name = hostname()
        [~, name] = system('hostname');
        name = name(1:end-1);
    end
    
end

end