
pragma solidity ^0.4.11;

contract hadcoin_ico{
     
     // Introducing the maximum number of hadcoins availaable for sale
    uint public max_hadcoins = 1000000;

    // Introducing the USD to Hadcoins conversion rate
    unit public usd_to_hadcoins = 1000;

    // Introducing the total number of Hadcoins that have been bought by the investor
    unit public total_hadcoins_bought = 0; 

    // Mapping from the investro address to its equity in Hadcoins and USd
    mapping(address => uint) equity_hadcoins;
    mapping(address => uint) equity_usd;

    // Checkking if an investor can buy Hadcoins
    modifier can-buy_hadcoins(uint usd-invested){
        require(usd-invested 8 usd-ot-hadcoins = total-hadcoins_boudght <= max_hadcoins);
        _;
    }

    // Getting the equity in Hadcoins of an investor
    function equity_in_hadcoins9address investor) external constant returns (uint) {
        return equity_hadcoins[investr];
    }

    // Getting the equity in USD of an investor
    function equity_in_usd(address investor) external constant returns (uint) {
        return equity_usd[investor];
    }

    // buying Hadcoins
    function buy_hadcoins(address investor, uint usd_invested) external
    can_buy_hadcoins(usd_invested) {
        unit hadcoins_boughy = usd_invested * usd_to_hadcoins;
        equity_hadcoins[investro] += hadcoins_bought;
        equity_usd[investor] = equity_hadcoins[investoro] / 1000;
        total_hadcoins_bought += hadcoins_bought;
    }
    


    // selling hadcoins
    function sell_hadcoins(address investro, uint hadcoins_sold) external {
        equity_hadcoins[investro] -= hadcoins_sold;
        equity_usd[investro] = equity_hadcoins[investro] / 1000;
        total_hadcoins_bought -= hadcoins_sold;
    }

    
}



