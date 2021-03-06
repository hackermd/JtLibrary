% Copyright 2016 Markus D. Herrmann, University of Zurich
% 
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
% 
%     http://www.apache.org/licenses/LICENSE-2.0
% 
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.
function outputStr = formatRW(inputStr)
%adds whitespace after \reservedwordplot(1,1); 

inputStrCell = cell(1,length(inputStr)); 

for c = 1:length(inputStr)
    inputStrCell{c} = inputStr(c); 
end

rW = {'\\alpha','\\upsilon','\\sim','\\angle','\\phi','\\leq',...
    '\\ast','\\chi','\\infty','\\beta','\\psi','\\clubsuit',...
    '\\gamma','\\omega','\\diamondsuit','\\delta',...
    '\\Gamma','\\heartsuit','\\epsilon','\\Delta',...
    '\\spadesuit','\\zeta','\\Theta','\\leftrightarrow',...
    '\\eta','\\Lambda','\\leftarrow','\\theta','\\Xi',...
    '\\Leftarrow','\\vartheta','\\Pi','\\uparrow',...
    '\\iota','\\Sigma','\\rightarrow','\\kappa',...
    '\\Upsilon','\\Rightarrow','\\lambda','\\Phi',...
    '\\downarrow','\\mu','\\Psi','\\circ','\\nu',...
    '\\Omega','\\pm','\\xi','\\forall','\\geq','\\pi',...
    '\\exists','\\propto','\\rho','\\ni','\\partial',...
    '\\sigma','\\cong','\\bullet','\\varsigma',...
    '\\approx','\\div','\\tau','\\Re','\\neq','\\equiv',...
    '\\oplus','\\aleph','\\Im','\\cup','\\wp','\\otimes',...
    '\\subseteq','\\oslash','\\cap','\\in','\\supseteq',...
    '\\supset','\\lceil','\\subset','\\int','\\cdot','\\o',...
    '\\rfloor','\\neg','\\nabla','\\lfloor','\\times','\\lots',...
    '\\perp','\\surd','\\prime','\\wedge','\\varpi','\\0',...
    '\\rceil','\\rangle','\\mid','\\vee','\\copyright','\\langle'};

for w = 1:length(rW)
    [startInd endInd] = regexp(inputStr,rW{w});
    for ind = 1:length(endInd)
        %add space at end of reserved words 
        inputStrCell{endInd(ind)}  = [inputStrCell{endInd(ind)} ' '];
    end
end

outputStr = [inputStrCell{:}]; 

end