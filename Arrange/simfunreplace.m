%%strrepments for simulink function

for h = 1:2
    taustr{h} = string(c{h});
for i = 1:2
    taustr{h} = strrep(taustr{h},sprintf('m_%d',i),sprintf('m(%d)',i));
    taustr{h} = strrep(taustr{h},sprintf('q_%d',i),sprintf('q(%d)',i));
    taustr{h} = strrep(taustr{h},sprintf('qd_%d',i),sprintf('qd(%d)',i));
    taustr{h} = strrep(taustr{h},sprintf('qdd_%d',i),sprintf('qdd(%d)',i));
    for j = 1:3
        taustr{h} = strrep(taustr{h},sprintf('pm%d_%d',j,i),sprintf('pm(%d,%d)',j,i));
        taustr{h} = strrep(taustr{h},sprintf('pj%d_%d',j,i),sprintf('pj(%d,%d)',j,i));
        for k = 1:3
            taustr{h} = strrep(taustr{h},sprintf('I_%d%d_%d',j,k,i),sprintf('I(%d,%d,%d)',j,k,i));
        end
    end
end
end