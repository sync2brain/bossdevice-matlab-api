classdef basicTests < matlab.unittest.TestCase

    properties
        bd bossdevice
        sgPath
        isSGinstalled
    end

    methods (Test, TestTags = {'noHW'})
        % Test methods that do not require bossdevice or any target connected
        function noBossdevice(testCase)
            testCase.bd = bossdevice;
            testCase.verifyFalse(testCase.bd.isConnected);
        end
    end

end