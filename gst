<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GST Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        label {
            font-weight: bold;
        }
        input[type="number"], select, input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .result {
            margin-top: 20px;

            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h1><strong>Magic mobiles</strong></h1>
    <h2>GST Calculator</h2>
    <form id="gstForm">
        <label for="customerName">Customer Name</label>
        <input type="text" id="customerName" name="customerName" required>
        <label for="customergstnumber">Customer gst number</label>
        <input type="number" id="customergstnumber" name="customergstnumber" required>
        <label for="customerAddress">Customer Address</label>
        <input type="text" id="customerAddress" name="customerAddress" required>
        <label for="product">Product</label>
        <select id="product" name="product" required>
            <option value="">Select Product</option>
            
            <option value="Redmi note 8">Redmi note 8</option>
            <option value="Redmi note 9">Redmi note 9</option>
            <option value="Redmi note 10">Redmi note 10</option>
        </select>
        <label for="quantity">Quantity</label>
        <input type="number" id="quantity" name="quantity" required>
        <label for="amount">Amount (INR)</label>
        <input type="number" id="amount" name="amount" required>
        <label for="gstPercentage">GST Percentage (%)</label>
        <input type="number" id="gstPercentage" name="gstPercentage" required>
        <label for="paymentMethod">Payment Method</label>
        <div>
            <input type="radio" id="cash" name="paymentMethod" value="Cash" checked>
            <label for="cash">Cash</label>
        </div>
        <div>
            <input type="radio" id="card" name="paymentMethod" value="Card">
            <label for="card">Card</label>
        </div>
        <div>
            <input type="radio" id="UPI" name="paymentMethod" value="UPI">
            <label for="UPI">UPI</label>
        </div>
        <div>
            <input type="radio" id="Online" name="paymentMethod" value="Online">
            <label for="Online">Online</label>
        </div>
        <input type="submit" value="Calculate">
    </form>
    <div class="result" id="result"></div>
</div>

<script>
    document.getElementById("gstForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission
        calculateGST();
    });

    function calculateGST() {
        var customerName = document.getElementById("customerName").value;
        var customergstnumber = document.getElementById("customergstnumber").value;
        var customerAddress = document.getElementById("customerAddress").value;
        var product = document.getElementById("product").value;
        var quantity = parseFloat(document.getElementById("quantity").value);
        var amount = parseFloat(document.getElementById("amount").value);
        var gstPercentage = parseFloat(document.getElementById("gstPercentage").value);
        var paymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;
        var gstAmount = (amount * gstPercentage) / 100;
        var totalAmount = amount + gstAmount;
        document.getElementById("result").innerHTML = "Customer Name: " + customerName + "<br>Customer gst number: " + customergstnumber +"<br>Customer Address: " + customerAddress + "<br>Product: " + product + "<br>Quantity: " + quantity + "<br>GST Amount: " + gstAmount.toFixed(2) + " INR<br>Total Amount (including GST): " + totalAmount.toFixed(2) + " INR<br>Payment Method: " + paymentMethod;
    }
</script>

</body>

</html>