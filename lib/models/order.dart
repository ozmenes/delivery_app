class Order{
  double orderPrice=0.0;
  int orderId,orderQuantitys,orderSize;
  String orderName,orderInstructions,orderToppings;

  Order({this.orderId,this.orderPrice,this.orderQuantitys,this.orderSize,this.orderName,this.orderInstructions,this.orderToppings});
  showOrderName(){
    return orderName;
  }
}
