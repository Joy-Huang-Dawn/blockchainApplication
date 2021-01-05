pragma solidity ^0.7.0;


contract owner{
    uint cpc;
    uint carOwnerID;
    
    uint owner_id  = 0;
    
    mapping (uint => owner) owners;
    
    struct owner {
        uint cpc;
        address OwnerID;
        uint proPrice;
        address distributorID;
    }
    
    function addOwner(address _OwnerID,uint _proPrice,address _distributorID) public returns(uint32) {
        uint OwnerID = owner_id++;
        owners[OwnerID].OwnerID = _OwnerID;
        owners[OwnerID].proPrice = _proPrice;
        owners[OwnerID].distributorID = _distributorID;
        
    }
    
    
}