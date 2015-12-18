classdef state < handle
   
properties
    path
end

methods(Static)
    function S = state(path)
        if exist(path, 'file')
            x = load(path);
            S = x.S;
        end
        
        S.path = path;
    end
end

methods
    
    function save(S)
        save(S.path, 'S');
    end
    
end
    
end