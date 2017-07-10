% import a particular neuron tracing swc file, requires user input
start_trees
load_tree('sample2.mtr');
%%
fileName='filled neuron 2.swc';
load_tree(fileName)
trees{2}.frustum=1;
plot_tree(trees{2})
%%
newtree=resample_tree(trees{2},10);
sort_tree(newtree,'-LEX')
%%
figure('color','w')
gene=gene_tree({{newtree}});
%%
newtree=repair_tree(newtree);
%%
figure('color','w')
PL=PL_tree(newtree);
dendrogram_tree(newtree,PL/35,PL,PL,[], [], '-p -v')
colorbar
title('Dendrogram of neuron 2')
ylabel('topological path length')
