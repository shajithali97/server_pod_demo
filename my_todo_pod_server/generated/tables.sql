--
-- Class Todo as table todo
--

CREATE TABLE "todo" (
  "id" serial,
  "todoName" text NOT NULL,
  "isDone" boolean NOT NULL,
  "createdAt" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "todo"
  ADD CONSTRAINT todo_pkey PRIMARY KEY (id);


