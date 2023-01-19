/*Functionality: Get all Best Job finished with rating review from higher to lower*/

SELECT Rew.job_id, Rew.rating, Rew.comments FROM reviews Rew
LEFT JOIN job_status JS ON JS.job_id = Rew.job_id
WHERE in_progress = 'No'
AND 'like' > 'dislike'
order by rating DESC;

/*
Name : Freelancer having experience or Education
Functionality : Get list of Freelancer having  experience or Education for Background verification for Students
*/
	
SELECT COUNT(EX.freelance_Id) as Experienced, COUNT(ED.freelance_Id) as Education,  US.user_type FROM freelance_account as FA
	LEFT JOIN user_type US ON US.user_type_id = FA.user_type_id
	LEFT JOIN education ED ON ED.freelance_Id = FA.freelance_Id
	LEFT JOIN experience EX ON EX.freelance_Id = FA.freelance_Id
		/*WHERE (Ed.education_id IS NOT NULL OR EX.experience_id IS NOT NULL)*/
		GROUP BY US.user_type												
        HAVING US.user_type = 'Contract';
        
/*To get the details of the active Verified freelancer registered with the Company with specific category*/

SELECT fc.freelance_id, fc.first_name, fc.last_name, fc.email, fs.job_title
FROM freelance_account as fc
INNER JOIN freelance_services as fs ON fc.freelance_id = fs.freelance_Id
INNER JOIN service as se ON se.service_id = fs.service_id
WHERE se.category = 'Plumber'
AND is_available = 1 AND background_verified = 1;

/*
Functionality: Get avaiable freelancer account
Description: Get the count of available freelancer group by category
*/
	SELECT COUNT(FRE.freelance_id) as Total_Freelancers, SS.category
	FROM freelance_account FRE
	LEFT JOIN freelance_services FS ON FS.freelance_Id = FRE.freelance_Id
	LEFT JOIN service SS ON SS.service_id = FS.service_id
	WHERE FS.is_available = 1
	GROUP BY SS.category;
 
/*
Functionality: Get avaiable freelancer account
Description: Get the count of available freelancer group by category
*/
 
 SELECT COUNT(FRE.freelance_id) as Total_Freelancers, SS.category
 FROM freelance_account FRE
 LEFT JOIN freelance_services FS ON FS.freelance_Id = FRE.freelance_Id
 LEFT JOIN service SS ON SS.service_id = FS.service_id
 WHERE FS.is_available = 1
 GROUP BY SS.category;
 
 /*Functionality: Get the list of company details those have zero freelancer hired*/

SELECT Company_Name, COUNT(FA.freelance_id) as Total_Count, Sector_Detail, Company_Website
FROM company_profile CP
LEFT JOIN job_status JS ON CP.company_id = JS.company_id
LEFT JOIN freelance_services FS ON FS.freelance_service_id = JS.freelance_service_id
LEFT JOIN freelance_account FA ON FA.freelance_id = FS.freelance_id
GROUP BY  company_name
HAVING COUNT(FA.freelance_id) = 0;

/*
Functionality: Payment Received by Each Freelancer Till Date
Description: Get Payment Received by Each Freelancer Till Date
*/

SELECT FA.freelance_id, FA.first_name, FA.last_name, SUM(FS.price) AS Payment_Received
FROM freelance_account FA
INNER JOIN freelance_services FS ON FA.freelance_Id = FS.freelance_Id
GROUP BY FA.freelance_id, FA.first_name, FA.last_name;

/*
Functionality: Search Freelance Services 
Description: Search available active services in nearby location for verified freelances
*/

SELECT DISTINCT SS.service_name,SS.service_description, FS.price,FA.email, FA.contact_number, FS.is_available, FS.service_location, FS.rating
  
FROM freelance_services FS
INNER JOIN freelance_account FA ON FA.freelance_id = FS.freelance_id
INNER JOIN SERVICE SS ON SS.service_id = FS.service_id
LEFT JOIN job_status JS ON JS.freelance_service_id = JS.freelance_service_id
   
WHERE (SS.service_name like '%cook%' 	
OR  SS.service_description = '%cook%')
AND FS.service_location = 'sydney'
AND FS.is_available = 1
AND FS.background_verified = 1
AND JS.in_progress = FALSE;

/*Functionality: Get the list of company details those have Zero freelancer hired.*/

SELECT Company_Name, COUNT(FA.freelance_id) as Total_Count, Sector_Detail, Company_Website
FROM company_profile CP
LEFT JOIN job_status JS ON CP.company_id = JS.company_id
LEFT JOIN freelance_services FS ON FS.freelance_service_id = JS.freelance_service_id
LEFT JOIN freelance_account FA ON FA.freelance_id = FS.freelance_id
GROUP BY  company_name, Sector_detail, company_website
HAVING COUNT(FA.freelance_id) = 1;