select patient_id, patient_name, conditions
from Patients
where 1=1
and conditions like 'DIAB1%'
or conditions like '% DIAB1%'
