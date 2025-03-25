% Leer archivo .json
jsonData = jsondecode(fileread('config.json'));

% Obtener el valor de t1
t1 = jsonData.t1;

% Convertir t1 a número si es una cadena
if ischar(t1)
    t1 = str2double(t1);
end

% Calcular la suma
suma = 1 + 1;

% Mostrar la suma
disp(['La suma de 1 + t1 es: ', num2str(suma)]);
