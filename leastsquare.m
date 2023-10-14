% Least Square Algorithm by Michael AC & Clement
clc;
close;
dataPoints = zeros(1, 8);
x_axis = 1:8;
x = 1:0.1:8;

for i = 1:8
    dataPoints(i) = randi([1, 30]);
end

m_div1 = (length(x_axis) * sum(dataPoints .* x_axis)) - (sum(dataPoints)*sum(x_axis))
m_div2 = (length(x_axis)*sum(x_axis.^2) - (sum(x_axis))^2)
m = m_div1 / m_div2

b_div1 = (sum(x_axis.^2)*sum(dataPoints)) - (sum(x_axis)*sum(dataPoints .* x_axis))
b = b_div1 / m_div2

y = m * x + b;
stem(x_axis, dataPoints);
hold on;
plot(x, y, 'r');







