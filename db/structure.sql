CREATE TABLE "books" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" text, "author" text, "created_at" datetime, "updated_at" datetime, "book_id" decimal, "price" decimal);
CREATE TABLE "cart_items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "carts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "orders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "order_id" decimal, "details" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE INDEX "index_books_on_book_id" ON "books" ("book_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20140809161308');

INSERT INTO schema_migrations (version) VALUES ('20140811160725');

INSERT INTO schema_migrations (version) VALUES ('20140811162421');

INSERT INTO schema_migrations (version) VALUES ('20140814204753');

INSERT INTO schema_migrations (version) VALUES ('20140814205011');

INSERT INTO schema_migrations (version) VALUES ('20140814214635');

INSERT INTO schema_migrations (version) VALUES ('20140815122731');

