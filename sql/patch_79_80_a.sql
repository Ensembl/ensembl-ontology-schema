-- Copyright [1999-2015] Wellcome Trust Sanger Institute and the EMBL-European Bioinformatics Institute
-- Copyright [2016-2021] EMBL-European Bioinformatics Institute
-- 
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- 
--      http://www.apache.org/licenses/LICENSE-2.0
-- 
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- patch_79_80_a.sql
--
-- Title: Insert schema version.
--
-- Description:
--   Adding schema version to the meta table (set to 80)
--   so that script schema_patcher.pl would work

UPDATE meta SET meta_value='80' WHERE meta_key='schema_version';

-- Patch identifier
INSERT INTO meta (meta_key, meta_value)
  VALUES ('patch', 'patch_79_80_a.sql|schema_version');


