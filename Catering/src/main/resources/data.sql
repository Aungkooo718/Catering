INSERT INTO employee (id, door_log_no, email,name,password,role,staff_id,status,email_noti,enabled)
SELECT '0','555555','csmisdefault@gmail.com','Default Admin', '$2a$10$yknvGd1mM0mtaCmz9ZX6OesaMD3mL71dZi95QsCXY6Wkn/QX2Unm6', 'ADMIN', '', 'Active',0,0
FROM DUAL
WHERE NOT EXISTS (SELECT * FROM employee WHERE door_log_no = '555555');