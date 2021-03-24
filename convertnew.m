%%This is an helper function used to reshape all the signal
function sig_new = convertnew(sig)
s1 = num2cell(sig,[1 2]); 
s1 = reshape(s1,size(sig,3),1); 
sig_new = cell2mat(s1);
end