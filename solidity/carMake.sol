pragma solidity ^0.7.0;

contract carMake {
    // 定义车辆代码
    uint cpc;
    //uint carid;
    //address carOwner;
    uint car_id = 0;
    
    mapping (uint => car) cars;
    
    mapping (uint => string[]) carHistory;
    
    enum State {
        Made,
        Add,
        ForSale,
        Sold,
        Shipped,
        Received,
        Purchased,
        Search
    }
    
    State constant defaultState = State.Made;
    
    struct car {
        uint cpc;
        address carOwnerID;
        address carManufacturerID;
        string factoryInfo;
        string carBrand;
        string carProPlace;
        //uint carid;
        uint proPrice;
        address distributorID;
        address buyerID;
        State proState;
    }
    
    event Made(uint cpc);
    event Add(uint cpc);
    event ForSale(uint cpc);
    event Sold(uint cpc);
    event Shipped(uint cpc);
    event Received(uint cpc);
    event Purchased(uint cpc);
    event Search(uint cpc);
    
    modifier checkValue(uint _cpc) {
        _;
        uint _price = cars[_cpc].proPrice;
        uint amountToReturn = msg.value - _price;
        
        address payable _add = address(uint160( cars[cpc].buyerID));
        
        _add.transfer(amountToReturn);
        
    }
    
    modifier made(uint _cpc) {
        require(cars[_cpc].proState == State.Made);
        _;
    }
    
    modifier add(uint _cpc) {
        require(cars[_cpc].proState == State.Add);
        _;
    }
    
    modifier forSale(uint _cpc) {
    require(cars[_cpc].proState == State.ForSale);
    _;
  }
  
  modifier sold(uint _cpc) {
    require(cars[_cpc].proState == State.Sold);
    _;
  }
  
  modifier shipped(uint _cpc) {
    require(cars[_cpc].proState == State.Shipped);

    _;
  }

  modifier received(uint _cpc) {
    require(cars[_cpc].proState == State.Received);

    _;
  }

  modifier purchased(uint _cpc) {
    require(cars[_cpc].proState == State.Purchased);
    _;
  }
  
  modifier search(uint _cpc) {
    require(cars[_cpc].proState == State.Search);
    _;
  }
  
  function addCar(uint _cpc,address _carOwnerID,address _carManufacturerID,string memory _factoryInfo,
  string memory _carBrand,string memory _carProPlace,uint _proPrice) public returns(uint32) {
      uint carid = car_id++;
      cars[_cpc].cpc = _cpc;
      cars[_cpc].carOwnerID = _carOwnerID;
      cars[_cpc].carManufacturerID = _carManufacturerID;
      cars[_cpc].factoryInfo = _factoryInfo;
      cars[_cpc].carBrand = _carBrand;
      cars[_cpc].carProPlace = _carProPlace;
      cars[_cpc].proPrice = _proPrice;
      
  // return carid;
      
  }
  
//   function getCar(uint cpc) public view returns (uint,address,address,address,string memory,string memory,string memory,uint) {
//       return (cars[cpc].cpc,
//       cars[cpc].carOwnerID,
//       cars[cpc].carManufacturerID,
//       cars[cpc].factoryInfo,
//       cars[cpc].carBrand,
//       cars[cpc].carProPlace,
//       cars[cpc].proPrice
//       );
//   }
  
  function fetchCar(uint _cpc) public view returns (
      uint carCPC,
      address carOwnerID,
      address carManufacturerID,
      string memory factoryInfo,
      string memory carProPlace
      )
      {
          return 
          (
              cars[_cpc].cpc,
              cars[_cpc].carOwnerID,
              cars[_cpc].carManufacturerID,
              cars[_cpc].factoryInfo,
              cars[_cpc].carProPlace
              );
      }
    
}