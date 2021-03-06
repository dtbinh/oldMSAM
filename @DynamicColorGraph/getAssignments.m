function [a, c] = getAssignments(obj)
%GETASSIGNMENTS get the current colorGraphs' color assignments

a = zeros(1, numel(obj.agentNames));
for i = 1:numel(obj.agentNames);
    agent = obj.agents(obj.agentNames{i});
    a(i) = agent.getVariable().getValue().intValue;
end

constraints = obj.neqConstraints();

c = sum(a(constraints(:,1)) == a(constraints(:,2)));

end

