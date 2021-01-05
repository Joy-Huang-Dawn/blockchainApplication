console.log("ERC721")

let accounts = [];
let web3 = new Web3(Web3.givenProvider || "ws://localhost:8545");
console.log("web3", web3)

if (typeof window.ethereum !== 'undefined') {
    console.log('MetaMask is installed!');
}

console.log("isMetaMask：" + ethereum.isMetaMask)



// CarChain.sol abi
var contractAbi = [
	{
		"inputs": [
			{
				"internalType": "uint64",
				"name": "cpc_",
				"type": "uint64"
			},
			{
				"internalType": "string",
				"name": "newCarMake",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "newCarModel",
				"type": "string"
			}
		],
		"name": "CarChain",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint64",
				"name": "cpc_",
				"type": "uint64"
			},
			{
				"internalType": "address",
				"name": "_useAddress",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_ownerAddress",
				"type": "address"
			},
			{
				"internalType": "uint64",
				"name": "_carPrice",
				"type": "uint64"
			}
		],
		"name": "buyCar",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint64",
				"name": "cpc_",
				"type": "uint64"
			}
		],
		"name": "getAllIndexs",
		"outputs": [
			{
				"internalType": "uint8",
				"name": "ownerIndex",
				"type": "uint8"
			},
			{
				"internalType": "uint8",
				"name": "engineIndex_",
				"type": "uint8"
			},
			{
				"internalType": "uint8",
				"name": "airbagIndex_",
				"type": "uint8"
			},
			{
				"internalType": "uint8",
				"name": "tiresIndex",
				"type": "uint8"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
];

// 0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99  本地
// rinkeby
var contract = new web3.eth.Contract(contractAbi, "0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99");

console.log("contract MyDapp", contract)



$(".enableEthereumButton").click(function () {
    // alert("enableEthereumButton")
    // ethereum.request({ method: 'eth_requestAccounts' });
    getAccount()

}
)



async function getAccount() {
    accounts = await ethereum.request({ method: 'eth_requestAccounts' });
    const account = accounts[0];
    // showAccount.innerHTML = account;
    $(".showAccount").html(account);

}

// 添加制造商

$("#btn_ManufacturerAddr").click(function () {
    _ManufacturerAddr = $('#ManufacturerAddr' ).val();
    console.log("btn_ManufacturerAddr", _ManufacturerAddr);

    contract.methods.addManufacturer(_ManufacturerAddr).send({ from: accounts[0] }).then(
        function (result) {
            console.log("ManufacturerAddr==>", result);
            console.log("ManufacturerAddr transactionHash==>", result.transactionHash);
        }
    )

}
)


// 添加供销商

$("#btn_DistributorAddr").click(function () {
    _DistributorAddr = $('#DistributorAddr').val();
    console.log("_DistributorAddr", _DistributorAddr);

    contract.methods.addDistributor(_DistributorAddr).send({ from: accounts[0] }).then(
        function (result) {
            console.log("addDistributor==>", result);
            console.log("addDistributor transactionHash==>", result.transactionHash);
        }
    )

}
)





$("#btn-fetchOne").click(function () {
    _upc = $('#cpc').val();
    console.log("btn-fetchOne", _upc);


    contract.methods.fetchMedicineBufferOne(_upc).call({ from: accounts[0] }).then(
        function (result) {
            console.log("fetchMedicineBufferOne***********", result)


        }
    );

}

//  $("#btn-buycar").click(function () {
//     _cpc = $('#buycarInfo').val();
//     console.log("btn-buycar",_buycarInfo);

//     contract.methods.buycar(_cpc).call({ from: accounts[0]}).then(
//         function (result) {
//             console.log("buycarInfo*********",result)
//         }
//     )};

("#btn_buycar").click(function () {
    _DistributorAddr = $('#buycar').val();
    console.log("_buycar", _buycar);

    contract.methods.buycar(_buycar).send({ from: accounts[0] }).then(
        function (result) {
            console.log("buycar==>", result);
            console.log("buycar transactionHash==>", result.transactionHash);
        }
    )

}
)

)
