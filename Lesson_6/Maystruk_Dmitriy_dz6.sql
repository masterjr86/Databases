
/* 
 Из всех друзей этого пользователя найдите человека, который больше всех ОБЩАЛСЯ с нашим пользователем.
 Т.е наш пользователь мог и не отвечать?*/

SELECT from_user_id, max(messages) FROM (
	SELECT from_user_id, count(*) AS messages FROM messages WHERE 
	  (to_user_id = 1 AND from_user_id IN (
	     SELECT id FROM users WHERE id IN(
	       SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 1) AND status='approved' -- ИД друзей, заявку которых я подтвердил
	       union
	       SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 1) AND status='approved')
	     )
	  )
	 GROUP BY from_user_id
)
AS max_messages;
  -- как быть, если 2 чкеловека будут?



/* 
 Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.
 */
SELECT count(id) FROM likes WHERE media_id IN (
   SELECT id FROM media WHERE user_id IN (
      SELECT user_id FROM profiles WHERE (YEAR(now()) - YEAR(birthday) < 10)
      )
   );
  
/* 
 Определить кто больше поставил лайков (всего) - мужчины или женщины?
 */
 
 SELECT 
 CASE WHEN 
   (SELECT count(id) FROM likes  WHERE user_id IN (
	   SELECT user_id FROM profiles WHERE gender = 'm'
   )) >
   (SELECT count(id) FROM likes  WHERE user_id IN (
	   SELECT user_id FROM profiles WHERE gender = 'f'
   )) 
   THEN 
   'male'
   ELSE
   'female'
  END;
