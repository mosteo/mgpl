classdef state < handle
   
properties
    data % Use this to store whatever
    % Alternatively create a descendant with the needed fields
    
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