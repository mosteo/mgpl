classdef misc
    
methods(Static)
    
    % Add missing fields in dst from src
    function dst = mergemissing(dst, src)
        fields = fieldnames (src);

        for f = 1:length(fields)
            if ~isfield(dst, fields{f})
                dst.(fields{f}) = src.(fields{f});
            end
        end
    end
    
end
    
end