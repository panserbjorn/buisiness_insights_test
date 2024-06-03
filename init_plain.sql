--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.2

-- Started on 2024-06-03 10:34:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16385)
-- Name: insurance; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA insurance;


ALTER SCHEMA insurance OWNER TO postgres;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

-- CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16386)
-- Name: alembic_version; Type: TABLE; Schema: insurance; Owner: postgres
--

CREATE TABLE insurance.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE insurance.alembic_version OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16415)
-- Name: policies; Type: TABLE; Schema: insurance; Owner: postgres
--

CREATE TABLE insurance.policies (
    id character varying(50) NOT NULL,
    amount_insured integer NOT NULL,
    inception_date character varying(50) NOT NULL,
    installment_payment boolean NOT NULL,
    email character varying(50) NOT NULL,
    user_id character varying(50) NOT NULL
);


ALTER TABLE insurance.policies OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16410)
-- Name: users; Type: TABLE; Schema: insurance; Owner: postgres
--

CREATE TABLE insurance.users (
    id character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    role character varying(10) NOT NULL
);


ALTER TABLE insurance.users OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 16386)
-- Dependencies: 216
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: insurance; Owner: postgres
--

INSERT INTO insurance.alembic_version VALUES ('9df95b778320');


--
-- TOC entry 3363 (class 0 OID 16415)
-- Dependencies: 218
-- Data for Name: policies; Type: TABLE DATA; Schema: insurance; Owner: postgres
--

INSERT INTO insurance.policies VALUES ('64cceef9-3a01-49ae-a23b-3761b604800b', 1826, '2016-06-01T03:33:32Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('7b624ed3-00d5-4c1b-9ab8-c265067ef58b', 400, '2015-07-06T06:55:49Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('56b415d6-53ee-4481-994f-4bffa47b5239', 2302, '2014-12-01T05:53:13Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('6f514ec4-1726-4628-974d-20afe4da130c', 697, '2014-09-12T12:10:23Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('25202f31-fff0-481c-acfd-1f3ff2a9bcbe', 2579, '2016-05-03T04:58:48Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('15b4430d-96f8-468e-98c0-3caaf8b0b3b6', 646, '2016-01-15T02:56:48Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('5a72ae47-d077-4f74-9166-56a6577e31b9', 752, '2015-08-05T04:05:01Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('4a582500-fab6-4efe-ae89-0c9ed750d0c7', 3074, '2014-06-24T09:21:06Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('3a774f4e-0e70-488f-ac9f-ee211c8d5ece', 1930, '2016-10-01T09:19:32Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('d973993a-d35e-4d12-abb5-38083d556101', 1609, '2016-01-31T03:52:33Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('0eba1179-6155-41b5-bdd8-f80e1ac94cab', 1630, '2016-05-03T01:53:34Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('cd63a392-0a8c-4c48-9cbe-e0a991d65c13', 805, '2015-02-13T04:21:59Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('5d6b141e-0d22-4a84-abdb-6200ddaad7d0', 1920, '2014-11-02T09:16:22Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('35a0d2f7-37cd-4c21-8dac-fe91b29bd22b', 3878, '2015-02-20T04:13:21Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('1c6180b9-78b4-464d-b488-1efe9cdf84b1', 713, '2015-05-15T08:10:51Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('3e00473f-3cbe-42ff-81a7-1d85c88e65ff', 3818, '2015-11-02T10:10:01Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('8a53d72e-c802-42ae-849b-11c6cf550a0d', 365, '2016-06-24T12:50:38Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('788307fa-d261-4a9f-8d30-65fc3375617e', 1985, '2016-09-12T04:28:09Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('54d8fc4a-eefd-4d4f-bfeb-29381e289860', 3515, '2014-12-30T08:55:23Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('033ba8cd-e2e2-47c8-8963-dde166dec736', 1717, '2014-03-04T12:42:55Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('1547bd8a-0258-44ff-a6b7-88abcc3463e5', 454, '2015-03-17T10:15:22Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('7127398d-55b7-4e80-a336-40530078656b', 1736, '2016-08-06T09:30:12Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('fd1e7944-56e2-42c9-896f-d9b4e4f4392c', 2770, '2015-11-06T12:04:06Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('24459576-7c2f-4ccd-bc27-19e1920bbd03', 3113, '2015-02-17T08:21:06Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('f64e92fc-634f-48d2-87e7-bc6a8e3e4978', 3177, '2015-05-20T06:21:10Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('85515a6a-686f-45ad-b173-3d44a28856e5', 789, '2016-06-05T03:15:35Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('4a22fc14-22e4-4b78-b458-4b014f14c2e3', 3723, '2014-05-15T10:19:58Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('bd640161-19de-4b27-ba61-4974fe027b08', 1897, '2014-09-14T02:32:33Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('26e1ea4c-1e0c-4f84-94cb-5ce309399d37', 3421, '2015-05-19T04:42:42Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('79c689f3-053a-459b-8c88-32a699817097', 437, '2016-05-17T09:29:00Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('be4bf877-5a72-4ae2-b8f5-3c79e21fc829', 3236, '2016-09-22T03:08:08Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('19d4fa60-6361-424c-bb15-e81d439b3244', 3314, '2014-01-12T04:35:00Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('f2ba5655-7335-4316-96ec-0ce56dda8cb2', 1376, '2015-12-01T06:09:12Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('749d9631-cc1b-4da0-9280-c604b066ed47', 1692, '2015-12-19T03:14:40Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('d46f642a-cef5-4dd7-9924-d1867b268a97', 1791, '2015-09-13T04:51:38Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('ed67ef06-fe03-4f65-8243-443fb4fccda7', 3320, '2014-07-26T12:50:33Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('378e9653-ed71-4961-b8ad-f62900a8650c', 3634, '2014-01-01T07:24:54Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('569d6f59-fec7-48f4-8851-976304cc6b0a', 2283, '2016-01-24T06:54:39Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('2f367b0e-2fc9-4aca-b4bc-ecdcd0000a0d', 2186, '2016-09-05T03:26:53Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('e3a67b32-57ea-4874-afb7-2a11cb3cf975', 3220, '2014-03-07T12:37:54Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('68edd99b-b99f-4270-a9df-c4e390c63357', 1606, '2016-01-25T09:21:39Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('c0b7918c-5077-4c1b-adf5-b8e8bec4aa5d', 646, '2016-01-26T10:25:57Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('86cf1a7a-f6e9-4049-a096-e93bc7c1b84f', 1852, '2014-05-14T10:00:25Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('6661fe7b-213e-4547-8698-2d8fac88c42c', 3281, '2016-02-08T10:58:55Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('6305aa29-c423-4abf-82e0-0fdfb958b9c6', 2173, '2014-10-21T03:39:50Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('e8ed8ab0-b3a7-4883-b351-e4ffda286dec', 982, '2015-04-15T12:15:35Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('aefe877f-161b-4a9a-9688-8a4e1d559939', 837, '2016-03-17T05:19:36Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('52b0b0c4-9fb4-411a-b553-0ee6d7a4201c', 2246, '2015-03-09T08:41:47Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('6fbe8786-0bd4-42a9-9a27-d17e616cf76a', 3263, '2016-05-06T08:42:50Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('275b3663-70f0-43e7-9c1b-b8d849ee2bc5', 2674, '2016-07-02T06:05:45Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('150c29d4-bc9b-4e4f-87f2-1644aa2c2c2c', 3973, '2016-04-07T11:13:41Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('249957c7-530d-4aa3-babf-a8a8d01c5f5d', 901, '2015-02-10T09:12:19Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('3e7b8b10-c3ee-4002-9b02-a91355c41d37', 2829, '2016-08-28T04:59:32Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('12028880-46e4-4dfa-ae10-68ae2786c281', 1481, '2015-02-10T11:55:34Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('f49771fe-c330-4847-b8ea-6b55a511447e', 2622, '2015-12-27T05:44:36Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('92d15c67-e71b-44ed-9531-eb1afe19dfce', 1788, '2015-08-29T10:38:42Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('baa66e18-5308-4064-a4ff-51572f220b2e', 2684, '2014-08-23T03:12:51Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('1a6a9771-bfe8-4ad0-b672-2b1873b15331', 3110, '2014-03-03T07:58:26Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('f7058bad-4787-426f-9ef3-f4652ea9d582', 311, '2015-03-24T04:18:30Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('6bda2f7a-a5ce-4079-8a38-5a2f199f63e9', 2599, '2014-06-25T10:00:11Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('79b3661d-ce1c-4b03-8f26-3dd6d70f6464', 1347, '2014-02-26T11:10:28Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('590643d9-719d-4f69-8902-425cd8714e69', 2205, '2016-06-30T04:13:56Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('e6e247bd-a632-45ea-8b26-4554548f3fa4', 3336, '2016-08-07T06:28:33Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('036218ed-eb8f-4838-8e73-0392c4f15802', 1307, '2014-01-04T12:53:56Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('74114190-6ad5-4a5d-a699-c488c1675376', 1777, '2015-09-09T09:50:06Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('487d63c0-e3bd-4507-b5f6-b52d397c7661', 240, '2014-12-16T07:21:05Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('c73ab90b-7db2-4a17-a291-32eb6f762204', 324, '2016-09-08T07:10:31Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('84d2812f-49be-4a71-8ea8-f24759528a6f', 213, '2015-10-21T01:38:01Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('cba07eb3-8264-4391-9dcb-f00495039ff8', 1609, '2015-11-12T10:50:26Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('739b369b-9f0d-453d-b71e-5699d09b9627', 1250, '2015-06-19T05:11:09Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('53380f30-2bc1-432d-b350-4c889582ff44', 1444, '2014-01-21T04:19:07Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('450ae194-8770-473a-be79-d4a02aa4905c', 3613, '2014-08-23T03:31:21Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('f5d0a83d-1d5d-445b-bbfa-a027319959fc', 315, '2014-01-24T04:48:51Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('ad0c934b-2e21-4eee-945e-f6ca0f93d84c', 1681, '2015-08-02T10:09:21Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('400cb6ac-f5a3-4620-8845-459ed5eedca9', 2395, '2015-06-06T09:27:20Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('c27cb289-0f0e-4e82-a729-13fb84d6b46b', 1788, '2016-03-18T06:34:29Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('62a8a8bd-7d54-4f53-bda1-5004d95c6316', 3547, '2016-01-08T03:13:02Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('bb79bc43-feb2-41dd-b958-c681379423c6', 1925, '2015-08-21T07:51:21Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('8a5ce0e5-8532-409a-a020-b17acbe849d4', 655, '2014-09-25T08:31:47Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('06f2e6cd-9b7e-45f5-8c83-b9c04cc15302', 1557, '2016-02-08T04:36:57Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('bdea9821-960a-4aee-a1d3-ab20472a67c9', 2240, '2014-07-09T06:34:28Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('3b416a52-fc0a-4919-b799-735026af7274', 274, '2016-09-23T02:58:03Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('d476d9ff-fbb7-4455-85d6-2307ae8988a0', 3315, '2014-07-02T09:22:19Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('516799d2-6398-4854-b853-38ad49869985', 1305, '2014-03-11T04:00:04Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('d099fba2-3d40-41ca-96e6-a9aece1045c0', 3829, '2015-12-02T07:30:33Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('fc6b9b8a-a58d-47d7-9a53-690d71195c01', 945, '2016-09-01T01:44:40Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('577223e8-9be4-486e-99cc-03ebe36f207a', 3551, '2015-06-04T05:14:51Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('aad8e03a-4f1c-4c79-9a2b-f9a95b803e6a', 1661, '2016-01-26T07:00:09Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('b93af73a-fdcc-4501-9779-d782f3a1ad98', 2736, '2014-05-18T04:40:02Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('2f8233d0-1792-4ecf-9017-306b8ae4eb42', 1193, '2014-05-18T04:27:54Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('02ab1bc2-6e42-40b4-b7db-f3d3864beb5a', 1168, '2014-07-25T11:31:47Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('3c42ae29-2854-4074-9e22-360789d552fc', 1171, '2015-12-16T06:28:54Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('4f744ead-f4ff-498e-9d5f-fd6819cd4c77', 3860, '2014-04-29T11:41:20Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('5a0618f0-d4ef-45ca-ae99-23efc7d92a1a', 3714, '2015-03-29T09:10:35Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('cd1c00a4-f1d1-4429-af8b-10dcf818f616', 2690, '2015-05-20T05:45:32Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('704d7042-4808-4d2e-ba15-46ded11bee5f', 1033, '2016-02-03T11:11:52Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('0e1cc872-0ca8-4bc0-ad4a-431b4df88289', 2952, '2014-07-14T10:51:33Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('a95cc511-6ce2-42a9-9bfc-0e9dff677878', 863, '2014-10-02T02:59:43Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('b8d6ecde-aa4c-40ae-987a-a887543cbb8a', 1576, '2015-04-12T12:02:20Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('cf3f9f20-0b88-4daa-9e79-54d8026c8cdd', 2765, '2015-03-06T07:04:53Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('e7eb8fd6-7b09-4802-99ee-df66e6e4c268', 1041, '2015-01-25T10:49:26Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('57492c2b-c29c-4644-b557-feeeaa2bcafc', 1153, '2014-07-11T08:09:32Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('110c70d7-6820-41ab-b5ad-cb87360fe70a', 1821, '2016-09-22T08:19:38Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('780a0f14-203f-4ce7-a416-11cffed8612a', 2932, '2015-11-05T08:23:41Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('9ceae17e-25e8-45c7-813b-568af4d0c080', 681, '2014-04-28T10:35:25Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('4962c4b9-01cc-4cd3-a6c7-0e7b40b55b00', 3363, '2016-07-29T08:18:33Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('183f3153-4be4-4441-9cb3-abb55c042d23', 3897, '2015-11-11T08:34:34Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('2b810027-a999-437e-ad79-e09ac5f0968b', 1621, '2014-03-24T10:39:32Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('cfb902f5-b8ce-4eae-a759-f2d97ba89d7b', 3703, '2015-02-21T06:28:45Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('abab6322-8133-43c5-a95e-410cee7a77e7', 2124, '2014-10-17T12:31:56Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('87e85136-16a2-4800-a3ff-d3c93a397a1c', 3854, '2016-03-27T01:51:02Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('93384a0a-7252-4ace-8831-e6fe3772dd92', 867, '2014-12-18T07:24:48Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('0039b246-5ffa-4b90-b16f-fc9f2d4033d6', 880, '2014-06-29T03:41:22Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('d72141bb-44b1-429b-a774-928179f97807', 446, '2016-10-09T04:14:27Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('d99e6f24-be1a-4b9d-9c0e-22218017a6e0', 2807, '2014-08-22T12:27:04Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('7e969f05-d914-41cb-963f-8826cbaa938b', 3747, '2016-08-16T11:21:31Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('0bf7fc01-6ffb-44aa-8d68-324f0c3cbcee', 2463, '2015-12-06T05:59:27Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('9378b669-cd82-4fc4-8751-e2f38e5f94d1', 237, '2015-04-27T01:14:20Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('fc61f7b0-3919-4cf9-b6d4-7237b3aae205', 1584, '2014-08-01T10:38:09Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('272d1367-dfc6-44ec-a7aa-5ef0bbc213d9', 2724, '2014-12-18T02:21:10Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('9188b181-b083-4402-b5a1-1db40f2db8a8', 269, '2014-11-14T09:55:06Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('eb7b45e5-7ed1-4f35-a420-245b16fa0960', 1937, '2014-10-25T12:14:54Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('750feb5e-021f-4ef9-8b35-f50984120097', 1849, '2014-12-04T11:34:30Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('21cb5d2a-539f-49fd-a192-31723c3b968e', 3179, '2015-10-29T08:32:47Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('0844ac5b-e57b-49ad-9a93-78c432659c8a', 1322, '2014-03-11T05:07:20Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('20d3b34e-7249-4d12-aeef-f159634abddd', 3390, '2015-12-19T02:13:10Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('6b1edbab-e03e-4ced-8e0f-b0b1395dbbb3', 1834, '2014-12-09T03:34:40Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('167b0dfb-e682-4f7b-873b-b4be255a7dbd', 1266, '2014-08-04T08:54:11Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('6a9ab957-3cfb-4ea4-9260-7657b7b4476c', 2243, '2014-10-19T11:04:05Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('c6527323-0240-42e6-9f8f-805f4a211c91', 1881, '2014-12-25T04:25:29Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('e696c847-a8cf-41c9-88aa-d1dbe9fd3116', 1254, '2016-01-10T02:52:36Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('b72f67b0-7f9a-4ee9-8b58-05552e277fa1', 3154, '2014-10-31T03:53:58Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('552737e8-57aa-44e4-8592-d42630ea977c', 3858, '2015-05-06T06:18:31Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('f9806d5f-fed2-45d2-afca-b28d36a7e5b4', 2731, '2016-05-05T07:54:44Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('3ba861ab-8480-447c-beff-2b4fcafc65b9', 1358, '2015-10-17T05:20:00Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('97ea2646-88be-487c-b8be-17c69eefb77a', 1418, '2016-03-12T10:51:10Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('8f81db8d-626d-47dd-9599-84df422608d5', 1065, '2016-04-06T05:03:32Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('e51c508b-7cfd-4134-a15d-4edb5c45e1c1', 2855, '2015-02-24T06:27:56Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('aeee4a0d-2d14-4c22-aae9-b4f1be58acdb', 2011, '2016-07-10T05:57:51Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('3b94a493-3af7-4d4f-83b1-f2faa1adb809', 841, '2014-12-19T12:10:09Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('300d9989-50ca-4589-8521-6932e7e45677', 2482, '2016-09-12T07:52:01Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('364e0536-9e35-4bc2-8588-0a0d4d16d94f', 960, '2015-05-19T10:12:30Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('e194f5d3-a428-4998-9c68-59a255ff8f85', 866, '2014-08-13T03:22:52Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('167301ad-e2d6-42db-b080-790a2558117b', 3237, '2014-06-10T03:18:51Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('01adaadb-ac33-4fe3-8e66-bb162ae71083', 3515, '2016-05-29T11:44:30Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('db6641a7-b24a-48f6-ab0b-a7beac3235ae', 659, '2016-06-29T10:17:41Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('eb52b5f5-2c5a-4684-8043-3ab222f7e893', 260, '2014-11-14T05:24:50Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('df3f2950-9886-410a-8508-01bb5e125eb7', 647, '2015-08-10T01:11:02Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('2df83693-8d76-4c83-890e-37bcd03a5d2a', 484, '2014-06-19T06:20:25Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('a9024b82-8cfd-484c-aa69-a4c55838ef48', 3514, '2016-08-07T06:41:59Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('a3e3c971-b16c-40b4-9e13-698e27d3ac40', 1689, '2015-01-15T03:37:31Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('c3b0cca5-f5be-4094-9629-73ce3727bb35', 3062, '2015-03-18T01:43:48Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('8fb56435-156f-43ee-aa37-5fe17cd94fce', 3931, '2014-08-26T05:53:07Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('70a5765c-26f4-4820-afeb-7ea124d14b74', 394, '2015-03-28T11:37:44Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('537e969c-9355-416d-9fbf-68d2c1c21b17', 3987, '2016-03-24T05:52:20Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('aad066cc-30ba-4bde-80be-a7e423631291', 3669, '2015-01-30T05:16:28Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('89c3daf9-7caf-46be-b2cb-2945e0f76e1e', 1192, '2014-09-24T02:37:19Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('580b1383-d1d0-4f99-9d17-97abc4ae1106', 2727, '2014-03-25T08:05:41Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('4a1b6120-2d36-4e04-a6c8-09f69a1fab5a', 2098, '2015-08-17T02:34:43Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('c2a0125a-8652-418c-91b6-fd6d91a686ab', 2032, '2015-08-24T01:09:19Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('619b6cfc-fab9-4fc7-9311-7883cf203796', 2856, '2015-08-29T10:23:01Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('b6bf2d5b-0666-4f58-982d-c56e91201f26', 2774, '2014-02-14T04:47:55Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('5eb57440-d277-4df4-83b2-eb9f0ef728de', 827, '2014-12-18T11:21:01Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('8dc0fb30-74d6-4dfa-95ae-5aee9a88ce4b', 2697, '2014-11-15T03:04:18Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('dedd25be-b349-4bb8-b15d-6fb835c599ea', 2552, '2014-02-18T04:09:38Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('02b219dd-6c4a-4b1b-8f02-f7c973f0f588', 3459, '2014-08-10T05:48:45Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('69ccdfe3-e250-423b-a0ba-657e483325d9', 1722, '2015-09-30T03:18:16Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('4bbc5ed3-9dfc-45c7-a4ed-0a404021b91c', 3475, '2015-09-11T05:02:19Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('ab4e2069-67ff-46ff-a84f-3cb2b15db9ae', 3476, '2016-01-14T12:02:21Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('8c571eba-cba3-4905-a664-ff7f8dea664c', 3600, '2015-04-21T02:46:45Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('0603ae76-d434-43bb-bdec-637bed0c9078', 1390, '2015-10-27T04:46:25Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('5851f1f8-aa2d-40ad-acc5-07d262bae66f', 1940, '2014-04-27T02:17:40Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('a6834b18-2b2c-4d45-be9d-02c80a76fd37', 2465, '2015-08-14T09:20:27Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('d426521a-3e15-4d22-96e9-d151768adb99', 2113, '2015-05-15T08:08:37Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('2c0cec3a-78ef-45e2-bb42-5c3d80dc5f83', 2290, '2014-07-20T07:54:43Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('5d6190ed-3c74-4673-ba70-f57d8fbd4b8d', 1895, '2014-01-19T11:09:39Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('0d4bc5cf-4677-4876-bad3-c7064ebaf3b2', 2569, '2014-07-30T10:50:35Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('a751f39e-4668-4809-94ff-5f86e4b67b30', 2860, '2016-01-27T01:01:52Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('1ffcfab7-60fc-4954-82ee-b3c365f2a054', 3457, '2014-11-10T07:40:59Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('77447968-1686-4c16-883d-9282bae19b20', 3219, '2015-03-08T08:18:34Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('c8616e33-ab21-4914-a828-832dff818c0b', 2571, '2014-11-05T11:02:46Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('29a92e14-e935-44db-8c42-1d31c76c01c8', 3193, '2014-01-02T11:40:20Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('98e9c6b2-6555-4777-953a-634f2c14749a', 902, '2015-02-25T08:27:30Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('65e5205b-3bdd-4da0-a169-60bcc1a6227d', 2085, '2014-10-29T05:46:35Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('42ab2da6-a60a-4284-ac1b-163984a9db32', 662, '2014-10-28T06:07:33Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('9a4aa259-6693-48ff-b751-83ed5ed20516', 758, '2015-03-31T02:36:33Z', false, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('e626d069-fd2c-4211-99b6-67ed9e867387', 1695, '2015-04-11T06:01:29Z', true, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('8b089843-48e0-4c9d-a275-07e925184ab5', 1258, '2016-03-19T01:10:46Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('dde33fe3-b04c-4d4b-994f-c823e4908be5', 905, '2015-11-19T05:37:56Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('f5461f58-32d4-4834-b896-63b69e14c97c', 3191, '2014-01-10T05:30:17Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('b2f57230-96d6-403f-be65-139d016cd318', 2578, '2016-07-06T10:14:09Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');
INSERT INTO insurance.policies VALUES ('0df3bcef-7a14-4dd7-a42d-fa209d0d5804', 705, '2014-05-11T12:28:41Z', false, 'inesblankenship@quotezart.com', 'a0ece5db-cd14-4f21-812f-966633e7be86');
INSERT INTO insurance.policies VALUES ('facd2c78-65f0-4a49-8a66-560109d263bc', 796, '2014-10-18T07:12:05Z', true, 'inesblankenship@quotezart.com', 'e8fd159b-57c4-4d36-9bd7-a59ca13057bb');


--
-- TOC entry 3362 (class 0 OID 16410)
-- Dependencies: 217
-- Data for Name: users; Type: TABLE DATA; Schema: insurance; Owner: postgres
--

INSERT INTO insurance.users VALUES ('a0ece5db-cd14-4f21-812f-966633e7be86', 'Britney', 'britneyblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('e8fd159b-57c4-4d36-9bd7-a59ca13057bb', 'Manning', 'manningblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('a3b8d425-2b60-4ad7-becc-bedf2ef860bd', 'Barnett', 'barnettblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('44e44268-dce8-4902-b662-1b34d2c10b8e', 'Merrill', 'merrillblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('0178914c-548b-4a4c-b918-47d6a391530c', 'Whitley', 'whitleyblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('a74c83c5-e271-4ecf-a429-d47af952cfd4', 'Lamb', 'lambblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('55601290-8619-4f54-b831-9c6c26c52b44', 'Ophelia', 'opheliablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('1470c601-6833-48a4-85b4-ddab9c045916', 'Jerry', 'jerryblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('b2cbdea3-5bc6-4e14-8d21-579aba6845b2', 'Dina', 'dinablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('f80b6ab6-ef21-4bd9-9d87-bec464e0f60f', 'Thelma', 'thelmablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('a8988671-19a7-478d-b6c7-f345554b8776', 'Pamela', 'pamelablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('12f34e63-d4f1-4701-bbad-5b4b81a66a38', 'Simone', 'simoneblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('2dbaac64-c13b-4d02-a980-e03627dee50d', 'Bethany', 'bethanyblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('162db393-55ef-4b2c-988d-17ba7c606785', 'Harris', 'harrisblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('f382dce9-8152-49ba-ba54-9a7f90a8a332', 'Doreen', 'doreenblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('ca8b8993-06eb-4061-a6a4-d2db80d25e23', 'Baxter', 'baxterblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('8e336cb2-37d0-4e3d-91d8-0a1d2b3e5967', 'Allen', 'allenblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('73107cc4-8bbd-46e2-b6b4-8c720d5424d6', 'Spears', 'spearsblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('ac2487f3-af05-40e3-98ea-360482dcf1e0', 'Roberts', 'robertsblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('bb9d4475-5e6c-4aea-96e1-4c730cbc98b7', 'Patsy', 'patsyblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('8fa5fe43-339d-4671-a024-d423f480c333', 'Pacheco', 'pachecoblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('8c6f51ee-089b-413d-9fa0-71741c8089d8', 'Mae', 'maeblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('31cdee85-d0d1-43c1-9d87-9390dc4c445d', 'Morris', 'morrisblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('38d9da1a-35f8-4924-8480-c8f4db7fdd96', 'Singleton', 'singletonblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('50769e92-42c1-423d-9892-443daa57f8b0', 'Deana', 'deanablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('474b95f1-4b6f-43b7-807e-50b7ea8cc150', 'Maxwell', 'maxwellblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('400e895c-8341-4aee-a609-e42ba7a3c54a', 'Barker', 'barkerblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('017761e7-fa66-4cb9-834a-56bcfead1fd8', 'Sims', 'simsblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('f4a86b31-0ff4-4b78-bc99-f2d8c46d5a0e', 'Elisa', 'elisablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('7c669276-b8a1-44ff-88d9-7a88a2bbfe94', 'Claudette', 'claudetteblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('bcdc8948-ae7b-4bbd-955a-b98489a55e80', 'Allyson', 'allysonblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('ce40de49-241b-46e4-8077-1f455c8bdcdd', 'Mindy', 'mindyblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('a84ffefe-3833-4ba2-ac3a-270c1654e3d2', 'Golden', 'goldenblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('5e7fb7e4-224c-4ab1-aa6d-f840ad9a6af8', 'Kinney', 'kinneyblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('fb971f65-d358-4ee0-aca9-8c3767cddb82', 'Tabitha', 'tabithablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('f6d961fc-f26c-4fe7-9d27-d3466613abd3', 'Lynn', 'lynnblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('031a0925-b531-4e5a-a5f4-059be5f5d9db', 'Hendricks', 'hendricksblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('57aa5457-1376-4112-b877-b136bc4acab5', 'Regina', 'reginablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('4d93219f-7645-4248-82d5-e7ce4b3457d2', 'Charlene', 'charleneblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('880abb11-936a-45d0-880d-a9fb4d669086', 'Dotson', 'dotsonblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('b1fcd013-f69f-4f3a-931c-ee0e6dd69ef4', 'Shepherd', 'shepherdblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('065eb093-748e-4133-9884-0adc11e2fbfc', 'Marietta', 'mariettablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('011dd3d8-2d1e-4abe-9efc-006a1a4a0399', 'Sherrie', 'sherrieblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('1f00dd51-3583-40a0-8350-a2df96b505a9', 'Moore', 'mooreblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('4e5458a2-4857-489d-b95b-8fb73bf541db', 'Annette', 'annetteblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('0d580acf-9eaf-4ee9-a67b-1cbb3a1a46de', 'Byrd', 'byrdblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('a6757b3f-c138-47bf-a43e-defde945c6d0', 'Guthrie', 'guthrieblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('5c322677-cea6-4f88-815b-9e74194d7faf', 'Woodard', 'woodardblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('84d63f26-45fa-4ffb-bfa9-4033b8bd561f', 'Leticia', 'leticiablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('e994af70-4ae7-49fd-b6a9-fcbb92c61f81', 'Gayle', 'gayleblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('5c360463-1771-40c3-b974-a90d134f5040', 'Mcbride', 'mcbrideblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('3b485f5f-807e-47ff-8fcc-0a51a020f35f', 'Katherine', 'katherineblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('c71a2553-cede-4d3d-9ec4-1969d65d253b', 'Avery', 'averyblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('6f4e742a-6e05-40cf-b965-eda917f2a0eb', 'Eugenia', 'eugeniablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('dfbee1d5-90c8-4237-9728-dd26444029db', 'Betsy', 'betsyblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('ce295158-0f59-41ad-b09e-e1e6c812d215', 'Hatfield', 'hatfieldblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('f4da7ef8-2b57-4030-a2a4-3bb4cfd09586', 'Oconnor', 'oconnorblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('9bcb1359-b402-410a-9ebc-d856d34f638f', 'Gay', 'gayblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('dba36e35-d1b6-4f31-a9fc-063d6793e0f5', 'Walter', 'walterblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('76722fc9-3529-4547-b40e-759cd839555c', 'Leach', 'leachblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('d4c65d2b-e263-468f-b211-9c613a5b4bc1', 'Lakisha', 'lakishablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('d70d5ba5-7469-409c-a9f0-d6987d9b3f36', 'Pollard', 'pollardblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('d4451bae-81c9-4661-b8ae-f09430446289', 'Fannie', 'fannieblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('fb6f3521-7b84-4b35-94ed-db9f453b0572', 'Turner', 'turnerblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('fe73f1af-8b39-4bb0-bbba-a06b3438fbbe', 'Love', 'loveblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('dd339288-71dc-4327-8969-6d98566b9fcb', 'Rochelle', 'rochelleblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('531172fe-352b-41e0-993d-f9f5d34ccb79', 'Snyder', 'snyderblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('8941381b-b6d6-4584-af80-7d3b554c2642', 'Goff', 'goffblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('ec9c1c4d-ab1a-41b2-bc1a-520b889cdeb9', 'Waller', 'wallerblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('d96db158-aead-4d7d-9c1c-c54bce64e87a', 'Pearl', 'pearlblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('413d7bf0-e25a-4dbc-b63b-9d4113644188', 'Darlene', 'darleneblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('5819a35c-b6e9-413e-a4d8-bfefb0991c77', 'Mcknight', 'mcknightblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('d4a33f6c-d605-4b30-9ab3-962ee175fd87', 'Lindsey', 'lindseyblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('e8aa0081-f9b8-40b4-9e24-fda2613956cd', 'Haney', 'haneyblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('f448d4ac-1016-482f-97ed-7ee20ee43f87', 'Wilkerson', 'wilkersonblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('cbe9e5c4-1fd2-461f-a51b-935025e7a753', 'Dianne', 'dianneblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('9fa7f056-de4d-4bf9-8c0d-27e413efb1f9', 'Shaffer', 'shafferblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('a8efb83d-6a8d-46dd-a193-1c7099493ee7', 'Alison', 'alisonblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('382a6d8f-f287-455b-ab5f-438990e272f6', 'Alyce', 'alyceblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('f810a165-29d4-49e3-bbc9-03e1f112d66d', 'Marla', 'marlablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('6fc3a4ff-743c-44f5-9c16-8ea022a358e7', 'Tran', 'tranblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('8daf040a-7e46-4084-bac8-451562fb3abd', 'Erica', 'ericablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('0662059c-438f-4a00-b3d9-b29c49bc958f', 'Loretta', 'lorettablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('ac60a6e0-25df-49af-8541-1cfc5078ff86', 'Cynthia', 'cynthiablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('5e877d82-c2fc-4e99-b58d-e053bde1902a', 'Hunter', 'hunterblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('715035b4-188b-4b97-bc4f-c995c314b6ff', 'Perry', 'perryblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('a1b6fd15-525f-446c-a5b6-4fbc6cb2a719', 'Weeks', 'weeksblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('9faf910b-3ab9-4230-81d5-120077e674cf', 'Mack', 'mackblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('5c9b777f-0811-4583-bdf0-53b37d5bf423', 'Sheri', 'sheriblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('6094c1ce-e6c9-499a-aa65-5bf3e99661fa', 'Julia', 'juliablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('5085737c-9b2e-4be3-819e-42fcf0994b41', 'Chris', 'chrisblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('0afd7293-1912-43e3-98d6-0e77f8daa26c', 'Liliana', 'lilianablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('6da5e7ba-e2aa-40c4-b134-37600a0b077c', 'Hester', 'hesterblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('5219f227-5e8a-466d-917b-40de22f401b1', 'Hoover', 'hooverblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('809227dc-2525-48e0-a63e-f8d372931c30', 'Galloway', 'gallowayblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('05258e68-0ba1-4a69-9d2b-2bfb5c1fe1b4', 'Blackburn', 'blackburnblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('309a9485-b33b-4925-b901-f2870fa8fc7d', 'Adele', 'adeleblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('0059ba44-75dc-4f73-9a9f-0e2376909e28', 'Jacquelyn', 'jacquelynblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('ce5210d4-9d50-48c4-8b41-1abe9a4d335d', 'Delores', 'deloresblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('5d35eaee-3a07-47dd-a767-656c9b2c5e97', 'Page', 'pageblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('c11186ef-049e-48e3-806d-79061804cda1', 'Susie', 'susieblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('9bda74be-d3c5-4161-a862-571b5ff03185', 'Edna', 'ednablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('bf6574b4-5f19-4efa-93c0-170a796963f3', 'Maynard', 'maynardblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('3f20fbde-b35c-41cd-8f23-e929ab49d805', 'Reynolds', 'reynoldsblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('fdd6e81d-e4f8-4094-ad57-94488817cc10', 'Roberta', 'robertablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('984538e7-0b69-443c-b1a8-7a5d1dadb4bc', 'Mcdowell', 'mcdowellblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('68624e66-1007-4f28-8c68-9508e1da57d1', 'Carr', 'carrblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('50fdd406-1a8d-4c49-8a2d-94dcbe88f22c', 'Lupe', 'lupeblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('258a9db4-f585-4cde-9b28-f2d5cb2dd928', 'Margo', 'margoblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('4668153c-2cbd-4d69-9b52-db4150849ca5', 'Cathleen', 'cathleenblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('4755aba5-3240-4177-a4a9-da90d702dcc2', 'Angelina', 'angelinablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('c2cb6bc0-0f8a-464c-b4cc-c6302e01a9a0', 'Knapp', 'knappblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('72b97e42-dbc9-4a34-a314-45422df408e4', 'Diaz', 'diazblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('7b360ed2-2722-42c4-8d7e-af2f88b79266', 'Esmeralda', 'esmeraldablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('dbeddc87-9226-4481-a6e1-f405a0d0c56d', 'Floyd', 'floydblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('c0ace454-f6c6-4319-a62f-9af7e021462b', 'Melba', 'melbablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('f8f7b497-68d5-4354-bc2b-68902997d48f', 'Anita', 'anitablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('5f51cbe3-1218-4bc7-9f14-94fe421e9603', 'Shawna', 'shawnablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('0c918bb9-0ce3-43f6-90c4-82433656216d', 'Blake', 'blakeblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('19dc4dc6-3506-457b-bfae-e0a6706e80b3', 'Michael', 'michaelblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('685cb191-f029-43b9-af9a-87a9335568cc', 'Quinn', 'quinnblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('121eaf53-8431-4109-a0bf-bf366a43b3d2', 'Schroeder', 'schroederblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('ba753f96-e6b2-485c-a7c4-f8e27eef7e79', 'Garza', 'garzablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('104d09c8-06b3-48b0-8901-27a4c31b13f5', 'Debra', 'debrablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('1e7d3a98-96e4-4135-af16-dc636a120ea5', 'Sellers', 'sellersblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('151c62ed-ea94-4a46-97aa-d62fe35ae72f', 'Benson', 'bensonblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('54c1ea91-4dc8-4d63-b2c2-1a4d48a38e5d', 'Emilia', 'emiliablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('bc43a3fa-c78f-4177-be06-5a0a864b1dae', 'Warner', 'warnerblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('9e8abb7c-e34f-4ced-991b-3a3fe40e2d1e', 'Tameka', 'tamekablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('65c82987-5399-4ac1-9896-1e8f66b43178', 'William', 'williamblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('668f9395-3df8-4ed6-b317-7ac80324728d', 'Parrish', 'parrishblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('b1dee380-fff8-47ce-8883-237661652b3d', 'Mcfadden', 'mcfaddenblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('2d155477-7c5b-439c-801d-07fa8b43e902', 'Ryan', 'ryanblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('f0d51067-f926-446f-90cc-68bf1e4b19e3', 'Harrison', 'harrisonblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('e19e4c1c-8370-4b0c-902d-1031b4eb1b35', 'Inez', 'inezblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('529b11d3-3086-4559-9a6e-914c3ab4f059', 'Sheena', 'sheenablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('472406f2-b561-454b-8798-af5a1cb44dca', 'Olga', 'olgablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('abbdf9f8-23fa-43a8-a6c2-083209324315', 'Sears', 'searsblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('cb163814-3f75-4313-bde3-cdf59e618901', 'Short', 'shortblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('5a88467b-ebca-4006-8c2d-f73cf1575c1a', 'Mcpherson', 'mcphersonblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('3dbf9ac0-9fe3-4ed4-a6e6-e168e3391b9b', 'Acosta', 'acostablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('f4306711-60de-4780-b8e8-748286b86abc', 'Reeves', 'reevesblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('d375a85e-47b8-413d-8769-1e45df5a740d', 'Andrea', 'andreablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('0326a6d7-7c2c-44cd-879a-838c18d201cc', 'Audra', 'audrablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('aef9fa8e-d016-4f11-b4fd-167442b2fe97', 'Lindsay', 'lindsayblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('fb24e343-7d63-422c-b2e1-c37b87a3b5db', 'Sally', 'sallyblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('e026deba-55fe-421f-9159-3ecd43a6d7bc', 'Evelyn', 'evelynblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('fae91a01-5bb8-4450-98a5-400f9a226fc7', 'Ola', 'olablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('6ab01d78-c7d4-4221-85b3-a4fd3d3154a4', 'Louisa', 'louisablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('396b30c2-e446-4628-9823-ebc6552dd803', 'Nguyen', 'nguyenblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('d6f7c53a-7be6-4891-8a42-6672878e5db1', 'June', 'juneblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('53266b9c-f409-4f6a-8391-ab403195af5a', 'Hahn', 'hahnblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('63a1947d-f962-463b-8c25-e3274cf091c9', 'Robbie', 'robbieblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('56050ee4-1684-4cbd-9516-f2053cac3b84', 'Roman', 'romanblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('cb61b798-7fba-4f35-a92a-e7abd68df566', 'Reilly', 'reillyblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('cbce10d7-b281-4bbd-a94e-447c63ea914e', 'Buck', 'buckblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('c16e9ba8-b8e8-4b4e-b9d1-b6d35315b5f1', 'Janice', 'janiceblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('c5d203f4-af75-4e1c-aad0-8ed81f77f30f', 'Pauline', 'paulineblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('cd94db71-bb2f-4d99-8994-2a8c74c1f324', 'Phillips', 'phillipsblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('86d9750c-056d-458c-be82-ed89e44834b4', 'Walton', 'waltonblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('fd4ba325-f861-4382-a52d-88674c3a418c', 'Compton', 'comptonblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('364b59fa-ecfb-41cb-abbf-7b3f4b05bd93', 'Corina', 'corinablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('ff920c77-23cf-4bae-be0e-659bb76ffa74', 'Mildred', 'mildredblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('614e6048-c3de-48d3-9e26-3b35acb26797', 'Flowers', 'flowersblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('40870a15-8d0c-448f-9bb4-a9b1c7f1ca7f', 'Willie', 'willieblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('91565a85-3f44-43f0-b082-ad6aed1d53c3', 'Johns', 'johnsblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('269a4123-55ef-43b2-bff0-46207dacce17', 'Leigh', 'leighblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('ee8f482f-1bb8-4a5b-873b-b663fb324800', 'Maldonado', 'maldonadoblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('ce70aa35-912b-47a8-9cb6-386c5bc2be03', 'Josefa', 'josefablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('4712ab87-72a5-47ce-aae8-5b1292ceab6c', 'Odonnell', 'odonnellblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('34302662-843c-4c4e-9367-a41f72545e35', 'Kathrine', 'kathrineblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('d8793cb7-58db-44f4-90f4-340e161c30df', 'Dale', 'daleblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('82a2cc23-243a-409c-89b1-a4956e4ab201', 'Santos', 'santosblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('2f8aed39-addc-4f72-9588-cf083414fdd3', 'Moreno', 'morenoblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('3a743aba-178f-4111-929a-13cbfa1ba596', 'Stephenson', 'stephensonblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('4cc71312-780a-4da9-941c-bce834e86343', 'Peggy', 'peggyblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('b4a3cf06-bf76-4609-a609-964bd98cae33', 'Griffin', 'griffinblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('4841f6d1-3632-44ec-a731-d88adbb54234', 'Emerson', 'emersonblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('2a0b72eb-a6be-4281-b91e-1bf07e0cc74d', 'Malinda', 'malindablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('e8863129-8ac4-4522-9e0e-24b18d9f6b45', 'Greer', 'greerblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('fc593aef-39ec-4b5f-852b-42c127a453c7', 'Dena', 'denablankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('e519ddb1-cd20-4af4-ad40-e3051c03c075', 'Valenzuela', 'valenzuelablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('aedd95d2-218b-4538-bb93-863eb2100e82', 'Powell', 'powellblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('f67cd643-025c-4d12-8ccb-1650b99803f3', 'Beulah', 'beulahblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('f0164ee9-cbde-498d-8c61-c6cdfef11048', 'Juliette', 'julietteblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('7c89b20f-d709-446a-a065-1e1b646cc103', 'Good', 'goodblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('f5907c5e-b343-47ae-8bfc-c78a93cbb271', 'Carolyn', 'carolynblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('943761d8-2de2-4c50-b95f-de4a063173d1', 'Evangelina', 'evangelinablankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('16c137e6-82e4-41bf-a99d-afa27abd0c78', 'Evangeline', 'evangelineblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('b34368f7-a94c-42ae-8532-53708a592df7', 'Lessie', 'lessieblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('40dbdf5d-67e7-41aa-ab4a-20908fe6f02f', 'Vang', 'vangblankenship@quotezart.com', 'admin');
INSERT INTO insurance.users VALUES ('147c193f-98e3-40fa-a7d3-18ac72518829', 'Cox', 'coxblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('6fd23b29-290a-481f-a58f-64c7c383e938', 'Kristen', 'kristenblankenship@quotezart.com', 'user');
INSERT INTO insurance.users VALUES ('4a0573eb-56d0-45d5-ab36-bebf33c5eb36', 'Ines', 'inesblankenship@quotezart.com', 'admin');


--
-- TOC entry 3212 (class 2606 OID 16390)
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: insurance; Owner: postgres
--

ALTER TABLE ONLY insurance.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- TOC entry 3216 (class 2606 OID 16419)
-- Name: policies policies_pkey; Type: CONSTRAINT; Schema: insurance; Owner: postgres
--

ALTER TABLE ONLY insurance.policies
    ADD CONSTRAINT policies_pkey PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 16414)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: insurance; Owner: postgres
--

ALTER TABLE ONLY insurance.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 16420)
-- Name: policies policies_user_id_fkey; Type: FK CONSTRAINT; Schema: insurance; Owner: postgres
--

ALTER TABLE ONLY insurance.policies
    ADD CONSTRAINT policies_user_id_fkey FOREIGN KEY (user_id) REFERENCES insurance.users(id);


-- Completed on 2024-06-03 10:34:09

--
-- PostgreSQL database dump complete
--

