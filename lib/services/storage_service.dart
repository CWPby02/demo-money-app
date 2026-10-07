class StorageService {

  // --------------------------------------------------
  // DEMO BALANCE
  // --------------------------------------------------

  double balance = 05.00;


  // --------------------------------------------------
  // BALANCE GET
  // --------------------------------------------------

  double getBalance() {
    return balance;
  }


  // --------------------------------------------------
  // ADD DEMO MONEY
  // --------------------------------------------------

  void addMoney(double amount) {
    balance += amount;
  }


  // --------------------------------------------------
  // REMOVE DEMO MONEY
  // --------------------------------------------------

  bool removeMoney(double amount) {

    // अगर balance कम है
    if (amount > balance) {
      return false;
    }

    balance -= amount;

    return true;
  }
}
