function main1(t1)
    disp(['Parameter t1: ', t1]);
    % Aquí puedes poner el resto de tu código


% Cargar el archivo de configuración
config = loadjson('config.json);

% Pasar las entradas y salidas leídas del archivo config.json a la función 
% que cargará el archivo T1w, lo resampleará y escribirá el nuevo archivo 
% resampleado a una resolución de 1 mm.
%
% Esto guardará en el directorio actual un archivo llamado "T1w_resliced1mm.nii"
% porque ese es el nombre del archivo almacenado en config.outname
reslice_nii(config.t1, ...
            config.outname, ...
            config.outres, ...
            true, true, 2);
        
% Uso de reslice:
% reslice_nii(old_fn, ...
%             new_fn, ...
%             [voxel_size], ...
%             [verbose], .... 
%             [bg], ...
%             [method], [img_idx], [preferredForm]);

 pause;
end
 
