<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleadmin.css">
    <title>Admin Dashboard</title>
</head>
<body>
    <header>
        <h1>Admin Dashboard</h1>
    </header>
    <nav>
        <ul>
            <li><a href="#chefs">Chefs</a></li>
            <li><a href="#menu">Menu</a></li>
            <li><a href="#customers">Customers</a></li>
            <li><a href="#orders">Orders</a></li>
        </ul>
    </nav>
    <section id="chefs">
        <h2>Chefs</h2>
        <?php
            // Place PHP code here to retrieve and display list of chefs
        ?>
    </section>
    <section id="menu">
        <h2>Menu</h2>
        <?php
            // Place PHP code here to retrieve and display menu items
        ?>
    </section>
    <section id="customers">
        <h2>Customers</h2>
        <?php
            // Place PHP code here to retrieve and display list of customers
        ?>
    </section>
    <section id="orders">
        <h2>Orders</h2>
        <?php
            // Place PHP code here to retrieve and display list of orders
        ?>
    </section>
    <footer>
        <p>&copy; <?php echo date("Y"); ?> Restaurant Admin</p>
    </footer>
</body>
</html>
