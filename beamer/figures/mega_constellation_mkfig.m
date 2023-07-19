clear
close all

load topo topo topomap1    % load data 
whos('topo','topomap1')

figure

axis equal                                % set axis units to be the same size
box on                                    % display bounding box

image([0 360],[-90 90], flip(topo), 'CDataMapping', 'scaled')
colormap(topomap1)

clf
[x,y,z] = sphere(50);          % create a sphere 
s = surface(x,y,z);            % plot spherical surface

s.FaceColor = 'texturemap';    % use texture mapping
s.CData = topo;                % set color data to topographic data
s.EdgeColor = 'none';          % remove edges
s.FaceLighting = 'gouraud';    % preferred lighting for curved surfaces
s.SpecularStrength = 0.4;      % change the strength of the reflected light

light('Position',[-1 0 1])     % add a light

axis square off                % set axis to square and remove axis
axis equal



incl        = 72*pi/180;
RAAN(1,1,:) = (0:30:360)*pi/180;
nu          = linspace(0,2*pi,100);

R3 = [cos(-RAAN)   -sin(-RAAN) zeros(1,1,13); 
      sin(-RAAN)    cos(-RAAN) zeros(1,1,13); 
      zeros(1,2,13) ones(1,1,13)];
o = 7000/6371*[cos(nu); sin(nu); zeros(1,100)];
r = [1 0 0; 
     0 cos(-incl) -sin(-incl); 
     0 sin(-incl) cos(-incl)]*o;
r_his = pagemtimes(R3,r);

hold on
for i = 1:12
    plot3(r_his(1,:,i),r_his(2,:,i),r_his(3,:,i),'LineWidth',2,'Color',1-(1-i/13)*[0.3010 0.7450 0.9330]);
    scatter3(r_his(1,i:10:100,i),r_his(2,i:10:100,i),r_his(3,i:10:100,i),60,1-(1-i/13)*[0.3010 0.7450 0.9330],'filled');
end
hold off

view([30,30])                  % set the viewing angle

saveas(gcf,'mega_constellation','epsc')


