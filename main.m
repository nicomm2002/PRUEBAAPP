function main1(t1)
    disp(['Parameter t1: ', t1]);
    % Aquí puedes poner el resto de tu código

% Agregar la ruta de JSONLab
 addpath(genpath('C:\Users\ASUS\OneDrive\Escritorio\Matlab brainlife\jsonlab-2.9.8'));
 addpath(genpath('C:\Users\ASUS\OneDrive\Escritorio\Matlab brainlife\NIfTI_20140122'));

% Cargar el archivo de configuración
config = loadjson('config.json.example');

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

 % PARTE 2
% % Especificar la ruta al archivo .nii
 niiFilePath = 'C:/Users/ASUS/OneDrive/Escritorio/Matlab brainlife/EJEMPLO/data/t1.nii';
 niiFilePath1 = 'C:/Users/ASUS/OneDrive/Escritorio/Matlab brainlife/EJEMPLO/T1w_resliced1mm.nii';
 
% Leer el archivo .nii
 niiData = niftiread(niiFilePath);
 niiData1 = niftiread(niiFilePath1);
% 
% % Mostrar información sobre los datos cargados
 disp(size(niiData));

 % Visualizar el primer corte
 figure(1)
 imshow(niiData(:,:,1), []);
 figure(2)
 imshow(niiData1(:,:,1), []);
 pause;
end
 
