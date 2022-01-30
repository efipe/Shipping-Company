@isTest
public  class TestCreateTask {

    @isTest static void TestCreateTask() {



        Test.startTest();
        Database.InsertResult result = Database.insert(newTask, true);
        Test.stopTest();
        System.assert(result.isSuccess());

    }

}
