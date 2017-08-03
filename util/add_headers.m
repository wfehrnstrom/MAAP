function add_headers(csv_file, varargin)
    header_string = varargin{1}; % Assumes at least 1 input
    nVarargs = length(varargin);
    for k = 2:nVarargs
        header_string = [header_string ',' varargin{k}];
    end
    fid = fopen(csv_file, 'w');
    fprintf(fid, '%s\r\n', header_string);
    fclose(fid);
end