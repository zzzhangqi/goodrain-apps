/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 90620
 Source Host           : localhost:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90620
 File Encoding         : 65001

 Date: 25/11/2020 17:29:49
*/


-- ----------------------------
-- Sequence structure for access_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."access_permissions_id_seq";
CREATE SEQUENCE "public"."access_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."access_permissions_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for alert_subscriptions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."alert_subscriptions_id_seq";
CREATE SEQUENCE "public"."alert_subscriptions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."alert_subscriptions_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for alerts_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."alerts_id_seq";
CREATE SEQUENCE "public"."alerts_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."alerts_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for api_keys_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."api_keys_id_seq";
CREATE SEQUENCE "public"."api_keys_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."api_keys_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for changes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."changes_id_seq";
CREATE SEQUENCE "public"."changes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."changes_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for dashboards_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."dashboards_id_seq";
CREATE SEQUENCE "public"."dashboards_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."dashboards_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for data_source_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."data_source_groups_id_seq";
CREATE SEQUENCE "public"."data_source_groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."data_source_groups_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for data_sources_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."data_sources_id_seq";
CREATE SEQUENCE "public"."data_sources_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."data_sources_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for events_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."events_id_seq";
CREATE SEQUENCE "public"."events_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."events_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for favorites_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."favorites_id_seq";
CREATE SEQUENCE "public"."favorites_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."favorites_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."groups_id_seq";
CREATE SEQUENCE "public"."groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."groups_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for notification_destinations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notification_destinations_id_seq";
CREATE SEQUENCE "public"."notification_destinations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."notification_destinations_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for organizations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."organizations_id_seq";
CREATE SEQUENCE "public"."organizations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."organizations_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for queries_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."queries_id_seq";
CREATE SEQUENCE "public"."queries_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."queries_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for query_results_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."query_results_id_seq";
CREATE SEQUENCE "public"."query_results_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."query_results_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for query_snippets_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."query_snippets_id_seq";
CREATE SEQUENCE "public"."query_snippets_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."query_snippets_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."users_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for visualizations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."visualizations_id_seq";
CREATE SEQUENCE "public"."visualizations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."visualizations_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for widgets_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."widgets_id_seq";
CREATE SEQUENCE "public"."widgets_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."widgets_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Table structure for access_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."access_permissions";
CREATE TABLE "public"."access_permissions" (
  "object_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "object_id" int4 NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('access_permissions_id_seq'::regclass),
  "access_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "grantor_id" int4 NOT NULL,
  "grantee_id" int4 NOT NULL
)
;
ALTER TABLE "public"."access_permissions" OWNER TO "postgres";

-- ----------------------------
-- Records of access_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS "public"."alembic_version";
CREATE TABLE "public"."alembic_version" (
  "version_num" varchar(32) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."alembic_version" OWNER TO "postgres";

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
BEGIN;
INSERT INTO "public"."alembic_version" VALUES ('e5c7a4e2df4d');
COMMIT;

-- ----------------------------
-- Table structure for alert_subscriptions
-- ----------------------------
DROP TABLE IF EXISTS "public"."alert_subscriptions";
CREATE TABLE "public"."alert_subscriptions" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('alert_subscriptions_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "destination_id" int4,
  "alert_id" int4 NOT NULL
)
;
ALTER TABLE "public"."alert_subscriptions" OWNER TO "postgres";

-- ----------------------------
-- Records of alert_subscriptions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for alerts
-- ----------------------------
DROP TABLE IF EXISTS "public"."alerts";
CREATE TABLE "public"."alerts" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('alerts_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "query_id" int4 NOT NULL,
  "user_id" int4 NOT NULL,
  "options" text COLLATE "pg_catalog"."default" NOT NULL,
  "state" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "last_triggered_at" timestamptz(6),
  "rearm" int4
)
;
ALTER TABLE "public"."alerts" OWNER TO "postgres";

-- ----------------------------
-- Records of alerts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for api_keys
-- ----------------------------
DROP TABLE IF EXISTS "public"."api_keys";
CREATE TABLE "public"."api_keys" (
  "object_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "object_id" int4 NOT NULL,
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('api_keys_id_seq'::regclass),
  "org_id" int4 NOT NULL,
  "api_key" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "active" bool NOT NULL,
  "created_by_id" int4
)
;
ALTER TABLE "public"."api_keys" OWNER TO "postgres";

-- ----------------------------
-- Records of api_keys
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for changes
-- ----------------------------
DROP TABLE IF EXISTS "public"."changes";
CREATE TABLE "public"."changes" (
  "object_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "object_id" int4 NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('changes_id_seq'::regclass),
  "object_version" int4 NOT NULL,
  "user_id" int4 NOT NULL,
  "change" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."changes" OWNER TO "postgres";

-- ----------------------------
-- Records of changes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dashboards
-- ----------------------------
DROP TABLE IF EXISTS "public"."dashboards";
CREATE TABLE "public"."dashboards" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('dashboards_id_seq'::regclass),
  "version" int4 NOT NULL,
  "org_id" int4 NOT NULL,
  "slug" varchar(140) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int4 NOT NULL,
  "layout" text COLLATE "pg_catalog"."default" NOT NULL,
  "dashboard_filters_enabled" bool NOT NULL,
  "is_archived" bool NOT NULL,
  "is_draft" bool NOT NULL,
  "tags" varchar[] COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."dashboards" OWNER TO "postgres";

-- ----------------------------
-- Records of dashboards
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for data_source_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_source_groups";
CREATE TABLE "public"."data_source_groups" (
  "id" int4 NOT NULL DEFAULT nextval('data_source_groups_id_seq'::regclass),
  "data_source_id" int4 NOT NULL,
  "group_id" int4 NOT NULL,
  "view_only" bool NOT NULL
)
;
ALTER TABLE "public"."data_source_groups" OWNER TO "postgres";

-- ----------------------------
-- Records of data_source_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for data_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_sources";
CREATE TABLE "public"."data_sources" (
  "id" int4 NOT NULL DEFAULT nextval('data_sources_id_seq'::regclass),
  "org_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "encrypted_options" bytea NOT NULL,
  "queue_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "scheduled_queue_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."data_sources" OWNER TO "postgres";

-- ----------------------------
-- Records of data_sources
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS "public"."events";
CREATE TABLE "public"."events" (
  "id" int4 NOT NULL DEFAULT nextval('events_id_seq'::regclass),
  "org_id" int4 NOT NULL,
  "user_id" int4,
  "action" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "object_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "object_id" varchar(255) COLLATE "pg_catalog"."default",
  "additional_properties" text COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."events" OWNER TO "postgres";

-- ----------------------------
-- Records of events
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS "public"."favorites";
CREATE TABLE "public"."favorites" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('favorites_id_seq'::regclass),
  "org_id" int4 NOT NULL,
  "object_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "object_id" int4 NOT NULL,
  "user_id" int4 NOT NULL
)
;
ALTER TABLE "public"."favorites" OWNER TO "postgres";

-- ----------------------------
-- Records of favorites
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."groups";
CREATE TABLE "public"."groups" (
  "id" int4 NOT NULL DEFAULT nextval('groups_id_seq'::regclass),
  "org_id" int4 NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "permissions" varchar(255)[] COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."groups" OWNER TO "postgres";

-- ----------------------------
-- Records of groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for notification_destinations
-- ----------------------------
DROP TABLE IF EXISTS "public"."notification_destinations";
CREATE TABLE "public"."notification_destinations" (
  "id" int4 NOT NULL DEFAULT nextval('notification_destinations_id_seq'::regclass),
  "org_id" int4 NOT NULL,
  "user_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "options" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."notification_destinations" OWNER TO "postgres";

-- ----------------------------
-- Records of notification_destinations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for organizations
-- ----------------------------
DROP TABLE IF EXISTS "public"."organizations";
CREATE TABLE "public"."organizations" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('organizations_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "settings" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."organizations" OWNER TO "postgres";

-- ----------------------------
-- Records of organizations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for queries
-- ----------------------------
DROP TABLE IF EXISTS "public"."queries";
CREATE TABLE "public"."queries" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('queries_id_seq'::regclass),
  "version" int4 NOT NULL,
  "org_id" int4 NOT NULL,
  "data_source_id" int4,
  "latest_query_data_id" int4,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(4096) COLLATE "pg_catalog"."default",
  "query" text COLLATE "pg_catalog"."default" NOT NULL,
  "query_hash" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "api_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int4 NOT NULL,
  "last_modified_by_id" int4,
  "is_archived" bool NOT NULL,
  "is_draft" bool NOT NULL,
  "schedule" text COLLATE "pg_catalog"."default",
  "schedule_failures" int4 NOT NULL,
  "options" text COLLATE "pg_catalog"."default" NOT NULL,
  "search_vector" tsvector,
  "tags" varchar[] COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."queries" OWNER TO "postgres";

-- ----------------------------
-- Records of queries
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for query_results
-- ----------------------------
DROP TABLE IF EXISTS "public"."query_results";
CREATE TABLE "public"."query_results" (
  "id" int4 NOT NULL DEFAULT nextval('query_results_id_seq'::regclass),
  "org_id" int4 NOT NULL,
  "data_source_id" int4 NOT NULL,
  "query_hash" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "query" text COLLATE "pg_catalog"."default" NOT NULL,
  "data" text COLLATE "pg_catalog"."default" NOT NULL,
  "runtime" float8 NOT NULL,
  "retrieved_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."query_results" OWNER TO "postgres";

-- ----------------------------
-- Records of query_results
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for query_snippets
-- ----------------------------
DROP TABLE IF EXISTS "public"."query_snippets";
CREATE TABLE "public"."query_snippets" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('query_snippets_id_seq'::regclass),
  "org_id" int4 NOT NULL,
  "trigger" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int4 NOT NULL,
  "snippet" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."query_snippets" OWNER TO "postgres";

-- ----------------------------
-- Records of query_snippets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "org_id" int4 NOT NULL,
  "name" varchar(320) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "profile_image_url" varchar(320) COLLATE "pg_catalog"."default",
  "password_hash" varchar(128) COLLATE "pg_catalog"."default",
  "groups" int4[],
  "api_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "disabled_at" timestamptz(6),
  "details" json DEFAULT '{}'::json
)
;
ALTER TABLE "public"."users" OWNER TO "postgres";

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for visualizations
-- ----------------------------
DROP TABLE IF EXISTS "public"."visualizations";
CREATE TABLE "public"."visualizations" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('visualizations_id_seq'::regclass),
  "type" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "query_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(4096) COLLATE "pg_catalog"."default",
  "options" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."visualizations" OWNER TO "postgres";

-- ----------------------------
-- Records of visualizations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for widgets
-- ----------------------------
DROP TABLE IF EXISTS "public"."widgets";
CREATE TABLE "public"."widgets" (
  "updated_at" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id" int4 NOT NULL DEFAULT nextval('widgets_id_seq'::regclass),
  "visualization_id" int4,
  "text" text COLLATE "pg_catalog"."default",
  "width" int4 NOT NULL,
  "options" text COLLATE "pg_catalog"."default" NOT NULL,
  "dashboard_id" int4 NOT NULL
)
;
ALTER TABLE "public"."widgets" OWNER TO "postgres";

-- ----------------------------
-- Records of widgets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Function structure for queries_search_vector_update
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."queries_search_vector_update"();
CREATE OR REPLACE FUNCTION "public"."queries_search_vector_update"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
            BEGIN
                NEW.search_vector = ((setweight(to_tsvector('pg_catalog.simple', regexp_replace(coalesce(CAST(NEW.id AS TEXT), ''), '[-@.]', ' ', 'g')), 'B') || setweight(to_tsvector('pg_catalog.simple', regexp_replace(coalesce(NEW.name, ''), '[-@.]', ' ', 'g')), 'A')) || setweight(to_tsvector('pg_catalog.simple', regexp_replace(coalesce(NEW.description, ''), '[-@.]', ' ', 'g')), 'C')) || setweight(to_tsvector('pg_catalog.simple', regexp_replace(coalesce(NEW.query, ''), '[-@.]', ' ', 'g')), 'D');
                RETURN NEW;
            END
            $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION "public"."queries_search_vector_update"() OWNER TO "postgres";

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."access_permissions_id_seq"
OWNED BY "public"."access_permissions"."id";
SELECT setval('"public"."access_permissions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."alert_subscriptions_id_seq"
OWNED BY "public"."alert_subscriptions"."id";
SELECT setval('"public"."alert_subscriptions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."alerts_id_seq"
OWNED BY "public"."alerts"."id";
SELECT setval('"public"."alerts_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."api_keys_id_seq"
OWNED BY "public"."api_keys"."id";
SELECT setval('"public"."api_keys_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."changes_id_seq"
OWNED BY "public"."changes"."id";
SELECT setval('"public"."changes_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."dashboards_id_seq"
OWNED BY "public"."dashboards"."id";
SELECT setval('"public"."dashboards_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."data_source_groups_id_seq"
OWNED BY "public"."data_source_groups"."id";
SELECT setval('"public"."data_source_groups_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."data_sources_id_seq"
OWNED BY "public"."data_sources"."id";
SELECT setval('"public"."data_sources_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."events_id_seq"
OWNED BY "public"."events"."id";
SELECT setval('"public"."events_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."favorites_id_seq"
OWNED BY "public"."favorites"."id";
SELECT setval('"public"."favorites_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."groups_id_seq"
OWNED BY "public"."groups"."id";
SELECT setval('"public"."groups_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."notification_destinations_id_seq"
OWNED BY "public"."notification_destinations"."id";
SELECT setval('"public"."notification_destinations_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."organizations_id_seq"
OWNED BY "public"."organizations"."id";
SELECT setval('"public"."organizations_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."queries_id_seq"
OWNED BY "public"."queries"."id";
SELECT setval('"public"."queries_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."query_results_id_seq"
OWNED BY "public"."query_results"."id";
SELECT setval('"public"."query_results_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."query_snippets_id_seq"
OWNED BY "public"."query_snippets"."id";
SELECT setval('"public"."query_snippets_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."visualizations_id_seq"
OWNED BY "public"."visualizations"."id";
SELECT setval('"public"."visualizations_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."widgets_id_seq"
OWNED BY "public"."widgets"."id";
SELECT setval('"public"."widgets_id_seq"', 2, false);

-- ----------------------------
-- Primary Key structure for table access_permissions
-- ----------------------------
ALTER TABLE "public"."access_permissions" ADD CONSTRAINT "access_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table alembic_version
-- ----------------------------
ALTER TABLE "public"."alembic_version" ADD CONSTRAINT "alembic_version_pkc" PRIMARY KEY ("version_num");

-- ----------------------------
-- Indexes structure for table alert_subscriptions
-- ----------------------------
CREATE UNIQUE INDEX "alert_subscriptions_destination_id_alert_id" ON "public"."alert_subscriptions" USING btree (
  "destination_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "alert_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table alert_subscriptions
-- ----------------------------
ALTER TABLE "public"."alert_subscriptions" ADD CONSTRAINT "alert_subscriptions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table alerts
-- ----------------------------
ALTER TABLE "public"."alerts" ADD CONSTRAINT "alerts_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table api_keys
-- ----------------------------
CREATE INDEX "api_keys_object_type_object_id" ON "public"."api_keys" USING btree (
  "object_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "object_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "ix_api_keys_api_key" ON "public"."api_keys" USING btree (
  "api_key" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table api_keys
-- ----------------------------
ALTER TABLE "public"."api_keys" ADD CONSTRAINT "api_keys_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table changes
-- ----------------------------
ALTER TABLE "public"."changes" ADD CONSTRAINT "changes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table dashboards
-- ----------------------------
CREATE INDEX "ix_dashboards_is_archived" ON "public"."dashboards" USING btree (
  "is_archived" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "ix_dashboards_is_draft" ON "public"."dashboards" USING btree (
  "is_draft" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "ix_dashboards_slug" ON "public"."dashboards" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table dashboards
-- ----------------------------
ALTER TABLE "public"."dashboards" ADD CONSTRAINT "dashboards_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table data_source_groups
-- ----------------------------
ALTER TABLE "public"."data_source_groups" ADD CONSTRAINT "data_source_groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_sources
-- ----------------------------
CREATE INDEX "data_sources_org_id_name" ON "public"."data_sources" USING btree (
  "org_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table data_sources
-- ----------------------------
ALTER TABLE "public"."data_sources" ADD CONSTRAINT "data_sources_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table events
-- ----------------------------
ALTER TABLE "public"."events" ADD CONSTRAINT "events_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table favorites
-- ----------------------------
ALTER TABLE "public"."favorites" ADD CONSTRAINT "unique_favorite" UNIQUE ("object_type", "object_id", "user_id");

-- ----------------------------
-- Primary Key structure for table favorites
-- ----------------------------
ALTER TABLE "public"."favorites" ADD CONSTRAINT "favorites_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table groups
-- ----------------------------
ALTER TABLE "public"."groups" ADD CONSTRAINT "groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table notification_destinations
-- ----------------------------
CREATE UNIQUE INDEX "notification_destinations_org_id_name" ON "public"."notification_destinations" USING btree (
  "org_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table notification_destinations
-- ----------------------------
ALTER TABLE "public"."notification_destinations" ADD CONSTRAINT "notification_destinations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table organizations
-- ----------------------------
ALTER TABLE "public"."organizations" ADD CONSTRAINT "organizations_slug_key" UNIQUE ("slug");

-- ----------------------------
-- Primary Key structure for table organizations
-- ----------------------------
ALTER TABLE "public"."organizations" ADD CONSTRAINT "organizations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table queries
-- ----------------------------
CREATE INDEX "ix_queries_is_archived" ON "public"."queries" USING btree (
  "is_archived" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "ix_queries_is_draft" ON "public"."queries" USING btree (
  "is_draft" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "ix_queries_search_vector" ON "public"."queries" USING gin (
  "search_vector" "pg_catalog"."tsvector_ops"
);

-- ----------------------------
-- Triggers structure for table queries
-- ----------------------------
CREATE TRIGGER "queries_search_vector_trigger" BEFORE INSERT OR UPDATE ON "public"."queries"
FOR EACH ROW
EXECUTE PROCEDURE "public"."queries_search_vector_update"();

-- ----------------------------
-- Primary Key structure for table queries
-- ----------------------------
ALTER TABLE "public"."queries" ADD CONSTRAINT "queries_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table query_results
-- ----------------------------
CREATE INDEX "ix_query_results_query_hash" ON "public"."query_results" USING btree (
  "query_hash" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table query_results
-- ----------------------------
ALTER TABLE "public"."query_results" ADD CONSTRAINT "query_results_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table query_snippets
-- ----------------------------
ALTER TABLE "public"."query_snippets" ADD CONSTRAINT "query_snippets_trigger_key" UNIQUE ("trigger");

-- ----------------------------
-- Primary Key structure for table query_snippets
-- ----------------------------
ALTER TABLE "public"."query_snippets" ADD CONSTRAINT "query_snippets_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE UNIQUE INDEX "users_org_id_email" ON "public"."users" USING btree (
  "org_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_api_key_key" UNIQUE ("api_key");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table visualizations
-- ----------------------------
ALTER TABLE "public"."visualizations" ADD CONSTRAINT "visualizations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table widgets
-- ----------------------------
CREATE INDEX "ix_widgets_dashboard_id" ON "public"."widgets" USING btree (
  "dashboard_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table widgets
-- ----------------------------
ALTER TABLE "public"."widgets" ADD CONSTRAINT "widgets_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table access_permissions
-- ----------------------------
ALTER TABLE "public"."access_permissions" ADD CONSTRAINT "access_permissions_grantee_id_fkey" FOREIGN KEY ("grantee_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."access_permissions" ADD CONSTRAINT "access_permissions_grantor_id_fkey" FOREIGN KEY ("grantor_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table alert_subscriptions
-- ----------------------------
ALTER TABLE "public"."alert_subscriptions" ADD CONSTRAINT "alert_subscriptions_alert_id_fkey" FOREIGN KEY ("alert_id") REFERENCES "public"."alerts" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."alert_subscriptions" ADD CONSTRAINT "alert_subscriptions_destination_id_fkey" FOREIGN KEY ("destination_id") REFERENCES "public"."notification_destinations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."alert_subscriptions" ADD CONSTRAINT "alert_subscriptions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table alerts
-- ----------------------------
ALTER TABLE "public"."alerts" ADD CONSTRAINT "alerts_query_id_fkey" FOREIGN KEY ("query_id") REFERENCES "public"."queries" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."alerts" ADD CONSTRAINT "alerts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table api_keys
-- ----------------------------
ALTER TABLE "public"."api_keys" ADD CONSTRAINT "api_keys_created_by_id_fkey" FOREIGN KEY ("created_by_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."api_keys" ADD CONSTRAINT "api_keys_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table changes
-- ----------------------------
ALTER TABLE "public"."changes" ADD CONSTRAINT "changes_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table dashboards
-- ----------------------------
ALTER TABLE "public"."dashboards" ADD CONSTRAINT "dashboards_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."dashboards" ADD CONSTRAINT "dashboards_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_source_groups
-- ----------------------------
ALTER TABLE "public"."data_source_groups" ADD CONSTRAINT "data_source_groups_data_source_id_fkey" FOREIGN KEY ("data_source_id") REFERENCES "public"."data_sources" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."data_source_groups" ADD CONSTRAINT "data_source_groups_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_sources
-- ----------------------------
ALTER TABLE "public"."data_sources" ADD CONSTRAINT "data_sources_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table events
-- ----------------------------
ALTER TABLE "public"."events" ADD CONSTRAINT "events_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."events" ADD CONSTRAINT "events_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table favorites
-- ----------------------------
ALTER TABLE "public"."favorites" ADD CONSTRAINT "favorites_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."favorites" ADD CONSTRAINT "favorites_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table groups
-- ----------------------------
ALTER TABLE "public"."groups" ADD CONSTRAINT "groups_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table notification_destinations
-- ----------------------------
ALTER TABLE "public"."notification_destinations" ADD CONSTRAINT "notification_destinations_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."notification_destinations" ADD CONSTRAINT "notification_destinations_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table queries
-- ----------------------------
ALTER TABLE "public"."queries" ADD CONSTRAINT "queries_data_source_id_fkey" FOREIGN KEY ("data_source_id") REFERENCES "public"."data_sources" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."queries" ADD CONSTRAINT "queries_last_modified_by_id_fkey" FOREIGN KEY ("last_modified_by_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."queries" ADD CONSTRAINT "queries_latest_query_data_id_fkey" FOREIGN KEY ("latest_query_data_id") REFERENCES "public"."query_results" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."queries" ADD CONSTRAINT "queries_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."queries" ADD CONSTRAINT "queries_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table query_results
-- ----------------------------
ALTER TABLE "public"."query_results" ADD CONSTRAINT "query_results_data_source_id_fkey" FOREIGN KEY ("data_source_id") REFERENCES "public"."data_sources" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."query_results" ADD CONSTRAINT "query_results_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table query_snippets
-- ----------------------------
ALTER TABLE "public"."query_snippets" ADD CONSTRAINT "query_snippets_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."query_snippets" ADD CONSTRAINT "query_snippets_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table visualizations
-- ----------------------------
ALTER TABLE "public"."visualizations" ADD CONSTRAINT "visualizations_query_id_fkey" FOREIGN KEY ("query_id") REFERENCES "public"."queries" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table widgets
-- ----------------------------
ALTER TABLE "public"."widgets" ADD CONSTRAINT "widgets_dashboard_id_fkey" FOREIGN KEY ("dashboard_id") REFERENCES "public"."dashboards" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."widgets" ADD CONSTRAINT "widgets_visualization_id_fkey" FOREIGN KEY ("visualization_id") REFERENCES "public"."visualizations" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
