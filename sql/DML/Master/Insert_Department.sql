USE TripFlow360DB;
GO

INSERT INTO Master.Department
(
    DepartmentCode,
    DepartmentName,
    DepartmentType,
    DepartmentDescription,
    CreatedBy,
    ModifiedDate,
    ModifiedBy
)
VALUES
('HR',  'Human Resources',          'Support',   'Manages recruitment, payroll and employee relations.',                'System', NULL, 'System'),
('FIN', 'Finance',                  'Support',   'Handles budgeting, accounting and financial reporting.',              'System', NULL, 'System'),
('IT',  'Information Technology',   'Core',      'Responsible for IT infrastructure and software development.',         'System', NULL, 'System'),
('SAL', 'Sales',                    'Business',  'Manages client acquisition and revenue generation.',                  'System', NULL, 'System'),
('MKT', 'Marketing',                'Business',  'Handles branding, campaigns and market research.',                   'System', NULL,  'System'),
('OPS', 'Operations',               'Core',      'Oversees day-to-day business operations.',                           'System', NULL,  'System'),
('PRC', 'Procurement',              'Support',   'Manages vendor procurement and purchasing.',                          'System', NULL, 'System'),
('LEG', 'Legal',                    'Support',   'Handles legal compliance and contracts.',                             'System', NULL, 'System'),
('ADM', 'Administration',           'Support',   'Responsible for office administration and facilities.',               'System', NULL, 'System'),
('CS',  'Customer Support',         'Business',  'Provides customer support and issue resolution.',                     'System', NULL, 'System');
GO