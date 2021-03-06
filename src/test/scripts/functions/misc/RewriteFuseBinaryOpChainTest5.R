#-------------------------------------------------------------
#
# Copyright 2019 Graz University of Technology
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#-------------------------------------------------------------

args<-commandArgs(TRUE)
options(digits=22)
library("Matrix")

X = seq(1,100) + seq(100,1);
r1 = quantile(X, 0.05);
r2 = quantile(X, 0.95);
S = as.matrix(r1 + r2);

writeMM(as(S, "CsparseMatrix"), paste(args[2], "S", sep="")); 
