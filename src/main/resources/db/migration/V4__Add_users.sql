insert into usr (id, username, password, active)
values (2, 'Alex', '$2a$12$T6IOFoYtXGVukzYRbAByDeozRuOftpeAEyCZQT/ifLnYyz0wSSw9S', true),
       (3, 'Edward', '$2a$12$T6IOFoYtXGVukzYRbAByDeozRuOftpeAEyCZQT/ifLnYyz0wSSw9S', true),
       (4, 'Ivan', '$2a$12$T6IOFoYtXGVukzYRbAByDeozRuOftpeAEyCZQT/ifLnYyz0wSSw9S', true);

insert into user_role (user_id, roles)
values (2, 'USER'), (3, 'USER'), (4, 'USER');