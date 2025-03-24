 
function main1(t1)
    disp(['Parameter t1: ', t1]);
    % Aquí puedes poner el resto de tu código

% Agregar la ruta de JSONLab
 addpath(genpath('C:\Users\ASUS\OneDrive\Escritorio\Matlab brainlife\jsonlab-2.9.8'));
 addpath(genpath('C:\Users\ASUS\OneDrive\Escritorio\Matlab brainlife\NIfTI_20140122'));

% Cargar el archivo de configuración
config = loadjson('config.json);

% Pasar las entradas y salidas leídas del archivo config.json a la función que cargará el archivo T1w, lo resampleará y escribirá el nuevo archivo resampleado a una resolución de 1 mm. % Esto guardará en el directorio actual un archivo llamado "T1w_resliced1mm.nii.gz" porque ese es el nombre del archivo almacenado en config.outname

reslice_nii(config.t1, ...
            config.outname, ...
            config.outres, ...
            true, true, 2);
        

 
