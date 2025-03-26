% Leer archivo .json
jsonData = jsondecode(fileread('config.json'));

% Obtener el valor de t1
t1 = jsonData.n1;

suma = 1 + t1;

% Mostrar la suma
disp(['La suma de 1 + t1 es: ', num2str(suma)]);

save('out_dir/suma.mat','suma')

