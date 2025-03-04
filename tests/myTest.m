classdef myTest < sltest.TestCase
   methods (Test)
      function testOne(testCase)
         testCase.loadSystem...
           ('simuTest');
         evalin('base','gain = 2.01;');
         evalin('base','input = 2.01;');
         simOut = testCase.simulate...
           ('simuTest');
         
         testCase.verifyEqual(simOut.simout.Data,2.01^2);
      end
   end
end