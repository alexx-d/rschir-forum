insert into usr (id, username, password, active)
values (1, 'admin', '$2a$12$T6IOFoYtXGVukzYRbAByDeozRuOftpeAEyCZQT/ifLnYyz0wSSw9S', true);

insert into user_role (user_id, roles)
values (1, 'USER'), (1, 'ADMIN');