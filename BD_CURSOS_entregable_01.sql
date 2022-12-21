CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int,
  "role_id" int
);

CREATE TABLE "user_courses" (
  "id" serial PRIMARY KEY,
  "user_id" uuid,
  "course_id" int
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "description" text,
  "teacher" varchar,
  "categorie_id" int
);

CREATE TABLE "level_courses" (
  "id" serial PRIMARY KEY,
  "course_id" int,
  "level_id" int
);

CREATE TABLE "level" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "courses_videos" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "url_video" varchar,
  "course_id" int
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "level_courses" ADD FOREIGN KEY ("level_id") REFERENCES "level" ("id");

ALTER TABLE "level_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categorie_id") REFERENCES "categories" ("id");



insert 
    into roles (
    "name" 
    ) 
values(
    'admin' 
), 
( 
    'teacher'
),
( 
    'student'
); 

insert
    into users (
    id,
    first_name,
    last_name,
    email,
    "password", 
    age, 
    role_id 
    )
values (
'1823f2ed-0514-42d9-893f-678942527670',
'Hilcias',
'Quispe',
'hilcias_7@hotmail.com',
'1234567',
28,
1
), (
'314ebb77-61da-4ec1-9679-9af88fac8b3c',
'Vicente',
'Quispe',
'vice59@hotmail.com',
'1234567',
3, 
3
), (
'cf71afeb-21c8-45db-ba1c-31e573085088',
'Sahid',
'Kick',
'sahid.kick@academlo.com',
'1234567',
23, 
2
);

insert 
    into categories ( 
    id,
    "name" 
    )
values ( 
1,
'Fundamentos'
), (
2,
'Desarrollo'    
);

insert
    into courses (
    id,
    title,
    description,
    teacher,
    categorie_id 
    )
values (
    202201,
    'Reactjs',
    'Desarrollo Front-End con React',
    'Benjamin Flores',
    2
    ), 
    (
    202202,
    'Programming Fundamentals',
    'Programming Fundamentals JS',
    'Jesús Fernandez',
    2
    ),
    (
    202203,
    'Nodejs',
    'Desarrollo Back-End con Node',
    'Sahid Kick',
    1
    );

insert
    into courses_videos (
    id, 
    title,
    url_video,
    course_id
    )
values (
    001,
    'introduction to nodejs ',
    'https://nodejs.com/introductiontonodejs',
    202201
), 
(
    002,
    'database ',
    'https://nodejs.com/database',
    202201
), ( 
    003,
    'Class React',
    'https://react.com/classreact',
    202202
), 
(
    004,
    'Class Javascript',
    'https://javascript.com/classjs',
    202203
);

insert
    into "level" (
    "name" 
    )
values (
    'Begginner'
), 
(
    'Intermediate'
),
(
    'Advanced'
);

insert
    into level_courses  (
    course_id,
    level_id 
    )
values (
    202201,
    3
), 
(
    202202,
    2
),
(
    202203,
    1
);

insert
    into roles  (
    "name"
    )
values (
    'admin'
), 
(
    'teacher'
),
(
    'student'
);

insert 
    into user_courses ( 
    user_id,
    course_id
    )
values (
'a2455230-b84d-44a4-831f-c6c3f8309b65',
202201
), (
'8e44697e-097f-4235-b454-166c056c87ad',
202202
), (
'f5cc47a0-51f1-49ca-99a5-af55403619c0',
202203
), (
'2794b744-2987-4698-a72c-9a768dff44eb', 
202203
), (
'4a4b0518-5ff4-4766-bc03-035a0391fa5e',
202202
), 
(
'3437c586-d12e-470e-97ec-dcbdf3fe850f',
202201
);

