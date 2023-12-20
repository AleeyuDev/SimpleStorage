// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.18;

contract SimpleStorage {
    // uint256 public myfavoriteNumber;
    uint256 myfavoriteNumber;

    //   bool hasFavoriteNumber = true;
    // int myfavoriteNumber = +89;
    // string favoriteNumberIntext = "eighthy-eight";
    // address Myaddres =  0xajdjdjmdJASJsdeje9098ihHBbNhuaanckkvhnvmmNS
    // bytes32  favoriteBytes = 'Cat'

    // uint256[] listOfFavoriteNum;

    // creating your own type of data
    struct Person {
        uint256 favoriteNumber
        string name;
        bool isCool;
    }


// dynamic array 
Person[] public listOfPeople;

//  static array
// Person[3] public listOfPeople;

// Person public myFriend = Person( 7, "Aliyu" )
// Person public aliyu = Person( {favoriteNumber: 7, name:"Aliyu"} )
// Person public patirick = Person( {favoriteNumber: 12, name:"Patirick"} )
// Person public maria = Person( {favoriteNumber: 56, name:"Mariah"} )
    function store(uint256 _num) public {
        myfavoriteNumber = _num;
    }


   function addPeson( string memory name, uint256 _favoriteNumber, bool _isCool) public {
       
//      Person memory  newPerson  = Person(_favoriteNumber, _name, _isCool)
//    listOfPeople.push(newPerson)

    listOfPeople.push(_favoriteNumber, _name , _isCool);

}
    // view  disallowed updating state

    //   pure   disallowed reding and updating
    function retrieve() public view returns (uint256) {
        return myfavoriteNumber;
    }
}
