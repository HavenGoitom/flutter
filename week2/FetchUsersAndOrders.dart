fetchUsers() async {
  await Future.delayed(Duration(seconds: 2), () => {print('users:alice')});
  //return a string  'users:alice' after 2 seconds
  // so the return is sychnorous and the arrow function is async so we dont need the return
  //also the arrow function and the return are both optional
}

Future<String> fetchUsers1() async {
  Future.delayed(
    Duration(seconds: 2),
    () => {print('I will be printed last since im async')},
  );
  return 'I will be printed first';
  // so the return is sychnorous and the arrow function is async so we dont need the return
  //also the arrow function and the return are both optional
}

fetchOrders() async {
  await Future.delayed(Duration(seconds: 3), () => {print('Orders:3')});
}

void main() async {
  //String users = await fetchUsers();
  String users1 = await fetchUsers1();
  //print(users);
  print(users1);

  String Orders = await fetchOrders();
  print(Orders);
}
