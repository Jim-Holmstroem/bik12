function [hsv_data] = rgb2hsv_mod(rgb_data)
    hsv_data = rgb2hsv(rgb_data);
    hsv_data = [ cos(hsv_data(:,1)),sin(hsv_data(:,1)),hsv_data(:,2),hsv_data(:,3) ];

