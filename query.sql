SELECT required_skills.posting_id
From required_skills inner join skillsets on <logged in user> = skillsets.user_id
where required_skills.skill_id = skillsets.skill_id and required_skills.skill_level = skillsets.skill_level

SELECT COUNT(skillsets.skill_id)
FROM required_skills inner join skillsets on <logged in user> = skillsets.user_id
where required_skills.skill_id = skillsets.skill_id and required_skills.skill_level <= skillsets.skill_level and required_skills.posting_id = <posting id from first query>;

SELECT COUNT(required_skills.skill_id)
FROM required_skills where required_skills.posting_id = <posting id from first query> ;
