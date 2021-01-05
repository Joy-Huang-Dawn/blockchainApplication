pragma solidity ^0.6.12;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

contract carChain  {
    struct carStruct {
        uint cpc;               // 车辆批号
        string carMake;           // 车辆制造者
        string carModel;          // 车辆类型
        uint8 carcurrentOwner;    // 当前车辆所有者数组位置
        uint8 carEngine;          // 当前发动机阵列位置
        uint carMileage;          // 车辆里程
        uint8 counterAirbag; 
        uint8 counterTires;
        address proAddress;
        address useAddress;
        uint64 carPrice;
        address ownerAddress;

    }

    struct ownerInfo {
        address ownerAddress;
        uint timeBought;
    }

    mapping (uint64 => carStruct) automobiles;

    function CarChain(uint64 cpc_,string memory newCarMake,string memory newCarModel) public {
        automobiles[cpc_].cpc = cpc_;
        automobiles[cpc_].carMake = newCarMake;
        automobiles[cpc_].carModel = newCarModel;
      // automobiles[cid_].ownerHistory[0].ownerAddress = msg.sender;
      //  automobiles[cid_].ownerHistory[0].timeBought = now;
      //  automobiles[cid_].ownerHistory[0].carMileage = 0;
    }

    function getAllIndexs(uint64 cpc_) public view returns (uint8 ownerIndex,uint8 engineIndex_,uint8 airbagIndex_,uint8 tiresIndex){
      //  var currentCar = automobiles[cid_];
     //   return (currentCar.carcurrentOwner, currentCar.counterAirbag, currentCar.carEngine, currentCar.counterTires);
    }
    
    function buyCar(uint64 cpc_,address _useAddress,address _ownerAddress,uint64 _carPrice) public {
       automobiles[cpc_].useAddress = _useAddress;
        automobiles[cpc_].cpc = cpc_;
        automobiles[cpc_].useAddress = _useAddress;
        automobiles[cpc_].ownerAddress = _ownerAddress;
        automobiles[cpc_].ownerAddress = _ownerAddress;
        automobiles[cpc_].carPrice = _carPrice;
    }
}