pragma solidity ^0.4.26;
/// @title Automobile data storage


contract CarContract {

    struct PartInfo {
        string part;
        uint timeInstalled;
        uint carMileage;
        string whoInstalledPart;
    }

    struct OwnerInfo {
        address ownerAddress;
        uint timeBought;
        uint carMileage;
    }

    struct CarStruct {
	uint8 counterOwner;    // Current owner array position 当前所有者数组位置
	uint8 counterAirbag;   // Current airbag array position 当前安全气囊阵列位置
	uint8 counterEngine;   // Current engine array position 当前发动机阵列位置
	uint8 counterTires;    // Current tires array position 当前轮胎阵列位置
        uint64 vin;            // VINs are 17 digits long. This will never change VINs有17位数字长
        string carMake;        // This will never change 不会改变
        string carModel;       // This will never change 不会改变
        PartInfo[50] airbag;
        PartInfo[50] engine;
        PartInfo[100] tires;
        OwnerInfo[100] ownerHistory;
    }
    
    // Automobiles added to the registry 登记在案的汽车
    // Creates a CarStruct for every possible VIN 为每个可能的VIN创建一个CarStruct
    mapping (uint64 => CarStruct) automobiles;
    
    // This is the constructor whose code is only run when the contract is first created
    //这是一个构造函数，它的代码只在第一次创建契约时运行，初始化车辆的静态信息
    function CarContract(uint64 vin_, string newCarMake, string newCarModel) public {  
        automobiles[vin_].vin = vin_;              // 车辆识别号
        automobiles[vin_].carMake = newCarMake;    // 汽车制造商的名称
        automobiles[vin_].carModel = newCarModel;  // 汽车的类型
        automobiles[vin_].ownerHistory[0].ownerAddress = msg.sender;
        automobiles[vin_].ownerHistory[0].timeBought = now;
        automobiles[vin_].ownerHistory[0].carMileage = 0;
    }
   
   // 检索最新所有者和已安装零件的阵列位置。
    function getAllIndexes(uint64 vin_) public view returns (uint8 ownerIndex, uint8 airbagIndex_,
                                                             uint8 engineIndex_, uint8 tiresIndex) {
        var currentCar = automobiles[vin_];
        return (currentCar.counterOwner, currentCar.counterAirbag, currentCar.counterEngine, currentCar.counterTires);
    }

   // 检索在调用构造函数后未更改的车辆信息。
    function getStaticCarInfo(uint64 vin_) public view returns (uint64 vinOut, string _carMake, string _carModel) {
        return (automobiles[vin_].vin, automobiles[vin_].carMake, automobiles[vin_].carModel);
    }
 
    function getAirbag(uint64 vin_, uint8 arrayIndex_) public view returns (string _part, uint _timeInstalled,
                                                                uint _carMileage, string _whoInstalledPart) {
        var currentCar = automobiles[vin_];
	var counterOwner_ = currentCar.counterOwner;
        assert(msg.sender == currentCar.ownerHistory[counterOwner_].ownerAddress);
        return (currentCar.airbag[arrayIndex_].part,
                currentCar.airbag[arrayIndex_].timeInstalled,
                currentCar.airbag[arrayIndex_].carMileage,
                currentCar.airbag[arrayIndex_].whoInstalledPart);
    }
    
    function getEngine(uint64 vin_, uint8 arrayIndex_) public view returns (string _part, uint _timeInstalled,
                                                                uint _carMileage, string _whoInstalledPart) {
        var currentCar = automobiles[vin_];
	var counterOwner_ = currentCar.counterOwner;
        assert(msg.sender == currentCar.ownerHistory[counterOwner_].ownerAddress);
        return (currentCar.engine[arrayIndex_].part,
                currentCar.engine[arrayIndex_].timeInstalled,
                currentCar.engine[arrayIndex_].carMileage,
                currentCar.engine[arrayIndex_].whoInstalledPart);
    }

    function getTires(uint64 vin_, uint8 arrayIndex_) public view returns (string _part, uint _timeInstalled,
                                                                uint _carMileage, string _whoInstalledPart) {
        var currentCar = automobiles[vin_];
	var counterOwner_ = currentCar.counterOwner;
        assert(msg.sender == currentCar.ownerHistory[counterOwner_].ownerAddress);
        return (currentCar.tires[arrayIndex_].part,
                currentCar.tires[arrayIndex_].timeInstalled,
                currentCar.tires[arrayIndex_].carMileage,
                currentCar.tires[arrayIndex_].whoInstalledPart);
    }

    function getOwner(uint64 vin_, uint8 arrayIndex_) public view returns (address _ownerAddress, uint _timeBought, uint _carMileage) {
        var currentCar = automobiles[vin_];
	var counterOwner_ = currentCar.counterOwner;
        assert(msg.sender == currentCar.ownerHistory[counterOwner_].ownerAddress);
        return (currentCar.ownerHistory[arrayIndex_].ownerAddress,
                currentCar.ownerHistory[arrayIndex_].timeBought,
                currentCar.ownerHistory[arrayIndex_].carMileage);
    }

    function changeOwner(uint64 vin_, address newOwner, uint currentMileage) public {
        // Current owner is only one that can make a part change 目前的所有者是唯一一个可以进行部分更改的
        // assert verifies current owner is the person making the part change request 断言验证当前所有者是发出部件更改请求的人
        var currentCar = automobiles[vin_];
	var counterOwner_ = currentCar.counterOwner;
        assert(msg.sender == currentCar.ownerHistory[counterOwner_].ownerAddress);
        currentCar.counterOwner++;
	counterOwner_ = currentCar.counterOwner;
        currentCar.ownerHistory[counterOwner_].ownerAddress = newOwner;
        currentCar.ownerHistory[counterOwner_].timeBought = now;
        currentCar.ownerHistory[counterOwner_].carMileage = currentMileage;
    }
    
    function changeAirbag (uint64 vin_, string newAirbag, uint currentMileage, string newMechanic) public {
        // Current owner is only one that can make a part change 当前所有者只能进行部分更改
        // assert verifies current owner is the person making the part change request assert验证当前所有者是发出部件更改请求的人
        var currentCar = automobiles[vin_];
	var counterOwner_ = currentCar.counterOwner;
        assert(msg.sender == currentCar.ownerHistory[counterOwner_].ownerAddress);
        if (bytes(currentCar.airbag[0].part).length > 0) {
            // If first airbag has been logged, move to next spot in array 如果第一个安全气囊已被登记，移动到阵列的下一个地点
            currentCar.counterAirbag++;
        }
	var counterAirbag_ = currentCar.counterAirbag;
        currentCar.airbag[counterAirbag_].part = newAirbag;
        currentCar.airbag[counterAirbag_].timeInstalled = now;
        currentCar.airbag[counterAirbag_].carMileage = currentMileage;
        currentCar.airbag[counterAirbag_].whoInstalledPart = newMechanic;
    }
    
    function changeEngine (uint64 vin_, string newEngine, uint currentMileage, string newMechanic) public {
        // Current owner is only one that can make a part change 当前所有者只能进行部分更改
        // assert verifies current owner is the person making the part change request  assert验证当前所有者是发出部件更改请求的人
        var currentCar = automobiles[vin_];
	var counterOwner_ = currentCar.counterOwner;
        assert(msg.sender == currentCar.ownerHistory[counterOwner_].ownerAddress);
        if (bytes(currentCar.engine[0].part).length > 0) {
            // If first engine has been logged, move to next spot in array 如果第一个引擎被记录，移动到数组的下一个位置
            currentCar.counterEngine++;
        }
	var counterEngine_ = currentCar.counterEngine;
        currentCar.engine[counterEngine_].part = newEngine;
        currentCar.engine[counterEngine_].timeInstalled = now;
        currentCar.engine[counterEngine_].carMileage = currentMileage;
        currentCar.engine[counterEngine_].whoInstalledPart = newMechanic;    
    }
    
    function changeTires (uint64 vin_, string newTires, uint currentMileage, string newMechanic) public {
        // Current owner is only one that can make a part change
        // assert verifies current owner is the person making the part change request
        var currentCar = automobiles[vin_];
	var counterOwner_ = currentCar.counterOwner;
        assert(msg.sender == currentCar.ownerHistory[counterOwner_].ownerAddress);
        if (bytes(currentCar.tires[0].part).length > 0) {
            // If first set of tires have been logged, move to next spot in array 如果第一组轮胎被记录，移动到数组中的下一个位置
            currentCar.counterTires++;
        }
	var counterTires_ = currentCar.counterTires;
        currentCar.tires[counterTires_].part = newTires;
        currentCar.tires[counterTires_].timeInstalled = now;
        currentCar.tires[counterTires_].carMileage = currentMileage;
        currentCar.tires[counterTires_].whoInstalledPart = newMechanic;  
    }
}