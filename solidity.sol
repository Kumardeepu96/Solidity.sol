// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract Tokenforassesment {

    // public variables here
    string public Tokenname = "cryptokitties";
    string public Tokenabbr = "kitties";
    uint public Totalsupply = 0;

    // mapping variable here
    //by the help of mapping the address is associated to uint i.e. unsigned integer and it will return the token amount when we will pass the address.
    mapping(address => uint) public balances;

    // mint function having 2 parameters address and values that will increases the total supply by that number and increases the balance 
    //of the “sender” address by that amount
    function mint (address _address,uint _values) public {
        //increasing the totalsupply by the amount passing
        Totalsupply += _values;
        balances[_address] += _values;
    }

    // burn function
     function burn (address _address,uint _values) public {
        if (balances[_address] >= _values){
            //will deduct the value from the total supply 
            Totalsupply -= _values;
            ////will deduct the value from the balance of sender 
            balances[_address] -= _values;
        }
     }

}
