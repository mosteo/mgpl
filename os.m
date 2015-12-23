classdef os
    
methods(Static)
    
    function name = hostname()
        [~, name] = system('hostname');
    end
    
end

end