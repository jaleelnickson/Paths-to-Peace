clear

%% Setting up paths

%Create an array of paths to peace
paths_to_peace = {};

%Constants defining the start point and end point
start_point = [1,1];
end_point = [10, 10];

%Create an array to store the visited nodes
visited_nodes = {};

%% Constructing a graph

%Construct a graph of the paths
G = graph;

%Create a matrix to store the weights of each of the nodes
weights_matrix = zeros(10);

%Loop through to create edges in the graph and assign weights
for i=1:10
    for j=1:10
        path_weight = randi([1,20]);
        G = addedge(G,i,j,path_weight);
        weights_matrix(i,j) = path_weight;
    end
end

%% Dijkstra's Algorithm

%Initialize the current_node at the start point
current_node = start_point;

%Loop until the end point is reached
while(isequal(current_node,end_point) == false)
    %Keep track of visited nodes
    visited_nodes = [visited_nodes;current_node];
    
    %Find the unvisited neighbors of the current node
    neighbors = neighbors(G,current_node(1),current_node(2));
    unvisited_neighbors = neighbors(~ismember(neighbors,visited_nodes,'rows'));
    
    %Check if there are any more unvisited neighbors
    if isequal(unvisited_neighbors,[])
        %If there are no unvisited neighbors, backtrack to the previous node
        paths_to_peace{end} = ['Backtrack from ',num2str(current_node(1)),',',...
            num2str(current_node(2)), ' to ', num2str(paths_to_peace{end-1}(5:end))];
        current_node = paths_to_peace{end-1}(1:4);
        paths_to_peace = paths_to_peace(1:end-1);
    else
        %If there are unvisited neighbors, find the neighbor with the lowest
        %weight
        min_weight_neighbor = 0;
        min_weight = inf;
        for k=1:size(unvisited_neighbors,1)
            weight = weights_matrix(current_node(1),unvisited_neighbors(k,1)) + ...
                weights_matrix(current_node(2),unvisited_neighbors(k,2));
            if weight < min_weight
                min_weight = weight;
                min_weight_neighbor = unvisited_neighbors(k,:);
            end
        end
        %Update the current node
        current_node = min_weight_neighbor;
        %Add the path to paths to peace
        paths_to_peace = [paths_to_peace; ['From ',num2str(paths_to_peace{end}(5:end)), ' to ', num2str(current_node)]];
    end
end

%% Output the shortest path

fprintf('The shortest path from [1,1] to [10,10] is:\n\n');

for i=1:length(paths_to_peace)
    fprintf('%s\n', paths_to_peace{i});
end