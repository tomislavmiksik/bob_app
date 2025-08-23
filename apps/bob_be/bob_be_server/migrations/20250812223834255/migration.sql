BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "cicd_workflow_runs" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "workflowName" text NOT NULL,
    "buildId" text NOT NULL,
    "branch" text NOT NULL,
    "commitSha" text NOT NULL,
    "status" text NOT NULL,
    "startTime" timestamp without time zone NOT NULL,
    "endTime" timestamp without time zone,
    "duration" bigint,
    "triggerType" text NOT NULL,
    "environment" text,
    "platform" text NOT NULL,
    "repositoryName" text,
    "authorName" text,
    "authorEmail" text,
    "pullRequestNumber" bigint,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone
);


--
-- MIGRATION VERSION FOR bob_be
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bob_be', '20250812223834255', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250812223834255', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
