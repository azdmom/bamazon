var mysql = require("mysql");
var inquirer = require("inquirer");

// Sets up the Express App
// =============================================================
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Drita7790",
  database: "bamazon"
})

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected");
  welcomeMsg()
})

function welcomeMsg() {
  inquirer
    .prompt({
      name: "action",
      type: "rawlist",
      message: "Welcome to Bamazon! How may I help you?",
      choices: [
        "Just here for some browsin'!",
        "I'm here to purchase something."
      ]
    })
    .then(function (answer) {
      switch (answer.action) {
        case "Just here for some browsin'!":
          listItems();
          break;

        case "I'm here to purchase something.":
          purchaseItem();
      };
    });
};

function listItems() {
  var query = "SELECT * FROM products";
  connection.query(query, function (err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log(
        "ID: " + res[i].item_id +
        "\nProduct: " + res[i].product_name +
        "\nDepartment Name: " + res[i].department_name +
        "\nPrice: " + res[i].price +
        "\nStock Quantity: " + res[i].stock_quantity)
    };
  });
};

function purchaseItem() {
  inquirer
    .prompt([
      {
        name: "itemId",
        type: "input",
        message: "What is the Item ID of the item you would like to purchase?",
        validate: function (value) {
          if (isNaN(value) === false) {
            return true;
          }
          return false;
        }
      },
      {
        name: "units",
        type: "input",
        message: "How many units of this item would you like to purchase?",
        validate: function (value) {
          if (isNaN(value) === false) {
            return true;
          }
          return false;
        }
      }
    ])
    .then(function (answer) {
      console.log(answer.itemId)
      console.log(answer.units)
      var query = "SELECT product_name, department_name, stock_quantity, price FROM products WHERE item_id = ? ";
      connection.query(query, answer.itemId, function (err, res) {
        if (err) throw err;
        console.log(res);
        if (res[0].stock_quantity >= answer.units) {
          var dept = res[0].department_name;
          var updatedUnits = res[0].stock_quantity - parseInt(answer.units);
          var totalPrice = (parseInt(answer.units) * res[0].price).toFixed(2);
          var query2 = " UPDATE products SET ? WHERE ?";
          connection.query(query2, [{ stock_quantity: updatedUnits }, { item_id: answer.itemId }],
            function (err, res) {
              if (err) throw err;
              console.log("Your total is $" + totalPrice + "\nThank you for your business!");

            });
      }
    })

  })};