function main1(t1)
    disp(['Parameter t1: ', t1]);
    
    % Cargar el archivo de configuración
    config = loadjson('config.json');
    
    % Mostrar la suma de 1 + 1
    disp(['La suma de 1 + 1 es: ', num2str(1 + 1)]);  
end
