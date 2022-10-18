-- Query 11 => Number and type of vehicles kept in the store

SELECT `car_types`.`id`, `car_types`.`name`, `car_makes`.`name` AS `make`, `car_models`.`name` AS `model`, `products`.`approximate_unit_price`, `products`.`quantity`, `car_types`.`created_at`, `car_types`.`updated_at` 
FROM `car_types` 
LEFT JOIN `car_makes` ON `car_types`.`car_make_id` = `car_makes`.`id` 
LEFT JOIN `car_models` ON `car_types`.`car_model_id` = `car_models`.`id` 
LEFT JOIN `products` ON `car_types`.`id` = `products`.`productable_id` AND `products`.`productable_type` = 'car-type';

-- Query 12 => Car Purchases from companies and customer trade-ins

SELECT `car_types`.`id`, `car_types`.`name`, 
    `products`.`approximate_unit_price`, `products`.`quantity`, 
    `purchases`.`quantity`, `purchases`.`type`, `purchases`.`amount`, 
    `companies`.`name` AS `company_name`, `users`.`name` AS `customer_name`
FROM `car_types` INNER JOIN `products` ON `car_types`.`id` = `products`.`productable_id` AND `products`.`productable_type` = 'car-type' 
RIGHT JOIN `purchases` ON `products`.`id` = `purchases`.`purchasable_id` AND `purchases`.`purchasable_type` = 'product'
LEFT JOIN `companies` ON `purchases`.`dealable_id` = `companies`.`id` AND `purchases`.`dealable_type` = 'company' 
LEFT JOIN `customers` ON `purchases`.`dealable_id` = `customers`.`id` AND `purchases`.`dealable_type` = 'customer' 
LEFT JOIN `users` ON `customers`.`user_id` = `users`.`id`;

-- QUery 13 => Number and types of car served

SELECT `car_types`.`name` AS `car_model_name`, COUNT(1) AS `cars_count` 
FROM `sales` 
LEFT JOIN `cars` ON `sales`.`car_id` = `cars`.`id` 
LEFT JOIN `car_types` ON `cars`.`car_type_id` = `car_types`.`id` 
WHERE `salable_type` = 'service' 
GROUP BY `car_types`.`name`;

-- Query 14 => Maintenance information of cars

SELECT `cars`.`plate_number`, `services`.`name` AS `service_name`, `sales`.`amount`, `users`.`name` AS `mechanic_name`, `owners`.`name` AS `owner_name`
FROM `sales`
LEFT JOIN `cars` ON `sales`.`car_id` = `cars`.`id`
LEFT JOIN `employees` ON `sales`.`employee_id` = `employees`.`id`
LEFT JOIN `users` ON `employees`.`user_id` = `users`.`id`
LEFT JOIN `users` AS `owners` ON `cars`.`user_id` = `owners`.`id`
LEFT JOIN `services` ON `sales`.`salable_id` = `services`.`id` AND `sales`.`salable_type` = 'service' 
WHERE `salable_type` = 'service';


-- Query 15 => Customers spending on cars

SELECT `users`.`name` AS `customer_name`, SUM(`sales`.`amount`) AS `total_amount`
FROM `sales`
LEFT JOIN `customers` ON `sales`.`dealable_id` = `customers`.`id` AND `sales`.`dealable_type` = 'customer'
LEFT JOIN `products` ON `sales`.`salable_id` = `products`.`id` AND `sales`.`salable_type` = 'product'
LEFT JOIN `users` ON `customers`.`user_id` = `users`.`id`
WHERE `sales`.`salable_type` = 'product' AND `products`.`productable_type` = 'car-type'
GROUP BY `users`.`name`;

-- Query 16 => Customers spending on services

SELECT `users`.`name` AS `customer_name`, SUM(`sales`.`amount`) AS `total_amount`
FROM `sales`
LEFT JOIN `customers` ON `sales`.`dealable_id` = `customers`.`id` AND `sales`.`dealable_type` = 'customer'
LEFT JOIN `users` ON `customers`.`user_id` = `users`.`id`
WHERE `sales`.`salable_type` = 'service'
GROUP BY `users`.`name`;

-- Query 17 => Spending of every customer on both services and products

SELECT `users`.`name` AS `customer_name`, SUM(`sales`.`amount`) AS `total_amount`
FROM `sales`
LEFT JOIN `customers` ON `sales`.`dealable_id` = `customers`.`id` AND `sales`.`dealable_type` = 'customer'
LEFT JOIN `users` ON `customers`.`user_id` = `users`.`id`
GROUP BY `users`.`name`;

-- Query 18 => Payment to vendors (company, customer)

SELECT `users`.`name` AS `customer_name`, `companies`.`name` AS `company_name`, SUM(`purchases`.`amount`) AS `total_amount`
FROM `purchases`
LEFT JOIN `customers` ON `purchases`.`dealable_id` = `customers`.`id` AND `purchases`.`dealable_type` = 'customer'
LEFT JOIN `companies` ON `purchases`.`dealable_id` = `companies`.`id` AND `purchases`.`dealable_type` = 'company'
LEFT JOIN `users` ON `customers`.`user_id` = `users`.`id`
GROUP BY `users`.`name`, `companies`.`name`;

-- Query 19 => Sales of cars revenue

SELECT SUM(`sales`.`amount`) AS `total_amount`
FROM `sales`
LEFT JOIN `products` ON `sales`.`salable_id` = `products`.`id` AND `sales`.`salable_type` = 'product'
WHERE `sales`.`salable_type` = 'product' AND `products`.`productable_type` = 'car-type';

-- Query 20 => Sales of services revenue

SELECT SUM(`sales`.`amount`) AS `total_amount`
FROM `sales`
WHERE `sales`.`salable_type` = 'service';