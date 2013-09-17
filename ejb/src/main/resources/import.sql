INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('010','010',NULL,'icon-dashboard','Dashboard','home.jsp');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('020','020',NULL,'icon-question-sign','Devices','2');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('030','030',NULL,'icon-briefcase','Device Templates','3');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('040','040',NULL,'icon-briefcase','CLI Configlets','4');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('050','050',NULL,'icon-exclamation-sign','Images and Scripts','5');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('060','060',NULL,'icon-exclamation-sign','Reports','6');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('070','070',NULL,'icon-legal','Network Monitoring','7');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('080','080',NULL,'icon-legal','Configuration Files','8');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('090','090',NULL,'icon-comment','Jobs','9');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('100','100',NULL,'icon-briefcase','Users','10');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('110','110',NULL,'icon-briefcase','Audit Logs','11');
INSERT INTO `wtf_navgroup` (`id`,`code`,`collapse`,`icon`,`name`,`url`) VALUES ('120','120',NULL,'icon-briefcase','Administration','12');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('1.010','020','Device Management','rest/devicemgr');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('1.020','020','Device Discovery','rest/devicediscovery');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('1.030','020','Specify Probes','rest/specifyprobes');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('1.040','020','Specify Credentials','rest/specifycredentials');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('1.050','020','Deployed Devices','rest/deploydevices');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('1.060','020','Unmanaged Devices','rest/unmanageddevices');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('1.070','020','Secure Console','rest/secureconsole');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('1.080','020','Device Adapter','rest/deviceadapter');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('10.010','110','Audit Log','rest/auditlog');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.010','120','Space Node Settings','rest/snsettings');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.020','120','SNMP Manager','rest/snmpmanager');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.030','120','Database Backup and Restore','rest/dbandrestore');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.040','120','Licenses','rest/licenses');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.050','120','Applications','rest/applications');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.060','120','Space Troubleshootting','rest/spacetroubleshootting');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.070','120','Platform Certificate','rest/platform centificate');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.080','120','CA/CRL Certificates','rest/cacrlcertificates');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.090','120','Authentication Servers','rest/authenticationservers');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.110','120','SMTP Servers','rest/smtpservers');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.120','120','Tags','rest/tags');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.130','120','Permission Labels','rest/permissionlabels');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('11.140','120','DMI Schemas','rest/dmischemas');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('2.010','030','Definitions','rest/definitions');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('2.020','030','Templates','rest/templates');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('3.010','040','Configlets','rest/configlets');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('3.020','040','Configuration View','rest/configurationview');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('3.030','040','Xpath and Regex','rest/xpathandregex');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('4.010','050','Images','rest/images');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('4.020','050','Scripts','rest/scripts');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('4.030','050','Operations','rest/operations');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('4.040','050','Script Bundles','rest/scriptbundles');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('5.010','060','Report Definitions','rest/reportdefinitions');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('5.020','060','Generated Reports','rest/generatedreports');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.010','070','Node List','rest/nwnodelist');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.020','070','Search','rest/nwsearch');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.030','070','Outages','rest/nwoutages');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.040','070','Dashboard','rest/nwdashboard');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.050','070','Events','rest/nwevents');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.060','070','Alarms','rest/nwalarms');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.070','070','Notifications','rest/nwnotifications');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.080','070','Assets','rest/nwassets');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.090','070','Reports','rest/nwresports');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.110','070','Charts','rest/nwcharts');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.120','070','Topology','rest/nwtopology');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('6.130','070','Admin','rest/nwadmin');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('7.010','080','Config Files Management','rest/cfmanagement');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('8.010','090','Job Management','rest/jobmanagement');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('9.010','100','Roles','rest/roles');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('9.020','100','User Accounts','rest/useraccounts');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('9.030','100','Remote Profiles','rest/remoteprofiles');
INSERT INTO `wtf_navitem` (`id`,`groupId`,`name`,`url`) VALUES ('9.040','100','User Sessions','rest/usersessions');
