/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 12);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '452';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '452';
DELETE FROM qcril_emergency_source_voice_table where MCC = '452';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','112','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','113','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','114','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','115','','full');

/*HTH-131714*/
DELETE FROM qcril_emergency_source_mcc_table where MCC = '732' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '732' AND MNC = '101' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '732' AND MNC = '101' AND NUMBER = '123';

COMMIT TRANSACTION;
