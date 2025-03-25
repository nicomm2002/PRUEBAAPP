addpath(genpath(pwd))
function [] = main(config.json)
  % load our own config.json
  config = loadjson(configJsonFilename);
  
  % Getting input network
  outres = '';
  if isfield(config,'outres')
      outres = config.outres;
end  


  
% reslice usage:
% reslice_nii(old_fn, ...
%             new_fn, ...
%             [voxel_size], ...
%             [verbose], .... 
%             [bg], ...
%             [method], [img_idx], [preferredForm]);

  mkdir("output")

end
