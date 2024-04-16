syms qdd_1 qdd_2 qd_1 qd_2 m_1 m_2 q_1 q_2 g
fac(1) = collect(tau(1),[qdd_1,qdd_2,qd_1, qd_2]);
fac(2) = collect(tau(2),[qdd_1,qdd_2,qd_1, qd_2]);

fac = simplify(fac);

for i =1:2
[c{i}, t{i}] = coeffs(fac(i),[qdd_1,qdd_2,g]);
c{i} = collect(c{i},[m_1,m_2,sin(q_1),sin(q_2),cos(q_1),cos(q_2)]);
c{i} = collect(c{i},[m_1,m_2,sin(q_1),sin(q_2),cos(q_1),cos(q_2)]);
end

