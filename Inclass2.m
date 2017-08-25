%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
   if mod(ii,2)~=0
       disp(ii)
   end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 

for ii = 1:2:20
    disp(ii)
end

% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)

disp(num2str([1:2:20]))


%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100
    z(ii) = ii*ii;
end

z = [1:100].^2


%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

z=sum([1:100])

%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
end

z_remade = sqrt((xx(:,1)).^2+(xx(:,2).^2))'

% d. what is the formula in c computing?
% If xx is a bunch of points, z is the distance to each of them.

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

x = linspace(0,4*pi);
plot(sin(x),'--r')
hold on
plot(cos(x), 'b')

%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

x = linspace(0,4*pi);
subplot(1,2,1), plot(sin(x),'--r')
subplot(1,2,2), plot(cos(x), 'b')

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.
scatter(xy_dat(:,1),xy_dat(:,2))
%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1)
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command
scatter(xy_dat(:,1),xy_dat(:,2),[],fluor,'filled')