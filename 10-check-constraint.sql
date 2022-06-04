-- UPDATE users
-- SET yearly_salary = NULL
-- WHERE yearly_salary = 0;
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0)