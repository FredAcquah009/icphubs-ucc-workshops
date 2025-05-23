import Debug "mo:base/Debug";
import Float "mo:base/Float";
persistent actor Project {
  //Decentralized Banking System
  //CheckBalance, TopUp, WithDraw
  //CheckBalance
  stable var balance : Float =100;
  public func CheckBalance():async Text{
    return "Your Balannce is:" # Float.toText(balance);
  }


  //TopUp
  public var TopUp(amount):async Text{
    balance : = balance + amount;
    return" An amount:" # Float.toText(amount) # "added"
  }

  //Withdraw
  publicvar WithDraw (amount:async text{
    balance: = balance-amount'
    return "An amount :" # Float.toText(amount) # "added"
  })
}