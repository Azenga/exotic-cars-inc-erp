-- Query 1
SELECT `id`, `name`, `email` FROM `users`;

-- Query 2
SELECT `users`.`id`, `users`.`name`, `users`.`email`, `customers`.`since_date` 
FROM `users` 
INNER JOIN `customers` ON `users`.`id` = `customers`.`user_id`;

-- Query 3
SELECT `users`.`id`, `users`.`name`, `users`.`email`, `employees`.`hire_date` 
FROM `users`
INNER JOIN `employees` ON `users`.`id` = `employees`.`user_id`;

-- Query 4
SELECT `id`, `name`, `approximate_unit_price`, `quantity` 
FROM `products`;

-- Query 5
SELECT `id`, `name`, `price`, `created_at`, `updated_at`  FROM `services`;

-- Quqery 6
SELECT * FROM `products` WHERE `products`.`productable_id` IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11) and `products`.`productable_type` = 'car-type';

-- Quqery 7
SELECT * FROM `services`;

-- Quqery 8
SELECT * FROM `purchases`;

-- Quqery 9
SELECT * FROM `sales`;

-- Query 10
SELECT `car_types`.`id`, `car_types`.`name`, `car_makes`.`name` AS `make`, `car_models`.`name` AS `model`, `car_types`.`created_at`, `car_types`.`updated_at` 
FROM `car_types` 
LEFT JOIN `car_makes` ON `car_types`.`car_make_id` = `car_makes`.`id` 
LEFT JOIN `car_models` ON `car_types`.`car_model_id` = `car_models`.`id`;


