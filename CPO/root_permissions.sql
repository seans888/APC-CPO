INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '33');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '34');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '35');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '36');
INSERT `user_passport` SELECT 'root', `link_id` FROM user_role_links WHERE role_id='1'