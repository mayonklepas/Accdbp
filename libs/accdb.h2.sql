-- MVStore
CREATE ALIAS IF NOT EXISTS READ_BLOB_MAP FOR 'org.h2.tools.Recover.readBlobMap';
CREATE ALIAS IF NOT EXISTS READ_CLOB_MAP FOR 'org.h2.tools.Recover.readClobMap';
-- LOB
CREATE TABLE IF NOT EXISTS INFORMATION_SCHEMA.LOB_BLOCKS(LOB_ID BIGINT, SEQ INT, DATA VARBINARY, PRIMARY KEY(LOB_ID, SEQ));
-- lobMap.size: 0
-- lobData.size: 0
-- Layout
-- chunk.15c8 = chunk:15c8,block:2e,len:94,pages:146,livePages:1,max:a5860,liveMax:600,map:6c0,root:5720002494596,time:a1a780b6,unusedAtVersion:15ca,version:15c8,toc:929e1,occupancy:ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1f
-- chunk.18eb = chunk:18eb,block:c2,len:1,pages:7,livePages:2,max:d30,liveMax:300,map:ac2,root:63ac00001b083,time:c9670e68,unusedAtVersion:18ee,version:18eb,toc:c4b,occupancy:6e
-- chunk.18f7 = chunk:18f7,block:cd,len:5,pages:a,livePages:1,max:53a0,liveMax:40,map:ad6,root:63dc00010fd83,time:c96d77e2,unusedAtVersion:1d57,version:18f7,toc:4a41,occupancy:fe03
-- chunk.1aa1 = chunk:1aa1,block:c8,len:3,pages:18,livePages:2,max:2a30,liveMax:300,map:b37,root:6a8400006b383,time:ed765fa3,unusedAtVersion:1aa3,version:1aa1,toc:2341,occupancy:feffdf
-- chunk.1b15 = chunk:1b15,block:c3,len:5,pages:2a,livePages:7,max:4dc0,liveMax:8e0,map:bae,root:6c540000df6c3,time:13350bdcc,unusedAtVersion:1b34,version:1b15,pinCount:1,toc:4225,occupancy:88ffefffff03
-- chunk.1b69 = chunk:1b69,block:d2,len:5,pages:28,livePages:6,max:4aa0,liveMax:7c0,map:bd8,root:6da40000d67c3,time:137d76d85,unusedAtVersion:1d74,version:1b69,pinCount:1,toc:40c6,occupancy:1afffffffe
-- chunk.1d60 = chunk:1d60,block:cb,len:2,pages:5,livePages:3,max:1950,liveMax:d20,map:c5e,root:7580000029a03,time:14ea21162,unusedAtVersion:1d60,version:1d60,pinCount:1,toc:163a,occupancy:18
-- chunk.1ea3 = chunk:1ea3,block:dc,len:2,pages:c,livePages:3,max:2630,liveMax:400,map:c83,root:7a8c000033843,time:14ed04984,unusedAtVersion:266d,version:1ea3,pinCount:1,toc:1e2c,occupancy:fc0d
-- chunk.1eaf = chunk:1eaf,block:d7,len:5,pages:1a,livePages:1,max:59c0,liveMax:60,map:c9c,root:7abc0000f1143,time:1dfaa250e,unusedAtVersion:1eed,version:1eaf,toc:4ab3,occupancy:feffff03
-- chunk.46c6 = chunk:46c6,block:de,len:2,pages:11,livePages:2,max:19e0,liveMax:6c0,map:1274,root:11b18000041585,time:22d33e9b2,unusedAtVersion:46cf,version:46c6,toc:15e4,occupancy:febf01
-- chunk.4bd5 = chunk:4bd5,block:e0,len:4,pages:1e,livePages:8,max:4340,liveMax:1580,map:155f,root:12f540000c6bc7,time:2c34e1a12,unusedAtVersion:4c27,version:4bd5,pinCount:1,toc:3847,occupancy:ce9bff33
-- chunk.5735 = chunk:5735,block:e4,len:8,pages:2a,livePages:6,max:9060,liveMax:12c0,map:1780,root:15cd40001be889,time:2cd349553,unusedAtVersion:5739,version:5735,toc:765e,occupancy:ffdfffc73f03
-- chunk.5d7d = chunk:5d7d,block:ec,len:1,pages:6,livePages:2,max:1030,liveMax:580,map:19c6,root:175f4000025489,time:31078bca9,unusedAtVersion:5d87,version:5d7d,toc:f27,occupancy:3c
-- chunk.5d91 = chunk:5d91,block:167,len:1f,pages:85,livePages:2,max:244b0,liveMax:680,map:19d2,root:17644000741ec9,time:314598381,unusedAtVersion:5db4,version:5d91,toc:1dfa1,occupancy:ffffffffffffffffffffffffffffffbf0f
-- chunk.6687 = chunk:6687,block:11f,len:27,pages:9f,livePages:1,max:2f710,liveMax:200,map:1a16,root:19a1c00094fe49,time:33457742a,unusedAtVersion:668f,version:6687,toc:25de1,occupancy:fbffffffffffffffffffffffffffffffffffff7f
-- chunk.668f = chunk:668f,block:10c,len:13,pages:51,livePages:10,max:171e0,liveMax:27d0,map:1a1e,root:19a3c00046d609,time:35d8c8ad0,unusedAtVersion:6726,version:668f,pinCount:1,toc:124a2,occupancy:fbcfd2ffffdfffff71f001
-- chunk.7312 = chunk:7312,block:146,len:42,pages:111,livePages:2,max:4f730,liveMax:6c0,map:1be7,root:1cc48000fe488b,time:565f8cb6c,unusedAtVersion:7354,version:7312,toc:40b1f,occupancy:fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd
-- chunk.8845 = chunk:8845,block:188,len:6f,pages:1c9,livePages:2,max:86fb0,liveMax:6c0,map:22d5,root:22114001b0e1cb,time:5adf43173,unusedAtVersion:88c7,version:8845,toc:6d6cd,occupancy:fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe
-- chunk.90a1 = chunk:90a1,block:1f7,len:2,pages:8,livePages:1,max:1c40,liveMax:40,map:2470,root:2428400003cd4b,time:5d1bff293,unusedAtVersion:90a6,version:90a1,toc:1b19,occupancy:fe
-- chunk.94d9 = chunk:94d9,block:1f9,len:7d,pages:205,livePages:2,max:97e00,liveMax:6c0,map:24a7,root:25364001e7708b,time:5dc012939,unusedAtVersion:94fe,version:94d9,toc:7b313,occupancy:fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff70f
-- chunk.9a76 = chunk:9a76,block:2e8,len:9,pages:2d,livePages:0,max:a2c0,liveMax:0,map:24f4,root:269d80001e804b,time:62854e723,unused:6295ff305,unusedAtVersion:9e0b,version:9a76,toc:8670,occupancy:ffffffffff1f
-- chunk.9a77 = chunk:9a77,block:2f1,len:a,pages:2d,livePages:0,max:b800,liveMax:0,map:24f4,root:269dc00020d3cb,time:62854eb01,unused:6295ff305,unusedAtVersion:9e0b,version:9a77,toc:90ae,occupancy:ffffffffff1f
-- chunk.9a7b = chunk:9a7b,block:285,len:8,pages:1c,livePages:0,max:92c0,liveMax:0,map:24f4,root:269ec00019b48b,time:62854f7e4,unused:6295ff305,unusedAtVersion:9e0b,version:9a7b,toc:7588,occupancy:ffffff0f
-- chunk.9a7f = chunk:9a7f,block:291,len:b,pages:25,livePages:0,max:cf80,liveMax:0,map:24f4,root:269fc00025b54b,time:6285500ca,unused:6295ff305,unusedAtVersion:9e0b,version:9a7f,toc:a7d0,occupancy:ffffffff1f
-- chunk.9a80 = chunk:9a80,block:29c,len:8,pages:1b,livePages:0,max:9340,liveMax:0,map:24f4,root:26a0000018fbcb,time:62855030e,unused:6295ff305,unusedAtVersion:9e0b,version:9a80,toc:75b2,occupancy:ffffff07
-- chunk.9a81 = chunk:9a81,block:2fb,len:14,pages:60,livePages:0,max:18610,liveMax:0,map:24f4,root:26a04000497fcb,time:628550542,unused:6295ff305,unusedAtVersion:9e0b,version:9a81,toc:138a0,occupancy:ffffffffffffffffffffffff
-- chunk.9a82 = chunk:9a82,block:30f,len:14,pages:47,livePages:0,max:17680,liveMax:0,map:24f4,root:26a08000494f0b,time:628550744,unused:6295ff305,unusedAtVersion:9e0b,version:9a82,toc:138aa,occupancy:ffffffffffffffff7f
-- chunk.9a83 = chunk:9a83,block:2d0,len:18,pages:69,livePages:0,max:1c4f0,liveMax:0,map:24f4,root:26a0c00057ad8b,time:62855095b,unused:6295ff305,unusedAtVersion:9e0b,version:9a83,toc:17218,occupancy:ffffffffffffffffffffffffff01
-- chunk.9a84 = chunk:9a84,block:2a4,len:17,pages:64,livePages:0,max:1b3d0,liveMax:0,map:24f4,root:26a1000054e0cb,time:628550b63,unused:6295ff305,unusedAtVersion:9e0b,version:9a84,toc:166f5,occupancy:ffffffffffffffffffffffff0f
-- chunk.9a89 = chunk:9a89,block:2bb,len:d,pages:43,livePages:0,max:ed70,liveMax:0,map:24f4,root:26a2400028248b,time:62855aeef,unused:6295ff305,unusedAtVersion:9e0b,version:9a89,toc:c1d7,occupancy:ffffffffffffffff07
-- chunk.9a8a = chunk:9a8a,block:276,len:4,pages:c,livePages:0,max:4b00,liveMax:0,map:24f4,next:2df,root:26a280000a22cb,time:62855b987,unused:6295ff305,unusedAtVersion:9e0b,version:9a8a,toc:3afc,occupancy:ff0f
-- chunk.9a8b = chunk:9a8b,block:2c8,len:8,pages:26,livePages:0,max:8ef0,liveMax:0,map:24f4,root:26a2c0001816cb,time:62855bb8b,unused:6295ff305,unusedAtVersion:9e0b,version:9a8b,toc:72c8,occupancy:ffffffff3f
-- chunk.9a8f = chunk:9a8f,block:281,len:4,pages:b,livePages:0,max:4080,liveMax:0,map:24f4,root:26a3c000080b0b,time:628565a6f,unused:6295ff305,unusedAtVersion:9e0b,version:9a8f,toc:3296,occupancy:ff07
-- chunk.9a90 = chunk:9a90,block:28d,len:4,pages:d,livePages:0,max:5100,liveMax:0,map:24f4,root:26a400000aa38b,time:628566bba,unused:6295ff305,unusedAtVersion:9e0b,version:9a90,toc:3cf8,occupancy:ff1f
-- chunk.9e0a = chunk:9e0a,block:27d,len:4,pages:14,livePages:0,max:4310,liveMax:0,map:24f4,root:2782800008948b,time:62922f096,unused:6295ff305,unusedAtVersion:9e0b,version:9e0a,toc:34c8,occupancy:ffff0f
-- chunk.9e0b = chunk:9e0b,block:27a,len:3,pages:e,livePages:a,max:2f90,liveMax:1550,map:24f4,next:27d,root:2782c00004c50b,time:629236e1d,unusedAtVersion:9e0b,version:9e0b,toc:24bf,occupancy:1130
-- chunk.9e0c = chunk:9e0c,block:325,len:80,pages:211,livePages:20f,max:9c390,liveMax:9aad0,map:24f4,root:27830001f1cc4b,time:6295ff305,unusedAtVersion:9e0c,version:9e0c,toc:7e7e4,occupancy:00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001
-- chunk.9e0d = chunk:9e0d,block:323,len:2,pages:2,livePages:0,max:18c0,liveMax:0,map:24f4,next:325,root:27834000002c0b,time:6295ff54a,unused:6295ff646,unusedAtVersion:9e0d,version:9e0d,toc:13db,occupancy:03
-- chunk.cc5 = chunk:cc5,block:2,len:2c,pages:64,livePages:2,max:2eff0,liveMax:980,map:20e,root:3314000aac618,time:a0e0bfa5,unusedAtVersion:cca,version:cc5,toc:2b2ac,occupancy:ffffffffffffffffffff7f7f0f
-- meta.id = 1
-- root.1 = 2782c0000324c3
-- root.10 = 2783000019790a
-- root.2 = 27830000002c07
-- root.5 = 27830000060bc5
-- root.aa2 = 278300006d9e0b
-- root.aa4 = 27830000767116
-- root.aa6 = 27830000778c03
-- root.aa8 = 27830000a1d6d6
-- root.aaa = 27830000a2fcc9
-- root.aac = 27830000aa2a0e
-- root.aae = 27830000aa7945
-- root.ab0 = 27830000afe541
-- root.ab2 = 27830000b1274b
-- root.ab4 = 27830001ed900b
-- root.ad6 = 27830000199b45
-- root.e = 278300001922ce
-- Meta
-- map.10 = name:table.6,createVersion:9,key:8fa25204,val:5eaca19a
-- map.2 = name:_
-- map.24f3 = name:undoLog.1,createVersion:9a73
-- map.24f4 = name:undoLog.2,createVersion:9a73
-- map.3 = name:openTransactions
-- map.5 = name:table.0,key:8fa25204,val:5803b3f1
-- map.6 = name:lobMap,key:8fa25204,val:f4470498
-- map.7 = name:tempLobMap,key:8fa25204,val:59a6a071
-- map.8 = name:lobRef,key:eabe0274,val:1e1d2b61
-- map.9 = name:lobData,key:8fa25204,val:59a6a071
-- map.aa2 = name:table.263,createVersion:18dd,key:8fa25204,val:32b6e533
-- map.aa4 = name:table.267,createVersion:18dd,key:8fa25204,val:32b6e533
-- map.aa6 = name:table.273,createVersion:18dd,key:8fa25204,val:811c0840
-- map.aa8 = name:table.278,createVersion:18dd,key:8fa25204,val:32b6e533
-- map.aaa = name:table.284,createVersion:18dd,key:8fa25204,val:811c0840
-- map.aac = name:table.289,createVersion:18dd,key:8fa25204,val:32b6e533
-- map.aae = name:table.295,createVersion:18dd,key:8fa25204,val:811c0840
-- map.ab0 = name:table.300,createVersion:18dd,key:8fa25204,val:32b6e533
-- map.ab2 = name:table.306,createVersion:18dd,key:8fa25204,val:811c0840
-- map.ab4 = name:table.311,createVersion:18dd,key:8fa25204,val:811c0840
-- map.ad6 = name:table.14,createVersion:18f6,key:8fa25204,val:811c0840
-- map.e = name:table.4,createVersion:9,key:8fa25204,val:15d5a01e
-- name._ = 2
-- name.lobData = 9
-- name.lobMap = 6
-- name.lobRef = 8
-- name.openTransactions = 3
-- name.table.0 = 5
-- name.table.14 = ad6
-- name.table.263 = aa2
-- name.table.267 = aa4
-- name.table.273 = aa6
-- name.table.278 = aa8
-- name.table.284 = aaa
-- name.table.289 = aac
-- name.table.295 = aae
-- name.table.300 = ab0
-- name.table.306 = ab2
-- name.table.311 = ab4
-- name.table.4 = e
-- name.table.6 = 10
-- name.tempLobMap = 7
-- name.undoLog.1 = 24f3
-- name.undoLog.2 = 24f4
-- Types
-- 1080c97b = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 115d2d7 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 125393d5 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1277e7f = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 13fc5c09 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 14c4f626 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 15d5a01e = org.h2.mvstore.tx.VersionedValueType@15d5a01e
-- 1627366b = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 16c16eff = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 16e7bab = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 171a5c1c = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 17f9a8ca = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1873d4ad = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1934d1e = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 199129f9 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 199a66ae = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 19f39cc2 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1a07e12 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1a6febe = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1afaf75 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1b0703bd = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1b16a7b3 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1b98e4c3 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1c44b93 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1c9747 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1e1d2b61 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1e843546 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1ece41f = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1f4615f1 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 1fc20e4 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 205c893f = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 21103eb2 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 214932f6 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 2499584 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 24b29430 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 250b44d9 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 25cbfa22 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 262599ad = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 27bf1710 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 2b2dcb21 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 2b35bb1d = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 2bce4f = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 31c37ba5 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 327af41b = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 32b6e533 = org.h2.mvstore.tx.VersionedValueType@32b6e533
-- 357b0773 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 36cf92 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 37703031 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 381992de = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 38a7adbe = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 395f3a99 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 3c759e = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 3cd20669 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 3db3ec90 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 3ebdf8be = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 3fbd3c8c = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 40904c7a = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 41d69cd0 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 42398b4c = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 4274a948 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 42c0098e = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 439b64f = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 4550bb58 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 45a4b042 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 46f8cf13 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 48bdc362 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 4957be4c = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 49ed032f = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 4aca7ef2 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 4c213182 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 4ce5b4da = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 50c32e32 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 51194a8e = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 52e26c72 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 53d94105 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 54d891ab = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 56e6c1a4 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 5803b3f1 = org.h2.mvstore.tx.VersionedValueType@5803b3f1
-- 585d003c = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 5904385d = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 5985119e = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 59a6a071 = org.h2.mvstore.type.ByteArrayDataType@59a6a071
-- 59ec3f35 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 5c0990b2 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 5eaca19a = org.h2.mvstore.tx.VersionedValueType@5eaca19a
-- 63114be7 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 659464 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 65abc25 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 65d51f6c = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6647c2 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 68cadd25 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6a013639 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6a8c6c5a = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6ba715e8 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6bd14c1a = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6c7bc05 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6c7fe42b = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6caaecbf = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6d8134 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6de514c1 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6e433d4a = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 6e444733 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 70e6a881 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 71fba8b9 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 7248e57a = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 7799351c = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 7a1db0b4 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 7e718a2b = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 808c82 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 811c0840 = org.h2.mvstore.tx.VersionedValueType@811c0840
-- 879532 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 884902 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- 8fa25204 = org.h2.mvstore.type.LongDataType@8fa25204
-- ac1e2a = org.h2.mvstore.db.NullValueDataType@7c30a502
-- ae13544 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- b46051 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- b8ebff3 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- bc25b53 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- bd43423 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- c6a36c75 = org.h2.mvstore.tx.VersionedValueType@c6a36c75
-- d12306 = org.h2.mvstore.db.NullValueDataType@7c30a502
-- eabe0274 = org.h2.mvstore.db.LobStorageMap$BlobReference$Type@eabe0274
-- f4470498 = org.h2.mvstore.db.LobStorageMap$BlobMeta$Type@f4470498
-- fafbb2d = org.h2.mvstore.db.NullValueDataType@7c30a502
-- Tables
---- Schema SET ----
SET CREATE_BUILD 224;
---- Table Data ----
CREATE TABLE O_14(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR, C6 VARCHAR, C7 VARCHAR, C8 VARCHAR);
INSERT INTO O_14 VALUES('240131008001', '240131008000', '1202', 0.0, 'DBP / INV 01 / (O.B) Periode 28-11-2023 S/D 18-01-2024 Rp. 32.000 x 55.454 M3', TIMESTAMP '2024-03-06 10:52:06.432', 1.93423552E9, 7.449741848E9, 'INV-01 DBP');
INSERT INTO O_14 VALUES('240131008002', '240131008000', '1501', 0.0, 'DBP / INV 01 / (O.B) Periode 28-11-2023 S/D 18-01-2024 Rp. 32.000 x 55.454 M3', TIMESTAMP '2024-03-06 10:52:06.432', 3.549056E7, 1.238124583E9, 'INV-01 DBP');
INSERT INTO O_14 VALUES('240131008003', '240131008000', '5001', 1.774528E9, 'DBP / INV 01 / (O.B) Periode 28-11-2023 S/D 18-01-2024 Rp. 32.000 x 55.454 M3', TIMESTAMP '2024-03-06 10:52:06.432', 0.0, -1.774528E9, 'INV-01 DBP');
INSERT INTO O_14 VALUES('240131008004', '240131008000', '3210', 1.9519808E8, 'DBP / INV 01 / (O.B) Periode 28-11-2023 S/D 18-01-2024 Rp. 32.000 x 55.454 M3', TIMESTAMP '2024-03-06 10:52:06.432', 0.0, -1.9519808E8, 'INV-01 DBP');
INSERT INTO O_14 VALUES('240131009005', '240131009000', '1202', 0.0, 'DBP / INV 02 / RENT Komatsu D85-36 Rp 1.400.000 x 76.6 Excavator SK 200-76 Rp 800.000 x 89,7 PC 400-01  Rp 1.400.000 x 21', TIMESTAMP '2024-03-06 10:52:06.448', 2.27156E8, 7.676897848E9, 'INV-02 DBP');
INSERT INTO O_14 VALUES('240131009006', '240131009000', '1501', 0.0, 'DBP / INV 02 / RENT Komatsu D85-36 Rp 1.400.000 x 76.6 Excavator SK 200-76 Rp 800.000 x 89,7 PC 400-01  Rp 1.400.000 x 21', TIMESTAMP '2024-03-06 10:52:06.448', 4168000.0, 1.242292583E9, 'INV-02 DBP');
INSERT INTO O_14 VALUES('240131009007', '240131009000', '5003', 2.084E8, 'DBP / INV 02 / RENT Komatsu D85-36 Rp 1.400.000 x 76.6 Excavator SK 200-76 Rp 800.000 x 89,7 PC 400-01  Rp 1.400.000 x 21', TIMESTAMP '2024-03-06 10:52:06.448', 0.0, -2.084E8, 'INV-02 DBP');
INSERT INTO O_14 VALUES('240131009008', '240131009000', '3210', 2.2924E7, 'DBP / INV 02 / RENT Komatsu D85-36 Rp 1.400.000 x 76.6 Excavator SK 200-76 Rp 800.000 x 89,7 PC 400-01  Rp 1.400.000 x 21', TIMESTAMP '2024-03-06 10:52:06.448', 0.0, -2.1812208E8, 'INV-02 DBP');
INSERT INTO O_14 VALUES('240131010009', '240131010000', '1202', 0.0, U&'DBP / INV 03 / RENT Komatsu D85-36 Rp.1.400.000 x 38,6 Jam\000aExacavator SK 200-76 Rp. 800.000 x 309,99 Jam\000aGreder Sany  Rp. 1.300.000 x 10 Jam\000aCompactor/SAKAI 18 Rp. 735.000 x 21', TIMESTAMP '2024-03-06 10:52:06.464', 3.57565235E8, 8.034463083E9, 'INV-03 DBP');
INSERT INTO O_14 VALUES('240131010010', '240131010000', '1501', 0.0, U&'DBP / INV 03 / RENT Komatsu D85-36 Rp.1.400.000 x 38,6 Jam\000aExacavator SK 200-76 Rp. 800.000 x 309,99 Jam\000aGreder Sany  Rp. 1.300.000 x 10 Jam\000aCompactor/SAKAI 18 Rp. 735.000 x 21', TIMESTAMP '2024-03-06 10:52:06.464', 6560830.0, 1.248853413E9, 'INV-03 DBP');
INSERT INTO O_14 VALUES('240131010011', '240131010000', '5003', 3.280415E8, U&'DBP / INV 03 / RENT Komatsu D85-36 Rp.1.400.000 x 38,6 Jam\000aExacavator SK 200-76 Rp. 800.000 x 309,99 Jam\000aGreder Sany  Rp. 1.300.000 x 10 Jam\000aCompactor/SAKAI 18 Rp. 735.000 x 21', TIMESTAMP '2024-03-06 10:52:06.464', 0.0, -5.364415E8, 'INV-03 DBP');
INSERT INTO O_14 VALUES('240131010012', '240131010000', '3210', 3.6084565E7, U&'DBP / INV 03 / RENT Komatsu D85-36 Rp.1.400.000 x 38,6 Jam\000aExacavator SK 200-76 Rp. 800.000 x 309,99 Jam\000aGreder Sany  Rp. 1.300.000 x 10 Jam\000aCompactor/SAKAI 18 Rp. 735.000 x 21', TIMESTAMP '2024-03-06 10:52:06.464', 0.0, -2.54206645E8, 'INV-03 DBP');
INSERT INTO O_14 VALUES('240118002003', '240118002000', '3001', 0.0, 'PEMBAYARAN 60RB LT / PO 3213 / LONG IRAM', TIMESTAMP '2024-03-06 15:38:45.978', 1.08477E9, 9.66409608E8, 'TR 796');
INSERT INTO O_14 VALUES('240118002004', '240118002000', '1003', 1.08477E9, 'PEMBAYARAN 60RB LT / PO 3213 / LONG IRAM', TIMESTAMP '2024-03-06 15:38:45.978', 0.0, -1.11477E9, 'TR 796');
INSERT INTO O_14 VALUES('240118004007', '240118004000', '7017', 0.0, 'PEMBELIAN SEMEN WSHOP/ SISILIA', TIMESTAMP '2024-03-06 15:38:46.071', 1.78E7, 1.78E7, 'TR 798');
INSERT INTO O_14 VALUES('240118004008', '240118004000', '1003', 1.78E7, 'PEMBELIAN SEMEN WSHOP/ SISILIA', TIMESTAMP '2024-03-06 15:38:46.071', 0.0, -1.15257E9, 'TR 798');
INSERT INTO O_14 VALUES('240118005009', '240118005000', '7001', 0.0, 'GAJI KARYAWAN DES 2024', TIMESTAMP '2024-03-06 15:38:46.087', 2.86729918E8, 2.86729918E8, 'TR 799');
INSERT INTO O_14 VALUES('240118005010', '240118005000', '1003', 2.86729918E8, 'GAJI KARYAWAN DES 2024', TIMESTAMP '2024-03-06 15:38:46.087', 0.0, -1.439299918E9, 'TR 799');
INSERT INTO O_14 VALUES('240118006011', '240118006000', '7011', 0.0, 'PEMBAYARAN PPh 21 23 25 4 AYAT 2 / DES 2023', TIMESTAMP '2024-03-06 15:38:46.103', 2.1005404E7, 2.1005404E7, 'TR 800');
INSERT INTO O_14 VALUES('240118006012', '240118006000', '1003', 2.1005404E7, 'PEMBAYARAN PPh 21 23 25 4 AYAT 2 / DES 2023', TIMESTAMP '2024-03-06 15:38:46.103', 0.0, -1.460305322E9, 'TR 800');
INSERT INTO O_14 VALUES('240118007013', '240118007000', '7012', 0.0, 'PEMBAYARAN BPJS KES & TK JAN 2024', TIMESTAMP '2024-03-06 15:38:46.103', 2.9545007E7, 2.9545007E7, 'TR 801');
INSERT INTO O_14 VALUES('240118007014', '240118007000', '1003', 2.9545007E7, 'PEMBAYARAN BPJS KES & TK JAN 2024', TIMESTAMP '2024-03-06 15:38:46.103', 0.0, -1.489850329E9, 'TR 801');
INSERT INTO O_14 VALUES('240118008015', '240118008000', '7004', 0.0, 'INTERNET LOKASI / LINTAS MAYA / DES 2023', TIMESTAMP '2024-03-06 15:38:46.118', 5000000.0, 5000000.0, 'TR 803');
INSERT INTO O_14 VALUES('240118008016', '240118008000', '1502', 0.0, 'INTERNET LOKASI / LINTAS MAYA / DES 2023', TIMESTAMP '2024-03-06 15:38:46.118', 550000.0, -2140761.0, 'TR 803');
INSERT INTO O_14 VALUES('240118008017', '240118008000', '3220', 100000.0, 'INTERNET LOKASI / LINTAS MAYA / DES 2023', TIMESTAMP '2024-03-06 15:38:46.118', 0.0, -1075000.0, 'TR 803');
INSERT INTO O_14 VALUES('240118008018', '240118008000', '1003', 5450000.0, 'INTERNET LOKASI / LINTAS MAYA / DES 2023', TIMESTAMP '2024-03-06 15:38:46.118', 0.0, -1.495300329E9, 'TR 803');
INSERT INTO O_14 VALUES('240118009019', '240118009000', '7017', 0.0, 'PEMBELIAN RING GALVALUM / UD CAHAYA', TIMESTAMP '2024-03-06 15:38:46.134', 3240000.0, 2.104E7, 'TR 804');
INSERT INTO O_14 VALUES('240118009020', '240118009000', '1003', 3240000.0, 'PEMBELIAN RING GALVALUM / UD CAHAYA', TIMESTAMP '2024-03-06 15:38:46.134', 0.0, -1.498540329E9, 'TR 804');
INSERT INTO O_14 VALUES('240118011023', '240118011000', '7011', 0.0, 'SETORAN PPh 23 / DES', TIMESTAMP '2024-03-06 15:38:46.165', 840000.0, 2.1845404E7, 'TR 806');
INSERT INTO O_14 VALUES('240118011024', '240118011000', '7011', 840000.0, 'SETORAN PPh 23 / DES', TIMESTAMP '2024-03-06 15:38:46.165', 0.0, 2.1005404E7, 'TR 806');
INSERT INTO O_14 VALUES('240118013027', '240118013000', '7004', 0.0, 'SEWA RUANGAN / 2023-2025', TIMESTAMP '2024-03-06 15:38:46.196', 2.0E8, 2.05E8, 'TR 808');
INSERT INTO O_14 VALUES('240118013028', '240118013000', '1502', 0.0, 'SEWA RUANGAN / 2023-2025', TIMESTAMP '2024-03-06 15:38:46.196', 2.2E7, 1.9859239E7, 'TR 808');
INSERT INTO O_14 VALUES('240118013029', '240118013000', '3220', 2.0E7, 'SEWA RUANGAN / 2023-2025', TIMESTAMP '2024-03-06 15:38:46.196', 0.0, -2.1075E7, 'TR 808');
INSERT INTO O_14 VALUES('240118013030', '240118013000', '1003', 2.02E8, 'SEWA RUANGAN / 2023-2025', TIMESTAMP '2024-03-06 15:38:46.196', 0.0, -1.758040329E9, 'TR 808');
INSERT INTO O_14 VALUES('240118014031', '240118014000', '7016', 0.0, 'PEMBELIAN SPART / LEASING BFI', TIMESTAMP '2024-03-06 15:38:46.196', 1.32652E8, 1.32652E8, 'TR 809');
INSERT INTO O_14 VALUES('240118014032', '240118014000', '1003', 1.32652E8, 'PEMBELIAN SPART / LEASING BFI', TIMESTAMP '2024-03-06 15:38:46.196', 0.0, -1.890692329E9, 'TR 809');
INSERT INTO O_14 VALUES('240118015033', '240118015000', '7017', 0.0, 'PEMBAYARAN TR INTRN 695 SD 740', TIMESTAMP '2024-03-06 15:38:46.212', 2.81645461E8, 3.02685461E8, 'TR 810');
INSERT INTO O_14 VALUES('240118015034', '240118015000', '1003', 2.81645461E8, 'PEMBAYARAN TR INTRN 695 SD 740', TIMESTAMP '2024-03-06 15:38:46.212', 0.0, -2.17233779E9, 'TR 810');
INSERT INTO O_14 VALUES('240118016035', '240118016000', '7001', 0.0, 'PKWT 18 KRY / JAN 2024', TIMESTAMP '2024-03-06 15:38:46.228', 1.86438E7, 3.05373718E8, 'TR 811');
INSERT INTO O_14 VALUES('240118016036', '240118016000', '1003', 1.86438E7, 'PKWT 18 KRY / JAN 2024', TIMESTAMP '2024-03-06 15:38:46.228', 0.0, -2.19098159E9, 'TR 811');
INSERT INTO O_14 VALUES('240118017037', '240118017000', '7004', 0.0, 'PEMBELIAN MEJA KURSI KEPERLUAN KANTOR', TIMESTAMP '2024-03-06 15:38:46.243', 8175000.0, 2.13175E8, 'TR 813');
INSERT INTO O_14 VALUES('240118017038', '240118017000', '7006', 0.0, 'PEMBELIAN TIKET PESAWAT / NOVITA', TIMESTAMP '2024-03-06 15:38:46.243', 9260000.0, 9260000.0, 'TR 813');
INSERT INTO O_14 VALUES('240118017039', '240118017000', '1003', 1.7435E7, 'KEPERLUAN KANTOR & PEMBELIAN TIKET PESAWAT / NOVITA', TIMESTAMP '2024-03-06 15:38:46.243', 0.0, -2.20841659E9, 'TR 813');
INSERT INTO O_14 VALUES('240118003001', '240118003000', '1004', 0.0, 'PTD 02 / KAS LOKASI', TIMESTAMP '2024-03-06 15:40:41.974', 2.0E7, 5.0E7, 'TR 797');
INSERT INTO O_14 VALUES('240118003002', '240118003000', '1003', 2.0E7, 'PTD 02 / KAS LOKASI', TIMESTAMP '2024-03-06 15:40:41.974', 0.0, -1.13477E9, 'TR 797');
INSERT INTO O_14 VALUES('240118010001', '240118010000', '1004', 0.0, 'PTD 03 / KAS LOKASI', TIMESTAMP '2024-03-06 15:41:15.032', 1.75E7, 6.75E7, 'TR 805');
INSERT INTO O_14 VALUES('240118010002', '240118010000', '1003', 1.75E7, 'PTD 03 / KAS LOKASI', TIMESTAMP '2024-03-06 15:41:15.032', 0.0, -1.516040329E9, 'TR 805');
INSERT INTO O_14 VALUES('240118001001', '240118001000', '1004', 0.0, 'PTD 01 / KAS LOKASI', TIMESTAMP '2024-03-06 15:42:51.023', 3.0E7, 3.0E7, 'TR 795');
INSERT INTO O_14 VALUES('240118001002', '240118001000', '1003', 3.0E7, 'PTD 01 / KAS LOKASI', TIMESTAMP '2024-03-06 15:42:51.023', 0.0, -3.0E7, 'TR 795');
INSERT INTO O_14 VALUES('240118012001', '240118012000', '1004', 0.0, 'PTD 05 / KAS LOKASI', TIMESTAMP '2024-03-06 15:43:06.192', 4.0E7, 1.075E8, 'TR 807');
INSERT INTO O_14 VALUES('240118012002', '240118012000', '1003', 4.0E7, 'PTD 05 / KAS LOKASI', TIMESTAMP '2024-03-06 15:43:06.192', 0.0, -1.556040329E9, 'TR 807');
INSERT INTO O_14 VALUES('240118018001', '240118018000', '1004', 0.0, 'PTD 07 / KAS LOKASI', TIMESTAMP '2024-03-06 15:43:13.031', 3.8E7, 1.455E8, 'TR 815');
INSERT INTO O_14 VALUES('240118018002', '240118018000', '1003', 3.8E7, 'PTD 07 / KAS LOKASI', TIMESTAMP '2024-03-06 15:43:13.031', 0.0, -2.24641659E9, 'TR 815');
INSERT INTO O_14 VALUES('240131016001', '240131016000', '7016', 0.0, 'PEMBELIAN SPART / PO 3233 HINO', TIMESTAMP '2024-04-05 09:08:45.472', 2173824.0, 1.88716954E8, 'TR 816');
INSERT INTO O_14 VALUES('240131016002', '240131016000', '1003', 2173824.0, 'PEMBELIAN SPART / PO 3233 HINO', TIMESTAMP '2024-04-05 09:08:45.472', 0.0, -2.738590414E9, 'TR 816');
INSERT INTO O_14 VALUES('240131017003', '240131017000', '7016', 0.0, 'PEMBELIAN SPART / PO 3236 HINO', TIMESTAMP '2024-04-05 09:08:45.488', 4151400.0, 1.92868354E8, 'TR 817');
INSERT INTO O_14 VALUES('240131017004', '240131017000', '1003', 4151400.0, 'PEMBELIAN SPART / PO 3236 HINO', TIMESTAMP '2024-04-05 09:08:45.488', 0.0, -2.742741814E9, 'TR 817');
INSERT INTO O_14 VALUES('240131018005', '240131018000', '7016', 0.0, 'PEMBELIAN SPART / PO 3241 CV SEJAHTERA', TIMESTAMP '2024-04-05 09:08:45.488', 3.5465E7, 2.28333354E8, 'TR 818');
INSERT INTO O_14 VALUES('240131018006', '240131018000', '1003', 3.5465E7, 'PEMBELIAN SPART / PO 3241 CV SEJAHTERA', TIMESTAMP '2024-04-05 09:08:45.488', 0.0, -2.778206814E9, 'TR 818');
INSERT INTO O_14 VALUES('240131019007', '240131019000', '7016', 0.0, 'PEMBELIAN SPART / PO 3214 KOBEX', TIMESTAMP '2024-04-05 09:08:45.503', 5465748.0, 2.33799102E8, 'TR 819');
INSERT INTO O_14 VALUES('240131019008', '240131019000', '1003', 5465748.0, 'PEMBELIAN SPART / PO 3214 KOBEX', TIMESTAMP '2024-04-05 09:08:45.503', 0.0, -2.783672562E9, 'TR 819');
INSERT INTO O_14 VALUES('240131020009', '240131020000', '7001', 0.0, 'PKWT 4 ORANG / MELAK', TIMESTAMP '2024-04-05 09:08:45.535', 6000000.0, 3.30437783E8, 'TR 820');
INSERT INTO O_14 VALUES('240131020010', '240131020000', '1003', 6000000.0, 'PKWT 4 ORANG / MELAK', TIMESTAMP '2024-04-05 09:08:45.535', 0.0, -2.789672562E9, 'TR 820');
INSERT INTO O_14 VALUES('240131021011', '240131021000', '7006', 0.0, 'KIRIM VIA HENI CARGO', TIMESTAMP '2024-04-05 09:08:45.535', 6400000.0, 3.5313349E7, 'TR 821');
INSERT INTO O_14 VALUES('240131021012', '240131021000', '1003', 6400000.0, 'KIRIM VIA HENI CARGO', TIMESTAMP '2024-04-05 09:08:45.535', 0.0, -2.796072562E9, 'TR 821');
INSERT INTO O_14 VALUES('240131022013', '240131022000', '1004', 0.0, 'PTD 08 / KAS LOKASI', TIMESTAMP '2024-04-05 09:08:45.55', 3.2E7, -2.0E7, 'TR 822');
INSERT INTO O_14 VALUES('240131022014', '240131022000', '1003', 3.2E7, 'PTD 08 / KAS LOKASI', TIMESTAMP '2024-04-05 09:08:45.55', 0.0, -2.828072562E9, 'TR 822');
INSERT INTO O_14 VALUES('240131023015', '240131023000', '7006', 0.0, 'KIRIM VIA HENI CARGO', TIMESTAMP '2024-04-05 09:08:45.566', 3143500.0, 3.8456849E7, 'TR 823');
INSERT INTO O_14 VALUES('240131023016', '240131023000', '1003', 3143500.0, 'KIRIM VIA HENI CARGO', TIMESTAMP '2024-04-05 09:08:45.566', 0.0, -2.831216062E9, 'TR 823');
INSERT INTO O_14 VALUES('240131024017', '240131024000', '1004', 0.0, 'PTD 09 / KAS LOKASI', TIMESTAMP '2024-04-05 09:08:45.597', 2.0E7, 0.0, 'TR 825');
INSERT INTO O_14 VALUES('240131024018', '240131024000', '1003', 2.0E7, 'PTD 09 / KAS LOKASI', TIMESTAMP '2024-04-05 09:08:45.597', 0.0, -2.851216062E9, 'TR 825');
INSERT INTO O_14 VALUES('240131025019', '240131025000', '7011', 0.0, 'PPN MASA DES 2023', TIMESTAMP '2024-04-05 09:08:45.597', 2690762.0, 2.3696166E7, 'TR 826');
INSERT INTO O_14 VALUES('240131025020', '240131025000', '1003', 2690762.0, 'PPN MASA DES 2023', TIMESTAMP '2024-04-05 09:08:45.597', 0.0, -2.853906824E9, 'TR 826');
INSERT INTO O_14 VALUES('240131026021', '240131026000', '7010', 0.0, 'BIAYA ADMIN LEASING BFI', TIMESTAMP '2024-04-05 09:08:45.613', 2448000.0, 2465000.0, 'TR 827');
INSERT INTO O_14 VALUES('240131026022', '240131026000', '1003', 2448000.0, 'BIAYA ADMIN LEASING BFI', TIMESTAMP '2024-04-05 09:08:45.613', 0.0, -2.856354824E9, 'TR 827');
INSERT INTO O_14 VALUES('240131027023', '240131027000', '2001', 0.0, 'AIR COMPRESSOR PDS 1855-6C2 / SUNWAY TREK MASINDO', TIMESTAMP '2024-04-05 09:08:45.644', 2.05E8, 5.010119E8, 'TR 828');
INSERT INTO O_14 VALUES('240131027024', '240131027000', '1502', 0.0, 'AIR COMPRESSOR PDS 1855-6C2 / SUNWAY TREK MASINDO', TIMESTAMP '2024-04-05 09:08:45.644', 2.255E7, 1.42851039E8, 'TR 828');
INSERT INTO O_14 VALUES('240131027025', '240131027000', '1003', 2.2755E8, 'AIR COMPRESSOR PDS 1855-6C2 / SUNWAY TREK MASINDO', TIMESTAMP '2024-04-05 09:08:45.644', 0.0, -3.083904824E9, 'TR 828');
INSERT INTO O_14 VALUES('240131028026', '240131028000', '7017', 0.0, 'PERBAIKAN & SPART / PO 3096 3208 3090 / KOBELCO', TIMESTAMP '2024-04-05 09:08:45.66', 2.72452E7, 3.53369771E8, 'TR 829');
INSERT INTO O_14 VALUES('240131028027', '240131028000', '1502', 0.0, 'PERBAIKAN & SPART / PO 3096 3208 3090 / KOBELCO', TIMESTAMP '2024-04-05 09:08:45.66', 2996972.0, 1.45848011E8, 'TR 829');
INSERT INTO O_14 VALUES('240131028028', '240131028000', '3220', 305000.0, 'PERBAIKAN & SPART / PO 3096 3208 3090 / KOBELCO', TIMESTAMP '2024-04-05 09:08:45.66', 0.0, -2.222E7, 'TR 829');
INSERT INTO O_14 VALUES('240131028029', '240131028000', '1003', 2.9937172E7, 'PERBAIKAN & SPART / PO 3096 3208 3090 / KOBELCO', TIMESTAMP '2024-04-05 09:08:45.66', 0.0, -3.113841996E9, 'TR 829');
INSERT INTO O_14 VALUES('240131030032', '240131030000', '7016', 0.0, 'SPART PO 3228 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.706', 1554888.0, 2.3535399E8, 'TR 846');
INSERT INTO O_14 VALUES('240131030033', '240131030000', '1003', 1554888.0, 'SPART PO 3228 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.706', 0.0, -3.125771884E9, 'TR 846');
INSERT INTO O_14 VALUES('240131031034', '240131031000', '7016', 0.0, 'SPART PO 3229 / EQUIPINDI PERKASA', TIMESTAMP '2024-04-05 09:08:45.722', 4773000.0, 2.4012699E8, 'TR 847');
INSERT INTO O_14 VALUES('240131031035', '240131031000', '1003', 4773000.0, 'SPART PO 3229 / EQUIPINDI PERKASA', TIMESTAMP '2024-04-05 09:08:45.722', 0.0, -3.130544884E9, 'TR 847');
INSERT INTO O_14 VALUES('240131032036', '240131032000', '7016', 0.0, 'SPART PO 3235 / SANI MAKMUR', TIMESTAMP '2024-04-05 09:08:45.738', 4209120.0, 2.4433611E8, 'TR 847A');
INSERT INTO O_14 VALUES('240131032037', '240131032000', '1003', 4209120.0, 'SPART PO 3235 / SANI MAKMUR', TIMESTAMP '2024-04-05 09:08:45.738', 0.0, -3.134754004E9, 'TR 847A');
INSERT INTO O_14 VALUES('240131033038', '240131033000', '7016', 0.0, 'SPART PO 3242 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.753', 4182536.0, 2.48518646E8, 'TR 848');
INSERT INTO O_14 VALUES('240131033039', '240131033000', '1003', 4182536.0, 'SPART PO 3242 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.753', 0.0, -3.13893654E9, 'TR 848');
INSERT INTO O_14 VALUES('240131034040', '240131034000', '7016', 0.0, 'SPART PO 3243 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.785', 394605.0, 2.48913251E8, 'TR 849');
INSERT INTO O_14 VALUES('240131034041', '240131034000', '1003', 394605.0, 'SPART PO 3243 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.785', 0.0, -3.139331145E9, 'TR 849');
INSERT INTO O_14 VALUES('240131035042', '240131035000', '7016', 0.0, 'SPART PO 3244 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.8', 7656503.0, 2.56569754E8, 'TR 850');
INSERT INTO O_14 VALUES('240131035043', '240131035000', '1003', 7656503.0, 'SPART PO 3244 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.8', 0.0, -3.146987648E9, 'TR 850');
INSERT INTO O_14 VALUES('240131036044', '240131036000', '7016', 0.0, 'SPART PO 3246 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.816', 1983237.0, 2.58552991E8, 'TR 851');
INSERT INTO O_14 VALUES('240131036045', '240131036000', '1003', 1983237.0, 'SPART PO 3246 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.816', 0.0, -3.148970885E9, 'TR 851');
INSERT INTO O_14 VALUES('240131037046', '240131037000', '7016', 0.0, 'SPART PO 3249 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.816', 1.7313225E7, 2.75866216E8, 'TR 852');
INSERT INTO O_14 VALUES('240131037047', '240131037000', '1003', 1.7313225E7, 'SPART PO 3249 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.816', 0.0, -3.16628411E9, 'TR 852');
INSERT INTO O_14 VALUES('240131038048', '240131038000', '7016', 0.0, 'SPART PO 3250 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.847', 9568034.0, 2.8543425E8, 'TR 853');
INSERT INTO O_14 VALUES('240131038049', '240131038000', '1003', 9568034.0, 'SPART PO 3250 / HINO MOTOR', TIMESTAMP '2024-04-05 09:08:45.847', 0.0, -3.175852144E9, 'TR 853');
INSERT INTO O_14 VALUES('240131029001', '240131029000', '7017', 0.0, 'PEMBELIAN GALVALUM WSHOP / UD MULIA', TIMESTAMP '2024-04-05 10:37:51.257', 1.0375E7, 3.63744771E8, 'TR 831');
INSERT INTO O_14 VALUES('240131029002', '240131029000', '1003', 1.0375E7, 'PEMBELIAN GALVALUM WSHOP / UD MULIA', TIMESTAMP '2024-04-05 10:37:51.257', 0.0, -3.124216996E9, 'TR 831');
INSERT INTO O_14 VALUES('240131048001', '240131048000', '1401', 0.0, 'BUNGA PINJAMAN KE SSDK JAN 2024', TIMESTAMP '2024-04-05 16:35:54.276', 3.0582E8, 1.700582E10, 'INT SSDK');
INSERT INTO O_14 VALUES('240131048002', '240131048000', '9001', 3.0582E8, 'BUNGA PINJAMAN KE SSDK JAN 2024', TIMESTAMP '2024-04-05 16:35:54.276', 0.0, -3.06453701E8, 'INT SSDK');
INSERT INTO O_14 VALUES('240131011001', '240131011000', '1106', 0.0, 'Pembelian Januari PT LONG IRAM INDAH TR 857 PO 3248 PR 3241', TIMESTAMP '2024-04-17 15:01:33.511', 9.671982E8, 1.981202741E9, 'Solar Jan');
INSERT INTO O_14 VALUES('240131011002', '240131011000', '1502', 0.0, 'Pembelian Januari PT LONG IRAM INDAH TR 857 PO 3248 PR 3241', TIMESTAMP '2024-04-17 15:01:33.542', 1.004418E8, 1.20301039E8, 'Solar Jan');
INSERT INTO O_14 VALUES('240131011003', '240131011000', '3220', 840000.0, 'Pembelian Januari PT LONG IRAM INDAH TR 857 PO 3248 PR 3241', TIMESTAMP '2024-04-17 15:01:33.542', 0.0, -2.1915E7, 'Solar Jan');
INSERT INTO O_14 VALUES('240131011004', '240131011000', '3001', 1.0668E9, 'Pembelian Januari PT LONG IRAM INDAH TR 857 PO 3248 PR 3241', TIMESTAMP '2024-04-17 15:01:33.542', 0.0, -1.00390392E8, 'Solar Jan');
INSERT INTO O_14 VALUES('240131011005', '240131011000', '7018', 0.0, 'Pemakaian Solar 43.822 liter / Januari', TIMESTAMP '2024-04-17 15:01:33.542', 6.91211141E8, 6.91211141E8, 'Solar Jan');
INSERT INTO O_14 VALUES('240131011006', '240131011000', '1106', 6.91211141E8, 'Pemakaian Solar 43.822 liter / Januari', TIMESTAMP '2024-04-17 15:01:33.542', 0.0, 1.2899916E9, 'Solar Jan');
INSERT INTO O_14 VALUES('240131011007', '240131011000', '1403', 0.0, 'Pinjaman solar kpd DBP 291 liter / Januari', TIMESTAMP '2024-04-17 15:01:33.542', 4589988.0, 6.5774232E7, 'Solar Jan');
INSERT INTO O_14 VALUES('240131011008', '240131011000', '1106', 4589988.0, 'Pinjaman solar kpd DBP 291 liter / Januari', TIMESTAMP '2024-04-17 15:01:33.542', 0.0, 1.285401612E9, 'Solar Jan');
INSERT INTO O_14 VALUES('240131011009', '240131011000', '1402', 0.0, 'pengembalian pinjaman solar kpd Bekal 2.000 liter / Januari', TIMESTAMP '2024-04-17 15:01:33.542', 3.1546307E7, -1.89781693E8, 'Solar Jan');
INSERT INTO O_14 VALUES('240131011010', '240131011000', '1106', 3.1546307E7, 'pengembalian pinjaman solar kpd Bekal 2.000 liter / Januari', TIMESTAMP '2024-04-17 15:01:33.542', 0.0, 1.253855305E9, 'Solar Jan');
INSERT INTO O_14 VALUES('240131046001', '240131046000', '3302', 9.81924535E8, 'MUTASI TR JAN2024 / WG', TIMESTAMP '2024-04-17 15:12:20.239', 0.0, -2.739099643E9, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131046002', '240131046000', '1003', 0.0, 'PEMBAYARAN 60RB LT / PO 3213 / LONG IRAM', TIMESTAMP '2024-04-17 15:12:20.239', 1.08477E9, 1.02845465E8, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131046003', '240131046000', '1003', 0.0, '18 JANUARI 2024 MDR', TIMESTAMP '2024-04-17 15:12:20.239', 4.0E7, 1.42845465E8, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131046004', '240131046000', '1003', 840000.0, '10 CK 452792', TIMESTAMP '2024-04-17 15:12:20.239', 0.0, 1.42005465E8, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131046005', '240131046000', '1003', 7630000.0, '11 CK 452793', TIMESTAMP '2024-04-17 15:12:20.239', 0.0, 1.34375465E8, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131046006', '240131046000', '1003', 6.3525E7, '22 CK 187181', TIMESTAMP '2024-04-17 15:12:20.239', 0.0, 7.0850465E7, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131046007', '240131046000', '1003', 6.70425E7, '22 CK 187203', TIMESTAMP '2024-04-17 15:12:20.239', 0.0, 3807965.0, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131046008', '240131046000', '1003', 3807965.0, '29 CK 452800', TIMESTAMP '2024-04-17 15:12:20.239', 0.0, 0.0, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131046009', '240131046000', '3302', 0.0, 'PO 3213 PR 4376', TIMESTAMP '2024-04-17 15:12:20.239', 9.66409608E8, -1.772690035E9, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131046010', '240131046000', '3001', 9.66409608E8, 'PO 3213 PR 4376', TIMESTAMP '2024-04-17 15:12:20.239', 0.0, -1.0668E9, 'WG JAN2024');
INSERT INTO O_14 VALUES('240131049001', '240131049000', '5001', 0.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 1.774528E9, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049002', '240131049000', '5003', 0.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 5.364415E8, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049003', '240131049000', '5004', 0.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049004', '240131049000', '7001', 4.12939767E8, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049005', '240131049000', '7003', 7.9135E7, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049006', '240131049000', '7004', 2.16295E8, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049007', '240131049000', '7006', 3.8456849E7, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049008', '240131049000', '7007', 550000.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049009', '240131049000', '7008', 280000.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049010', '240131049000', '7009', 2011000.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049011', '240131049000', '7010', 2945000.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049012', '240131049000', '7011', 2.3822907E7, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049013', '240131049000', '7012', 2.9545007E7, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049014', '240131049000', '7013', 1.0437748E7, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049015', '240131049000', '7014', 9041667.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049016', '240131049000', '7016', 2.8543425E8, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049017', '240131049000', '7017', 3.63744771E8, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049018', '240131049000', '7018', 6.91211141E8, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049019', '240131049000', '7020', 8.099626E8, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049020', '240131049000', '7021', 6.9007972E8, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049021', '240131049000', '7022', 4135000.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049022', '240131049000', '7023', 270000.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049023', '240131049000', '9001', 0.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 3.06453701E8, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049024', '240131049000', '9002', 0.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 124970.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049025', '240131049000', '9003', 24993.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 0.0, 0.0, 'CL Jan24');
INSERT INTO O_14 VALUES('240131049026', '240131049000', '4103', 0.0, 'Penutupan Januari 2024', TIMESTAMP '2024-04-18 08:47:18.269', 1.052774249E9, 1.052774249E9, 'CL Jan24');
INSERT INTO O_14 VALUES('240101004001', '240101004000', '9999', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 3.0524432E7, -6.21515729E8, 'SO 2024');
INSERT INTO O_14 VALUES('240101004002', '240101004000', '3302', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 6.75E7, 6.75E7, 'SO 2024');
INSERT INTO O_14 VALUES('240101004003', '240101004000', '9999', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 6.21515729E8, 0.0, 'SO 2024');
INSERT INTO O_14 VALUES('240101004004', '240101004000', '1006', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 4.79517492E8, 4.79517492E8, 'SO 2024');
INSERT INTO O_14 VALUES('240101004005', '240101004000', '1020', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 9857385.0, 9857385.0, 'SO 2024');
INSERT INTO O_14 VALUES('240101004006', '240101004000', '1106', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 1.014004541E9, 1.014004541E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004007', '240101004000', '1202', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 6.965363288E9, 6.965363288E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004008', '240101004000', '1203', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 2.561382E8, 2.561382E8, 'SO 2024');
INSERT INTO O_14 VALUES('240101004009', '240101004000', '1301', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 0.0, 0.0, 'SO 2024');
INSERT INTO O_14 VALUES('240101004010', '240101004000', '1401', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 1.7E10, 1.7E10, 'SO 2024');
INSERT INTO O_14 VALUES('240101004011', '240101004000', '1403', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 6.1184244E7, 6.1184244E7, 'SO 2024');
INSERT INTO O_14 VALUES('240101004012', '240101004000', '1402', 2.21328E8, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 0.0, -2.21328E8, 'SO 2024');
INSERT INTO O_14 VALUES('240101004013', '240101004000', '1502', 2690761.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 0.0, -2690761.0, 'SO 2024');
INSERT INTO O_14 VALUES('240101004014', '240101004000', '1501', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 1.202634023E9, 1.202634023E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004015', '240101004000', '1701', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 4.0E7, 4.0E7, 'SO 2024');
INSERT INTO O_14 VALUES('240101004016', '240101004000', '2001', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 2.960119E8, 2.960119E8, 'SO 2024');
INSERT INTO O_14 VALUES('240101004017', '240101004000', '2002', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 8.68E8, 8.68E8, 'SO 2024');
INSERT INTO O_14 VALUES('240101004018', '240101004000', '2003', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 9.260739788E9, 9.260739788E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004019', '240101004000', '2003', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 3.9832165E9, 1.3243956288E10, 'SO 2024');
INSERT INTO O_14 VALUES('240101004020', '240101004000', '2003', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.56', 1.586578063E9, 1.4830534351E10, 'SO 2024');
INSERT INTO O_14 VALUES('240101004021', '240101004000', '2004', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 1.0561639912E10, 1.0561639912E10, 'SO 2024');
INSERT INTO O_14 VALUES('240101004022', '240101004000', '2004', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 5.975E8, 1.1159139912E10, 'SO 2024');
INSERT INTO O_14 VALUES('240101004023', '240101004000', '2003', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 5.1121515E9, 1.9942685851E10, 'SO 2024');
INSERT INTO O_14 VALUES('240101004024', '240101004000', '2002', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 1.645805436E9, 2.513805436E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004025', '240101004000', '2088', 8.28095664E9, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -8.28095664E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004026', '240101004000', '2099', 4.672941725E9, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -4.672941725E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004027', '240101004000', '3001', 1.18360392E8, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -1.18360392E8, 'SO 2024');
INSERT INTO O_14 VALUES('240101004028', '240101004000', '3105', 3.675277599E9, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -3.675277599E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004029', '240101004000', '3106', 6.6380781E9, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -6.6380781E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004030', '240101004000', '3220', 975000.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -975000.0, 'SO 2024');
INSERT INTO O_14 VALUES('240101004031', '240101004000', '3301', 9.7195512E9, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -9.7195512E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004032', '240101004000', '3302', 1.824675108E9, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -1.757175108E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004033', '240101004000', '3303', 1.45E10, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -1.45E10, 'SO 2024');
INSERT INTO O_14 VALUES('240101004034', '240101004000', '4102', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 9.683198892E9, 9.683198892E9, 'SO 2024');
INSERT INTO O_14 VALUES('240101004035', '240101004000', '4103', 2.16882468E10, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -2.16882468E10, 'SO 2024');
INSERT INTO O_14 VALUES('240101004036', '240101004000', '4103', 0.0, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 2.16882468E10, 0.0, 'SO 2024');
INSERT INTO O_14 VALUES('240101004037', '240101004000', '4102', 2.16882468E10, 'SALDO AWA 2024', TIMESTAMP '2024-04-18 09:51:32.575', 0.0, -1.2005047908E10, 'SO 2024');
INSERT INTO O_14 VALUES('240131047001', '240131047000', '7020', 0.0, 'Pembebanan biaya leasing alber etika / Januari 24', TIMESTAMP '2024-04-18 14:28:18.58', 8.099626E8, 8.099626E8, 'LEASING ALAT');
INSERT INTO O_14 VALUES('240131047002', '240131047000', '7021', 0.0, 'Pembebanan biaya leasing alber dhako / Januari 24', TIMESTAMP '2024-04-18 14:28:18.58', 6.9007972E8, 6.9007972E8, 'LEASING ALAT');
INSERT INTO O_14 VALUES('240131047003', '240131047000', '3301', 8.099626E8, 'Pembebanan biaya leasing alber etika / Januari 24', TIMESTAMP '2024-04-18 14:28:18.58', 0.0, -1.05295138E10, 'LEASING ALAT');
INSERT INTO O_14 VALUES('240131047004', '240131047000', '2088', 6.9007972E8, 'Pembebanan biaya leasing alber dhako / Januari 24', TIMESTAMP '2024-04-18 14:28:18.58', 0.0, -8.97103636E9, 'LEASING ALAT');
INSERT INTO O_14 VALUES('240131047005', '240131047000', '7014', 0.0, 'Penyusutan Kendaraan & Inventaris kantor / Januari 2024', TIMESTAMP '2024-04-18 14:28:18.58', 9041667.0, 9041667.0, 'LEASING ALAT');
INSERT INTO O_14 VALUES('240131047006', '240131047000', '7013', 0.0, 'Penyusutan Kendaraan & Inventaris kantor / Januari 2024', TIMESTAMP '2024-04-18 14:28:18.58', 1.0437748E7, 1.0437748E7, 'LEASING ALAT');
INSERT INTO O_14 VALUES('240131047007', '240131047000', '2099', 1.9479415E7, 'Penyusutan Kendaraan & Inventaris kantor / Januari 2024', TIMESTAMP '2024-04-18 14:28:18.58', 0.0, -4.69242114E9, 'LEASING ALAT');
INSERT INTO O_14 VALUES('240229017001', '240229017000', '7001', 0.0, 'PAYROLL GAJI DAKO MELAK / JAN', TIMESTAMP '2024-04-23 15:00:44.937', 1.69358712E8, 2.86138356E8, 'TR 832');
INSERT INTO O_14 VALUES('240229017002', '240229017000', '1003', 1.69358712E8, 'PAYROLL GAJI DAKO MELAK / JAN', TIMESTAMP '2024-04-23 15:00:44.942', 0.0, -1.42903742E8, 'TR 832');
INSERT INTO O_14 VALUES('240229020008', '240229020000', '7009', 0.0, 'EKSPEDISI PR 2282 / HENI CARGO ', TIMESTAMP '2024-04-23 15:00:45.107', 2000000.0, 4297000.0, 'TR 836');
INSERT INTO O_14 VALUES('240229020009', '240229020000', '1003', 2000000.0, 'EKSPEDISI PR 2282 / HENI CARGO ', TIMESTAMP '2024-04-23 15:00:45.108', 0.0, -5.83274807E8, 'TR 836');
INSERT INTO O_14 VALUES('240229021010', '240229021000', '7009', 0.0, 'EKSPEDISI PR 2280 / HENI CARGO', TIMESTAMP '2024-04-23 15:00:45.144', 4500000.0, 8797000.0, 'TR 837');
INSERT INTO O_14 VALUES('240229021011', '240229021000', '1003', 4500000.0, 'EKSPEDISI PR 2280 / HENI CARGO', TIMESTAMP '2024-04-23 15:00:45.144', 0.0, -5.87774807E8, 'TR 837');
INSERT INTO O_14 VALUES('240229023014', '240229023000', '7016', 0.0, 'SPART / HARRY SOEN PR 2273', TIMESTAMP '2024-04-23 15:00:45.203', 1.5005E7, 6.56582434E8, 'TR 839');
INSERT INTO O_14 VALUES('240229023015', '240229023000', '1003', 1.5005E7, 'SPART / HARRY SOEN PR 2273', TIMESTAMP '2024-04-23 15:00:45.204', 0.0, -6.12379807E8, 'TR 839');
INSERT INTO O_14 VALUES('240229024016', '240229024000', '7016', 0.0, 'SPART / HENDRA PR 2283', TIMESTAMP '2024-04-23 15:00:45.231', 6247680.0, 6.62830114E8, 'TR 840');
INSERT INTO O_14 VALUES('240229024017', '240229024000', '1003', 6247680.0, 'SPART / HENDRA PR 2283', TIMESTAMP '2024-04-23 15:00:45.231', 0.0, -6.18627487E8, 'TR 840');
INSERT INTO O_14 VALUES('240229025018', '240229025000', '7012', 0.0, 'IURAN BPJS KES / FEB 2024', TIMESTAMP '2024-04-23 15:00:45.27', 1669959.0, 1669959.0, 'TR 841');
INSERT INTO O_14 VALUES('240229025020', '240229025000', '1003', 1669959.0, 'IURAN BPJS KES / FEB 2024', TIMESTAMP '2024-04-23 15:00:45.274', 0.0, -6.20297446E8, 'TR 841');
INSERT INTO O_14 VALUES('240229026019', '240229026000', '7012', 0.0, 'IURAN BPJS TK / FEB 2024', TIMESTAMP '2024-04-23 15:00:45.324', 2.4490215E7, 2.6160174E7, 'TR 842');
INSERT INTO O_14 VALUES('240229026021', '240229026000', '1003', 2.4490215E7, 'IURAN BPJS TK / FEB 2024', TIMESTAMP '2024-04-23 15:00:45.324', 0.0, -6.44787661E8, 'TR 842');
INSERT INTO O_14 VALUES('240229028024', '240229028000', '3220', 0.0, 'SSP PPh 23 / JAN', TIMESTAMP '2024-04-23 15:00:45.408', 100000.0, -2.212E7, 'TR 844');
INSERT INTO O_14 VALUES('240229028025', '240229028000', '7002', 0.0, 'SSP PPh 21 / JAN', TIMESTAMP '2024-04-23 15:00:45.409', 196438.0, 196438.0, 'TR 844');
INSERT INTO O_14 VALUES('240229028026', '240229028000', '1501', 0.0, 'SSP PPh 25 / JAN', TIMESTAMP '2024-04-23 15:00:45.409', 411660.0, 1.249265073E9, 'TR 844');
INSERT INTO O_14 VALUES('240229028027', '240229028000', '1003', 708098.0, 'SSP PPh 21 23 25 / JAN', TIMESTAMP '2024-04-23 15:00:45.409', 0.0, -6.65495759E8, 'TR 844');
INSERT INTO O_14 VALUES('240229030031', '240229030000', '7016', 0.0, 'BAN DALAM & LUAR / PO 3227 / BBM', TIMESTAMP '2024-04-23 15:00:45.477', 1.0675676E7, 6.7350579E8, 'TR 854');
INSERT INTO O_14 VALUES('240229030032', '240229030000', '1502', 0.0, 'BAN DALAM & LUAR / PO 3227 / BBM', TIMESTAMP '2024-04-23 15:00:45.477', 1174324.0, 1.66426068E8, 'TR 854');
INSERT INTO O_14 VALUES('240229030033', '240229030000', '1003', 1.185E7, 'BAN DALAM & LUAR / PO 3227 / BBM', TIMESTAMP '2024-04-23 15:00:45.478', 0.0, -6.77345759E8, 'TR 854');
INSERT INTO O_14 VALUES('240229031034', '240229031000', '7016', 0.0, 'SPART PO 3226 / KOBEX', TIMESTAMP '2024-04-23 15:00:45.512', 3338820.0, 6.7684461E8, 'TR 855');
INSERT INTO O_14 VALUES('240229031035', '240229031000', '1502', 0.0, 'SPART PO 3226 / KOBEX', TIMESTAMP '2024-04-23 15:00:45.512', 367270.0, 1.66793338E8, 'TR 855');
INSERT INTO O_14 VALUES('240229031036', '240229031000', '1003', 3706090.0, 'SPART PO 3226 / KOBEX', TIMESTAMP '2024-04-23 15:00:45.512', 0.0, -6.81051849E8, 'TR 855');
INSERT INTO O_14 VALUES('240229033039', '240229033000', '3001', 0.0, '60RB LITER PO 3248 / LONG IRAM', TIMESTAMP '2024-04-23 15:00:45.549', 1.06679997E9, 0.0, 'TR 857');
INSERT INTO O_14 VALUES('240229033040', '240229033000', '1003', 1.06679997E9, '60RB LITER PO 3248 / LONG IRAM', TIMESTAMP '2024-04-23 15:00:45.55', 0.0, -1.796851819E9, 'TR 857');
INSERT INTO O_14 VALUES('240229034041', '240229034000', '7004', 0.0, 'INTERNET BULANAN FEB / DHAKO MELAK', TIMESTAMP '2024-04-23 15:00:45.571', 5000000.0, 1.4361E7, 'TR 858');
INSERT INTO O_14 VALUES('240229034042', '240229034000', '1502', 0.0, 'INTERNET BULANAN FEB / DHAKO MELAK', TIMESTAMP '2024-04-23 15:00:45.573', 550000.0, 1.67343338E8, 'TR 858');
INSERT INTO O_14 VALUES('240229034043', '240229034000', '3220', 100000.0, 'INTERNET BULANAN FEB / DHAKO MELAK', TIMESTAMP '2024-04-23 15:00:45.573', 0.0, -2.222E7, 'TR 858');
INSERT INTO O_14 VALUES('240229034044', '240229034000', '1003', 5450000.0, 'INTERNET BULANAN FEB / DHAKO MELAK', TIMESTAMP '2024-04-23 15:00:45.574', 0.0, -1.802301819E9, 'TR 858');
INSERT INTO O_14 VALUES('240229035045', '240229035000', '7009', 0.0, 'PR 2291 / HENI CARGO', TIMESTAMP '2024-04-23 15:00:45.59', 2536000.0, 1.1333E7, 'TR 859');
INSERT INTO O_14 VALUES('240229035046', '240229035000', '7006', 0.0, 'TIKET PESAWAT FEB / NOVITA', TIMESTAMP '2024-04-23 15:00:45.591', 1.036E7, 1.79625E7, 'TR 859');
INSERT INTO O_14 VALUES('240229035047', '240229035000', '1003', 1.2896E7, 'TIKET DAN EXPEDISI / FEB', TIMESTAMP '2024-04-23 15:00:45.592', 0.0, -1.815197819E9, 'TR 859');
INSERT INTO O_14 VALUES('240229038052', '240229038000', '7016', 0.0, 'SPART HINO / PO 3231 / MASUK WG JANUARI', TIMESTAMP '2024-04-23 15:00:45.646', 7630000.0, 6.8447461E8, 'TR 863');
INSERT INTO O_14 VALUES('240229038053', '240229038000', '3302', 7630000.0, 'SPART HINO / PO 3231 / MASUK WG JANUARI', TIMESTAMP '2024-04-23 15:00:45.646', 0.0, -1.976121337E9, 'TR 863');
INSERT INTO O_14 VALUES('240229039054', '240229039000', '7016', 0.0, 'SPART HINO / PO 3247 / MASUK WG JANUARI', TIMESTAMP '2024-04-23 15:00:45.67', 3807966.0, 6.88282576E8, 'TR 863A');
INSERT INTO O_14 VALUES('240229039055', '240229039000', '3302', 3807966.0, 'SPART HINO / PO 3247 / MASUK WG JANUARI', TIMESTAMP '2024-04-23 15:00:45.67', 0.0, -1.979929303E9, 'TR 863A');
INSERT INTO O_14 VALUES('240229040056', '240229040000', '7009', 0.0, 'MOBILISASI 7 UNIT DT MUYUB KE SMD / BERKAT USAHA ', TIMESTAMP '2024-04-23 15:00:45.69', 2.2857142E7, 3.4190142E7, 'TR 864');
INSERT INTO O_14 VALUES('240229040057', '240229040000', '3301', 0.0, 'MOBILISASI 7 UNIT DT MUYUB KE SMD / BERKAT USAHA ', TIMESTAMP '2024-04-23 15:00:45.691', 1.37142858E8, -1.1202333542E10, 'TR 864');
INSERT INTO O_14 VALUES('240229040058', '240229040000', '3002', 1.6E8, 'MOBILISASI 7 UNIT DT MUYUB KE SMD / BERKAT USAHA ', TIMESTAMP '2024-04-23 15:00:45.691', 0.0, -1.6E8, 'TR 864');
INSERT INTO O_14 VALUES('240229040059', '240229040000', '3002', 0.0, 'MOBILISASI 7 UNIT DT MUYUB KE SMD / BERKAT USAHA ', TIMESTAMP '2024-04-23 15:00:45.691', 8.0E7, -8.0E7, 'TR 864');
INSERT INTO O_14 VALUES('240229040060', '240229040000', '1003', 8.0E7, 'MOBILISASI 7 UNIT DT MUYUB KE SMD / BERKAT USAHA ', TIMESTAMP '2024-04-23 15:00:45.691', 0.0, -1.963197819E9, 'TR 864');
INSERT INTO O_14 VALUES('240229041061', '240229041000', '7006', 0.0, 'TAGIHAN TIKET FEB / NOVITA', TIMESTAMP '2024-04-23 15:00:45.715', 8840000.0, 2.68025E7, 'TR 865');
INSERT INTO O_14 VALUES('240229041062', '240229041000', '1003', 8840000.0, 'TAGIHAN TIKET FEB / NOVITA', TIMESTAMP '2024-04-23 15:00:45.716', 0.0, -1.972037819E9, 'TR 865');
INSERT INTO O_14 VALUES('240229042063', '240229042000', '7004', 0.0, 'SEPATU SAFETY / PO 966', TIMESTAMP '2024-04-23 15:00:45.749', 6551000.0, 2.0912E7, 'TR 866');
INSERT INTO O_14 VALUES('240229042064', '240229042000', '3302', 6551000.0, 'SEPATU SAFETY / PO 966', TIMESTAMP '2024-04-23 15:00:45.749', 0.0, -1.986480303E9, 'TR 866');
INSERT INTO O_14 VALUES('240229044067', '240229044000', '3210', 0.0, 'PPN MASA JANUARI ', TIMESTAMP '2024-04-23 15:00:45.785', 1.57310825E8, -9.689582E7, 'TR 868');
INSERT INTO O_14 VALUES('240229044068', '240229044000', '1003', 1.57310825E8, 'PPN MASA JANUARI ', TIMESTAMP '2024-04-23 15:00:45.785', 0.0, -2.152348644E9, 'TR 868');
INSERT INTO O_14 VALUES('240229045069', '240229045000', '7016', 0.0, 'POINT TOOTH TIGER PO 3214 / KOBEX', TIMESTAMP '2024-04-23 15:00:45.817', 3998544.0, 6.9228112E8, 'TR 870');
INSERT INTO O_14 VALUES('240229045070', '240229045000', '1502', 0.0, 'POINT TOOTH TIGER PO 3214 / KOBEX', TIMESTAMP '2024-04-23 15:00:45.818', 439839.0, 1.67783177E8, 'TR 870');
INSERT INTO O_14 VALUES('240229045071', '240229045000', '1003', 4438383.0, 'POINT TOOTH TIGER PO 3214 / KOBEX', TIMESTAMP '2024-04-23 15:00:45.818', 0.0, -2.156787027E9, 'TR 870');
INSERT INTO O_14 VALUES('240229050080', '240229050000', '7016', 0.0, 'SPART HINO MOTOR PO 965', TIMESTAMP '2024-04-23 15:00:46.003', 2782050.0, 6.9506317E8, 'TR 875');
INSERT INTO O_14 VALUES('240229050081', '240229050000', '1502', 0.0, 'SPART HINO MOTOR PO 965', TIMESTAMP '2024-04-23 15:00:46.003', 306026.0, 1.68089203E8, 'TR 875');
INSERT INTO O_14 VALUES('240229050082', '240229050000', '1003', 3088076.0, 'SPART HINO MOTOR PO 965', TIMESTAMP '2024-04-23 15:00:46.003', 0.0, -2.159875103E9, 'TR 875');
INSERT INTO O_14 VALUES('240229051083', '240229051000', '7016', 0.0, 'SPART + PASANG HINO 500 /SRIWIJAYA', TIMESTAMP '2024-04-23 15:00:46.028', 1.616E7, 7.1122317E8, 'TR 876');
INSERT INTO O_14 VALUES('240229051084', '240229051000', '1502', 0.0, 'SPART + PASANG HINO 500 /SRIWIJAYA', TIMESTAMP '2024-04-23 15:00:46.028', 1777600.0, 1.69866803E8, 'TR 876');
INSERT INTO O_14 VALUES('240229051085', '240229051000', '3220', 24000.0, 'SPART + PASANG HINO 500 /SRIWIJAYA', TIMESTAMP '2024-04-23 15:00:46.029', 0.0, -2.2244E7, 'TR 876');
INSERT INTO O_14 VALUES('240229051086', '240229051000', '3004', 1.79136E7, 'SPART + PASANG HINO 500 /SRIWIJAYA', TIMESTAMP '2024-04-23 15:00:46.029', 0.0, -1.79136E7, 'TR 876');
INSERT INTO O_14 VALUES('240229051087', '240229051000', '3004', 0.0, 'PEMBAYARAN 1 SPART + PASANG HINO 500 /SRIWIJAYA', TIMESTAMP '2024-04-23 15:00:46.029', 8956800.0, -8956800.0, 'TR 876');
INSERT INTO O_14 VALUES('240229051088', '240229051000', '1003', 8956800.0, 'PEMBAYARAN 1 SPART + PASANG HINO 500 /SRIWIJAYA', TIMESTAMP '2024-04-23 15:00:46.029', 0.0, -2.168831903E9, 'TR 876');
INSERT INTO O_14 VALUES('240229018001', '240229018000', '7016', 0.0, 'T 741 SD 778 / TAGIHAN INTRN', TIMESTAMP '2024-04-23 15:19:30.618', 3.88371065E8, 6.41577434E8, 'TR 833');
INSERT INTO O_14 VALUES('240229018002', '240229018000', '1003', 9.3346905E7, 'T 741 SD 778 / TAGIHAN INTRN', TIMESTAMP '2024-04-23 15:19:30.618', 0.0, -2.36250647E8, 'TR 833');
INSERT INTO O_14 VALUES('240229018003', '240229018000', '1003', 2.9502416E8, 'T 741 SD 778 / TAGIHAN INTRN', TIMESTAMP '2024-04-23 15:19:30.622', 0.0, -5.31274807E8, 'TR 833');
INSERT INTO O_14 VALUES('240229022001', '240229022000', '7017', 0.0, 'SHELL GADUS PR 2281 / MUTIARA JAYA', TIMESTAMP '2024-04-23 15:21:55.003', 9600000.0, 3.37647E7, 'TR 838');
INSERT INTO O_14 VALUES('240229022002', '240229022000', '1003', 9600000.0, 'SHELL GADUS PR 2281 / MUTIARA JAYA', TIMESTAMP '2024-04-23 15:21:55.004', 0.0, -5.97374807E8, 'TR 838');
INSERT INTO O_14 VALUES('240201001001', '240201001000', '7016', 0.0, 'PEMBELIAN SPART UT / PO TERLAMPIR', TIMESTAMP '2024-04-23 16:14:48.146', 1.76397569E8, 1.76397569E8, 'TR 845');
INSERT INTO O_14 VALUES('240201001002', '240201001000', '1502', 0.0, 'PEMBELIAN SPART UT / PO TERLAMPIR', TIMESTAMP '2024-04-23 16:14:48.146', 1.9403733E7, 1.65251744E8, 'TR 845');
INSERT INTO O_14 VALUES('240201001003', '240201001000', '3302', 1.95801302E8, 'PEMBELIAN SPART UT / PO TERLAMPIR', TIMESTAMP '2024-04-23 16:14:48.146', 0.0, -1.968491337E9, 'TR 845');
INSERT INTO O_14 VALUES('240229043001', '240229043000', '1004', 0.0, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:03.153', 2.3E7, -3.0E7, 'TR 867');
INSERT INTO O_14 VALUES('240229043002', '240229043000', '1003', 2.3E7, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:03.153', 0.0, -1.995037819E9, 'TR 867');
INSERT INTO O_14 VALUES('240229037001', '240229037000', '1004', 0.0, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:13.665', 2.8E7, -5.3E7, 'TR 862');
INSERT INTO O_14 VALUES('240229037002', '240229037000', '1003', 2.8E7, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:13.665', 0.0, -1.883197819E9, 'TR 862');
INSERT INTO O_14 VALUES('240229036001', '240229036000', '1004', 0.0, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:21.812', 4.0E7, -8.1E7, 'TR 861');
INSERT INTO O_14 VALUES('240229036002', '240229036000', '1003', 4.0E7, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:21.812', 0.0, -1.855197819E9, 'TR 861');
INSERT INTO O_14 VALUES('240229032001', '240229032000', '1004', 0.0, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:34.466', 4.9E7, -1.21E8, 'TR 856');
INSERT INTO O_14 VALUES('240229032002', '240229032000', '1003', 4.9E7, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:34.468', 0.0, -7.30051849E8, 'TR 856');
INSERT INTO O_14 VALUES('240229027001', '240229027000', '1004', 0.0, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:44.957', 2.0E7, -1.7E8, 'TR 843');
INSERT INTO O_14 VALUES('240229027002', '240229027000', '1003', 2.0E7, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:44.957', 0.0, -6.64787661E8, 'TR 843');
INSERT INTO O_14 VALUES('240229019001', '240229019000', '1004', 0.0, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:59.973', 5.0E7, -1.9E8, 'TR 835');
INSERT INTO O_14 VALUES('240229019002', '240229019000', '1003', 5.0E7, 'KAS LOKASI / FEB', TIMESTAMP '2024-04-23 16:20:59.973', 0.0, -5.81274807E8, 'TR 835');
INSERT INTO O_14 VALUES('240229009001', '240229009000', '1401', 0.0, 'BUNGA PINJAMAN KE SSDK Feb 2024', TIMESTAMP '2024-04-24 08:40:07.939', 2.82397776E8, 1.5888217776E10, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009002', '240229009000', '9001', 2.82397776E8, 'BUNGA PINJAMAN KE SSDK Feb 2024', TIMESTAMP '2024-04-24 08:40:07.939', 0.0, -2.82397776E8, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009003', '240229009000', '7020', 0.0, 'Pembebanan biaya leasing alber etika / Feb 24', TIMESTAMP '2024-04-24 08:40:07.939', 8.099626E8, 8.099626E8, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009004', '240229009000', '7021', 0.0, 'Pembebanan biaya leasing alber dhako / Feb 24', TIMESTAMP '2024-04-24 08:40:07.939', 6.9007972E8, 6.9007972E8, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009005', '240229009000', '3301', 8.099626E8, 'Pembebanan biaya leasing alber etika / Feb 24', TIMESTAMP '2024-04-24 08:40:07.939', 0.0, -1.13394764E10, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009006', '240229009000', '2088', 6.9007972E8, 'Pembebanan biaya leasing alber dhako / Feb 24', TIMESTAMP '2024-04-24 08:40:07.939', 0.0, -9.66111608E9, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009007', '240229009000', '7013', 0.0, 'Penyusutan Inventaris kantor / Feb 24', TIMESTAMP '2024-04-24 08:40:07.939', 1.0437747E7, 1.0437747E7, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009008', '240229009000', '7014', 0.0, 'Penyusutan Kendaraan / Feb 24', TIMESTAMP '2024-04-24 08:40:07.939', 9041666.0, 9041666.0, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009009', '240229009000', '2099', 1.9479413E7, 'Penyusutan Inventaris & Kendaraan / Feb 24', TIMESTAMP '2024-04-24 08:40:07.939', 0.0, -4.711900553E9, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009010', '240229009000', '7010', 0.0, 'Administrasi cek MANDIRI / FEB', TIMESTAMP '2024-04-24 08:40:07.939', 45030.0, 95030.0, 'INT SSDK');
INSERT INTO O_14 VALUES('240229009011', '240229009000', '1003', 45030.0, 'Administrasi cek MANDIRI / FEB', TIMESTAMP '2024-04-24 08:40:07.939', 0.0, 2.645497E7, 'INT SSDK');
INSERT INTO O_14 VALUES('240229053001', '240229053000', '1202', 0.0, 'DBP / INV 04 / RENT Komatsu D85 Rp 1.400.000 x 40 Excavator SK 200-77 Rp 800.000 x 85,1 PC 400-01  Rp 1.400.000 x 85,2 DT-73  Rp 2.666.667 x 1', TIMESTAMP '2024-04-24 14:39:37.428', 2.68169067E8, 6.36839663E9, 'INV-04 DBP');
INSERT INTO O_14 VALUES('240229053002', '240229053000', '1501', 0.0, 'DBP / INV 04 / RENT Komatsu D85 Rp 1.400.000 x 40 Excavator SK 200-77 Rp 800.000 x 85,1 PC 400-01  Rp 1.400.000 x 85,2 DT-73  Rp 2.666.667 x 1', TIMESTAMP '2024-04-24 14:39:37.428', 4920533.0, 1.254185606E9, 'INV-04 DBP');
INSERT INTO O_14 VALUES('240229053003', '240229053000', '5003', 2.46026667E8, 'DBP / INV 04 / RENT Komatsu D85 Rp 1.400.000 x 40 Excavator SK 200-77 Rp 800.000 x 85,1 PC 400-01  Rp 1.400.000 x 85,2 DT-73  Rp 2.666.667 x 1', TIMESTAMP '2024-04-24 14:39:37.428', 0.0, -2.46026667E8, 'INV-04 DBP');
INSERT INTO O_14 VALUES('240229053004', '240229053000', '3210', 2.7062933E7, 'DBP / INV 04 / RENT Komatsu D85 Rp 1.400.000 x 40 Excavator SK 200-77 Rp 800.000 x 85,1 PC 400-01  Rp 1.400.000 x 85,2 DT-73  Rp 2.666.667 x 1', TIMESTAMP '2024-04-24 14:39:37.428', 0.0, -1.23958753E8, 'INV-04 DBP');
INSERT INTO O_14 VALUES('240229054005', '240229054000', '1202', 0.0, U&'DBP / INV 05 / RENT Komatsu D85-37 Rp.1.400.000 x 7,40 Jam\000aExacavator SK 200-77 Rp. 800.000 x 73,20 Jam\000aExacavator PC 400-77 Rp. 1.400.000 x 26 Jam Exacavator Dosan 502 Rp. 1.400.000 x 66,8 Jam Greder Sany  Rp. 1.300.000 x 97,8 Jam', TIMESTAMP '2024-04-24 14:39:37.46', 3.79593045E8, 6.747989675E9, 'INV-05 DBP');
INSERT INTO O_14 VALUES('240229054006', '240229054000', '1501', 0.0, U&'DBP / INV 05 / RENT Komatsu D85-37 Rp.1.400.000 x 7,40 Jam\000aExacavator SK 200-77 Rp. 800.000 x 73,20 Jam\000aExacavator PC 400-77 Rp. 1.400.000 x 26 Jam Exacavator Dosan 502 Rp. 1.400.000 x 66,8 Jam Greder Sany  Rp. 1.300.000 x 97,8 Jam', TIMESTAMP '2024-04-24 14:39:37.46', 6965010.0, 1.261150616E9, 'INV-05 DBP');
INSERT INTO O_14 VALUES('240229054007', '240229054000', '5003', 3.482505E8, U&'DBP / INV 05 / RENT Komatsu D85-37 Rp.1.400.000 x 7,40 Jam\000aExacavator SK 200-77 Rp. 800.000 x 73,20 Jam\000aExacavator PC 400-77 Rp. 1.400.000 x 26 Jam Exacavator Dosan 502 Rp. 1.400.000 x 66,8 Jam Greder Sany  Rp. 1.300.000 x 97,8 Jam', TIMESTAMP '2024-04-24 14:39:37.46', 0.0, -5.94277167E8, 'INV-05 DBP');
INSERT INTO O_14 VALUES('240229054008', '240229054000', '3210', 3.8307555E7, U&'DBP / INV 05 / RENT Komatsu D85-37 Rp.1.400.000 x 7,40 Jam\000aExacavator SK 200-77 Rp. 800.000 x 73,20 Jam\000aExacavator PC 400-77 Rp. 1.400.000 x 26 Jam Exacavator Dosan 502 Rp. 1.400.000 x 66,8 Jam Greder Sany  Rp. 1.300.000 x 97,8 Jam', TIMESTAMP '2024-04-24 14:39:37.46', 0.0, -1.62266308E8, 'INV-05 DBP');
INSERT INTO O_14 VALUES('240229055001', '240229055000', '1202', 0.0, 'DBP / INV 06 / RENT Januari Komatsu Excavator SK 200 Rp 800.000 x 409 PC 400-01  Rp 1.400.000 x 229,9 Compact SAKAI 18 Rp 735.000 x 210 Compactor 17  Rp 735.000 x 300 Greder Sany  Rp 1.300.000 x 219', TIMESTAMP '2024-04-25 09:22:29.803', 1.42877963E9, 8.176769305E9, 'INV-06 DBP');
INSERT INTO O_14 VALUES('240229055002', '240229055000', '1501', 0.0, 'DBP / INV 06 / RENT Januari Komatsu Excavator SK 200 Rp 800.000 x 409 PC 400-01  Rp 1.400.000 x 229,9 Compact SAKAI 18 Rp 735.000 x 210 Compactor 17  Rp 735.000 x 300 Greder Sany  Rp 1.300.000 x 219', TIMESTAMP '2024-04-25 09:22:29.803', 2.621614E7, 1.287366756E9, 'INV-06 DBP');
INSERT INTO O_14 VALUES('240229055003', '240229055000', '5003', 1.310807E9, 'DBP / INV 06 / RENT Januari Komatsu Excavator SK 200 Rp 800.000 x 409 PC 400-01  Rp 1.400.000 x 229,9 Compact SAKAI 18 Rp 735.000 x 210 Compactor 17  Rp 735.000 x 300 Greder Sany  Rp 1.300.000 x 219', TIMESTAMP '2024-04-25 09:22:29.803', 0.0, -1.905084167E9, 'INV-06 DBP');
INSERT INTO O_14 VALUES('240229055004', '240229055000', '3210', 1.4418877E8, 'DBP / INV 06 / RENT Januari Komatsu Excavator SK 200 Rp 800.000 x 409 PC 400-01  Rp 1.400.000 x 229,9 Compact SAKAI 18 Rp 735.000 x 210 Compactor 17  Rp 735.000 x 300 Greder Sany  Rp 1.300.000 x 219', TIMESTAMP '2024-04-25 09:22:29.803', 0.0, -3.06455078E8, 'INV-06 DBP');
INSERT INTO O_14 VALUES('240229056005', '240229056000', '1202', 0.0, 'DBP / INV 07 / Galian OB Jan 2024', TIMESTAMP '2024-04-25 09:22:29.881', 1.097032157E9, 9.273801462E9, 'INV-07 DBP');
INSERT INTO O_14 VALUES('240229056006', '240229056000', '1501', 0.0, 'DBP / INV 07 / Galian OB Jan 2024', TIMESTAMP '2024-04-25 09:22:29.881', 2.012903E7, 1.307495786E9, 'INV-07 DBP');
INSERT INTO O_14 VALUES('240229056007', '240229056000', '5001', 1.00645152E9, 'DBP / INV 07 / Galian OB Jan 2024', TIMESTAMP '2024-04-25 09:22:29.881', 0.0, -1.00645152E9, 'INV-07 DBP');
INSERT INTO O_14 VALUES('240229056008', '240229056000', '3210', 1.10709667E8, 'DBP / INV 07 / Galian OB Jan 2024', TIMESTAMP '2024-04-25 09:22:29.881', 0.0, -4.17164745E8, 'INV-07 DBP');
INSERT INTO O_14 VALUES('240229057009', '240229057000', '1202', 0.0, 'DBP / INV 08 / Galian OB Feb 2024', TIMESTAMP '2024-04-25 09:22:29.928', 2.616E9, 1.1889801462E10, 'INV-08 DBP');
INSERT INTO O_14 VALUES('240229057010', '240229057000', '1501', 0.0, 'DBP / INV 08 / Galian OB Feb 2024', TIMESTAMP '2024-04-25 09:22:29.928', 4.8E7, 1.355495786E9, 'INV-08 DBP');
INSERT INTO O_14 VALUES('240229057011', '240229057000', '5001', 2.4E9, 'DBP / INV 08 / Galian OB Feb 2024', TIMESTAMP '2024-04-25 09:22:29.928', 0.0, -3.40645152E9, 'INV-08 DBP');
INSERT INTO O_14 VALUES('240229057012', '240229057000', '3210', 2.64E8, 'DBP / INV 08 / Galian OB Feb 2024', TIMESTAMP '2024-04-25 09:22:29.928', 0.0, -6.81164745E8, 'INV-08 DBP');
INSERT INTO O_14 VALUES('240229001001', '240229001000', '7018', 0.0, 'PEMAKAIAN SOLAR FEB 2024 / 29.199 L', TIMESTAMP '2024-04-25 13:42:39.654', 4.60560314E8, 4.60560314E8, 'SOLAR FEB');
INSERT INTO O_14 VALUES('240229001002', '240229001000', '1403', 0.0, 'PINJAMAN SOLAR DBP FEB 2024 / 7.911 L', TIMESTAMP '2024-04-25 13:42:39.657', 1.24781418E8, 1.9055565E8, 'SOLAR FEB');
INSERT INTO O_14 VALUES('240229001003', '240229001000', '1106', 5.85341732E8, 'PENGELUARAN SOLAR / FEB 2024', TIMESTAMP '2024-04-25 13:42:39.658', 0.0, 6.68513573E8, 'SOLAR FEB');
INSERT INTO O_14 VALUES('240229001004', '240229001000', '3001', 0.0, 'PEMBULATAN', TIMESTAMP '2024-04-25 13:42:39.658', 30.0, -1.06679997E9, 'SOLAR FEB');
INSERT INTO O_14 VALUES('240229001005', '240229001000', '9002', 30.0, 'PEMBULATAN', TIMESTAMP '2024-04-25 13:42:39.659', 0.0, -30.0, 'SOLAR FEB');
INSERT INTO O_14 VALUES('240229058001', '240229058000', '5001', 0.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.087', 3.40645152E9, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058002', '240229058000', '5003', 0.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.087', 1.905084167E9, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058003', '240229058000', '5004', 0.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.087', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058004', '240229058000', '7001', 2.86138356E8, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.087', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058005', '240229058000', '7002', 196438.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.088', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058006', '240229058000', '7003', 7.8259E7, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.088', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058007', '240229058000', '7004', 2.0912E7, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.088', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058008', '240229058000', '7005', 46000.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.088', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058009', '240229058000', '7006', 2.68025E7, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.088', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058010', '240229058000', '7007', 2600000.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.088', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058011', '240229058000', '7008', 1230000.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.088', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058012', '240229058000', '7009', 3.4190142E7, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.088', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058013', '240229058000', '7010', 770439.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.088', 0.0, -625000.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058014', '240229058000', '7012', 2.6160174E7, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.089', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058015', '240229058000', '7013', 1.0437747E7, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.089', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058016', '240229058000', '7014', 9041666.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.089', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058017', '240229058000', '7016', 7.1122317E8, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.089', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058018', '240229058000', '7017', 3.37647E7, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.09', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058019', '240229058000', '7018', 4.60560314E8, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.09', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058020', '240229058000', '7020', 8.099626E8, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.09', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058021', '240229058000', '7021', 6.9007972E8, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.09', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058022', '240229058000', '7022', 4000000.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.09', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058023', '240229058000', '7023', 1539927.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.09', 0.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058024', '240229058000', '9001', 0.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.09', 2.82397776E8, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058025', '240229058000', '9002', 0.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.091', 921000.0, 0.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058026', '240229058000', '9003', 184194.0, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.091', 0.0, -177565.0, 'CL Feb24');
INSERT INTO O_14 VALUES('240229058027', '240229058000', '4103', 2.386755376E9, 'Penutupan Februari 2024', TIMESTAMP '2024-04-25 14:01:25.091', 0.0, -1.333981127E9, 'CL Feb24');
INSERT INTO O_14 VALUES('240331003005', '240331003000', '7001', 0.0, 'PKWT 3 ORANG / MAR', TIMESTAMP '2024-07-08 11:28:55.317', 2.3371013E7, 3.3432746E7, 'TR 873');
INSERT INTO O_14 VALUES('240331003006', '240331003000', '1003', 2.3371013E7, 'PKWT 3 ORANG / MAR', TIMESTAMP '2024-07-08 11:28:55.317', 0.0, -1.27371013E8, 'TR 873');
INSERT INTO O_14 VALUES('240331007013', '240331007000', '7001', 0.0, 'PAYROLL / FEB', TIMESTAMP '2024-07-08 11:28:55.598', 2.43747214E8, 2.78363693E8, 'TR 880');
INSERT INTO O_14 VALUES('240331007014', '240331007000', '1003', 2.43747214E8, 'PAYROLL / FEB', TIMESTAMP '2024-07-08 11:28:55.598', 0.0, -4.21118227E8, 'TR 880');
INSERT INTO O_14 VALUES('240331008015', '240331008000', '7016', 0.0, 'POINT TOOTH TIGER PO 959 / KOBEX', TIMESTAMP '2024-07-08 11:28:55.629', 7997088.0, 7997088.0, 'TR 881');
INSERT INTO O_14 VALUES('240331008016', '240331008000', '1502', 0.0, 'PPN POINT TOOTH TIGER PO 959 / KOBEX', TIMESTAMP '2024-07-08 11:28:55.629', 879679.0, 1.70746482E8, 'TR 881');
INSERT INTO O_14 VALUES('240331008017', '240331008000', '1003', 8876767.0, 'POINT TOOTH TIGER PO 959 / KOBEX', TIMESTAMP '2024-07-08 11:28:55.629', 0.0, -4.29994994E8, 'TR 881');
INSERT INTO O_14 VALUES('240331009018', '240331009000', '3004', 0.0, 'PELUNASAN PENGERJAAN HINO 500 / SRIWIJAYA', TIMESTAMP '2024-07-08 11:28:55.676', 8956800.0, 0.0, 'TR 882');
INSERT INTO O_14 VALUES('240331009019', '240331009000', '1003', 8401800.0, 'PELUNASAN PENGERJAAN HINO 500 / SRIWIJAYA', TIMESTAMP '2024-07-08 11:28:55.676', 0.0, -4.38396794E8, 'TR 882');
INSERT INTO O_14 VALUES('240331009020', '240331009000', '7016', 555000.0, 'REVISI INVOICE / SRIWIJAYA', TIMESTAMP '2024-07-08 11:28:55.676', 0.0, 7442088.0, 'TR 882');
INSERT INTO O_14 VALUES('240331010021', '240331010000', '7012', 0.0, 'PEMBAYARAN BPJS KESEHATAN / MAR', TIMESTAMP '2024-07-08 11:28:55.707', 1669959.0, 1669959.0, 'TR 883');
INSERT INTO O_14 VALUES('240331010022', '240331010000', '1003', 1669959.0, 'PEMBAYARAN BPJS KESEHATAN / MAR', TIMESTAMP '2024-07-08 11:28:55.707', 0.0, -4.40066753E8, 'TR 883');
INSERT INTO O_14 VALUES('240331011023', '240331011000', '7012', 0.0, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / MAR', TIMESTAMP '2024-07-08 11:28:55.739', 2.297353E7, 2.4643489E7, 'TR 884');
INSERT INTO O_14 VALUES('240331011024', '240331011000', '1003', 2.297353E7, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / MAR', TIMESTAMP '2024-07-08 11:28:55.739', 0.0, -4.63040283E8, 'TR 884');
INSERT INTO O_14 VALUES('240331012025', '240331012000', '7016', 0.0, 'TUBE 1100-20 / CV DERMAGA JAYA', TIMESTAMP '2024-07-08 11:28:55.754', 5600000.0, 1.3042088E7, 'TR 885');
INSERT INTO O_14 VALUES('240331012026', '240331012000', '1502', 0.0, 'PPN TUBE 1100-20 / CV DERMAGA JAYA', TIMESTAMP '2024-07-08 11:28:55.754', 616000.0, 1.71362482E8, 'TR 885');
INSERT INTO O_14 VALUES('240331012027', '240331012000', '1003', 6216000.0, 'TUBE 1100-20 / CV DERMAGA JAYA', TIMESTAMP '2024-07-08 11:28:55.754', 0.0, -4.69256283E8, 'TR 885');
INSERT INTO O_14 VALUES('240331015032', '240331015000', '3220', 0.0, 'SSP  PPh 23 / MAR', TIMESTAMP '2024-07-08 11:28:55.832', 310000.0, -2.1934E7, 'TR 888');
INSERT INTO O_14 VALUES('240331015033', '240331015000', '3220', 0.0, 'SSP  PPh 25 / MAR', TIMESTAMP '2024-07-08 11:28:55.832', 411660.0, -2.152234E7, 'TR 888');
INSERT INTO O_14 VALUES('240331015034', '240331015000', '7011', 0.0, 'STP  PPh 2021 / MAR', TIMESTAMP '2024-07-08 11:28:55.832', 7719288.0, 7719288.0, 'TR 888');
INSERT INTO O_14 VALUES('240331015035', '240331015000', '7011', 0.0, 'SSP  PPh 21 / MAR', TIMESTAMP '2024-07-08 11:28:55.832', 1231441.0, 8950729.0, 'TR 888');
INSERT INTO O_14 VALUES('240331015036', '240331015000', '1003', 9672389.0, 'SETORAN PAJAK / MAR', TIMESTAMP '2024-07-08 11:28:55.832', 0.0, -5.21928672E8, 'TR 888');
INSERT INTO O_14 VALUES('240331016037', '240331016000', '7004', 0.0, 'TAGIHAN INTERNET MAR / 2024', TIMESTAMP '2024-07-08 11:28:55.848', 5000000.0, 5000000.0, 'TR 889');
INSERT INTO O_14 VALUES('240331016038', '240331016000', '1502', 0.0, 'PPN TAGIHAN INTERNET MAR / 2024', TIMESTAMP '2024-07-08 11:28:55.848', 550000.0, 1.71912482E8, 'TR 889');
INSERT INTO O_14 VALUES('240331016039', '240331016000', '3220', 100000.0, 'PPh TAGIHAN INTERNET MAR / 2024', TIMESTAMP '2024-07-08 11:28:55.848', 0.0, -2.162234E7, 'TR 889');
INSERT INTO O_14 VALUES('240331016040', '240331016000', '1003', 5450000.0, 'TAGIHAN INTERNET MAR / 2024', TIMESTAMP '2024-07-08 11:28:55.848', 0.0, -5.27378672E8, 'TR 889');
INSERT INTO O_14 VALUES('240331018043', '240331018000', '7001', 0.0, 'PAYROLL / MAR', TIMESTAMP '2024-07-08 11:28:55.91', 1.8643804E7, 2.97007497E8, 'TR 891');
INSERT INTO O_14 VALUES('240331018044', '240331018000', '1003', 1.8643804E7, 'PAYROLL / MAR', TIMESTAMP '2024-07-08 11:28:55.91', 0.0, -5.83022476E8, 'TR 891');
INSERT INTO O_14 VALUES('240331020049', '240331020000', '7001', 0.0, 'PKWT 1 ORANG / DHAKO', TIMESTAMP '2024-07-08 11:28:55.989', 3132600.0, 3.00140097E8, 'TR 893');
INSERT INTO O_14 VALUES('240331020050', '240331020000', '1003', 3132600.0, 'PKWT 1 ORANG / DHAKO', TIMESTAMP '2024-07-08 11:28:55.989', 0.0, -5.86155076E8, 'TR 893');
INSERT INTO O_14 VALUES('240331021051', '240331021000', '7001', 0.0, 'THR KARYAWAN 2024/ DHAKO', TIMESTAMP '2024-07-08 11:28:56.004', 1.1837334E7, 3.11977431E8, 'TR 894');
INSERT INTO O_14 VALUES('240331021052', '240331021000', '1003', 1.1837334E7, 'THR KARYAWAN 2024/ DHAKO', TIMESTAMP '2024-07-08 11:28:56.004', 0.0, -5.9799241E8, 'TR 894');
INSERT INTO O_14 VALUES('240331023055', '240331023000', '7016', 0.0, 'TUBE HYDROLIS / LIEM RONAL', TIMESTAMP '2024-07-08 11:28:56.051', 9000000.0, 2.2042088E7, 'TR 897');
INSERT INTO O_14 VALUES('240331023056', '240331023000', '7006', 0.0, 'TIKET PESAWAT 4 INV / NOVITA', TIMESTAMP '2024-07-08 11:28:56.051', 4995000.0, 4995000.0, 'TR 897');
INSERT INTO O_14 VALUES('240331023057', '240331023000', '1003', 1.3995E7, 'PEMBAYARAN SPART & TIKET', TIMESTAMP '2024-07-08 11:28:56.051', 0.0, -6.5998741E8, 'TR 897');
INSERT INTO O_14 VALUES('240331025060', '240331025000', '7006', 0.0, 'PO 955 PR 2272 76 / BBM', TIMESTAMP '2024-07-08 11:28:56.082', 2.613E7, 3.1125E7, 'TR 900');
INSERT INTO O_14 VALUES('240331025061', '240331025000', '1003', 2.613E7, 'PO 955 PR 2272 76 / BBM', TIMESTAMP '2024-07-08 11:28:56.082', 0.0, -6.8611741E8, 'TR 900');
INSERT INTO O_14 VALUES('240331027064', '240331027000', '1502', 0.0, 'PPN MASA FEB 2024', TIMESTAMP '2024-07-08 11:28:56.145', 7.997896E7, 2.51891442E8, 'TR 902');
INSERT INTO O_14 VALUES('240331027065', '240331027000', '1003', 7.997896E7, 'PPN MASA FEB 2024', TIMESTAMP '2024-07-08 11:28:56.145', 0.0, -7.8061637E8, 'TR 902');
INSERT INTO O_14 VALUES('240331029068', '240331029000', '1004', 0.0, 'KAS LOKASI / MAR', TIMESTAMP '2024-07-08 11:28:56.176', 3.0E7, 2.9248618E8, 'TR 904');
INSERT INTO O_14 VALUES('240331029069', '240331029000', '1003', 3.0E7, 'KAS LOKASI / MAR', TIMESTAMP '2024-07-08 11:28:56.176', 0.0, -8.2110255E8, 'TR 904');
INSERT INTO O_14 VALUES('240331032074', '240331032000', '7001', 0.0, 'GAJI KARYAWAN LOKASI / MAR', TIMESTAMP '2024-07-08 11:28:56.239', 1.855323E8, 4.97509731E8, 'TR 907');
INSERT INTO O_14 VALUES('240331032075', '240331032000', '1003', 1.855323E8, 'GAJI KARYAWAN LOKASI / MAR', TIMESTAMP '2024-07-08 11:28:56.239', 0.0, -1.08663485E9, 'TR 907');
INSERT INTO O_14 VALUES('240331033076', '240331033000', '7017', 0.0, 'TR 779 SD 826 / MAR', TIMESTAMP '2024-07-08 11:28:56.254', 1.6374088E8, 1.6374088E8, 'TR 908');
INSERT INTO O_14 VALUES('240331033077', '240331033000', '1003', 1.6374088E8, 'TR 779 SD 826 / MAR', TIMESTAMP '2024-07-08 11:28:56.254', 0.0, -1.25037573E9, 'TR 908');
INSERT INTO O_14 VALUES('240331001001', '240331001000', '1004', 0.0, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:24:19.628', 7.4E7, 7.4E7, 'TR 871');
INSERT INTO O_14 VALUES('240331001002', '240331001000', '1003', 7.4E7, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:24:19.628', 0.0, -1.04E8, 'TR 871');
INSERT INTO O_14 VALUES('240331006001', '240331006000', '1004', 0.0, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:26:40.854', 5.0E7, 1.24E8, 'TR 879');
INSERT INTO O_14 VALUES('240331006002', '240331006000', '1003', 5.0E7, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:26:40.854', 0.0, -1.77371013E8, 'TR 879');
INSERT INTO O_14 VALUES('240331013001', '240331013000', '1004', 0.0, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:26:52.4', 2.3E7, 1.47E8, 'TR 886');
INSERT INTO O_14 VALUES('240331013002', '240331013000', '1003', 2.3E7, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:26:52.4', 0.0, -4.92256283E8, 'TR 886');
INSERT INTO O_14 VALUES('240331014001', '240331014000', '1004', 0.0, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:27:24.82', 2.0E7, 1.67E8, 'TR 887');
INSERT INTO O_14 VALUES('240331014002', '240331014000', '1003', 2.0E7, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:27:24.82', 0.0, -5.12256283E8, 'TR 887');
INSERT INTO O_14 VALUES('240331017001', '240331017000', '1004', 0.0, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:27:33.492', 3.7E7, 2.04E8, 'TR 890');
INSERT INTO O_14 VALUES('240331017002', '240331017000', '1003', 3.7E7, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:27:33.492', 0.0, -5.64378672E8, 'TR 890');
INSERT INTO O_14 VALUES('240331022001', '240331022000', '1004', 0.0, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:27:43.991', 4.8E7, 2.52E8, 'TR 895');
INSERT INTO O_14 VALUES('240331022002', '240331022000', '1003', 4.8E7, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-07 08:27:43.991', 0.0, -6.4599241E8, 'TR 895');
INSERT INTO O_14 VALUES('240331002001', '240331002000', '7001', 0.0, 'PKWT 15 ORANG / MAR', TIMESTAMP '2024-08-13 15:29:57.046', 1.0061733E7, 1.0061733E7, 'TR 872');
INSERT INTO O_14 VALUES('240331002002', '240331002000', '3302', 1.0061733E7, 'PKWT 15 ORANG / MAR', TIMESTAMP '2024-08-13 15:29:57.047', 0.0, -1.999542036E9, 'TR 872');
INSERT INTO O_14 VALUES('240331004001', '240331004000', '7001', 0.0, 'PKWT 12 ORANG / MAR', TIMESTAMP '2024-08-13 15:30:11.58', 1183733.0, 3.4616479E7, 'TR 874');
INSERT INTO O_14 VALUES('240331004002', '240331004000', '3302', 1183733.0, 'PKWT 12 ORANG / MAR', TIMESTAMP '2024-08-13 15:30:11.58', 0.0, -2.000725769E9, 'TR 874');
INSERT INTO O_14 VALUES('240331019001', '240331019000', '7007', 0.0, 'PERBAIKAN ARMADA DHAKO / L8039', TIMESTAMP '2024-08-13 15:30:39.86', 3450000.0, 3450000.0, 'TR 892');
INSERT INTO O_14 VALUES('240331019002', '240331019000', '3005', 3450000.0, 'PERBAIKAN ARMADA DHAKO / L8039', TIMESTAMP '2024-08-13 15:30:39.862', 0.0, -3450000.0, 'TR 892');
INSERT INTO O_14 VALUES('240331019003', '240331019000', '3005', 0.0, 'PERBAIKAN ARMADA DHAKO / L8039', TIMESTAMP '2024-08-13 15:30:39.863', 3450000.0, 0.0, 'TR 892');
INSERT INTO O_14 VALUES('240331019004', '240331019000', '3302', 3450000.0, 'PERBAIKAN ARMADA DHAKO / L8039', TIMESTAMP '2024-08-13 15:30:39.864', 0.0, -2.004175769E9, 'TR 892');
INSERT INTO O_14 VALUES('240331024001', '240331024000', '7004', 0.0, 'COMITMENT FEE / BFI FINANCE', TIMESTAMP '2024-08-13 15:31:12.539', 396000.0, 5396000.0, 'TR 899');
INSERT INTO O_14 VALUES('240331024002', '240331024000', '3302', 396000.0, 'COMITMENT FEE / BFI FINANCE', TIMESTAMP '2024-08-13 15:31:12.539', 0.0, -2.004571769E9, 'TR 899');
INSERT INTO O_14 VALUES('240331026001', '240331026000', '7006', 0.0, 'TIKET PESAWAT 9 INV / NOVITA', TIMESTAMP '2024-08-13 15:32:54.379', 1.452E7, 4.5645E7, 'TR 901');
INSERT INTO O_14 VALUES('240331026002', '240331026000', '1003', 1.452E7, 'TIKET PESAWAT 9 INV / NOVITA', TIMESTAMP '2024-08-13 15:32:54.379', 0.0, -7.0063741E8, 'TR 901');
INSERT INTO O_14 VALUES('240331028001', '240331028000', '1004', 0.0, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-13 15:34:43.308', 1.048618E7, 2.6248618E8, 'TR 903');
INSERT INTO O_14 VALUES('240331028002', '240331028000', '1003', 1.048618E7, 'KAS LOKASI / MAR', TIMESTAMP '2024-08-13 15:34:43.308', 0.0, -7.9110255E8, 'TR 903');
INSERT INTO O_14 VALUES('240331034001', '240331034000', '7016', 0.0, 'PO 972 PR 846 / SANY MAKMUR', TIMESTAMP '2024-08-13 16:07:55.713', 5206788.0, 2.7248876E7, 'TR 945');
INSERT INTO O_14 VALUES('240331034002', '240331034000', '1003', 5206788.0, 'PO 972 PR 846 / SANY MAKMUR', TIMESTAMP '2024-08-13 16:07:55.714', 0.0, -1.255582518E9, 'TR 945');
INSERT INTO O_14 VALUES('240331034003', '240331034000', '9001', 0.0, 'PEMBULATAN / MAR', TIMESTAMP '2024-08-13 16:07:55.714', 4000.0, 4000.0, 'TR 945');
INSERT INTO O_14 VALUES('240331034004', '240331034000', '1003', 4000.0, 'PEMBULATAN / MAR', TIMESTAMP '2024-08-13 16:07:55.714', 0.0, -1.255586518E9, 'TR 945');
INSERT INTO O_14 VALUES('240331053001', '240331053000', '1202', 0.0, 'DBP / INV 09 / RENT Excavator Kobelco SK 200 - 76  Excavator Kobelco SK 200 - 77  Excavator Komatsu PC 400 - 01  Excavator Komatsu PC 400 - 02  DOOSAN DX529LCA - 502 DOOSAN DX529LCA - 503  DOZER D85 ESS - 36  DOZER D85 ESS - 37  TR - 18  DT - 04  DT - 05  DT - 07', TIMESTAMP '2024-08-14 10:35:34.341', 2.71837498E9, 1.3375693095E10, 'INV-09 DBP');
INSERT INTO O_14 VALUES('240331053002', '240331053000', '1501', 0.0, 'DBP / INV 09 / RENT Excavator Kobelco SK 200 - 76  Excavator Kobelco SK 200 - 77  Excavator Komatsu PC 400 - 01  Excavator Komatsu PC 400 - 02  DOOSAN DX529LCA - 502 DOOSAN DX529LCA - 503  DOZER D85 ESS - 36  DOZER D85 ESS - 37  TR - 18  DT - 04  DT - 05  DT - 07', TIMESTAMP '2024-08-14 10:35:34.341', 4.987844E7, 1.405374226E9, 'INV-09 DBP');
INSERT INTO O_14 VALUES('240331053003', '240331053000', '5003', 2.493922E9, 'DBP / INV 09 / RENT Excavator Kobelco SK 200 - 76  Excavator Kobelco SK 200 - 77  Excavator Komatsu PC 400 - 01  Excavator Komatsu PC 400 - 02  DOOSAN DX529LCA - 502 DOOSAN DX529LCA - 503  DOZER D85 ESS - 36  DOZER D85 ESS - 37  TR - 18  DT - 04  DT - 05  DT - 07', TIMESTAMP '2024-08-14 10:35:34.342', 0.0, -2.493922E9, 'INV-09 DBP');
INSERT INTO O_14 VALUES('240331053004', '240331053000', '3210', 2.7433142E8, 'DBP / INV 09 / RENT Excavator Kobelco SK 200 - 76  Excavator Kobelco SK 200 - 77  Excavator Komatsu PC 400 - 01  Excavator Komatsu PC 400 - 02  DOOSAN DX529LCA - 502 DOOSAN DX529LCA - 503  DOZER D85 ESS - 36  DOZER D85 ESS - 37  TR - 18  DT - 04  DT - 05  DT - 07', TIMESTAMP '2024-08-14 10:35:34.342', 0.0, -9.55496165E8, 'INV-09 DBP');
INSERT INTO O_14 VALUES('240331054005', '240331054000', '1202', 0.0, 'DBP / INV 10 / RENT Excavator Kobelco SK 200 - 76  Excavator Kobelco SK 200 - 77   Excavator Komatsu PC 400 - 01  Excavator Komatsu PC 400 - 02  DOOSAN DX529LCA - 501  DOZER D85 ESS - 36  DOZER D85 ESS - 37  Grader Sany - 02  HINO DT - 03  HINO DT - 67 ', TIMESTAMP '2024-08-14 10:35:34.411', 2.50146607E9, 1.5877159165E10, 'INV-10 DBP');
INSERT INTO O_14 VALUES('240331054006', '240331054000', '1501', 0.0, 'DBP / INV 10 / RENT Excavator Kobelco SK 200 - 76  Excavator Kobelco SK 200 - 77   Excavator Komatsu PC 400 - 01  Excavator Komatsu PC 400 - 02  DOOSAN DX529LCA - 501  DOZER D85 ESS - 36  DOZER D85 ESS - 37  Grader Sany - 02  HINO DT - 03  HINO DT - 67 ', TIMESTAMP '2024-08-14 10:35:34.412', 4.589846E7, 1.451272686E9, 'INV-10 DBP');
INSERT INTO O_14 VALUES('240331054007', '240331054000', '5003', 2.294923E9, 'DBP / INV 10 / RENT Excavator Kobelco SK 200 - 76  Excavator Kobelco SK 200 - 77   Excavator Komatsu PC 400 - 01  Excavator Komatsu PC 400 - 02  DOOSAN DX529LCA - 501  DOZER D85 ESS - 36  DOZER D85 ESS - 37  Grader Sany - 02  HINO DT - 03  HINO DT - 67 ', TIMESTAMP '2024-08-14 10:35:34.413', 0.0, -4.788845E9, 'INV-10 DBP');
INSERT INTO O_14 VALUES('240331054008', '240331054000', '3210', 2.5244153E8, 'DBP / INV 10 / RENT Excavator Kobelco SK 200 - 76  Excavator Kobelco SK 200 - 77   Excavator Komatsu PC 400 - 01  Excavator Komatsu PC 400 - 02  DOOSAN DX529LCA - 501  DOZER D85 ESS - 36  DOZER D85 ESS - 37  Grader Sany - 02  HINO DT - 03  HINO DT - 67 ', TIMESTAMP '2024-08-14 10:35:34.413', 0.0, -1.207937695E9, 'INV-10 DBP');
INSERT INTO O_14 VALUES('240331055009', '240331055000', '1202', 0.0, 'DBP / INV 11 / Galian OB MAR 2024', TIMESTAMP '2024-08-14 10:35:34.457', 2.616E9, 1.8493159165E10, 'INV-11 DBP');
INSERT INTO O_14 VALUES('240331055010', '240331055000', '1501', 0.0, 'DBP / INV 11 / Galian OB MAR 2024', TIMESTAMP '2024-08-14 10:35:34.457', 4.8E7, 1.499272686E9, 'INV-11 DBP');
INSERT INTO O_14 VALUES('240331055011', '240331055000', '5001', 2.4E9, 'DBP / INV 11 / Galian OB MAR 2024', TIMESTAMP '2024-08-14 10:35:34.457', 0.0, -2.4E9, 'INV-11 DBP');
INSERT INTO O_14 VALUES('240331055012', '240331055000', '3210', 2.64E8, 'DBP / INV 11 / Galian OB MAR 2024', TIMESTAMP '2024-08-14 10:35:34.458', 0.0, -1.471937695E9, 'INV-11 DBP');
INSERT INTO O_14 VALUES('240331057001', '240331057000', '1106', 0.0, 'STOK MASUK MAR / 95 L', TIMESTAMP '2024-08-14 10:38:37.281', 1498449.0, 6.70012022E8, 'SOLAR MAR');
INSERT INTO O_14 VALUES('240331057002', '240331057000', '7018', 867523.0, 'KOREKSI PEMAKAIAN SOLAR FEB / 55 L', TIMESTAMP '2024-08-14 10:38:37.281', 0.0, -867523.0, 'SOLAR MAR');
INSERT INTO O_14 VALUES('240331057003', '240331057000', '1402', 630926.0, 'PINJAM SOLAR BEKAL MAR 2024 / 40 L', TIMESTAMP '2024-08-14 10:38:37.281', 0.0, -1.90412619E8, 'SOLAR MAR');
INSERT INTO O_14 VALUES('240331057004', '240331057000', '7018', 0.0, 'PEMAKAIAN SOLAR MAR 2024 / 14.186 L', TIMESTAMP '2024-08-14 10:38:37.281', 2.23757958E8, 2.22890435E8, 'SOLAR MAR');
INSERT INTO O_14 VALUES('240331057005', '240331057000', '1403', 0.0, 'PINJAMAN SOLAR DBP MAR 2024 / 2000 L', TIMESTAMP '2024-08-14 10:38:37.282', 3.1546307E7, 2.22101957E8, 'SOLAR MAR');
INSERT INTO O_14 VALUES('240331057006', '240331057000', '1106', 2.55304265E8, 'PENGELUARAN SOLAR / MAR 2024', TIMESTAMP '2024-08-14 10:38:37.282', 0.0, 4.14707757E8, 'SOLAR MAR');
INSERT INTO O_14 VALUES('240430011001', '240430011000', '7020', 0.0, 'Pembebanan biaya leasing alber etika / APR 24', TIMESTAMP '2024-08-14 11:25:00.344', 8.099626E8, 1.6199252E9, 'JU MAR24');
INSERT INTO O_14 VALUES('240430011002', '240430011000', '7021', 0.0, 'Pembebanan biaya leasing alber dhako / APR 24', TIMESTAMP '2024-08-14 11:25:00.344', 6.9007972E8, 1.38015944E9, 'JU MAR24');
INSERT INTO O_14 VALUES('240430011003', '240430011000', '3301', 8.099626E8, 'Pembebanan biaya leasing alber etika / APR 24', TIMESTAMP '2024-08-14 11:25:00.345', 0.0, -1.2822258742E10, 'JU MAR24');
INSERT INTO O_14 VALUES('240430011004', '240430011000', '2088', 6.9007972E8, 'Pembebanan biaya leasing alber dhako / APR 24', TIMESTAMP '2024-08-14 11:25:00.345', 0.0, -1.5285850281E10, 'JU MAR24');
INSERT INTO O_14 VALUES('240430011005', '240430011000', '7013', 0.0, 'Penyusutan Inventaris kantor / APR 24', TIMESTAMP '2024-08-14 11:25:00.345', 1.0437748E7, 2.0875496E7, 'JU MAR24');
INSERT INTO O_14 VALUES('240430011006', '240430011000', '7014', 0.0, 'Penyusutan Kendaraan / APR 24', TIMESTAMP '2024-08-14 11:25:00.345', 9041667.0, 1.8083334E7, 'JU MAR24');
INSERT INTO O_14 VALUES('240430011007', '240430011000', '2099', 1.9479415E7, 'Penyusutan Inventaris & Kendaraan / APR 24', TIMESTAMP '2024-08-14 11:25:00.345', 0.0, -3.01284622E8, 'JU MAR24');
INSERT INTO O_14 VALUES('240430013001', '240430013000', '1004', 0.0, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:10.929', 5.4E7, -9.1E7, 'TR 909');
INSERT INTO O_14 VALUES('240430013002', '240430013000', '1003', 5.4E7, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:10.929', 0.0, -2.89140337E8, 'TR 909');
INSERT INTO O_14 VALUES('240430015005', '240430015000', '7001', 0.0, 'PKWT SEKHAN / APR', TIMESTAMP '2024-08-14 11:31:11.008', 1566300.0, 7.49514629E8, 'TR 911');
INSERT INTO O_14 VALUES('240430015006', '240430015000', '1003', 1566300.0, 'PKWT SEKHAN / APR', TIMESTAMP '2024-08-14 11:31:11.008', 0.0, -2.90706637E8, 'TR 911');
INSERT INTO O_14 VALUES('240430016007', '240430016000', '7016', 0.0, 'SPAREPART /SURIANSYAH HARTONO PR 2425', TIMESTAMP '2024-08-14 11:31:11.043', 2.52605E7, 4.5022018E8, 'TR 912');
INSERT INTO O_14 VALUES('240430016008', '240430016000', '7016', 0.0, 'SPAREPART /SRI INAWATI PR 2422', TIMESTAMP '2024-08-14 11:31:11.043', 1550000.0, 4.5177018E8, 'TR 912');
INSERT INTO O_14 VALUES('240430016009', '240430016000', '7016', 0.0, 'SPAREPART /SRI INAWATI PR 2412', TIMESTAMP '2024-08-14 11:31:11.044', 637000.0, 4.5240718E8, 'TR 912');
INSERT INTO O_14 VALUES('240430016010', '240430016000', '1003', 2.74475E7, 'SPAREPART /SURIANSYAH & SRI INAWATI', TIMESTAMP '2024-08-14 11:31:11.044', 0.0, -3.18154137E8, 'TR 912');
INSERT INTO O_14 VALUES('240430017011', '240430017000', '7001', 0.0, 'PAYROLL THR 18 KARYAWAN / APR', TIMESTAMP '2024-08-14 11:31:11.067', 7424000.0, 7.56938629E8, 'TR 915');
INSERT INTO O_14 VALUES('240430017012', '240430017000', '1003', 7424000.0, 'PAYROLL THR 18 KARYAWAN / APR', TIMESTAMP '2024-08-14 11:31:11.068', 0.0, -3.25578137E8, 'TR 915');
INSERT INTO O_14 VALUES('240430018013', '240430018000', '7011', 0.0, 'SETORAN PPh 21 23 25 / JUNI', TIMESTAMP '2024-08-14 11:31:11.127', 1898439.0, 1.0849168E7, 'TR 916');
INSERT INTO O_14 VALUES('240430018014', '240430018000', '1003', 1898439.0, 'SETORAN PPh 21 23 25 / JUNI', TIMESTAMP '2024-08-14 11:31:11.128', 0.0, -3.27476576E8, 'TR 916');
INSERT INTO O_14 VALUES('240430019015', '240430019000', '1004', 0.0, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:11.149', 2.0E7, -7.1E7, 'TR 918');
INSERT INTO O_14 VALUES('240430019016', '240430019000', '1003', 2.0E7, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:11.149', 0.0, -3.47476576E8, 'TR 918');
INSERT INTO O_14 VALUES('240430020017', '240430020000', '7012', 0.0, 'PEMBAYARAN BPJS KESEHATAN / APR', TIMESTAMP '2024-08-14 11:31:11.17', 2041159.0, 2.6684648E7, 'TR 919');
INSERT INTO O_14 VALUES('240430020018', '240430020000', '1003', 2041159.0, 'PEMBAYARAN BPJS KESEHATAN / APR', TIMESTAMP '2024-08-14 11:31:11.17', 0.0, -3.49517735E8, 'TR 919');
INSERT INTO O_14 VALUES('240430021019', '240430021000', '7012', 0.0, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / APR', TIMESTAMP '2024-08-14 11:31:11.194', 1.5398823E7, 4.2083471E7, 'TR 920');
INSERT INTO O_14 VALUES('240430021020', '240430021000', '1003', 1.5398823E7, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / APR', TIMESTAMP '2024-08-14 11:31:11.194', 0.0, -3.64916558E8, 'TR 920');
INSERT INTO O_14 VALUES('240430023024', '240430023000', '7004', 0.0, 'TAGIHAN INTERNET APR / 2024', TIMESTAMP '2024-08-14 11:31:11.233', 5000000.0, 4.08471E7, 'TR 922');
INSERT INTO O_14 VALUES('240430023025', '240430023000', '1502', 0.0, 'PPN TAGIHAN INTERNET APR / 2024', TIMESTAMP '2024-08-14 11:31:11.233', 550000.0, 2.52698526E8, 'TR 922');
INSERT INTO O_14 VALUES('240430023026', '240430023000', '3220', 100000.0, 'PPh TAGIHAN INTERNET APR / 2024', TIMESTAMP '2024-08-14 11:31:11.233', 0.0, -2.172234E7, 'TR 922');
INSERT INTO O_14 VALUES('240430023027', '240430023000', '1003', 5450000.0, 'TAGIHAN INTERNET APR / 2024', TIMESTAMP '2024-08-14 11:31:11.233', 0.0, -3.72960771E8, 'TR 922');
INSERT INTO O_14 VALUES('240430024028', '240430024000', '1004', 0.0, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:11.252', 2.2E7, -4.9E7, 'TR 923');
INSERT INTO O_14 VALUES('240430024029', '240430024000', '1003', 2.2E7, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:11.252', 0.0, -3.94960771E8, 'TR 923');
INSERT INTO O_14 VALUES('240430025030', '240430025000', '7011', 0.0, 'PPN / APR', TIMESTAMP '2024-08-14 11:31:11.275', 1.84598194E8, 1.95447362E8, 'TR 924');
INSERT INTO O_14 VALUES('240430025031', '240430025000', '1003', 1.84598194E8, 'SETORAN PAJAK / APR', TIMESTAMP '2024-08-14 11:31:11.275', 0.0, -5.79558965E8, 'TR 924');
INSERT INTO O_14 VALUES('240430026032', '240430026000', '7016', 0.0, 'SPAREPART / UT LEWAR BFI', TIMESTAMP '2024-08-14 11:31:11.294', 2.853644E7, 4.83280749E8, 'TR 925');
INSERT INTO O_14 VALUES('240430026033', '240430026000', '1502', 0.0, 'PPN / SPAREPART / UT LEWAR BFI', TIMESTAMP '2024-08-14 11:31:11.294', 3139008.0, 2.55837534E8, 'TR 925');
INSERT INTO O_14 VALUES('240430026034', '240430026000', '1003', 3.1675448E7, 'SPAREPART / UT LEWAR BFI', TIMESTAMP '2024-08-14 11:31:11.294', 0.0, -6.11234413E8, 'TR 925');
INSERT INTO O_14 VALUES('240430027035', '240430027000', '1004', 0.0, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:11.317', 1.4E7, -3.5E7, 'TR 926');
INSERT INTO O_14 VALUES('240430027036', '240430027000', '1003', 1.4E7, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:11.317', 0.0, -6.25234413E8, 'TR 926');
INSERT INTO O_14 VALUES('240430028037', '240430028000', '7016', 0.0, 'PT UNION TEKNIKA / APR', TIMESTAMP '2024-08-14 11:31:11.333', 1720000.0, 4.85000749E8, 'TR 927');
INSERT INTO O_14 VALUES('240430028038', '240430028000', '1502', 0.0, 'PPN / PT UNION TEKNIKA / APR', TIMESTAMP '2024-08-14 11:31:11.334', 189200.0, 2.56026734E8, 'TR 927');
INSERT INTO O_14 VALUES('240430028039', '240430028000', '1003', 1909200.0, 'PT UNION TEKNIKA / APR', TIMESTAMP '2024-08-14 11:31:11.334', 0.0, -6.27143613E8, 'TR 927');
INSERT INTO O_14 VALUES('240430029040', '240430029000', '3220', 0.0, 'SSP  PPh 29 / APR', TIMESTAMP '2024-08-14 11:31:11.354', 2273575.0, -1.9448765E7, 'TR 928');
INSERT INTO O_14 VALUES('240430029041', '240430029000', '1003', 2273575.0, 'SETORAN PAJAK / APR', TIMESTAMP '2024-08-14 11:31:11.354', 0.0, -6.29417188E8, 'TR 928');
INSERT INTO O_14 VALUES('240430030042', '240430030000', '1004', 0.0, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:11.375', 3.5E7, 0.0, 'TR 930');
INSERT INTO O_14 VALUES('240430030043', '240430030000', '1003', 3.5E7, 'KAS LOKASI / APR', TIMESTAMP '2024-08-14 11:31:11.375', 0.0, -6.64417188E8, 'TR 930');
INSERT INTO O_14 VALUES('240430022001', '240430022000', '7016', 0.0, 'OIL FILTER / KOBEXINDO', TIMESTAMP '2024-08-14 11:51:59.555', 2337129.0, 4.54744309E8, 'TR 921');
INSERT INTO O_14 VALUES('240430022002', '240430022000', '1502', 0.0, 'PPN / OIL FILTER / KOBEXINDO', TIMESTAMP '2024-08-14 11:51:59.556', 257084.0, 2.52148526E8, 'TR 921');
INSERT INTO O_14 VALUES('240430022003', '240430022000', '1003', 2594213.0, 'OIL FILTER / KOBEXINDO', TIMESTAMP '2024-08-14 11:51:59.556', 0.0, -3.67510771E8, 'TR 921');
INSERT INTO O_14 VALUES('240430035001', '240430035000', '1202', 0.0, 'DBP / INV 12 / Galian OB APR 2024', TIMESTAMP '2024-08-16 09:14:41.873', 2.616E9, 2.1109159165E10, 'INV-12 DBP');
INSERT INTO O_14 VALUES('240430035002', '240430035000', '1501', 0.0, 'DBP / INV 12 / Galian OB APR 2024', TIMESTAMP '2024-08-16 09:14:41.873', 4.8E7, 1.547272686E9, 'INV-12 DBP');
INSERT INTO O_14 VALUES('240430035003', '240430035000', '5001', 2.4E9, 'DBP / INV 12 / Galian OB APR 2024', TIMESTAMP '2024-08-16 09:14:41.873', 0.0, -4.8E9, 'INV-12 DBP');
INSERT INTO O_14 VALUES('240430035004', '240430035000', '3210', 2.64E8, 'DBP / INV 12 / Galian OB APR 2024', TIMESTAMP '2024-08-16 09:14:41.873', 0.0, -1.735937695E9, 'INV-12 DBP');
INSERT INTO O_14 VALUES('240229052001', '240229052000', '1004', 0.0, 'KAS LOKASI / FEB CK 540227', TIMESTAMP '2024-08-16 10:59:47.384', 3.0E7, 0.0, 'TR 877');
INSERT INTO O_14 VALUES('240229052002', '240229052000', '1003', 3.0E7, 'KAS LOKASI / FEB CK 540227', TIMESTAMP '2024-08-16 10:59:47.384', 0.0, -2.198831903E9, 'TR 877');
INSERT INTO O_14 VALUES('240229052003', '240229052000', '3302', 3000000.0, 'X', TIMESTAMP '2024-08-16 10:59:47.384', 0.0, -1.989480303E9, 'TR 877');
INSERT INTO O_14 VALUES('240229052004', '240229052000', '1003', 0.0, 'X', TIMESTAMP '2024-08-16 10:59:47.384', 3000000.0, -2.195831903E9, 'TR 877');
INSERT INTO O_14 VALUES('240430014001', '240430014000', '1003', 0.0, 'THR KARYAWAN DHAKO / APR', TIMESTAMP '2024-08-16 11:15:39.308', 3.6547447E7, -2.5259289E8, 'TR 910');
INSERT INTO O_14 VALUES('240430014002', '240430014000', '1003', 3.6547447E7, 'THR KARYAWAN DHAKO / APR', TIMESTAMP '2024-08-16 11:15:39.308', 0.0, -2.89140337E8, 'TR 910');
INSERT INTO O_14 VALUES('240430031001', '240430031000', '7001', 0.0, 'PAYROLL 39 KARYAWAN / APR', TIMESTAMP '2024-08-16 11:16:23.123', 1.12435663E8, 8.69374292E8, 'TR 931');
INSERT INTO O_14 VALUES('240430031002', '240430031000', '1003', 1.12435663E8, 'PAYROLL 39 KARYAWAN / APR', TIMESTAMP '2024-08-16 11:16:23.123', 0.0, -7.76852851E8, 'TR 931');
INSERT INTO O_14 VALUES('240430031003', '240430031000', '9001', 0.0, 'PEMBULATAN / APR', TIMESTAMP '2024-08-16 11:16:23.123', 52.0, 1780.0, 'TR 931');
INSERT INTO O_14 VALUES('240430031004', '240430031000', '1003', 52.0, 'PEMBULATAN / APR', TIMESTAMP '2024-08-16 11:16:23.123', 0.0, -7.76852903E8, 'TR 931');
INSERT INTO O_14 VALUES('240531012001', '240531012000', '7012', 0.0, 'PEMBAYARAN BPJS KESEHATAN / MEI', TIMESTAMP '2024-08-16 11:26:01.648', 2041159.0, 4.412463E7, 'TR 932');
INSERT INTO O_14 VALUES('240531012002', '240531012000', '1003', 2041159.0, 'PEMBAYARAN BPJS KESEHATAN / MEI', TIMESTAMP '2024-08-16 11:26:01.648', 0.0, 9.7646271E8, 'TR 932');
INSERT INTO O_14 VALUES('240531013003', '240531013000', '7012', 0.0, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / MEI', TIMESTAMP '2024-08-16 11:26:01.679', 1.5365906E7, 5.9490536E7, 'TR 933');
INSERT INTO O_14 VALUES('240531013004', '240531013000', '1003', 1.5365906E7, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / MEI', TIMESTAMP '2024-08-16 11:26:01.679', 0.0, 9.61096804E8, 'TR 933');
INSERT INTO O_14 VALUES('240531014005', '240531014000', '7001', 0.0, 'PAYROLL PKWT 39 KARYAWAN / MEI', TIMESTAMP '2024-08-16 11:26:01.71', 2.40744E7, 1.173833844E9, 'TR 934');
INSERT INTO O_14 VALUES('240531014006', '240531014000', '1003', 2.40744E7, 'PAYROLL PKWT 39 KARYAWAN / MEI', TIMESTAMP '2024-08-16 11:26:01.71', 0.0, 9.37022404E8, 'TR 934');
INSERT INTO O_14 VALUES('240531015007', '240531015000', '3220', 0.0, 'SETORAN PAJAK / MEI', TIMESTAMP '2024-08-16 11:26:01.742', 4309243.0, -1.5139522E7, 'TR 936');
INSERT INTO O_14 VALUES('240531015008', '240531015000', '1003', 4309243.0, 'SETORAN PAJAK / MEI', TIMESTAMP '2024-08-16 11:26:01.742', 0.0, 9.32713161E8, 'TR 936');
INSERT INTO O_14 VALUES('240531016009', '240531016000', '1004', 0.0, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:01.748', 3.0E7, -9.8E7, 'TR 937');
INSERT INTO O_14 VALUES('240531016010', '240531016000', '1003', 3.0E7, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:01.748', 0.0, 9.02713161E8, 'TR 937');
INSERT INTO O_14 VALUES('240531017011', '240531017000', '7004', 0.0, 'TAGIHAN INTERNET MEI / 2024', TIMESTAMP '2024-08-16 11:26:01.764', 5000000.0, 5.0854433E7, 'TR 938');
INSERT INTO O_14 VALUES('240531017012', '240531017000', '1502', 0.0, 'PPN TAGIHAN INTERNET MEI / 2024', TIMESTAMP '2024-08-16 11:26:01.764', 550000.0, 2.56576734E8, 'TR 938');
INSERT INTO O_14 VALUES('240531017013', '240531017000', '3220', 100000.0, 'PPh TAGIHAN INTERNET MEI / 2024', TIMESTAMP '2024-08-16 11:26:01.764', 0.0, -1.5239522E7, 'TR 938');
INSERT INTO O_14 VALUES('240531017014', '240531017000', '1003', 5450000.0, 'TAGIHAN INTERNET MEI / 2024', TIMESTAMP '2024-08-16 11:26:01.764', 0.0, 8.97263161E8, 'TR 938');
INSERT INTO O_14 VALUES('240531018015', '240531018000', '7016', 0.0, 'TR 827 DM - 874 DM', TIMESTAMP '2024-08-16 11:26:01.795', 3.05837691E8, 8.1890634E8, 'TR 939');
INSERT INTO O_14 VALUES('240531018016', '240531018000', '1003', 3.05837691E8, 'TR 827 DM - 874 DM', TIMESTAMP '2024-08-16 11:26:01.795', 0.0, 5.9142547E8, 'TR 939');
INSERT INTO O_14 VALUES('240531019017', '240531019000', '7004', 0.0, 'JASA ANALYSIS PAJAK / MEI 2024', TIMESTAMP '2024-08-16 11:26:01.826', 2.925E7, 8.0104433E7, 'TR 940');
INSERT INTO O_14 VALUES('240531019018', '240531019000', '1003', 2.925E7, 'JASA ANALYSIS PAJAK / MEI 2024', TIMESTAMP '2024-08-16 11:26:01.826', 0.0, 5.6217547E8, 'TR 940');
INSERT INTO O_14 VALUES('240531020019', '240531020000', '1004', 0.0, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:01.864', 2.2E7, -7.6E7, 'TR 941');
INSERT INTO O_14 VALUES('240531020020', '240531020000', '1003', 2.2E7, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:01.864', 0.0, 5.4017547E8, 'TR 941');
INSERT INTO O_14 VALUES('240531021021', '240531021000', '7011', 0.0, 'SSP  PPh 29 / MEI', TIMESTAMP '2024-08-16 11:26:01.88', 8.0E7, 2.75447362E8, 'TR 942');
INSERT INTO O_14 VALUES('240531021022', '240531021000', '1003', 8.0E7, 'SETORAN PAJAK / MEI', TIMESTAMP '2024-08-16 11:26:01.88', 0.0, 4.6017547E8, 'TR 942');
INSERT INTO O_14 VALUES('240531022023', '240531022000', '1004', 0.0, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:01.926', 2.2E7, -5.4E7, 'TR 943');
INSERT INTO O_14 VALUES('240531022024', '240531022000', '1003', 2.2E7, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:01.926', 0.0, 4.3817547E8, 'TR 943');
INSERT INTO O_14 VALUES('240531023025', '240531023000', '7001', 0.0, 'PKWT 13 ORANG / MEI', TIMESTAMP '2024-08-16 11:26:01.961', 1.0517333E7, 1.184351177E9, 'TR 944');
INSERT INTO O_14 VALUES('240531023026', '240531023000', '1003', 1.0517333E7, 'PKWT 13 ORANG / MEI', TIMESTAMP '2024-08-16 11:26:01.961', 0.0, 4.27658137E8, 'TR 944');
INSERT INTO O_14 VALUES('240531025030', '240531025000', '7006', 0.0, 'TIKET NOVITA BACTIAR / MEI', TIMESTAMP '2024-08-16 11:26:02.021', 4470000.0, 8.089683E7, 'TR 946');
INSERT INTO O_14 VALUES('240531025031', '240531025000', '3302', 4470000.0, 'TIKET NOVITA BACTIAR / MEI', TIMESTAMP '2024-08-16 11:26:02.021', 0.0, 1.2319438231E10, 'TR 946');
INSERT INTO O_14 VALUES('240531026032', '240531026000', '7011', 0.0, 'PPN / MEI', TIMESTAMP '2024-08-16 11:26:02.059', 5.3624987E8, 8.11697232E8, 'TR 947');
INSERT INTO O_14 VALUES('240531026033', '240531026000', '1003', 5.3624987E8, 'SETORAN PAJAK / MEI', TIMESTAMP '2024-08-16 11:26:02.059', 0.0, -1.08591733E8, 'TR 947');
INSERT INTO O_14 VALUES('240531027034', '240531027000', '1004', 0.0, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:02.081', 2.0E7, -3.4E7, 'TR 948');
INSERT INTO O_14 VALUES('240531027035', '240531027000', '1003', 2.0E7, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:02.081', 0.0, -1.28591733E8, 'TR 948');
INSERT INTO O_14 VALUES('240531028036', '240531028000', '7004', 0.0, 'JASA ANALYSIS PAJAK / MEI 2024', TIMESTAMP '2024-08-16 11:26:02.099', 2.925E7, 1.09354433E8, 'TR 950');
INSERT INTO O_14 VALUES('240531028037', '240531028000', '1003', 2.925E7, 'JASA ANALYSIS PAJAK / MEI 2024', TIMESTAMP '2024-08-16 11:26:02.099', 0.0, -1.57841733E8, 'TR 950');
INSERT INTO O_14 VALUES('240531029038', '240531029000', '7004', 0.0, 'JASA ANALYSIS PAJAK / MEI 2024', TIMESTAMP '2024-08-16 11:26:02.131', 5.85E7, 1.67854433E8, 'TR 951');
INSERT INTO O_14 VALUES('240531029039', '240531029000', '1003', 5.85E7, 'JASA ANALYSIS PAJAK / MEI 2024', TIMESTAMP '2024-08-16 11:26:02.131', 0.0, -2.16341733E8, 'TR 951');
INSERT INTO O_14 VALUES('240531030040', '240531030000', '7001', 0.0, 'PAYROLL PKWT KARYAWAN / MEI', TIMESTAMP '2024-08-16 11:26:02.162', 1.0316798E8, 1.287519157E9, 'TR 952');
INSERT INTO O_14 VALUES('240531030041', '240531030000', '1003', 1.0316798E8, 'PAYROLL PKWT KARYAWAN / MEI', TIMESTAMP '2024-08-16 11:26:02.162', 0.0, -3.19509713E8, 'TR 952');
INSERT INTO O_14 VALUES('240531031042', '240531031000', '1004', 0.0, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:02.2', 1.4E7, -2.0E7, 'TR 953');
INSERT INTO O_14 VALUES('240531031043', '240531031000', '1003', 1.4E7, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 11:26:02.2', 0.0, -3.33509713E8, 'TR 953');
INSERT INTO O_14 VALUES('240531032001', '240531032000', '1202', 0.0, 'DBP / INV 13 / Galian OB MEI 2024', TIMESTAMP '2024-08-16 11:33:35.727', 2.616E9, 1.8583347378E10, 'INV-13 DBP');
INSERT INTO O_14 VALUES('240531032002', '240531032000', '1501', 0.0, 'DBP / INV 13 / Galian OB MEI 2024', TIMESTAMP '2024-08-16 11:33:35.727', 4.8E7, 1.685803686E9, 'INV-13 DBP');
INSERT INTO O_14 VALUES('240531032003', '240531032000', '5001', 2.4E9, 'DBP / INV 13 / Galian OB MEI 2024', TIMESTAMP '2024-08-16 11:33:35.727', 0.0, -7.2E9, 'INV-13 DBP');
INSERT INTO O_14 VALUES('240531032004', '240531032000', '3210', 2.64E8, 'DBP / INV 13 / Galian OB MEI 2024', TIMESTAMP '2024-08-16 11:33:35.727', 0.0, -1.999937695E9, 'INV-13 DBP');
INSERT INTO O_14 VALUES('240531035001', '240531035000', '7020', 0.0, 'Pembebanan biaya leasing alber etika / MEI 24', TIMESTAMP '2024-08-16 11:38:34.76', 8.099626E8, 2.4298878E9, 'JU MEI24');
INSERT INTO O_14 VALUES('240531035002', '240531035000', '7021', 0.0, 'Pembebanan biaya leasing alber dhako / MEI 24', TIMESTAMP '2024-08-16 11:38:34.76', 6.9007972E8, 2.07023916E9, 'JU MEI24');
INSERT INTO O_14 VALUES('240531035003', '240531035000', '3301', 8.099626E8, 'Pembebanan biaya leasing alber etika / MEI 24', TIMESTAMP '2024-08-16 11:38:34.76', 0.0, -1.3632221342E10, 'JU MEI24');
INSERT INTO O_14 VALUES('240531035004', '240531035000', '2088', 6.9007972E8, 'Pembebanan biaya leasing alber dhako / MEI 24', TIMESTAMP '2024-08-16 11:38:34.76', 0.0, -1.5975930001E10, 'JU MEI24');
INSERT INTO O_14 VALUES('240531035005', '240531035000', '7013', 0.0, 'Penyusutan Inventaris kantor / MEI 24', TIMESTAMP '2024-08-16 11:38:34.76', 1.0437748E7, 3.1313244E7, 'JU MEI24');
INSERT INTO O_14 VALUES('240531035006', '240531035000', '7014', 0.0, 'Penyusutan Kendaraan / MEI 24', TIMESTAMP '2024-08-16 11:38:34.76', 9041667.0, 2.7125001E7, 'JU MEI24');
INSERT INTO O_14 VALUES('240531035007', '240531035000', '2099', 1.9479415E7, 'Penyusutan Inventaris & Kendaraan / MEI 24', TIMESTAMP '2024-08-16 11:38:34.76', 0.0, -3.20764037E8, 'JU MEI24');
INSERT INTO O_14 VALUES('240531024001', '240531024000', '7016', 0.0, 'OIL WATER SEPARATOR / SANY MAKMUR', TIMESTAMP '2024-08-16 13:13:07.798', 0.0, 8.1890634E8, 'TR 945');
INSERT INTO O_14 VALUES('240531024002', '240531024000', '1502', 0.0, 'PPN / OIL WATER SEPARATOR / SANY MAKMUR', TIMESTAMP '2024-08-16 13:13:07.807', 0.0, 2.56576734E8, 'TR 945');
INSERT INTO O_14 VALUES('240531024003', '240531024000', '1003', 0.0, 'OIL WATER SEPARATOR / SANY MAKMUR', TIMESTAMP '2024-08-16 13:13:07.808', 0.0, 4.27658137E8, 'TR 945');
INSERT INTO O_14 VALUES('240531036001', '240531036000', '1004', 0.0, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 13:15:20.948', 2.0E7, 0.0, 'TR 935');
INSERT INTO O_14 VALUES('240531036002', '240531036000', '1003', 2.0E7, 'KAS LOKASI / MEI', TIMESTAMP '2024-08-16 13:15:20.948', 0.0, -3.53509713E8, 'TR 935');
INSERT INTO O_14 VALUES('240430038001', '240430038000', '1401', 0.0, 'PERHITUNGAN BUNGA PINJAMAN SD 25 APR 2024', TIMESTAMP '2024-08-16 13:16:52.203', 1.222402224E9, 1.211062E10, 'GJ APR24');
INSERT INTO O_14 VALUES('240430038002', '240430038000', '9001', 1.222402224E9, 'PERHITUNGAN BUNGA PINJAMAN SD 25 APR 2024', TIMESTAMP '2024-08-16 13:16:52.204', 0.0, -1.222400444E9, 'GJ APR24');
INSERT INTO O_14 VALUES('240430038003', '240430038000', '3302', 0.0, 'PEMBAYARAN PINJAMAN % BUNGA SSDK', TIMESTAMP '2024-08-16 13:16:52.204', 1.20708E9, 4.398408231E9, 'GJ APR24');
INSERT INTO O_14 VALUES('240430038004', '240430038000', '1401', 1.20708E9, 'PEMBAYARAN PINJAMAN % BUNGA SSDK', TIMESTAMP '2024-08-16 13:16:52.205', 0.0, 1.090354E10, 'GJ APR24');
INSERT INTO O_14 VALUES('240430038005', '240430038000', '1501', 0.0, 'POTONGAN PPh ATAS BUNGA PINJAMAN SSDK', TIMESTAMP '2024-08-16 13:16:52.206', 9.0531E7, 1.637803686E9, 'GJ APR24');
INSERT INTO O_14 VALUES('240430038006', '240430038000', '1401', 9.0531E7, 'POTONGAN PPh ATAS BUNGA PINJAMAN SSDK', TIMESTAMP '2024-08-16 13:16:52.206', 0.0, 1.0813009E10, 'GJ APR24');
INSERT INTO O_14 VALUES('240430034001', '240430034000', '7018', 0.0, 'PEMAKAIAN SOLAR APR 2024 / 5.742 L', TIMESTAMP '2024-08-16 13:17:15.14', 5.0710689E7, 2.73601124E8, 'SOLAR APR');
INSERT INTO O_14 VALUES('240430034002', '240430034000', '1403', 0.0, 'PINJAMAN SOLAR DBP MAR 2024 / 2.527 L', TIMESTAMP '2024-08-16 13:17:15.14', 3.9858759E7, 2.61960716E8, 'SOLAR APR');
INSERT INTO O_14 VALUES('240430034003', '240430034000', '1106', 9.0569448E7, 'PENGELUARAN SOLAR / APR 2024', TIMESTAMP '2024-08-16 13:17:15.14', 0.0, 3.24138309E8, 'SOLAR APR');
INSERT INTO O_14 VALUES('240630013001', '240630013000', '1004', 0.0, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:26.528', 3.6E7, -1.47E8, 'TR 953');
INSERT INTO O_14 VALUES('240630013002', '240630013000', '1003', 3.6E7, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:26.528', 0.0, -1.17E8, 'TR 953');
INSERT INTO O_14 VALUES('240630014003', '240630014000', '1106', 0.0, '20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.57', 2.943668E8, 4.34417855E8, 'TR 955');
INSERT INTO O_14 VALUES('240630014004', '240630014000', '1502', 0.0, 'PPN / 20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.57', 3.2380348E7, 2.88957082E8, 'TR 955');
INSERT INTO O_14 VALUES('240630014005', '240630014000', '7004', 0.0, '20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.571', 1.89928E7, 2.11354706E8, 'TR 955');
INSERT INTO O_14 VALUES('240630014006', '240630014000', '7006', 0.0, 'TRANSPORT / 20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.571', 1.4E7, 9.931183E7, 'TR 955');
INSERT INTO O_14 VALUES('240630014007', '240630014000', '1502', 0.0, 'PPN / 20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.571', 1540000.0, 2.90497082E8, 'TR 955');
INSERT INTO O_14 VALUES('240630014008', '240630014000', '1501', 280000.0, 'PPh / 20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.571', 0.0, 1.685551686E9, 'TR 955');
INSERT INTO O_14 VALUES('240630014009', '240630014000', '3001', 3.60999948E8, '20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.571', 0.0, -3.60999948E8, 'TR 955');
INSERT INTO O_14 VALUES('240630014010', '240630014000', '3001', 0.0, '20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.571', 3.60999948E8, 0.0, 'TR 955');
INSERT INTO O_14 VALUES('240630014011', '240630014000', '1003', 3.61E8, '20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.571', 0.0, -4.78E8, 'TR 955');
INSERT INTO O_14 VALUES('240630014012', '240630014000', '9001', 0.0, '20.000 LITER SOLAR / MEI / LONG IRAM', TIMESTAMP '2024-08-16 13:55:26.571', 52.0, -1.222409421E9, 'TR 955');
INSERT INTO O_14 VALUES('240630015013', '240630015000', '7012', 0.0, 'PEMBAYARAN BPJS KESEHATAN / MEI', TIMESTAMP '2024-08-16 13:55:26.618', 2598008.0, 6.2088544E7, 'TR 956');
INSERT INTO O_14 VALUES('240630015014', '240630015000', '1003', 2598008.0, 'PEMBAYARAN BPJS KESEHATAN / MEI', TIMESTAMP '2024-08-16 13:55:26.618', 0.0, -4.80598008E8, 'TR 956');
INSERT INTO O_14 VALUES('240630016015', '240630016000', '7012', 0.0, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / MEI', TIMESTAMP '2024-08-16 13:55:26.655', 1.3662384E7, 7.5750928E7, 'TR 957');
INSERT INTO O_14 VALUES('240630016016', '240630016000', '1003', 1.3662384E7, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / MEI', TIMESTAMP '2024-08-16 13:55:26.655', 0.0, -4.94260392E8, 'TR 957');
INSERT INTO O_14 VALUES('240630017017', '240630017000', '3220', 0.0, 'SSP  PPh 23 / JUN', TIMESTAMP '2024-08-16 13:55:26.719', 380000.0, -1.4859522E7, 'TR 958');
INSERT INTO O_14 VALUES('240630017018', '240630017000', '3220', 0.0, 'SSP  PPh 25 / JUN', TIMESTAMP '2024-08-16 13:55:26.719', 601130.0, -1.4258392E7, 'TR 958');
INSERT INTO O_14 VALUES('240630017019', '240630017000', '7011', 0.0, 'STP  PPh 29 / JUN', TIMESTAMP '2024-08-16 13:55:26.719', 9187758.0, 8.2088499E8, 'TR 958');
INSERT INTO O_14 VALUES('240630017020', '240630017000', '7011', 0.0, 'SSP  PPh 21 / JUN', TIMESTAMP '2024-08-16 13:55:26.719', 2502301.0, 8.23387291E8, 'TR 958');
INSERT INTO O_14 VALUES('240630017021', '240630017000', '1003', 1.2671189E7, 'SETORAN PAJAK / JUN', TIMESTAMP '2024-08-16 13:55:26.719', 0.0, -5.06931581E8, 'TR 958');
INSERT INTO O_14 VALUES('240630018022', '240630018000', '1004', 0.0, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:26.761', 2.0E7, -1.27E8, 'TR 959');
INSERT INTO O_14 VALUES('240630018023', '240630018000', '1003', 2.0E7, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:26.761', 0.0, -5.26931581E8, 'TR 959');
INSERT INTO O_14 VALUES('240630019024', '240630019000', '1004', 0.0, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:26.804', 3.0E7, -9.7E7, 'TR 960');
INSERT INTO O_14 VALUES('240630019025', '240630019000', '1003', 3.0E7, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:26.804', 0.0, -5.56931581E8, 'TR 960');
INSERT INTO O_14 VALUES('240630023033', '240630023000', '1004', 0.0, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:26.967', 3.6E7, -6.1E7, 'TR 964');
INSERT INTO O_14 VALUES('240630023034', '240630023000', '1003', 3.6E7, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:26.968', 0.0, -1.078707421E9, 'TR 964');
INSERT INTO O_14 VALUES('240630024035', '240630024000', '7001', 0.0, 'PKWT WIJANARKO / 2024', TIMESTAMP '2024-08-16 13:55:27.008', 2610500.0, 1.459850895E9, 'TR 965');
INSERT INTO O_14 VALUES('240630024036', '240630024000', '1003', 2610500.0, 'PKWT WIJANARKO / 2024', TIMESTAMP '2024-08-16 13:55:27.008', 0.0, -1.081317921E9, 'TR 965');
INSERT INTO O_14 VALUES('240630025037', '240630025000', '1004', 0.0, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:27.045', 2.3E7, -3.8E7, 'TR 966');
INSERT INTO O_14 VALUES('240630025038', '240630025000', '1003', 2.3E7, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:27.045', 0.0, -1.104317921E9, 'TR 966');
INSERT INTO O_14 VALUES('240630026039', '240630026000', '7006', 0.0, 'TIKET NOVITA BACTIAR / JUN', TIMESTAMP '2024-08-16 13:55:27.09', 1.702E7, 1.1633183E8, 'TR 967');
INSERT INTO O_14 VALUES('240630026040', '240630026000', '3302', 1.702E7, 'TIKET NOVITA BACTIAR / JUN', TIMESTAMP '2024-08-16 13:55:27.09', 0.0, 1.2878668231E10, 'TR 967');
INSERT INTO O_14 VALUES('240630027041', '240630027000', '7016', 0.0, 'BAN LUAR HINO DUTRO / BBM', TIMESTAMP '2024-08-16 13:55:27.128', 8918919.0, 8.78727728E8, 'TR 968');
INSERT INTO O_14 VALUES('240630027042', '240630027000', '1502', 0.0, 'PPN BAN LUAR HINO DUTRO / BBM', TIMESTAMP '2024-08-16 13:55:27.128', 981081.0, 2.92028163E8, 'TR 968');
INSERT INTO O_14 VALUES('240630027043', '240630027000', '1003', 9900000.0, 'BAN LUAR HINO DUTRO / BBM', TIMESTAMP '2024-08-16 13:55:27.128', 0.0, -1.114217921E9, 'TR 968');
INSERT INTO O_14 VALUES('240630028044', '240630028000', '7016', 0.0, 'LINK ASSY STEERING / HINO MOTOR', TIMESTAMP '2024-08-16 13:55:27.158', 2278000.0, 8.81005728E8, 'TR 969');
INSERT INTO O_14 VALUES('240630028045', '240630028000', '1502', 0.0, 'PPN / LINK ASSY STEERING / HINO MOTOR', TIMESTAMP '2024-08-16 13:55:27.158', 250580.0, 2.92278743E8, 'TR 969');
INSERT INTO O_14 VALUES('240630028046', '240630028000', '1003', 2528580.0, 'LINK ASSY STEERING / HINO MOTOR', TIMESTAMP '2024-08-16 13:55:27.159', 0.0, -1.116746501E9, 'TR 969');
INSERT INTO O_14 VALUES('240630029047', '240630029000', '7016', 0.0, 'BRACKET ASSY / HINO MOTOR', TIMESTAMP '2024-08-16 13:55:27.195', 2033200.0, 8.83038928E8, 'TR 970');
INSERT INTO O_14 VALUES('240630029048', '240630029000', '1502', 0.0, 'PPN BRACKET ASSY / HINO MOTOR', TIMESTAMP '2024-08-16 13:55:27.196', 223652.0, 2.92502395E8, 'TR 970');
INSERT INTO O_14 VALUES('240630029049', '240630029000', '1003', 2256852.0, 'BRACKET ASSY / HINO MOTOR', TIMESTAMP '2024-08-16 13:55:27.196', 0.0, -1.119003353E9, 'TR 970');
INSERT INTO O_14 VALUES('240630030050', '240630030000', '1004', 0.0, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:27.234', 2.0E7, -1.8E7, 'TR 971');
INSERT INTO O_14 VALUES('240630030051', '240630030000', '1003', 2.0E7, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:27.235', 0.0, -1.139003353E9, 'TR 971');
INSERT INTO O_14 VALUES('240630031052', '240630031000', '7004', 0.0, 'ADMINISTRASI LEASING / JUN', TIMESTAMP '2024-08-16 13:55:27.271', 426500.0, 2.16781206E8, 'TR 972');
INSERT INTO O_14 VALUES('240630031053', '240630031000', '1003', 426500.0, 'ADMINISTRASI LEASING / JUN', TIMESTAMP '2024-08-16 13:55:27.271', 0.0, -1.139429853E9, 'TR 972');
INSERT INTO O_14 VALUES('240630032054', '240630032000', '7006', 0.0, 'TIKET NOVITA BACTIAR / JUN', TIMESTAMP '2024-08-16 13:55:27.324', 1.2805E7, 1.2913683E8, 'TR 973');
INSERT INTO O_14 VALUES('240630032055', '240630032000', '3302', 1.2805E7, 'TIKET NOVITA BACTIAR / JUN', TIMESTAMP '2024-08-16 13:55:27.325', 0.0, 1.2865863231E10, 'TR 973');
INSERT INTO O_14 VALUES('240630033056', '240630033000', '7001', 0.0, 'PKWT 3 ORANG / 2024', TIMESTAMP '2024-08-16 13:55:27.367', 2165333.0, 1.462016228E9, 'TR 974');
INSERT INTO O_14 VALUES('240630033057', '240630033000', '1003', 2165333.0, 'PKWT 3 ORANG / 2024', TIMESTAMP '2024-08-16 13:55:27.367', 0.0, -1.141595186E9, 'TR 974');
INSERT INTO O_14 VALUES('240630034058', '240630034000', '7006', 0.0, 'MOBILISASI CONTAINER & LONG BOOM /BUM', TIMESTAMP '2024-08-16 13:55:27.433', 9.365E7, 2.2278683E8, 'TR 975');
INSERT INTO O_14 VALUES('240630034059', '240630034000', '3302', 9.365E7, 'MOBILISASI CONTAINER & LONG BOOM /BUM', TIMESTAMP '2024-08-16 13:55:27.433', 0.0, 1.2772213231E10, 'TR 975');
INSERT INTO O_14 VALUES('240630035060', '240630035000', '1004', 0.0, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:27.481', 1.8E7, 0.0, 'TR 976');
INSERT INTO O_14 VALUES('240630035061', '240630035000', '1003', 1.8E7, 'KAS LOKASI / JUN', TIMESTAMP '2024-08-16 13:55:27.481', 0.0, -1.159595186E9, 'TR 976');
INSERT INTO O_14 VALUES('240630036062', '240630036000', '7011', 0.0, 'SSP  PPh 29 / JUN', TIMESTAMP '2024-08-16 13:55:27.53', 8.9249175E7, 9.14646516E8, 'TR 977');
INSERT INTO O_14 VALUES('240630036063', '240630036000', '1003', 8.9249175E7, 'SETORAN PAJAK / JUN', TIMESTAMP '2024-08-16 13:55:27.53', 0.0, -1.248844361E9, 'TR 977');
INSERT INTO O_14 VALUES('240630037064', '240630037000', '7001', 0.0, 'PAYROLL KARYAWAN LOKAL / JUN', TIMESTAMP '2024-08-16 13:55:27.584', 9.7596195E7, 1.559612423E9, 'TR 979');
INSERT INTO O_14 VALUES('240630037065', '240630037000', '1003', 9.7596195E7, 'PAYROLL KARYAWAN LOKAL / JUN', TIMESTAMP '2024-08-16 13:55:27.584', 0.0, -1.346440556E9, 'TR 979');
INSERT INTO O_14 VALUES('240630038066', '240630038000', '7016', 0.0, 'CARRY ROLLER / SURYA METALINDO', TIMESTAMP '2024-08-16 13:55:27.625', 2400000.0, 8.85438928E8, 'TR 987');
INSERT INTO O_14 VALUES('240630038067', '240630038000', '1502', 0.0, 'PPN / CARRY ROLLER / SURYA METALINDO', TIMESTAMP '2024-08-16 13:55:27.625', 264000.0, 2.92766395E8, 'TR 987');
INSERT INTO O_14 VALUES('240630038068', '240630038000', '1003', 2664000.0, 'CARRY ROLLER / SURYA METALINDO', TIMESTAMP '2024-08-16 13:55:27.625', 0.0, -1.349104556E9, 'TR 987');
INSERT INTO O_14 VALUES('240630039069', '240630039000', '7016', 0.0, 'BANLUAR SAVERO / BBM', TIMESTAMP '2024-08-16 13:55:27.66', 6038739.0, 8.91477667E8, 'TR 988');
INSERT INTO O_14 VALUES('240630039070', '240630039000', '1502', 0.0, 'PPN / BANLUAR SAVERO / BBM', TIMESTAMP '2024-08-16 13:55:27.66', 664261.0, 2.93430656E8, 'TR 988');
INSERT INTO O_14 VALUES('240630039071', '240630039000', '1003', 6703000.0, 'BANLUAR SAVERO / BBM', TIMESTAMP '2024-08-16 13:55:27.66', 0.0, -1.355807556E9, 'TR 988');
INSERT INTO O_14 VALUES('240630040001', '240630040000', '7020', 0.0, 'Pembebanan biaya leasing alber etika / JUN 24', TIMESTAMP '2024-08-16 13:57:31.179', 8.099626E8, 3.2398504E9, 'JU JUN24');
INSERT INTO O_14 VALUES('240630040002', '240630040000', '7021', 0.0, 'Pembebanan biaya leasing alber dhako / JUN 24', TIMESTAMP '2024-08-16 13:57:31.179', 6.9007972E8, 2.76031888E9, 'JU JUN24');
INSERT INTO O_14 VALUES('240630040003', '240630040000', '3301', 8.099626E8, 'Pembebanan biaya leasing alber etika / JUN 24', TIMESTAMP '2024-08-16 13:57:31.179', 0.0, -1.4442183942E10, 'JU JUN24');
INSERT INTO O_14 VALUES('240630040004', '240630040000', '2088', 6.9007972E8, 'Pembebanan biaya leasing alber dhako / JUN 24', TIMESTAMP '2024-08-16 13:57:31.179', 0.0, -1.6666009721E10, 'JU JUN24');
INSERT INTO O_14 VALUES('240630040005', '240630040000', '7013', 0.0, 'Penyusutan Inventaris kantor / JUN 24', TIMESTAMP '2024-08-16 13:57:31.179', 1.0437748E7, 4.1750992E7, 'JU JUN24');
INSERT INTO O_14 VALUES('240630040006', '240630040000', '7014', 0.0, 'Penyusutan Kendaraan / JUN 24', TIMESTAMP '2024-08-16 13:57:31.179', 9041667.0, 3.6166668E7, 'JU JUN24');
INSERT INTO O_14 VALUES('240630040007', '240630040000', '2099', 1.9479415E7, 'Penyusutan Inventaris & Kendaraan / JUN 24', TIMESTAMP '2024-08-16 13:57:31.179', 0.0, -3.40243452E8, 'JU JUN24');
INSERT INTO O_14 VALUES('240531034001', '240531034000', '7018', 0.0, 'PEMAKAIAN SOLAR MEI 2024', TIMESTAMP '2024-08-16 14:00:43.784', 8.7155073E7, 3.60756197E8, 'SOLAR MEI');
INSERT INTO O_14 VALUES('240531034002', '240531034000', '1403', 0.0, 'PINJAMAN SOLAR DBP MEI 2024', TIMESTAMP '2024-08-16 14:00:43.784', 8.1069165E7, 3.43029881E8, 'SOLAR MEI');
INSERT INTO O_14 VALUES('240531034003', '240531034000', '1402', 0.0, 'BAYAR PINJAMAN SOLAR BEKAL MEI 2024 / 1.040 L', TIMESTAMP '2024-08-16 14:00:43.784', 1.5863016E7, -1.74549603E8, 'SOLAR MEI');
INSERT INTO O_14 VALUES('240531034004', '240531034000', '1106', 1.84087254E8, 'PENGELUARAN SOLAR / MEI 2024', TIMESTAMP '2024-08-16 14:00:43.784', 0.0, 1.40051055E8, 'SOLAR MEI');
INSERT INTO O_14 VALUES('240331058001', '240331058000', '7020', 0.0, 'Pembebanan biaya leasing alber etika / MAR 24', TIMESTAMP '2024-08-16 14:27:41.304', 8.099626E8, 8.099626E8, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058002', '240331058000', '7021', 0.0, 'Pembebanan biaya leasing alber dhako / MAR 24', TIMESTAMP '2024-08-16 14:27:41.304', 6.9007972E8, 6.9007972E8, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058003', '240331058000', '3301', 8.099626E8, 'Pembebanan biaya leasing alber etika / MAR 24', TIMESTAMP '2024-08-16 14:27:41.304', 0.0, -1.2012296142E10, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058004', '240331058000', '2088', 6.9007972E8, 'Pembebanan biaya leasing alber dhako / MAR 24', TIMESTAMP '2024-08-16 14:27:41.304', 0.0, -1.03511958E10, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058005', '240331058000', '7013', 0.0, 'Penyusutan Inventaris kantor / MAR 24', TIMESTAMP '2024-08-16 14:27:41.304', 1.0437748E7, 1.0437748E7, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058006', '240331058000', '7014', 0.0, 'Penyusutan Kendaraan / MAR 24', TIMESTAMP '2024-08-16 14:27:41.304', 9041667.0, 9041667.0, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058007', '240331058000', '2099', 1.9479415E7, 'Penyusutan Inventaris & Kendaraan / MAR 24', TIMESTAMP '2024-08-16 14:27:41.304', 0.0, -4.731379968E9, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058008', '240331058000', '2099', 0.0, 'KOREKSI PENYUSUTAN DES 2023 ', TIMESTAMP '2024-08-16 14:27:41.304', 2.05E8, -4.526379968E9, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058009', '240331058000', '7015', 2.05E8, 'KOREKSI PENYUSUTAN DES 2023 ', TIMESTAMP '2024-08-16 14:27:41.304', 0.0, -2.05E8, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058010', '240331058000', '2099', 0.0, 'SALDO PENYUSUTAN ALBER LEASING MAR 2024', TIMESTAMP '2024-08-16 14:27:41.304', 4.244574761E9, -2.81805207E8, 'JU MAR24');
INSERT INTO O_14 VALUES('240331058011', '240331058000', '2088', 4.244574761E9, 'SALDO PENYUSUTAN ALBER LEASING MAR 2024', TIMESTAMP '2024-08-16 14:27:41.304', 0.0, -1.4595770561E10, 'JU MAR24');
INSERT INTO O_14 VALUES('240630021001', '240630021000', '7004', 0.0, 'TAGIHAN INTERNET JUN / 2024', TIMESTAMP '2024-08-16 15:26:05.543', 5000000.0, 2.16354706E8, 'TR 962');
INSERT INTO O_14 VALUES('240630021002', '240630021000', '1502', 0.0, 'PPN TAGIHAN INTERNET JUN / 2024', TIMESTAMP '2024-08-16 15:26:05.543', 550000.0, 2.91047082E8, 'TR 962');
INSERT INTO O_14 VALUES('240630021003', '240630021000', '1501', 100000.0, 'TAGIHAN INTERNET JUN / 2024', TIMESTAMP '2024-08-16 15:26:05.543', 0.0, 1.683441636E9, 'TR 962');
INSERT INTO O_14 VALUES('240630021004', '240630021000', '1003', 5450000.0, 'TAGIHAN INTERNET JUN / 2024', TIMESTAMP '2024-08-16 15:26:05.543', 0.0, -5.62381581E8, 'TR 962');
INSERT INTO O_14 VALUES('240630022001', '240630022000', '3210', 0.0, 'SETORAN PPN JUNI / 2024', TIMESTAMP '2024-08-16 15:27:25.743', 4.8032584E8, -1.519765855E9, 'TR 963');
INSERT INTO O_14 VALUES('240630022002', '240630022000', '1003', 4.8032584E8, 'SETORAN PPN JUNI / 2024', TIMESTAMP '2024-08-16 15:27:25.743', 0.0, -1.042707421E9, 'TR 963');
INSERT INTO O_14 VALUES('240630041001', '240630041000', '7018', 0.0, 'PEMAKAIAN SOLAR JUN 2024 / 4.954 L', TIMESTAMP '2024-08-26 08:24:33.786', 7.5562868E7, 4.36319065E8, 'SOLAR JUN');
INSERT INTO O_14 VALUES('240630041002', '240630041000', '1403', 0.0, 'PINJAMAN SOLAR DBP JUN 2024 / 2.892 L', TIMESTAMP '2024-08-26 08:24:33.788', 4.4111387E7, 3.87141268E8, 'SOLAR JUN');
INSERT INTO O_14 VALUES('240630041003', '240630041000', '1106', 1.19674255E8, 'PENGELUARAN SOLAR / JUN 2024', TIMESTAMP '2024-08-26 08:24:33.788', 0.0, 3.147436E8, 'SOLAR JUN');
INSERT INTO O_14 VALUES('240630044001', '240630044000', '5001', 0.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 7.2E9, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044002', '240630044000', '5003', 0.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 4.790245E9, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044003', '240630044000', '7001', 1.559612423E9, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044004', '240630044000', '7004', 2.16781206E8, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044005', '240630044000', '7005', 1039000.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044006', '240630044000', '7006', 2.2278683E8, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044007', '240630044000', '7007', 4.1351005E8, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, -4.0201005E8, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044008', '240630044000', '7008', 1450000.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044009', '240630044000', '7009', 4108400.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044010', '240630044000', '7010', 2033000.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044011', '240630044000', '7011', 9.12636466E8, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 2010050.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044012', '240630044000', '7012', 7.5750928E7, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044013', '240630044000', '7013', 4.1750992E7, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044014', '240630044000', '7014', 3.6166668E7, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044015', '240630044000', '7015', 0.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 2.05E8, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044016', '240630044000', '7016', 8.91477667E8, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044017', '240630044000', '7017', 3.30123208E8, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, -8.0E7, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044018', '240630044000', '7018', 4.36319065E8, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044019', '240630044000', '7019', 0.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.154', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044020', '240630044000', '7020', 3.2398504E9, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.155', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044021', '240630044000', '7021', 2.76031888E9, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.155', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044022', '240630044000', '7022', 1.6E7, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.155', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044023', '240630044000', '7023', 5111396.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.155', 0.0, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044024', '240630044000', '9001', 0.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.155', 1.222409421E9, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044025', '240630044000', '9002', 0.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.155', 1.1097027E7, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044026', '240630044000', '9003', 0.0, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.155', 1.5257535E7, 0.0, 'LR JUN24');
INSERT INTO O_14 VALUES('240630044027', '240630044000', '4103', 2.277182404E9, 'CLOSING LR JUNI 2024', TIMESTAMP '2024-08-26 09:11:02.155', 0.0, -3.611163531E9, 'LR JUN24');
INSERT INTO O_14 VALUES('240731008001', '240731008000', '1004', 0.0, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:17.834', 4.9E7, -1.29E8, 'TR 980');
INSERT INTO O_14 VALUES('240731008002', '240731008000', '1003', 4.9E7, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:17.834', 0.0, 1.0453312E8, 'TR 980');
INSERT INTO O_14 VALUES('240731009003', '240731009000', '1004', 0.0, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:17.964', 2.5E7, -1.04E8, 'TR 981');
INSERT INTO O_14 VALUES('240731009004', '240731009000', '1003', 2.5E7, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:17.964', 0.0, 7.953312E7, 'TR 981');
INSERT INTO O_14 VALUES('240731010005', '240731010000', '7012', 0.0, 'PEMBAYARAN BPJS KESEHATAN / JUL', TIMESTAMP '2024-08-27 10:20:18.015', 2227151.0, 2227151.0, 'TR 982');
INSERT INTO O_14 VALUES('240731010006', '240731010000', '1003', 2227151.0, 'PEMBAYARAN BPJS KESEHATAN / JUL', TIMESTAMP '2024-08-27 10:20:18.015', 0.0, 7.7305969E7, 'TR 982');
INSERT INTO O_14 VALUES('240731010007', '240731010000', '7012', 0.0, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / JUL', TIMESTAMP '2024-08-27 10:20:18.015', 1.561019E7, 1.7837341E7, 'TR 982');
INSERT INTO O_14 VALUES('240731010008', '240731010000', '1003', 1.561019E7, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / JUL', TIMESTAMP '2024-08-27 10:20:18.015', 0.0, 6.1695779E7, 'TR 982');
INSERT INTO O_14 VALUES('240731011009', '240731011000', '7004', 0.0, 'TAGIHAN INTERNET JUL / 2024', TIMESTAMP '2024-08-27 10:20:18.048', 5000000.0, 1.02266E7, 'TR 984');
INSERT INTO O_14 VALUES('240731011010', '240731011000', '1502', 0.0, 'PPN TAGIHAN INTERNET JUL / 2024', TIMESTAMP '2024-08-27 10:20:18.048', 550000.0, 2.93980656E8, 'TR 984');
INSERT INTO O_14 VALUES('240731011011', '240731011000', '3220', 100000.0, 'PPh TAGIHAN INTERNET JUL / 2024', TIMESTAMP '2024-08-27 10:20:18.048', 0.0, -1.4358392E7, 'TR 984');
INSERT INTO O_14 VALUES('240731011012', '240731011000', '1003', 5450000.0, 'TAGIHAN INTERNET JUL / 2024', TIMESTAMP '2024-08-27 10:20:18.048', 0.0, 5.6245779E7, 'TR 984');
INSERT INTO O_14 VALUES('240731012013', '240731012000', '3220', 0.0, 'SSP  PPh 23 / JUL', TIMESTAMP '2024-08-27 10:20:18.089', 100000.0, -1.4258392E7, 'TR 985');
INSERT INTO O_14 VALUES('240731012014', '240731012000', '3220', 0.0, 'SSP  PPh 25 / JUL', TIMESTAMP '2024-08-27 10:20:18.089', 601130.0, -1.3657262E7, 'TR 985');
INSERT INTO O_14 VALUES('240731012015', '240731012000', '7011', 0.0, 'STP  PPh 29 / JUL', TIMESTAMP '2024-08-27 10:20:18.089', 2010050.0, 4026204.0, 'TR 985');
INSERT INTO O_14 VALUES('240731012016', '240731012000', '7011', 0.0, 'SSP  PPh 21 / JUL', TIMESTAMP '2024-08-27 10:20:18.089', 274968.0, 4301172.0, 'TR 985');
INSERT INTO O_14 VALUES('240731012017', '240731012000', '1003', 2986148.0, 'SETORAN PPh / JUL', TIMESTAMP '2024-08-27 10:20:18.089', 0.0, 5.3259631E7, 'TR 985');
INSERT INTO O_14 VALUES('240731013018', '240731013000', '1004', 0.0, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:18.159', 3.1E7, -7.3E7, 'TR 986');
INSERT INTO O_14 VALUES('240731013019', '240731013000', '1003', 3.1E7, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:18.159', 0.0, 2.2259631E7, 'TR 986');
INSERT INTO O_14 VALUES('240731016026', '240731016000', '7016', 0.0, 'RESEAL MAR VITON / ANDINDO', TIMESTAMP '2024-08-27 10:20:18.255', 7485282.0, 2.9107282E7, 'TR 989');
INSERT INTO O_14 VALUES('240731016027', '240731016000', '1502', 0.0, 'PPN / RESEAL MAR VITON / ANDINDO', TIMESTAMP '2024-08-27 10:20:18.255', 823381.0, 2.94804037E8, 'TR 989');
INSERT INTO O_14 VALUES('240731016028', '240731016000', '1003', 8308663.0, 'RESEAL MAR VITON / ANDINDO', TIMESTAMP '2024-08-27 10:20:18.255', 0.0, 1.3950968E7, 'TR 989');
INSERT INTO O_14 VALUES('240731017029', '240731017000', '7016', 0.0, 'WIRE MESH BESI / KALTIM JAYA', TIMESTAMP '2024-08-27 10:20:18.291', 1.2195E8, 1.51057282E8, 'TR 990');
INSERT INTO O_14 VALUES('240731017030', '240731017000', '1502', 0.0, 'PPN / WIRE MESH BESI / KALTIM JAYA', TIMESTAMP '2024-08-27 10:20:18.291', 1.14345E7, 3.06238537E8, 'TR 990');
INSERT INTO O_14 VALUES('240731017031', '240731017000', '1003', 1.333845E8, 'WIRE MESH BESI / KALTIM JAYA', TIMESTAMP '2024-08-27 10:20:18.291', 0.0, -1.19433532E8, 'TR 990');
INSERT INTO O_14 VALUES('240731018032', '240731018000', '7006', 0.0, 'TIKET NOVITA BACTIAR / JUL', TIMESTAMP '2024-08-27 10:20:18.346', 1.097E7, 2.2967E7, 'TR 991');
INSERT INTO O_14 VALUES('240731018033', '240731018000', '3302', 1.097E7, 'TIKET NOVITA BACTIAR / JUL', TIMESTAMP '2024-08-27 10:20:18.346', 0.0, 1.4931243231E10, 'TR 991');
INSERT INTO O_14 VALUES('240731019034', '240731019000', '7016', 0.0, 'OLI MESIN / UT', TIMESTAMP '2024-08-27 10:20:18.384', 2.17E7, 1.72757282E8, 'TR 992');
INSERT INTO O_14 VALUES('240731019035', '240731019000', '7016', 0.0, 'CATRIDGE 600 / UT', TIMESTAMP '2024-08-27 10:20:18.384', 728490.0, 1.73485772E8, 'TR 992');
INSERT INTO O_14 VALUES('240731019036', '240731019000', '7016', 0.0, 'SENSOR 6219 / UT', TIMESTAMP '2024-08-27 10:20:18.384', 997500.0, 1.74483272E8, 'TR 992');
INSERT INTO O_14 VALUES('240731019037', '240731019000', '7016', 0.0, 'OLI MESIN / UT', TIMESTAMP '2024-08-27 10:20:18.384', 7300000.0, 1.81783272E8, 'TR 992');
INSERT INTO O_14 VALUES('240731019038', '240731019000', '1502', 0.0, 'PPN / RESEAL MAR VITON / ANDINDO', TIMESTAMP '2024-08-27 10:20:18.384', 3380010.0, 3.09618547E8, 'TR 992');
INSERT INTO O_14 VALUES('240731019039', '240731019000', '1003', 3.4106E7, 'PEMBELIAN SPART / UT', TIMESTAMP '2024-08-27 10:20:18.384', 0.0, -1.53539532E8, 'TR 992');
INSERT INTO O_14 VALUES('240731020040', '240731020000', '1004', 0.0, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:18.419', 2.0E7, -5.3E7, 'TR 993');
INSERT INTO O_14 VALUES('240731020041', '240731020000', '1003', 2.0E7, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:18.419', 0.0, -1.73539532E8, 'TR 993');
INSERT INTO O_14 VALUES('240731022044', '240731022000', '1004', 0.0, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:18.485', 2.0E7, -3.3E7, 'TR 995');
INSERT INTO O_14 VALUES('240731022045', '240731022000', '1003', 2.0E7, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:18.485', 0.0, -3.31489532E8, 'TR 995');
INSERT INTO O_14 VALUES('240731023046', '240731023000', '7001', 0.0, 'PKWT 5 ORANG KARYAWAN', TIMESTAMP '2024-08-27 10:20:18.522', 1.39931E7, 2.12554502E8, 'TR 996');
INSERT INTO O_14 VALUES('240731023047', '240731023000', '1003', 1.39931E7, 'PKWT 5 ORANG KARYAWAN', TIMESTAMP '2024-08-27 10:20:18.522', 0.0, -3.45482632E8, 'TR 996');
INSERT INTO O_14 VALUES('240731024048', '240731024000', '7001', 0.0, 'PKWT 7 ORANG KARYAWAN', TIMESTAMP '2024-08-27 10:20:18.591', 6496000.0, 2.19050502E8, 'TR 997');
INSERT INTO O_14 VALUES('240731024049', '240731024000', '1003', 6496000.0, 'PKWT 7 ORANG KARYAWAN', TIMESTAMP '2024-08-27 10:20:18.591', 0.0, -3.51978632E8, 'TR 997');
INSERT INTO O_14 VALUES('240731025050', '240731025000', '7004', 0.0, 'PENGGANTIAN BAYAR INTERNET / ANDRY TJAHJONO', TIMESTAMP '2024-08-27 10:20:18.641', 750000.0, 1.09766E7, 'TR 998');
INSERT INTO O_14 VALUES('240731025051', '240731025000', '1003', 750000.0, 'PENGGANTIAN BAYAR INTERNET / ANDRY TJAHJONO', TIMESTAMP '2024-08-27 10:20:18.642', 0.0, -3.52728632E8, 'TR 998');
INSERT INTO O_14 VALUES('240731026052', '240731026000', '1004', 0.0, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:18.689', 3.3E7, 0.0, 'TR 999');
INSERT INTO O_14 VALUES('240731026053', '240731026000', '1003', 3.3E7, 'KAS LOKASI / JUL', TIMESTAMP '2024-08-27 10:20:18.689', 0.0, -3.85728632E8, 'TR 999');
INSERT INTO O_14 VALUES('240731027054', '240731027000', '3210', 0.0, 'SETORAN PPN / JUL', TIMESTAMP '2024-08-27 10:20:18.715', 2.61734968E8, -1.258030887E9, 'TR 1000');
INSERT INTO O_14 VALUES('240731027055', '240731027000', '1003', 2.61734968E8, 'SETORAN PPN / JUL', TIMESTAMP '2024-08-27 10:20:18.715', 0.0, -6.474636E8, 'TR 1000');
INSERT INTO O_14 VALUES('240731028056', '240731028000', '7001', 0.0, 'PAYROLL KARYAWAN LOKAL / JUL', TIMESTAMP '2024-08-27 10:20:18.754', 9.315312E7, 3.12203622E8, 'TR 1001');
INSERT INTO O_14 VALUES('240731028057', '240731028000', '1003', 9.315312E7, 'PAYROLL KARYAWAN LOKAL / JUL', TIMESTAMP '2024-08-27 10:20:18.754', 0.0, -7.4061672E8, 'TR 1001');
INSERT INTO O_14 VALUES('240731029058', '240731029000', '7006', 0.0, 'TIKET NOVITA BACTIAR / JUL', TIMESTAMP '2024-08-27 10:20:18.788', 7295000.0, 3.0262E7, 'TR 1002');
INSERT INTO O_14 VALUES('240731029059', '240731029000', '3302', 7295000.0, 'TIKET NOVITA BACTIAR / JUL', TIMESTAMP '2024-08-27 10:20:18.788', 0.0, 1.4923948231E10, 'TR 1002');
INSERT INTO O_14 VALUES('240731030060', '240731030000', '1003', 0.0, 'PINDAH BUKU KE MDR 761 / JUL', TIMESTAMP '2024-08-27 10:20:18.822', 9.3116E7, -6.4750072E8, 'TR 1003');
INSERT INTO O_14 VALUES('240731030061', '240731030000', '1003', 9.3116E7, 'PINDAH BUKU KE MDR 761 / JUL', TIMESTAMP '2024-08-27 10:20:18.822', 0.0, -7.4061672E8, 'TR 1003');
INSERT INTO O_14 VALUES('240531033001', '240531033000', '1204', 0.0, 'NSP / INV 14 / Sewa Alat Berat Excavator Doosan  520 Unit A2B Rp. 1.400.000 x 1 hm', TIMESTAMP '2024-08-29 14:58:58.859', 1526000.0, 1526000.0, 'INV-14');
INSERT INTO O_14 VALUES('240531033002', '240531033000', '1501', 0.0, 'NSP / INV 14 / Sewa Alat Berat Excavator Doosan  520 Unit A2B Rp. 1.400.000 x 1 hm', TIMESTAMP '2024-08-29 14:58:58.859', 28000.0, 1.685831686E9, 'INV-14');
INSERT INTO O_14 VALUES('240531033003', '240531033000', '5003', 1400000.0, 'NSP / INV 14 / Sewa Alat Berat Excavator Doosan  520 Unit A2B Rp. 1.400.000 x 1 hm', TIMESTAMP '2024-08-29 14:58:58.859', 0.0, -4.790245E9, 'INV-14');
INSERT INTO O_14 VALUES('240531033004', '240531033000', '3210', 154000.0, 'NSP / INV 14 / Sewa Alat Berat Excavator Doosan  520 Unit A2B Rp. 1.400.000 x 1 hm', TIMESTAMP '2024-08-29 14:58:58.859', 0.0, -2.000091695E9, 'INV-14');
INSERT INTO O_14 VALUES('240731033001', '240731033000', '7020', 0.0, 'Pembebanan biaya leasing alber etika / JUL 24', TIMESTAMP '2024-08-30 14:29:09.738', 8.099626E8, 8.099626E8, 'JU JUL24');
INSERT INTO O_14 VALUES('240731033002', '240731033000', '7021', 0.0, 'Pembebanan biaya leasing alber dhako / JUL 24', TIMESTAMP '2024-08-30 14:29:09.738', 6.9007972E8, 6.9007972E8, 'JU JUL24');
INSERT INTO O_14 VALUES('240731033003', '240731033000', '3301', 8.099626E8, 'Pembebanan biaya leasing alber etika / JUL 24', TIMESTAMP '2024-08-30 14:29:09.738', 0.0, -1.5252146542E10, 'JU JUL24');
INSERT INTO O_14 VALUES('240731033004', '240731033000', '2088', 6.9007972E8, 'Pembebanan biaya leasing alber dhako / JUL 24', TIMESTAMP '2024-08-30 14:29:09.738', 0.0, -1.7356089441E10, 'JU JUL24');
INSERT INTO O_14 VALUES('240731033005', '240731033000', '7013', 0.0, 'Penyusutan Inventaris kantor / JUL 24', TIMESTAMP '2024-08-30 14:29:09.739', 1.0437748E7, 1.0437748E7, 'JU JUL24');
INSERT INTO O_14 VALUES('240731033006', '240731033000', '7014', 0.0, 'Penyusutan Kendaraan / JUL 24', TIMESTAMP '2024-08-30 14:29:09.739', 9041667.0, 9041667.0, 'JU JUL24');
INSERT INTO O_14 VALUES('240731033007', '240731033000', '2099', 1.9479415E7, 'Penyusutan Inventaris & Kendaraan / JUL 24', TIMESTAMP '2024-08-30 14:29:09.739', 0.0, -3.59722867E8, 'JU JUL24');
INSERT INTO O_14 VALUES('240731021001', '240731021000', '7017', 0.0, 'PEMBELIAN SEMEN UTK WORKSHOP / M HERYANSYAH', TIMESTAMP '2024-09-02 13:41:35.297', 1.3795E8, 7.44764E7, 'TR 994');
INSERT INTO O_14 VALUES('240731021002', '240731021000', '1003', 1.3795E8, 'PEMBELIAN SEMEN UTK WORKSHOP / M HERYANSYAH', TIMESTAMP '2024-09-02 13:41:35.297', 0.0, -3.11489532E8, 'TR 994');
INSERT INTO O_14 VALUES('240630020001', '240630020000', '7007', 0.0, 'PERBAIKAN MESIN 5 ALAT / RUKUN AMAN', TIMESTAMP '2024-09-02 13:51:33.086', 4.0201005E8, 4.1351005E8, 'TR 961');
INSERT INTO O_14 VALUES('240630020002', '240630020000', '1501', 2010050.0, 'PPh / PERBAIKAN MESIN 5 ALAT / RUKUN AMAN', TIMESTAMP '2024-09-02 13:51:33.086', 0.0, 1.683541636E9, 'TR 961');
INSERT INTO O_14 VALUES('240630020003', '240630020000', '1003', 4.0E8, 'PERBAIKAN MESIN 5 ALAT / RUKUN AMAN', TIMESTAMP '2024-09-02 13:51:33.086', 0.0, -9.56931581E8, 'TR 961');
INSERT INTO O_14 VALUES('240630020004', '240630020000', '1003', 0.0, 'KOREKSI SEBAGAI SALDO MASUK REKENING BCA113', TIMESTAMP '2024-09-02 13:51:33.086', 4.0E8, -5.56931581E8, 'TR 961');
INSERT INTO O_14 VALUES('240630020005', '240630020000', '7011', 0.0, 'KOREKSI SEBAGAI SALDO MASUK REKENING BCA113', TIMESTAMP '2024-09-02 13:51:33.086', 2010050.0, 8.25397341E8, 'TR 961');
INSERT INTO O_14 VALUES('240630020006', '240630020000', '7007', 4.0201005E8, 'KOREKSI SEBAGAI SALDO MASUK REKENING BCA113', TIMESTAMP '2024-09-02 13:51:33.086', 0.0, 1.15E7, 'TR 961');
INSERT INTO O_14 VALUES('240731032001', '240731032000', '7018', 0.0, 'PEMAKAIAN SOLAR JUL 2024 / 7.049 L', TIMESTAMP '2024-09-02 14:24:03.467', 1.11073641E8, 1.11073641E8, 'SOLAR JUL');
INSERT INTO O_14 VALUES('240731032002', '240731032000', '1403', 0.0, 'PINJAMAN SOLAR DBP JUL 2024 / 4.416 L', TIMESTAMP '2024-09-02 14:24:03.467', 6.9584508E7, 4.56725776E8, 'SOLAR JUL');
INSERT INTO O_14 VALUES('240731032003', '240731032000', '1106', 1.80658149E8, 'PENGELUARAN SOLAR / JUL 2024', TIMESTAMP '2024-09-02 14:24:03.467', 0.0, 1.34085451E8, 'SOLAR JUL');
INSERT INTO O_14 VALUES('240731032004', '240731032000', '1106', 0.0, '20.000 LITER / PO 3356 PR 3528 / LONG IRAM', TIMESTAMP '2024-09-02 14:24:03.467', 3.25478E8, 4.59563451E8, 'SOLAR JUL');
INSERT INTO O_14 VALUES('240731032005', '240731032000', '3001', 3.25478E8, '20.000 LITER / PO 3356 PR 3528 / LONG IRAM', TIMESTAMP '2024-09-02 14:24:03.467', 0.0, -3.25478E8, 'SOLAR JUL');
INSERT INTO O_14 VALUES('240731035001', '240731035000', '7001', 3.12203622E8, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035002', '240731035000', '7004', 1.09766E7, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035003', '240731035000', '7005', 172500.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035004', '240731035000', '7006', 3.0262E7, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035005', '240731035000', '7007', 0.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 4.0201005E8, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035006', '240731035000', '7008', 380000.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035007', '240731035000', '7009', 921540.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035008', '240731035000', '7010', 2507000.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035009', '240731035000', '7011', 4301172.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035010', '240731035000', '7012', 1.7837341E7, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035011', '240731035000', '7013', 1.0437748E7, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035012', '240731035000', '7014', 9041667.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035013', '240731035000', '7016', 1.81783272E8, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035014', '240731035000', '7017', 1.544764E8, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, -8.0E7, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035015', '240731035000', '7018', 1.11073641E8, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035016', '240731035000', '7020', 8.099626E8, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.862', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035017', '240731035000', '7021', 6.9007972E8, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.871', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035018', '240731035000', '7022', 4000000.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.871', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035019', '240731035000', '7023', 910000.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.871', 0.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035020', '240731035000', '9001', 0.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.873', 815902.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035021', '240731035000', '9003', 0.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.873', 2702416.0, 0.0, 'CL JUL24');
INSERT INTO O_14 VALUES('240731035022', '240731035000', '4103', 0.0, 'PENUTUPAN LABARUGI JULI 2024', TIMESTAMP '2024-09-02 14:32:38.873', 1.945798455E9, -1.665365076E9, 'CL JUL24');
INSERT INTO O_14 VALUES('240331031001', '240331031000', '3002', 0.0, 'MOBILISASI / BUM', TIMESTAMP '2024-09-03 14:01:29.835', 8.0E7, 0.0, 'TR 906');
INSERT INTO O_14 VALUES('240331031002', '240331031000', '1003', 8.0E7, 'MOBILISASI / BUM', TIMESTAMP '2024-09-03 14:01:29.837', 0.0, -9.0110255E8, 'TR 906');
INSERT INTO O_14 VALUES('240831007001', '240831007000', '1004', 0.0, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:26.036', 2.5E7, 2.5E7, 'TR 1004');
INSERT INTO O_14 VALUES('240831007002', '240831007000', '1003', 2.5E7, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:26.036', 0.0, 1.539196225E9, 'TR 1004');
INSERT INTO O_14 VALUES('240831008003', '240831008000', '7012', 0.0, 'PEMBAYARAN BPJS KESEHATAN / AGT', TIMESTAMP '2024-09-18 10:05:26.212', 3155151.0, 3155151.0, 'TR 1005');
INSERT INTO O_14 VALUES('240831008004', '240831008000', '1003', 3155151.0, 'PEMBAYARAN BPJS KESEHATAN / AGT', TIMESTAMP '2024-09-18 10:05:26.212', 0.0, 1.536041074E9, 'TR 1005');
INSERT INTO O_14 VALUES('240831009005', '240831009000', '7012', 0.0, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / AGT', TIMESTAMP '2024-09-18 10:05:26.286', 1.496975E7, 1.8124901E7, 'TR 1006');
INSERT INTO O_14 VALUES('240831009006', '240831009000', '1003', 1.496975E7, 'PEMBAYARAN BPJS KETENAGAKERAJAAN / AGT', TIMESTAMP '2024-09-18 10:05:26.286', 0.0, 1.521071324E9, 'TR 1006');
INSERT INTO O_14 VALUES('240831010007', '240831010000', '7001', 0.0, 'UANG LEMBUR / HAMID', TIMESTAMP '2024-09-18 10:05:26.393', 2416000.0, 2416000.0, 'TR 1007');
INSERT INTO O_14 VALUES('240831010008', '240831010000', '7001', 0.0, 'UANG LEMBUR / RIFAI', TIMESTAMP '2024-09-18 10:05:26.393', 2815000.0, 5231000.0, 'TR 1007');
INSERT INTO O_14 VALUES('240831010009', '240831010000', '7001', 0.0, 'UANG LEMBUR / AGUS M', TIMESTAMP '2024-09-18 10:05:26.393', 2416000.0, 7647000.0, 'TR 1007');
INSERT INTO O_14 VALUES('240831010010', '240831010000', '7001', 0.0, 'UANG LEMBUR / SAFII', TIMESTAMP '2024-09-18 10:05:26.393', 2416000.0, 1.0063E7, 'TR 1007');
INSERT INTO O_14 VALUES('240831010011', '240831010000', '7001', 0.0, 'UANG LEMBUR / HANI', TIMESTAMP '2024-09-18 10:05:26.394', 1120000.0, 1.1183E7, 'TR 1007');
INSERT INTO O_14 VALUES('240831010012', '240831010000', '1003', 1.1183E7, 'UANG LEMBUR & UANG HARIAN', TIMESTAMP '2024-09-18 10:05:26.394', 0.0, 1.509888324E9, 'TR 1007');
INSERT INTO O_14 VALUES('240831011013', '240831011000', '1004', 0.0, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:26.568', 1.8E7, 4.3E7, 'TR 1014');
INSERT INTO O_14 VALUES('240831011014', '240831011000', '1003', 1.8E7, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:26.568', 0.0, 1.491888324E9, 'TR 1014');
INSERT INTO O_14 VALUES('240831012015', '240831012000', '7011', 0.0, 'PPh 21 23 25 / AGT', TIMESTAMP '2024-09-18 10:05:26.627', 954907.0, 954907.0, 'TR 1015');
INSERT INTO O_14 VALUES('240831012016', '240831012000', '1003', 954907.0, 'PPh 21 23 25 / AGT', TIMESTAMP '2024-09-18 10:05:26.627', 0.0, 1.490933417E9, 'TR 1015');
INSERT INTO O_14 VALUES('240831013017', '240831013000', '1004', 0.0, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:26.677', 1.7E7, 6.0E7, 'TR 1016');
INSERT INTO O_14 VALUES('240831013018', '240831013000', '1003', 1.7E7, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:26.677', 0.0, 1.473933417E9, 'TR 1016');
INSERT INTO O_14 VALUES('240831014019', '240831014000', '7004', 0.0, 'TAGIHAN INTERNET AGT / 2024', TIMESTAMP '2024-09-18 10:05:26.741', 5000000.0, 5000000.0, 'TR 1017');
INSERT INTO O_14 VALUES('240831014020', '240831014000', '1502', 0.0, 'PPN TAGIHAN INTERNET AGT / 2024', TIMESTAMP '2024-09-18 10:05:26.741', 550000.0, 3.10168547E8, 'TR 1017');
INSERT INTO O_14 VALUES('240831014021', '240831014000', '3220', 100000.0, 'PPh TAGIHAN INTERNET AGT / 2024', TIMESTAMP '2024-09-18 10:05:26.741', 0.0, -1.3757262E7, 'TR 1017');
INSERT INTO O_14 VALUES('240831014022', '240831014000', '1003', 5450000.0, 'TAGIHAN INTERNET AGT / 2024', TIMESTAMP '2024-09-18 10:05:26.741', 0.0, 1.468483417E9, 'TR 1017');
INSERT INTO O_14 VALUES('240831015023', '240831015000', '7006', 0.0, 'TIKET NOVITA BACTIAR / AGT', TIMESTAMP '2024-09-18 10:05:26.834', 6590000.0, 6590000.0, 'TR 1018');
INSERT INTO O_14 VALUES('240831015024', '240831015000', '3302', 6590000.0, 'TIKET NOVITA BACTIAR / AGT', TIMESTAMP '2024-09-18 10:05:26.836', 0.0, 1.8055308231E10, 'TR 1018');
INSERT INTO O_14 VALUES('240831016025', '240831016000', '1004', 0.0, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:26.91', 3.5E7, 9.5E7, 'TR 1019');
INSERT INTO O_14 VALUES('240831016026', '240831016000', '1003', 3.5E7, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:26.91', 0.0, 1.433483417E9, 'TR 1019');
INSERT INTO O_14 VALUES('240831017027', '240831017000', '7004', 0.0, 'PENGGANTIAN BAYAR INTERNET / ANDRY TJAHJONO /  AGT', TIMESTAMP '2024-09-18 10:05:26.971', 750000.0, 5750000.0, 'TR 1020');
INSERT INTO O_14 VALUES('240831017028', '240831017000', '1003', 750000.0, 'PENGGANTIAN BAYAR INTERNET / ANDRY TJAHJONO /  AGT', TIMESTAMP '2024-09-18 10:05:26.971', 0.0, 1.432733417E9, 'TR 1020');
INSERT INTO O_14 VALUES('240831018029', '240831018000', '1502', 0.0, 'PPN / 20.000 LITER SOLAR / AGT / LONG IRAM', TIMESTAMP '2024-09-18 10:05:27.031', 3.3661892E7, 3.43830439E8, 'TR 1021');
INSERT INTO O_14 VALUES('240831018030', '240831018000', '7006', 0.0, 'TRANSPORT / 20.000 LITER SOLAR / AGT / LONG IRAM', TIMESTAMP '2024-09-18 10:05:27.034', 1.4E7, 2.059E7, 'TR 1021');
INSERT INTO O_14 VALUES('240831018031', '240831018000', '1502', 0.0, 'PPN / 20.000 LITER SOLAR / AGT / LONG IRAM', TIMESTAMP '2024-09-18 10:05:27.034', 1540000.0, 3.45370439E8, 'TR 1021');
INSERT INTO O_14 VALUES('240831018032', '240831018000', '1501', 280000.0, 'PPh / 20.000 LITER SOLAR / AGT / LONG IRAM', TIMESTAMP '2024-09-18 10:05:27.035', 0.0, 1.683161636E9, 'TR 1021');
INSERT INTO O_14 VALUES('240831018033', '240831018000', '3001', 4.8921892E7, '20.000 LITER SOLAR / AGT / LONG IRAM', TIMESTAMP '2024-09-18 10:05:27.035', 0.0, -3.74399892E8, 'TR 1021');
INSERT INTO O_14 VALUES('240831018034', '240831018000', '3001', 0.0, '20.000 LITER SOLAR / AGT / LONG IRAM', TIMESTAMP '2024-09-18 10:05:27.035', 3.74399892E8, 0.0, 'TR 1021');
INSERT INTO O_14 VALUES('240831018035', '240831018000', '1003', 3.744027E8, '20.000 LITER SOLAR / AGT / LONG IRAM', TIMESTAMP '2024-09-18 10:05:27.035', 0.0, 1.058330717E9, 'TR 1021');
INSERT INTO O_14 VALUES('240831018036', '240831018000', '9001', 0.0, '20.000 LITER SOLAR / AGT / LONG IRAM', TIMESTAMP '2024-09-18 10:05:27.036', 2808.0, -527920.0, 'TR 1021');
INSERT INTO O_14 VALUES('240831019037', '240831019000', '7017', 0.0, 'TR INTERN / 920 SD 931', TIMESTAMP '2024-09-18 10:05:27.094', 3.0282E7, -4.9718E7, 'TR 1022');
INSERT INTO O_14 VALUES('240831019038', '240831019000', '1003', 3.0282E7, 'TR INTERN / 920 SD 931', TIMESTAMP '2024-09-18 10:05:27.094', 0.0, 1.028048717E9, 'TR 1022');
INSERT INTO O_14 VALUES('240831020039', '240831020000', '7017', 0.0, 'TR INTERN / 911 SD 919', TIMESTAMP '2024-09-18 10:05:27.149', 1.071465E8, 5.74285E7, 'TR 1023');
INSERT INTO O_14 VALUES('240831020040', '240831020000', '1003', 1.071465E8, 'TR INTERN / 911 SD 919', TIMESTAMP '2024-09-18 10:05:27.15', 0.0, 9.20902217E8, 'TR 1023');
INSERT INTO O_14 VALUES('240831021041', '240831021000', '7017', 0.0, 'TR INTERN / 932 SD 940', TIMESTAMP '2024-09-18 10:05:27.195', 4.5396E7, 1.028245E8, 'TR 1024');
INSERT INTO O_14 VALUES('240831021042', '240831021000', '1003', 4.5396E7, 'TR INTERN / 932 SD 940', TIMESTAMP '2024-09-18 10:05:27.195', 0.0, 8.75506217E8, 'TR 1024');
INSERT INTO O_14 VALUES('240831022043', '240831022000', '7017', 0.0, 'TR INTERN / 941 SD 956', TIMESTAMP '2024-09-18 10:05:27.244', 1.5340848E7, 1.18165348E8, 'TR 1025');
INSERT INTO O_14 VALUES('240831022044', '240831022000', '1003', 1.5340848E7, 'TR INTERN / 941 SD 956', TIMESTAMP '2024-09-18 10:05:27.245', 0.0, 8.60165369E8, 'TR 1025');
INSERT INTO O_14 VALUES('240831023045', '240831023000', '1004', 0.0, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:27.293', 1.5E7, 1.1E8, 'TR 1026');
INSERT INTO O_14 VALUES('240831023046', '240831023000', '1003', 1.5E7, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:27.293', 0.0, 8.45165369E8, 'TR 1026');
INSERT INTO O_14 VALUES('240831024047', '240831024000', '7011', 0.0, 'SSP PPh 29 / 2024', TIMESTAMP '2024-09-18 10:05:27.336', 1.5220737E7, 1.6175644E7, 'TR 1027');
INSERT INTO O_14 VALUES('240831024048', '240831024000', '1003', 1.5220737E7, 'SSP PPh 29 / 2024', TIMESTAMP '2024-09-18 10:05:27.336', 0.0, 8.29944632E8, 'TR 1027');
INSERT INTO O_14 VALUES('240831025049', '240831025000', '1004', 0.0, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:27.388', 2.5E7, 1.35E8, 'TR 1028');
INSERT INTO O_14 VALUES('240831025050', '240831025000', '1003', 2.5E7, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:27.388', 0.0, 8.04944632E8, 'TR 1028');
INSERT INTO O_14 VALUES('240831026051', '240831026000', '7004', 0.0, 'COMITMENT FEE / BFI AGT', TIMESTAMP '2024-09-18 10:05:27.439', 482000.0, 6232000.0, 'TR 1029');
INSERT INTO O_14 VALUES('240831026052', '240831026000', '1003', 482000.0, 'COMITMENT FEE / BFI AGT', TIMESTAMP '2024-09-18 10:05:27.442', 0.0, 8.04462632E8, 'TR 1029');
INSERT INTO O_14 VALUES('240831027053', '240831027000', '7016', 0.0, 'PO 3360 3361 / HINO MOTOR', TIMESTAMP '2024-09-18 10:05:27.499', 3.6967839E7, 3.6967839E7, 'TR 1030');
INSERT INTO O_14 VALUES('240831027054', '240831027000', '1502', 0.0, 'PPN PO 3360 3361 / HINO MOTOR', TIMESTAMP '2024-09-18 10:05:27.499', 4066463.0, 3.49436902E8, 'TR 1030');
INSERT INTO O_14 VALUES('240831027055', '240831027000', '1003', 4.1034302E7, 'PO 3360 3361 / HINO MOTOR', TIMESTAMP '2024-09-18 10:05:27.5', 0.0, 7.6342833E8, 'TR 1030');
INSERT INTO O_14 VALUES('240831028056', '240831028000', '7016', 0.0, 'PO 3363 3364 / HINO MOTOR', TIMESTAMP '2024-09-18 10:05:27.594', 4.0764E7, 7.7731839E7, 'TR 1031');
INSERT INTO O_14 VALUES('240831028057', '240831028000', '1502', 0.0, 'PPN PO 3363 3364 / HINO MOTOR', TIMESTAMP '2024-09-18 10:05:27.594', 4484040.0, 3.53920942E8, 'TR 1031');
INSERT INTO O_14 VALUES('240831028058', '240831028000', '1003', 4.524804E7, 'PO 3363 3364 / HINO MOTOR', TIMESTAMP '2024-09-18 10:05:27.594', 0.0, 7.1818029E8, 'TR 1031');
INSERT INTO O_14 VALUES('240831029059', '240831029000', '3210', 0.0, 'SETORAN PPN / AGT', TIMESTAMP '2024-09-18 10:05:27.696', 2.69276407E8, -9.8875448E8, 'TR 1032');
INSERT INTO O_14 VALUES('240831029060', '240831029000', '1003', 2.69276407E8, 'SETORAN PPN / AGT', TIMESTAMP '2024-09-18 10:05:27.697', 0.0, 4.48903883E8, 'TR 1032');
INSERT INTO O_14 VALUES('240831030061', '240831030000', '7006', 0.0, 'TIKET NOVITA BACTIAR / AGT', TIMESTAMP '2024-09-18 10:05:27.761', 1.475E7, 3.534E7, 'TR 1033');
INSERT INTO O_14 VALUES('240831030062', '240831030000', '3302', 1.475E7, 'TIKET NOVITA BACTIAR / AGT', TIMESTAMP '2024-09-18 10:05:27.762', 0.0, 1.8040558231E10, 'TR 1033');
INSERT INTO O_14 VALUES('240831031063', '240831031000', '7011', 0.0, 'SSP PPh 29 / 2024', TIMESTAMP '2024-09-18 10:05:27.83', 8.3922254E7, 1.00097898E8, 'TR 1034');
INSERT INTO O_14 VALUES('240831031064', '240831031000', '1003', 8.3922254E7, 'SSP PPh 29 / 2024', TIMESTAMP '2024-09-18 10:05:27.83', 0.0, 3.64981629E8, 'TR 1034');
INSERT INTO O_14 VALUES('240831032065', '240831032000', '1004', 0.0, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:27.897', 2.25E7, 1.575E8, 'TR 1035');
INSERT INTO O_14 VALUES('240831032066', '240831032000', '1003', 2.25E7, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:27.897', 0.0, 3.42481629E8, 'TR 1035');
INSERT INTO O_14 VALUES('240831033067', '240831033000', '7011', 0.0, 'SSP PPh 29 / 2024', TIMESTAMP '2024-09-18 10:05:27.963', 1.16975804E8, 2.17073702E8, 'TR 1036');
INSERT INTO O_14 VALUES('240831033068', '240831033000', '1003', 1.16975804E8, 'SSP PPh 29 / 2024', TIMESTAMP '2024-09-18 10:05:27.964', 0.0, 2.25505825E8, 'TR 1036');
INSERT INTO O_14 VALUES('240831034069', '240831034000', '7004', 0.0, 'FEE KONSULTAN PAJAK / AGUNG SUHERMIN / AGT', TIMESTAMP '2024-09-18 10:05:28.063', 6.0E7, 6.6232E7, 'TR 1037');
INSERT INTO O_14 VALUES('240831034070', '240831034000', '1501', 1200000.0, 'PPh / FEE KONSULTAN PAJAK / AGUNG SUHERMIN / AGT', TIMESTAMP '2024-09-18 10:05:28.064', 0.0, 1.681961636E9, 'TR 1037');
INSERT INTO O_14 VALUES('240831034071', '240831034000', '1003', 5.88E7, 'FEE KONSULTAN PAJAK / AGUNG SUHERMIN / AGT', TIMESTAMP '2024-09-18 10:05:28.064', 0.0, 1.66705825E8, 'TR 1037');
INSERT INTO O_14 VALUES('240831035072', '240831035000', '7001', 0.0, 'PAYROLL BULAN AGT', TIMESTAMP '2024-09-18 10:05:28.147', 9.7405E7, 1.08588E8, 'TR 1038');
INSERT INTO O_14 VALUES('240831035073', '240831035000', '1003', 9.7405E7, 'PAYROLL BULAN AGT', TIMESTAMP '2024-09-18 10:05:28.147', 0.0, 6.9300825E7, 'TR 1038');
INSERT INTO O_14 VALUES('240831036074', '240831036000', '7001', 0.0, 'PKWT 7 ORANG AGT', TIMESTAMP '2024-09-18 10:05:28.221', 1.1553967E7, 1.20141967E8, 'TR 1039');
INSERT INTO O_14 VALUES('240831036075', '240831036000', '1003', 1.1553967E7, 'PKWT 7 ORANG AGT', TIMESTAMP '2024-09-18 10:05:28.221', 0.0, 5.7746858E7, 'TR 1039');
INSERT INTO O_14 VALUES('240831037076', '240831037000', '7001', 0.0, 'PAYROLL BULAN AGT', TIMESTAMP '2024-09-18 10:05:28.284', 9.5361675E7, 2.15503642E8, 'TR 1040');
INSERT INTO O_14 VALUES('240831037077', '240831037000', '1003', 9.5361675E7, 'PAYROLL BULAN AGT', TIMESTAMP '2024-09-18 10:05:28.284', 0.0, -3.7614817E7, 'TR 1040');
INSERT INTO O_14 VALUES('240831038078', '240831038000', '7001', 0.0, 'PKWT 8 ORANG AGT', TIMESTAMP '2024-09-18 10:05:28.319', 9280000.0, 2.24783642E8, 'TR 1041');
INSERT INTO O_14 VALUES('240831038079', '240831038000', '1003', 9280000.0, 'PKWT 8 ORANG AGT', TIMESTAMP '2024-09-18 10:05:28.319', 0.0, -4.6894817E7, 'TR 1041');
INSERT INTO O_14 VALUES('240831039080', '240831039000', '1004', 0.0, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:28.362', 2.0E7, 1.775E8, 'TR 1042');
INSERT INTO O_14 VALUES('240831039081', '240831039000', '1003', 2.0E7, 'KAS LOKASI / AGT', TIMESTAMP '2024-09-18 10:05:28.362', 0.0, -6.6894817E7, 'TR 1042');
CREATE TABLE O_4(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR, C6 VARCHAR);
INSERT INTO O_4 VALUES(1, 'PT ETIKA DK                                                                                         ', 'Jalan Raya Kendangsari No 11                                                                                                                                                                            ', NULL, NULL, '083129345215        ', NULL);
CREATE TABLE O_6(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR);
INSERT INTO O_6 VALUES('1                   ', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b                                    ', 0);
CREATE TABLE O_263(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR);
INSERT INTO O_263 VALUES('240131008000', DATE '2024-01-31', 'INV-01 DBP', DATE '2024-01-31', TIMESTAMP '2024-03-06 10:52:06.432', 2);
INSERT INTO O_263 VALUES('240131009000', DATE '2024-01-31', 'INV-02 DBP', DATE '2024-01-31', TIMESTAMP '2024-03-06 10:52:06.448', 2);
INSERT INTO O_263 VALUES('240131010000', DATE '2024-01-31', 'INV-03 DBP', DATE '2024-01-31', TIMESTAMP '2024-03-06 10:52:06.464', 2);
INSERT INTO O_263 VALUES('240131011000', DATE '2024-01-31', 'Solar Jan', DATE '2024-01-31', TIMESTAMP '2024-03-06 14:09:08.52', 0);
INSERT INTO O_263 VALUES('240118001000', DATE '2024-01-18', 'TR 795', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:45.962', 1);
INSERT INTO O_263 VALUES('240118002000', DATE '2024-01-18', 'TR 796', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:45.978', 1);
INSERT INTO O_263 VALUES('240118003000', DATE '2024-01-18', 'TR 797', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.009', 1);
INSERT INTO O_263 VALUES('240118004000', DATE '2024-01-18', 'TR 798', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.071', 1);
INSERT INTO O_263 VALUES('240118005000', DATE '2024-01-18', 'TR 799', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.087', 1);
INSERT INTO O_263 VALUES('240118006000', DATE '2024-01-18', 'TR 800', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.087', 1);
INSERT INTO O_263 VALUES('240118007000', DATE '2024-01-18', 'TR 801', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.103', 1);
INSERT INTO O_263 VALUES('240118008000', DATE '2024-01-18', 'TR 803', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.118', 1);
INSERT INTO O_263 VALUES('240118009000', DATE '2024-01-18', 'TR 804', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.134', 1);
INSERT INTO O_263 VALUES('240118010000', DATE '2024-01-18', 'TR 805', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.15', 1);
INSERT INTO O_263 VALUES('240118011000', DATE '2024-01-18', 'TR 806', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.165', 1);
INSERT INTO O_263 VALUES('240118012000', DATE '2024-01-18', 'TR 807', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.181', 1);
INSERT INTO O_263 VALUES('240118013000', DATE '2024-01-18', 'TR 808', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.196', 1);
INSERT INTO O_263 VALUES('240118014000', DATE '2024-01-18', 'TR 809', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.196', 1);
INSERT INTO O_263 VALUES('240118015000', DATE '2024-01-18', 'TR 810', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.212', 1);
INSERT INTO O_263 VALUES('240118016000', DATE '2024-01-18', 'TR 811', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.228', 1);
INSERT INTO O_263 VALUES('240118017000', DATE '2024-01-18', 'TR 813', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.243', 1);
INSERT INTO O_263 VALUES('240118018000', DATE '2024-01-18', 'TR 815', DATE '2024-01-18', TIMESTAMP '2024-03-06 15:38:46.259', 1);
INSERT INTO O_263 VALUES('240101004000', DATE '2024-01-01', 'SO 2024', DATE '2024-01-01', TIMESTAMP '2024-04-03 15:14:02.415', 0);
INSERT INTO O_263 VALUES('240131016000', DATE '2024-01-31', 'TR 816', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.472', 1);
INSERT INTO O_263 VALUES('240131017000', DATE '2024-01-31', 'TR 817', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.488', 1);
INSERT INTO O_263 VALUES('240131018000', DATE '2024-01-31', 'TR 818', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.488', 1);
INSERT INTO O_263 VALUES('240131019000', DATE '2024-01-31', 'TR 819', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.503', 1);
INSERT INTO O_263 VALUES('240131020000', DATE '2024-01-31', 'TR 820', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.535', 1);
INSERT INTO O_263 VALUES('240131021000', DATE '2024-01-31', 'TR 821', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.535', 1);
INSERT INTO O_263 VALUES('240131022000', DATE '2024-01-31', 'TR 822', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.55', 1);
INSERT INTO O_263 VALUES('240131023000', DATE '2024-01-31', 'TR 823', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.566', 1);
INSERT INTO O_263 VALUES('240131024000', DATE '2024-01-31', 'TR 825', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.581', 1);
INSERT INTO O_263 VALUES('240131025000', DATE '2024-01-31', 'TR 826', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.597', 1);
INSERT INTO O_263 VALUES('240131026000', DATE '2024-01-31', 'TR 827', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.613', 1);
INSERT INTO O_263 VALUES('240131027000', DATE '2024-01-31', 'TR 828', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.644', 1);
INSERT INTO O_263 VALUES('240131028000', DATE '2024-01-31', 'TR 829', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.66', 1);
INSERT INTO O_263 VALUES('240131029000', DATE '2024-01-31', 'TR 831', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.675', 1);
INSERT INTO O_263 VALUES('240131030000', DATE '2024-01-31', 'TR 846', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.706', 1);
INSERT INTO O_263 VALUES('240131031000', DATE '2024-01-31', 'TR 847', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.722', 1);
INSERT INTO O_263 VALUES('240131032000', DATE '2024-01-31', 'TR 847A', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.738', 1);
INSERT INTO O_263 VALUES('240131033000', DATE '2024-01-31', 'TR 848', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.753', 1);
INSERT INTO O_263 VALUES('240131034000', DATE '2024-01-31', 'TR 849', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.785', 1);
INSERT INTO O_263 VALUES('240131035000', DATE '2024-01-31', 'TR 850', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.8', 1);
INSERT INTO O_263 VALUES('240131036000', DATE '2024-01-31', 'TR 851', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.816', 1);
INSERT INTO O_263 VALUES('240131037000', DATE '2024-01-31', 'TR 852', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.816', 1);
INSERT INTO O_263 VALUES('240131038000', DATE '2024-01-31', 'TR 853', DATE '2024-01-31', TIMESTAMP '2024-04-05 09:08:45.847', 1);
INSERT INTO O_263 VALUES('240131046000', DATE '2024-01-31', 'WG JAN2024', DATE '2024-01-31', TIMESTAMP '2024-04-05 15:05:59.096', 0);
INSERT INTO O_263 VALUES('240131047000', DATE '2024-01-31', 'LEASING ALAT', DATE '2024-01-31', TIMESTAMP '2024-04-05 15:05:59.112', 0);
INSERT INTO O_263 VALUES('240131048000', DATE '2024-01-31', 'INT SSDK', DATE '2024-01-31', TIMESTAMP '2024-04-05 16:35:54.26', 0);
INSERT INTO O_263 VALUES('240131049000', DATE '2024-01-31', 'CL Jan24', DATE '2024-01-31', TIMESTAMP '2024-04-18 08:47:18.269', 0);
INSERT INTO O_263 VALUES('240229001000', DATE '2024-02-29', 'SOLAR FEB', DATE '2024-02-29', TIMESTAMP '2024-04-18 09:05:09.361', 0);
INSERT INTO O_263 VALUES('240229009000', DATE '2024-02-29', 'INT SSDK', DATE '2024-02-29', TIMESTAMP '2024-04-18 14:49:27.323', 0);
INSERT INTO O_263 VALUES('240229017000', DATE '2024-02-29', 'TR 832', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:44.934', 1);
INSERT INTO O_263 VALUES('240229018000', DATE '2024-02-29', 'TR 833', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.044', 1);
INSERT INTO O_263 VALUES('240229019000', DATE '2024-02-29', 'TR 835', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.084', 1);
INSERT INTO O_263 VALUES('240229020000', DATE '2024-02-29', 'TR 836', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.107', 1);
INSERT INTO O_263 VALUES('240229021000', DATE '2024-02-29', 'TR 837', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.144', 1);
INSERT INTO O_263 VALUES('240229022000', DATE '2024-02-29', 'TR 838', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.177', 1);
INSERT INTO O_263 VALUES('240229023000', DATE '2024-02-29', 'TR 839', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.203', 1);
INSERT INTO O_263 VALUES('240229024000', DATE '2024-02-29', 'TR 840', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.231', 1);
INSERT INTO O_263 VALUES('240229025000', DATE '2024-02-29', 'TR 841', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.269', 1);
INSERT INTO O_263 VALUES('240229026000', DATE '2024-02-29', 'TR 842', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.324', 1);
INSERT INTO O_263 VALUES('240229027000', DATE '2024-02-29', 'TR 843', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.373', 1);
INSERT INTO O_263 VALUES('240229028000', DATE '2024-02-29', 'TR 844', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.408', 1);
INSERT INTO O_263 VALUES('240229030000', DATE '2024-02-29', 'TR 854', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.477', 1);
INSERT INTO O_263 VALUES('240229031000', DATE '2024-02-29', 'TR 855', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.511', 1);
INSERT INTO O_263 VALUES('240229032000', DATE '2024-02-29', 'TR 856', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.532', 1);
INSERT INTO O_263 VALUES('240229033000', DATE '2024-02-29', 'TR 857', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.549', 1);
INSERT INTO O_263 VALUES('240229034000', DATE '2024-02-29', 'TR 858', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.571', 1);
INSERT INTO O_263 VALUES('240229035000', DATE '2024-02-29', 'TR 859', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.589', 1);
INSERT INTO O_263 VALUES('240229036000', DATE '2024-02-29', 'TR 861', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.607', 1);
INSERT INTO O_263 VALUES('240229037000', DATE '2024-02-29', 'TR 862', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.63', 1);
INSERT INTO O_263 VALUES('240229038000', DATE '2024-02-29', 'TR 863', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.646', 1);
INSERT INTO O_263 VALUES('240229039000', DATE '2024-02-29', 'TR 863A', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.669', 1);
INSERT INTO O_263 VALUES('240229040000', DATE '2024-02-29', 'TR 864', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.69', 1);
INSERT INTO O_263 VALUES('240229041000', DATE '2024-02-29', 'TR 865', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.715', 1);
INSERT INTO O_263 VALUES('240229042000', DATE '2024-02-29', 'TR 866', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.749', 1);
INSERT INTO O_263 VALUES('240229043000', DATE '2024-02-29', 'TR 867', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.765', 1);
INSERT INTO O_263 VALUES('240229044000', DATE '2024-02-29', 'TR 868', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.785', 1);
INSERT INTO O_263 VALUES('240229045000', DATE '2024-02-29', 'TR 870', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:45.817', 1);
INSERT INTO O_263 VALUES('240229050000', DATE '2024-02-29', 'TR 875', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:46.002', 1);
INSERT INTO O_263 VALUES('240229051000', DATE '2024-02-29', 'TR 876', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:46.028', 1);
INSERT INTO O_263 VALUES('240229052000', DATE '2024-02-29', 'TR 877', DATE '2024-02-29', TIMESTAMP '2024-04-23 15:00:46.053', 1);
INSERT INTO O_263 VALUES('240201001000', DATE '2024-02-01', 'TR 845', DATE '2024-02-01', TIMESTAMP '2024-04-23 16:14:48.146', 1);
INSERT INTO O_263 VALUES('240229053000', DATE '2024-02-29', 'INV-04 DBP', DATE '2024-02-29', TIMESTAMP '2024-04-24 14:39:37.428', 2);
INSERT INTO O_263 VALUES('240229054000', DATE '2024-02-29', 'INV-05 DBP', DATE '2024-02-29', TIMESTAMP '2024-04-24 14:39:37.46', 2);
INSERT INTO O_263 VALUES('240229055000', DATE '2024-02-29', 'INV-06 DBP', DATE '2024-02-29', TIMESTAMP '2024-04-25 09:22:29.788', 2);
INSERT INTO O_263 VALUES('240229056000', DATE '2024-02-29', 'INV-07 DBP', DATE '2024-02-29', TIMESTAMP '2024-04-25 09:22:29.881', 2);
INSERT INTO O_263 VALUES('240229057000', DATE '2024-02-29', 'INV-08 DBP', DATE '2024-02-29', TIMESTAMP '2024-04-25 09:22:29.928', 2);
INSERT INTO O_263 VALUES('240229058000', DATE '2024-02-29', 'CL Feb24', DATE '2024-02-29', TIMESTAMP '2024-04-25 14:01:25.082', 0);
INSERT INTO O_263 VALUES('240331001000', DATE '2024-03-31', 'TR 871', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.192', 1);
INSERT INTO O_263 VALUES('240331002000', DATE '2024-03-31', 'TR 872', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.27', 1);
INSERT INTO O_263 VALUES('240331003000', DATE '2024-03-31', 'TR 873', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.317', 1);
INSERT INTO O_263 VALUES('240331004000', DATE '2024-03-31', 'TR 874', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.426', 1);
INSERT INTO O_263 VALUES('240331006000', DATE '2024-03-31', 'TR 879', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.551', 1);
INSERT INTO O_263 VALUES('240331007000', DATE '2024-03-31', 'TR 880', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.598', 1);
INSERT INTO O_263 VALUES('240331008000', DATE '2024-03-31', 'TR 881', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.629', 1);
INSERT INTO O_263 VALUES('240331009000', DATE '2024-03-31', 'TR 882', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.676', 1);
INSERT INTO O_263 VALUES('240331010000', DATE '2024-03-31', 'TR 883', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.707', 1);
INSERT INTO O_263 VALUES('240331011000', DATE '2024-03-31', 'TR 884', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.739', 1);
INSERT INTO O_263 VALUES('240331012000', DATE '2024-03-31', 'TR 885', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.754', 1);
INSERT INTO O_263 VALUES('240331013000', DATE '2024-03-31', 'TR 886', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.785', 1);
INSERT INTO O_263 VALUES('240331014000', DATE '2024-03-31', 'TR 887', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.801', 1);
INSERT INTO O_263 VALUES('240331015000', DATE '2024-03-31', 'TR 888', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.832', 1);
INSERT INTO O_263 VALUES('240331016000', DATE '2024-03-31', 'TR 889', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.848', 1);
INSERT INTO O_263 VALUES('240331017000', DATE '2024-03-31', 'TR 890', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.879', 1);
INSERT INTO O_263 VALUES('240331018000', DATE '2024-03-31', 'TR 891', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.91', 1);
INSERT INTO O_263 VALUES('240331019000', DATE '2024-03-31', 'TR 892', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.957', 1);
INSERT INTO O_263 VALUES('240331020000', DATE '2024-03-31', 'TR 893', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:55.989', 1);
INSERT INTO O_263 VALUES('240331021000', DATE '2024-03-31', 'TR 894', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.004', 1);
INSERT INTO O_263 VALUES('240331022000', DATE '2024-03-31', 'TR 895', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.035', 1);
INSERT INTO O_263 VALUES('240331023000', DATE '2024-03-31', 'TR 897', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.051', 1);
INSERT INTO O_263 VALUES('240331024000', DATE '2024-03-31', 'TR 899', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.067', 1);
INSERT INTO O_263 VALUES('240331025000', DATE '2024-03-31', 'TR 900', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.082', 1);
INSERT INTO O_263 VALUES('240331026000', DATE '2024-03-31', 'TR 901', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.114', 1);
INSERT INTO O_263 VALUES('240331027000', DATE '2024-03-31', 'TR 902', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.145', 1);
INSERT INTO O_263 VALUES('240331028000', DATE '2024-03-31', 'TR 903', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.16', 1);
INSERT INTO O_263 VALUES('240331029000', DATE '2024-03-31', 'TR 904', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.176', 1);
INSERT INTO O_263 VALUES('240331031000', DATE '2024-03-31', 'TR 906', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.207', 1);
INSERT INTO O_263 VALUES('240331032000', DATE '2024-03-31', 'TR 907', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.239', 1);
INSERT INTO O_263 VALUES('240331033000', DATE '2024-03-31', 'TR 908', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.254', 1);
INSERT INTO O_263 VALUES('240331034000', DATE '2024-03-31', 'TR 945', DATE '2024-03-31', TIMESTAMP '2024-07-08 11:28:56.27', 1);
INSERT INTO O_263 VALUES('240331053000', DATE '2024-03-31', 'INV-09 DBP', DATE '2024-03-31', TIMESTAMP '2024-08-14 10:32:05.775', 2);
INSERT INTO O_263 VALUES('240331053000', DATE '2024-03-31', 'INV-09 DBP', DATE '2024-03-31', TIMESTAMP '2024-08-14 10:35:34.34', 2);
INSERT INTO O_263 VALUES('240331054000', DATE '2024-03-31', 'INV-10 DBP', DATE '2024-03-31', TIMESTAMP '2024-08-14 10:35:34.41', 2);
INSERT INTO O_263 VALUES('240331055000', DATE '2024-03-31', 'INV-11 DBP', DATE '2024-03-31', TIMESTAMP '2024-08-14 10:35:34.456', 2);
INSERT INTO O_263 VALUES('240331057000', DATE '2024-03-31', 'SOLAR MAR', DATE '2024-03-31', TIMESTAMP '2024-08-14 10:38:37.281', 0);
INSERT INTO O_263 VALUES('240331058000', DATE '2024-03-31', 'JU MAR24', DATE '2024-03-31', TIMESTAMP '2024-08-14 10:50:01.422', 0);
INSERT INTO O_263 VALUES('240430011000', DATE '2024-04-30', 'JU MAR24', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:25:00.344', 0);
INSERT INTO O_263 VALUES('240430013000', DATE '2024-04-30', 'TR 909', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:10.928', 1);
INSERT INTO O_263 VALUES('240430014000', DATE '2024-04-30', 'TR 910', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:10.973', 1);
INSERT INTO O_263 VALUES('240430015000', DATE '2024-04-30', 'TR 911', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.007', 1);
INSERT INTO O_263 VALUES('240430016000', DATE '2024-04-30', 'TR 912', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.043', 1);
INSERT INTO O_263 VALUES('240430017000', DATE '2024-04-30', 'TR 915', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.067', 1);
INSERT INTO O_263 VALUES('240430018000', DATE '2024-04-30', 'TR 916', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.127', 1);
INSERT INTO O_263 VALUES('240430019000', DATE '2024-04-30', 'TR 918', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.149', 1);
INSERT INTO O_263 VALUES('240430020000', DATE '2024-04-30', 'TR 919', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.17', 1);
INSERT INTO O_263 VALUES('240430021000', DATE '2024-04-30', 'TR 920', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.193', 1);
INSERT INTO O_263 VALUES('240430022000', DATE '2024-04-30', 'TR 921', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.213', 1);
INSERT INTO O_263 VALUES('240430023000', DATE '2024-04-30', 'TR 922', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.232', 1);
INSERT INTO O_263 VALUES('240430024000', DATE '2024-04-30', 'TR 923', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.252', 1);
INSERT INTO O_263 VALUES('240430025000', DATE '2024-04-30', 'TR 924', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.274', 1);
INSERT INTO O_263 VALUES('240430026000', DATE '2024-04-30', 'TR 925', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.294', 1);
INSERT INTO O_263 VALUES('240430027000', DATE '2024-04-30', 'TR 926', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.316', 1);
INSERT INTO O_263 VALUES('240430028000', DATE '2024-04-30', 'TR 927', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.333', 1);
INSERT INTO O_263 VALUES('240430029000', DATE '2024-04-30', 'TR 928', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.354', 1);
INSERT INTO O_263 VALUES('240430030000', DATE '2024-04-30', 'TR 930', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.375', 1);
INSERT INTO O_263 VALUES('240430031000', DATE '2024-04-30', 'TR 931', DATE '2024-04-30', TIMESTAMP '2024-08-14 11:31:11.397', 1);
INSERT INTO O_263 VALUES('240430034000', DATE '2024-04-30', 'SOLAR MAR', DATE '2024-04-30', TIMESTAMP '2024-08-16 09:13:47.531', 0);
INSERT INTO O_263 VALUES('240430035000', DATE '2024-04-30', 'INV-12 DBP', DATE '2024-04-30', TIMESTAMP '2024-08-16 09:14:41.873', 2);
INSERT INTO O_263 VALUES('240531012000', DATE '2024-05-31', 'TR 932', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.641', 1);
INSERT INTO O_263 VALUES('240531013000', DATE '2024-05-31', 'TR 933', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.679', 1);
INSERT INTO O_263 VALUES('240531014000', DATE '2024-05-31', 'TR 934', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.71', 1);
INSERT INTO O_263 VALUES('240531015000', DATE '2024-05-31', 'TR 936', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.742', 1);
INSERT INTO O_263 VALUES('240531016000', DATE '2024-05-31', 'TR 937', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.748', 1);
INSERT INTO O_263 VALUES('240531017000', DATE '2024-05-31', 'TR 938', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.764', 1);
INSERT INTO O_263 VALUES('240531018000', DATE '2024-05-31', 'TR 939', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.795', 1);
INSERT INTO O_263 VALUES('240531019000', DATE '2024-05-31', 'TR 940', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.826', 1);
INSERT INTO O_263 VALUES('240531020000', DATE '2024-05-31', 'TR 941', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.864', 1);
INSERT INTO O_263 VALUES('240531021000', DATE '2024-05-31', 'TR 942', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.88', 1);
INSERT INTO O_263 VALUES('240531022000', DATE '2024-05-31', 'TR 943', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.926', 1);
INSERT INTO O_263 VALUES('240531023000', DATE '2024-05-31', 'TR 944', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.961', 1);
INSERT INTO O_263 VALUES('240531024000', DATE '2024-05-31', 'TR 945', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:01.991', 1);
INSERT INTO O_263 VALUES('240531025000', DATE '2024-05-31', 'TR 946', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:02.021', 1);
INSERT INTO O_263 VALUES('240531026000', DATE '2024-05-31', 'TR 947', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:02.059', 1);
INSERT INTO O_263 VALUES('240531027000', DATE '2024-05-31', 'TR 948', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:02.081', 1);
INSERT INTO O_263 VALUES('240531028000', DATE '2024-05-31', 'TR 950', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:02.099', 1);
INSERT INTO O_263 VALUES('240531029000', DATE '2024-05-31', 'TR 951', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:02.131', 1);
INSERT INTO O_263 VALUES('240531030000', DATE '2024-05-31', 'TR 952', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:02.162', 1);
INSERT INTO O_263 VALUES('240531031000', DATE '2024-05-31', 'TR 953', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:26:02.2', 1);
INSERT INTO O_263 VALUES('240531032000', DATE '2024-05-31', 'INV-13 DBP', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:33:35.727', 2);
INSERT INTO O_263 VALUES('240531033000', DATE '2024-05-31', 'INV-14 DBP', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:33:35.743', 2);
INSERT INTO O_263 VALUES('240531034000', DATE '2024-05-31', 'SOLAR MEI', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:35:12.464', 0);
INSERT INTO O_263 VALUES('240531035000', DATE '2024-05-31', 'JU MEI24', DATE '2024-05-31', TIMESTAMP '2024-08-16 11:38:34.76', 0);
INSERT INTO O_263 VALUES('240531036000', DATE '2024-05-31', 'TR 935', DATE '2024-05-31', TIMESTAMP '2024-08-16 13:15:20.943', 1);
INSERT INTO O_263 VALUES('240430038000', DATE '2024-04-30', 'GJ APR24', DATE '2024-04-30', TIMESTAMP '2024-08-16 13:16:52.199', 0);
INSERT INTO O_263 VALUES('240630013000', DATE '2024-06-30', 'TR 953', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.526', 1);
INSERT INTO O_263 VALUES('240630014000', DATE '2024-06-30', 'TR 955', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.57', 1);
INSERT INTO O_263 VALUES('240630015000', DATE '2024-06-30', 'TR 956', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.618', 1);
INSERT INTO O_263 VALUES('240630016000', DATE '2024-06-30', 'TR 957', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.655', 1);
INSERT INTO O_263 VALUES('240630017000', DATE '2024-06-30', 'TR 958', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.719', 1);
INSERT INTO O_263 VALUES('240630018000', DATE '2024-06-30', 'TR 959', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.76', 1);
INSERT INTO O_263 VALUES('240630019000', DATE '2024-06-30', 'TR 960', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.804', 1);
INSERT INTO O_263 VALUES('240630020000', DATE '2024-06-30', 'TR 961', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.845', 1);
INSERT INTO O_263 VALUES('240630021000', DATE '2024-06-30', 'TR 962', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.882', 1);
INSERT INTO O_263 VALUES('240630022000', DATE '2024-06-30', 'TR 963', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.92', 1);
INSERT INTO O_263 VALUES('240630023000', DATE '2024-06-30', 'TR 964', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:26.967', 1);
INSERT INTO O_263 VALUES('240630024000', DATE '2024-06-30', 'TR 965', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.007', 1);
INSERT INTO O_263 VALUES('240630025000', DATE '2024-06-30', 'TR 966', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.045', 1);
INSERT INTO O_263 VALUES('240630026000', DATE '2024-06-30', 'TR 967', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.09', 1);
INSERT INTO O_263 VALUES('240630027000', DATE '2024-06-30', 'TR 968', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.128', 1);
INSERT INTO O_263 VALUES('240630028000', DATE '2024-06-30', 'TR 969', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.158', 1);
INSERT INTO O_263 VALUES('240630029000', DATE '2024-06-30', 'TR 970', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.195', 1);
INSERT INTO O_263 VALUES('240630030000', DATE '2024-06-30', 'TR 971', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.234', 1);
INSERT INTO O_263 VALUES('240630031000', DATE '2024-06-30', 'TR 972', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.271', 1);
INSERT INTO O_263 VALUES('240630032000', DATE '2024-06-30', 'TR 973', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.324', 1);
INSERT INTO O_263 VALUES('240630033000', DATE '2024-06-30', 'TR 974', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.367', 1);
INSERT INTO O_263 VALUES('240630034000', DATE '2024-06-30', 'TR 975', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.433', 1);
INSERT INTO O_263 VALUES('240630035000', DATE '2024-06-30', 'TR 976', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.481', 1);
INSERT INTO O_263 VALUES('240630036000', DATE '2024-06-30', 'TR 977', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.53', 1);
INSERT INTO O_263 VALUES('240630037000', DATE '2024-06-30', 'TR 979', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.583', 1);
INSERT INTO O_263 VALUES('240630038000', DATE '2024-06-30', 'TR 987', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.625', 1);
INSERT INTO O_263 VALUES('240630039000', DATE '2024-06-30', 'TR 988', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:55:27.66', 1);
INSERT INTO O_263 VALUES('240630040000', DATE '2024-06-30', 'JU JUN24', DATE '2024-06-30', TIMESTAMP '2024-08-16 13:57:31.179', 0);
INSERT INTO O_263 VALUES('240630041000', DATE '2024-06-30', 'SOLAR MEI', DATE '2024-06-30', TIMESTAMP '2024-08-16 14:02:51.391', 0);
INSERT INTO O_263 VALUES('240630044000', DATE '2024-06-30', 'LR JUN24', DATE '2024-06-30', TIMESTAMP '2024-08-26 09:11:02.153', 0);
INSERT INTO O_263 VALUES('240731008000', DATE '2024-07-31', 'TR 980', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:17.832', 1);
INSERT INTO O_263 VALUES('240731009000', DATE '2024-07-31', 'TR 981', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:17.964', 1);
INSERT INTO O_263 VALUES('240731010000', DATE '2024-07-31', 'TR 982', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.015', 1);
INSERT INTO O_263 VALUES('240731011000', DATE '2024-07-31', 'TR 984', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.048', 1);
INSERT INTO O_263 VALUES('240731012000', DATE '2024-07-31', 'TR 985', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.089', 1);
INSERT INTO O_263 VALUES('240731013000', DATE '2024-07-31', 'TR 986', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.159', 1);
INSERT INTO O_263 VALUES('240731016000', DATE '2024-07-31', 'TR 989', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.255', 1);
INSERT INTO O_263 VALUES('240731017000', DATE '2024-07-31', 'TR 990', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.29', 1);
INSERT INTO O_263 VALUES('240731018000', DATE '2024-07-31', 'TR 991', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.346', 1);
INSERT INTO O_263 VALUES('240731019000', DATE '2024-07-31', 'TR 992', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.384', 1);
INSERT INTO O_263 VALUES('240731020000', DATE '2024-07-31', 'TR 993', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.419', 1);
INSERT INTO O_263 VALUES('240731021000', DATE '2024-07-31', 'TR 994', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.457', 1);
INSERT INTO O_263 VALUES('240731022000', DATE '2024-07-31', 'TR 995', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.485', 1);
INSERT INTO O_263 VALUES('240731023000', DATE '2024-07-31', 'TR 996', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.522', 1);
INSERT INTO O_263 VALUES('240731024000', DATE '2024-07-31', 'TR 997', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.591', 1);
INSERT INTO O_263 VALUES('240731025000', DATE '2024-07-31', 'TR 998', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.641', 1);
INSERT INTO O_263 VALUES('240731026000', DATE '2024-07-31', 'TR 999', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.689', 1);
INSERT INTO O_263 VALUES('240731027000', DATE '2024-07-31', 'TR 1000', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.714', 1);
INSERT INTO O_263 VALUES('240731028000', DATE '2024-07-31', 'TR 1001', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.754', 1);
INSERT INTO O_263 VALUES('240731029000', DATE '2024-07-31', 'TR 1002', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.788', 1);
INSERT INTO O_263 VALUES('240731030000', DATE '2024-07-31', 'TR 1003', DATE '2024-07-31', TIMESTAMP '2024-08-27 10:20:18.822', 1);
INSERT INTO O_263 VALUES('240731032000', DATE '2024-07-31', 'SOLAR JUL', DATE '2024-07-31', TIMESTAMP '2024-08-30 13:21:15.396', 0);
INSERT INTO O_263 VALUES('240731033000', DATE '2024-07-31', 'JU JUL24', DATE '2024-07-31', TIMESTAMP '2024-08-30 14:29:09.737', 0);
INSERT INTO O_263 VALUES('240731035000', DATE '2024-07-31', 'CL JUL24', DATE '2024-07-31', TIMESTAMP '2024-09-02 14:32:38.86', 0);
INSERT INTO O_263 VALUES('240831007000', DATE '2024-08-31', 'TR 1004', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.032', 1);
INSERT INTO O_263 VALUES('240831008000', DATE '2024-08-31', 'TR 1005', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.211', 1);
INSERT INTO O_263 VALUES('240831009000', DATE '2024-08-31', 'TR 1006', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.285', 1);
INSERT INTO O_263 VALUES('240831010000', DATE '2024-08-31', 'TR 1007', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.392', 1);
INSERT INTO O_263 VALUES('240831011000', DATE '2024-08-31', 'TR 1014', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.568', 1);
INSERT INTO O_263 VALUES('240831012000', DATE '2024-08-31', 'TR 1015', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.626', 1);
INSERT INTO O_263 VALUES('240831013000', DATE '2024-08-31', 'TR 1016', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.677', 1);
INSERT INTO O_263 VALUES('240831014000', DATE '2024-08-31', 'TR 1017', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.741', 1);
INSERT INTO O_263 VALUES('240831015000', DATE '2024-08-31', 'TR 1018', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.834', 1);
INSERT INTO O_263 VALUES('240831016000', DATE '2024-08-31', 'TR 1019', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.909', 1);
INSERT INTO O_263 VALUES('240831017000', DATE '2024-08-31', 'TR 1020', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:26.971', 1);
INSERT INTO O_263 VALUES('240831018000', DATE '2024-08-31', 'TR 1021', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.031', 1);
INSERT INTO O_263 VALUES('240831019000', DATE '2024-08-31', 'TR 1022', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.093', 1);
INSERT INTO O_263 VALUES('240831020000', DATE '2024-08-31', 'TR 1023', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.149', 1);
INSERT INTO O_263 VALUES('240831021000', DATE '2024-08-31', 'TR 1024', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.194', 1);
INSERT INTO O_263 VALUES('240831022000', DATE '2024-08-31', 'TR 1025', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.244', 1);
INSERT INTO O_263 VALUES('240831023000', DATE '2024-08-31', 'TR 1026', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.293', 1);
INSERT INTO O_263 VALUES('240831024000', DATE '2024-08-31', 'TR 1027', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.335', 1);
INSERT INTO O_263 VALUES('240831025000', DATE '2024-08-31', 'TR 1028', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.387', 1);
INSERT INTO O_263 VALUES('240831026000', DATE '2024-08-31', 'TR 1029', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.439', 1);
INSERT INTO O_263 VALUES('240831027000', DATE '2024-08-31', 'TR 1030', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.499', 1);
INSERT INTO O_263 VALUES('240831028000', DATE '2024-08-31', 'TR 1031', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.594', 1);
INSERT INTO O_263 VALUES('240831029000', DATE '2024-08-31', 'TR 1032', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.695', 1);
INSERT INTO O_263 VALUES('240831030000', DATE '2024-08-31', 'TR 1033', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.761', 1);
INSERT INTO O_263 VALUES('240831031000', DATE '2024-08-31', 'TR 1034', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.829', 1);
INSERT INTO O_263 VALUES('240831032000', DATE '2024-08-31', 'TR 1035', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.896', 1);
INSERT INTO O_263 VALUES('240831033000', DATE '2024-08-31', 'TR 1036', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:27.963', 1);
INSERT INTO O_263 VALUES('240831034000', DATE '2024-08-31', 'TR 1037', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:28.058', 1);
INSERT INTO O_263 VALUES('240831035000', DATE '2024-08-31', 'TR 1038', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:28.145', 1);
INSERT INTO O_263 VALUES('240831036000', DATE '2024-08-31', 'TR 1039', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:28.22', 1);
INSERT INTO O_263 VALUES('240831037000', DATE '2024-08-31', 'TR 1040', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:28.282', 1);
INSERT INTO O_263 VALUES('240831038000', DATE '2024-08-31', 'TR 1041', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:28.319', 1);
INSERT INTO O_263 VALUES('240831039000', DATE '2024-08-31', 'TR 1042', DATE '2024-08-31', TIMESTAMP '2024-09-18 10:05:28.362', 1);
CREATE TABLE O_273(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR, C6 VARCHAR, C7 VARCHAR, C8 VARCHAR);
INSERT INTO O_273 VALUES('240131041001', '240131041000', '7001', 750000.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 750000.0, 3.31187783E8, 9107385.0);
INSERT INTO O_273 VALUES('240131041002', '240131041000', '7001', 750000.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 750000.0, 3.31937783E8, 8357385.0);
INSERT INTO O_273 VALUES('240131041003', '240131041000', '7001', 1440000.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 1440000.0, 3.33377783E8, 6917385.0);
INSERT INTO O_273 VALUES('240131041004', '240131041000', '7001', 1920000.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 1920000.0, 3.35297783E8, 4997385.0);
INSERT INTO O_273 VALUES('240131041005', '240131041000', '7001', 4093464.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 4093464.0, 3.39391247E8, 903921.0);
INSERT INTO O_273 VALUES('240131041006', '240131041000', '7001', 4949471.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 4949471.0, 3.44340718E8, -4045550.0);
INSERT INTO O_273 VALUES('240131041007', '240131041000', '7001', 5085236.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 5085236.0, 3.49425954E8, -9130786.0);
INSERT INTO O_273 VALUES('240131041008', '240131041000', '7001', 5173636.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 5173636.0, 3.5459959E8, -1.4304422E7);
INSERT INTO O_273 VALUES('240131041009', '240131041000', '7001', 5404106.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 5404106.0, 3.60003696E8, -1.9708528E7);
INSERT INTO O_273 VALUES('240131041010', '240131041000', '7001', 6009270.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 6009270.0, 3.66012966E8, -2.5717798E7);
INSERT INTO O_273 VALUES('240131041011', '240131041000', '7001', 6129436.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 6129436.0, 3.72142402E8, -3.1847234E7);
INSERT INTO O_273 VALUES('240131041012', '240131041000', '7001', 6129436.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 6129436.0, 3.78271838E8, -3.797667E7);
INSERT INTO O_273 VALUES('240131041013', '240131041000', '7001', 6129436.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 6129436.0, 3.84401274E8, -4.4106106E7);
INSERT INTO O_273 VALUES('240131041014', '240131041000', '7001', 6148664.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 6148664.0, 3.90549938E8, -5.025477E7);
INSERT INTO O_273 VALUES('240131041015', '240131041000', '7001', 8237064.0, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 8237064.0, 3.98787002E8, -5.8491834E7);
INSERT INTO O_273 VALUES('240131041016', '240131041000', '7001', 1.4152765E7, 'GAJI LEWAT PAYROLL', TIMESTAMP '2024-04-05 10:29:04.349', 1.4152765E7, 4.12939767E8, -7.2644599E7);
INSERT INTO O_273 VALUES('240131041017', '240131041000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-04-05 10:29:04.349', 25000.0, 2490000.0, -7.2669599E7);
INSERT INTO O_273 VALUES('240131041018', '240131041000', '9003', 28.0, 'PAJAK BUNGA', TIMESTAMP '2024-04-05 10:29:04.349', 28.0, 28.0, -7.2669627E7);
INSERT INTO O_273 VALUES('240131043001', '240131043000', '1003', 3.0E7, '02 CK 57727', TIMESTAMP '2024-04-05 14:14:05.587', 3.0E7, -3.228852144E9, 2.04200639E9);
INSERT INTO O_273 VALUES('240131043002', '240131043000', '1003', 2.0E7, '08 CK 57730', TIMESTAMP '2024-04-05 14:14:05.587', 2.0E7, -3.208852144E9, 2.02200639E9);
INSERT INTO O_273 VALUES('240131043003', '240131043000', '1003', 2.86729918E8, '08 CK 57731', TIMESTAMP '2024-04-05 14:14:05.587', 2.86729918E8, -2.922122226E9, 1.735276472E9);
INSERT INTO O_273 VALUES('240131043004', '240131043000', '1003', 1.75E7, '10 CK 57733', TIMESTAMP '2024-04-05 14:14:05.587', 1.75E7, -2.904622226E9, 1.717776472E9);
INSERT INTO O_273 VALUES('240131043005', '240131043000', '1003', 4.0E7, '12 CK 57734', TIMESTAMP '2024-04-05 14:14:05.587', 4.0E7, -2.864622226E9, 1.677776472E9);
INSERT INTO O_273 VALUES('240131043006', '240131043000', '1003', 2.02E8, '15 CK 57735', TIMESTAMP '2024-04-05 14:14:05.587', 2.02E8, -2.662622226E9, 1.475776472E9);
INSERT INTO O_273 VALUES('240131043007', '240131043000', '1003', 2.81645461E8, '15 CK 57736', TIMESTAMP '2024-04-05 14:14:05.587', 2.81645461E8, -2.380976765E9, 1.194131011E9);
INSERT INTO O_273 VALUES('240131043008', '240131043000', '1003', 1.32652E8, '16 CK 57732', TIMESTAMP '2024-04-05 14:14:05.587', 1.32652E8, -2.248324765E9, 1.061479011E9);
INSERT INTO O_273 VALUES('240131043009', '240131043000', '1003', 1.86438E7, '16 CK 57737', TIMESTAMP '2024-04-05 14:14:05.587', 1.86438E7, -2.229680965E9, 1.042835211E9);
INSERT INTO O_273 VALUES('240131043010', '240131043000', '1003', 4151400.0, '17 CK 57738', TIMESTAMP '2024-04-05 14:14:05.587', 4151400.0, -2.225529565E9, 1.038683811E9);
INSERT INTO O_273 VALUES('240131043011', '240131043000', '1003', 4209120.0, '17 CK 57740', TIMESTAMP '2024-04-05 14:14:05.587', 4209120.0, -2.221320445E9, 1.034474691E9);
INSERT INTO O_273 VALUES('240131043012', '240131043000', '1003', 2173824.0, '17 CK 57739', TIMESTAMP '2024-04-05 14:14:05.587', 2173824.0, -2.219146621E9, 1.032300867E9);
INSERT INTO O_273 VALUES('240131043013', '240131043000', '1003', 3.5465E7, '18 CK 57742', TIMESTAMP '2024-04-05 14:14:05.587', 3.5465E7, -2.183681621E9, 9.96835867E8);
INSERT INTO O_273 VALUES('240131043014', '240131043000', '1003', 3.8E7, '18 CK 57741', TIMESTAMP '2024-04-05 14:14:05.587', 3.8E7, -2.145681621E9, 9.58835867E8);
INSERT INTO O_273 VALUES('240131043015', '240131043000', '1003', 2.5E8, '18 CK 57743', TIMESTAMP '2024-04-05 14:14:05.587', 2.5E8, -1.895681621E9, 7.08835867E8);
INSERT INTO O_273 VALUES('240131043016', '240131043000', '1003', 394605.0, '19 CK 57745', TIMESTAMP '2024-04-05 14:14:05.587', 394605.0, -1.895287016E9, 7.08441262E8);
INSERT INTO O_273 VALUES('240131043017', '240131043000', '1003', 4182536.0, '19 CK 57747', TIMESTAMP '2024-04-05 14:14:05.587', 4182536.0, -1.89110448E9, 7.04258726E8);
INSERT INTO O_273 VALUES('240131043018', '240131043000', '1003', 5465748.0, '19 CK 57746', TIMESTAMP '2024-04-05 14:14:05.587', 5465748.0, -1.885638732E9, 6.98792978E8);
INSERT INTO O_273 VALUES('240131043019', '240131043000', '1003', 2.2755E8, '19 CK 57744', TIMESTAMP '2024-04-05 14:14:05.587', 2.2755E8, -1.658088732E9, 4.71242978E8);
INSERT INTO O_273 VALUES('240131043020', '240131043000', '3106', 3.5619E7, '23 CK 53129 LEASING HILUX KE 9 BFI', TIMESTAMP '2024-04-05 14:14:05.587', 3.5619E7, -6.6024591E9, 4.35623978E8);
INSERT INTO O_273 VALUES('240131043021', '240131043000', '1003', 3.2E7, '23 CK 57748', TIMESTAMP '2024-04-05 14:14:05.587', 3.2E7, -1.626088732E9, 4.03623978E8);
INSERT INTO O_273 VALUES('240131043022', '240131043000', '7010', 275000.0, '23 BIAYA CEK', TIMESTAMP '2024-04-05 14:14:05.587', 275000.0, 2765000.0, 4.03348978E8);
INSERT INTO O_273 VALUES('240131043023', '240131043000', '1003', 1983237.0, '26 CK 57749', TIMESTAMP '2024-04-05 14:14:05.587', 1983237.0, -1.624105495E9, 4.01365741E8);
INSERT INTO O_273 VALUES('240131043024', '240131043000', '1003', 2.0E8, '26 CK 57750', TIMESTAMP '2024-04-05 14:14:05.587', 2.0E8, -1.424105495E9, 2.01365741E8);
INSERT INTO O_273 VALUES('240131043025', '240131043000', '1003', 2.0E7, '26 CK 72076', TIMESTAMP '2024-04-05 14:14:05.587', 2.0E7, -1.404105495E9, 1.81365741E8);
INSERT INTO O_273 VALUES('240131043026', '240131043000', '1003', 1.7313225E7, '30 CK 72077', TIMESTAMP '2024-04-05 14:14:05.587', 1.7313225E7, -1.38679227E9, 1.64052516E8);
INSERT INTO O_273 VALUES('240131043027', '240131043000', '7011', 126741.0, 'PAJAK BUNGA / JAN', TIMESTAMP '2024-04-05 14:14:05.587', 126741.0, 2.3822907E7, 1.63925775E8);
INSERT INTO O_273 VALUES('240131043028', '240131043000', '7010', 25000.0, 'ADM BANK / JAN', TIMESTAMP '2024-04-05 14:14:05.587', 25000.0, 2790000.0, 1.63900775E8);
INSERT INTO O_273 VALUES('240131044001', '240131044000', '3105', 2.12243317E8, '4 CK 187246 LEASING 7 UNIT DT KE 24 BRI', TIMESTAMP '2024-04-05 14:14:34.375', 2.12243317E8, -3.463034282E9, 1.057399004E9);
INSERT INTO O_273 VALUES('240131044002', '240131044000', '3106', 1.13694E8, '9 BG 539197 LEASING DOOSAN EXCA KE 23 BFI', TIMESTAMP '2024-04-05 14:14:34.375', 1.13694E8, -6.4887651E9, 9.43705004E8);
INSERT INTO O_273 VALUES('240131044003', '240131044000', '1003', 3240000.0, '9 CK 452789', TIMESTAMP '2024-04-05 14:14:34.375', 3240000.0, -1.38355227E9, 9.40465004E8);
INSERT INTO O_273 VALUES('240131044004', '240131044000', '1003', 5450000.0, '9 CK 452788', TIMESTAMP '2024-04-05 14:14:34.375', 5450000.0, -1.37810227E9, 9.35015004E8);
INSERT INTO O_273 VALUES('240131044005', '240131044000', '1003', 2.9545007E7, '9 CK 452786', TIMESTAMP '2024-04-05 14:14:34.375', 2.9545007E7, -1.348557263E9, 9.05469997E8);
INSERT INTO O_273 VALUES('240131044006', '240131044000', '1003', 2.1005404E7, '9 CK 452787', TIMESTAMP '2024-04-05 14:14:34.375', 2.1005404E7, -1.327551859E9, 8.84464593E8);
INSERT INTO O_273 VALUES('240131044007', '240131044000', '1003', 1.78E7, '10 CK 452785', TIMESTAMP '2024-04-05 14:14:34.375', 1.78E7, -1.309751859E9, 8.66664593E8);
INSERT INTO O_273 VALUES('240131044008', '240131044000', '1003', 1554888.0, '10 CK 452790', TIMESTAMP '2024-04-05 14:14:34.375', 1554888.0, -1.308196971E9, 8.65109705E8);
INSERT INTO O_273 VALUES('240131044009', '240131044000', '1003', 4773000.0, '10 CK 452791', TIMESTAMP '2024-04-05 14:14:34.375', 4773000.0, -1.303423971E9, 8.60336705E8);
INSERT INTO O_273 VALUES('240131044010', '240131044000', '1003', 840000.0, '10 CK 452792', TIMESTAMP '2024-04-05 14:14:34.375', 840000.0, -1.302583971E9, 8.59496705E8);
INSERT INTO O_273 VALUES('240131044011', '240131044000', '1003', 7630000.0, '11 CK 452793', TIMESTAMP '2024-04-05 14:14:34.375', 7630000.0, -1.294953971E9, 8.51866705E8);
INSERT INTO O_273 VALUES('240131044012', '240131044000', '3106', 9.27455E7, '18 CK 551552 LEASING DOZER KOMATSU KE 31 BFI', TIMESTAMP '2024-04-05 14:14:34.375', 9.27455E7, -6.3960196E9, 7.59121205E8);
INSERT INTO O_273 VALUES('240131044013', '240131044000', '7010', 10000.0, 'BEAMATERAI', TIMESTAMP '2024-04-05 14:14:34.375', 10000.0, 2800000.0, 7.59111205E8);
INSERT INTO O_273 VALUES('240131044014', '240131044000', '1003', 1.7435E7, '18 CK 452784', TIMESTAMP '2024-04-05 14:14:34.375', 1.7435E7, -1.277518971E9, 7.41676205E8);
INSERT INTO O_273 VALUES('240131044015', '240131044000', '1003', 6.3525E7, '22 CK 187181', TIMESTAMP '2024-04-05 14:14:34.375', 6.3525E7, -1.213993971E9, 6.78151205E8);
INSERT INTO O_273 VALUES('240131044016', '240131044000', '1003', 6.70425E7, '22 CK 187203', TIMESTAMP '2024-04-05 14:14:34.375', 6.70425E7, -1.146951471E9, 6.11108705E8);
INSERT INTO O_273 VALUES('240131044017', '240131044000', '1003', 6000000.0, '23 CK 452794', TIMESTAMP '2024-04-05 14:14:34.375', 6000000.0, -1.140951471E9, 6.05108705E8);
INSERT INTO O_273 VALUES('240131044018', '240131044000', '1003', 6400000.0, '23 CK 452796', TIMESTAMP '2024-04-05 14:14:34.375', 6400000.0, -1.134551471E9, 5.98708705E8);
INSERT INTO O_273 VALUES('240131044019', '240131044000', '1003', 7656503.0, '23 CK 452795', TIMESTAMP '2024-04-05 14:14:34.375', 7656503.0, -1.126894968E9, 5.91052202E8);
INSERT INTO O_273 VALUES('240131044020', '240131044000', '1003', 3143500.0, '25 CK 452797', TIMESTAMP '2024-04-05 14:14:34.375', 3143500.0, -1.123751468E9, 5.87908702E8);
INSERT INTO O_273 VALUES('240131044021', '240131044000', '3105', 3.4670325E7, '26 BG 451278 LEASING GREDER SANY KE 28 BRI', TIMESTAMP '2024-04-05 14:14:34.375', 3.4670325E7, -3.428363957E9, 5.53238377E8);
INSERT INTO O_273 VALUES('240131044022', '240131044000', '3105', 2.01107607E8, '26 CK 187168 LEASING 2 DOOSAN EXCA KE 25 BRI', TIMESTAMP '2024-04-05 14:14:34.375', 2.01107607E8, -3.22725635E9, 3.5213077E8);
INSERT INTO O_273 VALUES('240131044023', '240131044000', '1003', 2690761.0, '26 CK 452798', TIMESTAMP '2024-04-05 14:14:34.375', 2690761.0, -1.121060707E9, 3.49440009E8);
INSERT INTO O_273 VALUES('240131044024', '240131044000', '7010', 10000.0, 'BEAMATERAI', TIMESTAMP '2024-04-05 14:14:34.375', 10000.0, 2810000.0, 3.49430009E8);
INSERT INTO O_273 VALUES('240131044025', '240131044000', '1003', 3807966.0, '29 CK 452800', TIMESTAMP '2024-04-05 14:14:34.375', 3807966.0, -1.117252741E9, 3.45622043E8);
INSERT INTO O_273 VALUES('240131044026', '240131044000', '1003', 2448000.0, '29 CK 452799', TIMESTAMP '2024-04-05 14:14:34.375', 2448000.0, -1.114804741E9, 3.43174043E8);
INSERT INTO O_273 VALUES('240131044027', '240131044000', '1003', 2.9937172E7, '30 CK 319571', TIMESTAMP '2024-04-05 14:14:34.375', 2.9937172E7, -1.084867569E9, 3.13236871E8);
INSERT INTO O_273 VALUES('240131044028', '240131044000', '1003', 8.3E7, '30 CK 319572', TIMESTAMP '2024-04-05 14:14:34.375', 8.3E7, -1.001867569E9, 2.30236871E8);
INSERT INTO O_273 VALUES('240131044029', '240131044000', '7010', 10000.0, 'BUKU CEK', TIMESTAMP '2024-04-05 14:14:34.375', 10000.0, 2820000.0, 2.30226871E8);
INSERT INTO O_273 VALUES('240131044030', '240131044000', '7010', 100000.0, 'BEAMATERAI', TIMESTAMP '2024-04-05 14:14:34.375', 100000.0, 2920000.0, 2.30126871E8);
INSERT INTO O_273 VALUES('240131044031', '240131044000', '1003', 1.0375E7, '31 CK 319573', TIMESTAMP '2024-04-05 14:14:34.375', 1.0375E7, -9.91492569E8, 2.19751871E8);
INSERT INTO O_273 VALUES('240131044032', '240131044000', '1003', 9568034.0, '31 CK 319573', TIMESTAMP '2024-04-05 14:14:34.375', 9568034.0, -9.81924535E8, 2.10183837E8);
INSERT INTO O_273 VALUES('240131044033', '240131044000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-04-05 14:14:34.375', 25000.0, 2945000.0, 2.10158837E8);
INSERT INTO O_273 VALUES('240131044034', '240131044000', '9003', 24965.0, 'PAJAK ', TIMESTAMP '2024-04-05 14:14:34.375', 24965.0, 24993.0, 2.10133872E8);
INSERT INTO O_273 VALUES('240229004001', '240229004000', '7001', 750000.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 750000.0, 750000.0, 9580514.0);
INSERT INTO O_273 VALUES('240229004002', '240229004000', '7001', 750000.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 750000.0, 1500000.0, 8830514.0);
INSERT INTO O_273 VALUES('240229004003', '240229004000', '7001', 4078640.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 4078640.0, 5578640.0, 4751874.0);
INSERT INTO O_273 VALUES('240229004004', '240229004000', '7001', 4490000.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 4490000.0, 1.006864E7, 261874.0);
INSERT INTO O_273 VALUES('240229004005', '240229004000', '7001', 5069235.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 5069235.0, 1.5137875E7, -4807361.0);
INSERT INTO O_273 VALUES('240229004006', '240229004000', '7001', 5069235.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 5069235.0, 2.020711E7, -9876596.0);
INSERT INTO O_273 VALUES('240229004007', '240229004000', '7001', 5396986.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 5396986.0, 2.5604096E7, -1.5273582E7);
INSERT INTO O_273 VALUES('240229004008', '240229004000', '7001', 5990000.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 5990000.0, 3.1594096E7, -2.1263582E7);
INSERT INTO O_273 VALUES('240229004009', '240229004000', '7001', 6000000.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 6000000.0, 3.7594096E7, -2.7263582E7);
INSERT INTO O_273 VALUES('240229004010', '240229004000', '7001', 6003254.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 6003254.0, 4.359735E7, -3.3266836E7);
INSERT INTO O_273 VALUES('240229004011', '240229004000', '7001', 6113435.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 6113435.0, 4.9710785E7, -3.9380271E7);
INSERT INTO O_273 VALUES('240229004012', '240229004000', '7001', 6113435.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 6113435.0, 5.582422E7, -4.5493706E7);
INSERT INTO O_273 VALUES('240229004013', '240229004000', '7001', 6113435.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 6113435.0, 6.1937655E7, -5.1607141E7);
INSERT INTO O_273 VALUES('240229004014', '240229004000', '7001', 6143840.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 6143840.0, 6.8081495E7, -5.7750981E7);
INSERT INTO O_273 VALUES('240229004015', '240229004000', '7001', 7157635.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 7157635.0, 7.523913E7, -6.4908616E7);
INSERT INTO O_273 VALUES('240229004016', '240229004000', '7001', 8232240.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 8232240.0, 8.347137E7, -7.3140856E7);
INSERT INTO O_273 VALUES('240229004017', '240229004000', '7001', 9000206.0, 'PAYROLL FEB 2024', TIMESTAMP '2024-04-18 09:29:06.106', 9000206.0, 9.2471576E7, -8.2141062E7);
INSERT INTO O_273 VALUES('240229004018', '240229004000', '7010', 25000.0, 'ADM BANK / FEB', TIMESTAMP '2024-04-18 09:29:06.106', 25000.0, 25000.0, -8.2166062E7);
INSERT INTO O_273 VALUES('240229004019', '240229004000', '9003', 410.0, 'PAJAK', TIMESTAMP '2024-04-18 09:29:06.106', 410.0, 410.0, -8.2166472E7);
INSERT INTO O_273 VALUES('240229006001', '240229006000', '1003', 5.0E7, '02 CK 172078', TIMESTAMP '2024-04-18 10:42:08.881', 5.0E7, -4.25E7, 1.13931867E8);
INSERT INTO O_273 VALUES('240229006002', '240229006000', '1003', 2.0E7, '07 CK 172079', TIMESTAMP '2024-04-18 10:42:08.881', 2.0E7, -2.25E7, 9.3931867E7);
INSERT INTO O_273 VALUES('240229006003', '240229006000', '1003', 4.9E7, '12 CK 172080', TIMESTAMP '2024-04-18 10:42:08.881', 4.9E7, 2.65E7, 4.4931867E7);
INSERT INTO O_273 VALUES('240229006004', '240229006000', '3106', 3.5619E7, '23 CK 253130 LEASING 3 UNIT HILUX / BFI', TIMESTAMP '2024-04-18 10:42:08.881', 3.5619E7, -6.3604006E9, 9312867.0);
INSERT INTO O_273 VALUES('240229006005', '240229006000', '9003', 6219.0, 'PAJAK / FEB', TIMESTAMP '2024-04-18 10:42:08.881', 6219.0, 6629.0, 9306648.0);
INSERT INTO O_273 VALUES('240229006006', '240229006000', '7010', 25000.0, 'ADM BANK / FEB', TIMESTAMP '2024-04-18 10:42:08.881', 25000.0, 50000.0, 9281648.0);
INSERT INTO O_273 VALUES('240331048001', '240331048000', '7001', 8232240.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.103', 8232240.0, 6.00294901E8, 8.3030534E7);
INSERT INTO O_273 VALUES('240331048002', '240331048000', '7001', 5069235.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.103', 5069235.0, 6.05364136E8, 7.7961299E7);
INSERT INTO O_273 VALUES('240331048003', '240331048000', '7001', 6113435.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.103', 6113435.0, 6.11477571E8, 7.1847864E7);
INSERT INTO O_273 VALUES('240331048004', '240331048000', '7001', 4078640.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.103', 4078640.0, 6.15556211E8, 6.7769224E7);
INSERT INTO O_273 VALUES('240331048005', '240331048000', '7001', 4490000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.103', 4490000.0, 6.20046211E8, 6.3279224E7);
INSERT INTO O_273 VALUES('240331048006', '240331048000', '7001', 4619635.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.103', 4619635.0, 6.24665846E8, 5.8659589E7);
INSERT INTO O_273 VALUES('240331048007', '240331048000', '7001', 5069235.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.104', 5069235.0, 6.29735081E8, 5.3590354E7);
INSERT INTO O_273 VALUES('240331048008', '240331048000', '7001', 5396986.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.104', 5396986.0, 6.35132067E8, 4.8193368E7);
INSERT INTO O_273 VALUES('240331048009', '240331048000', '7001', 5990000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.104', 5990000.0, 6.41122067E8, 4.2203368E7);
INSERT INTO O_273 VALUES('240331048010', '240331048000', '7001', 5990000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.104', 5990000.0, 6.47112067E8, 3.6213368E7);
INSERT INTO O_273 VALUES('240331048011', '240331048000', '7001', 6003254.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.104', 6003254.0, 6.53115321E8, 3.0210114E7);
INSERT INTO O_273 VALUES('240331048012', '240331048000', '7001', 6113435.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.105', 6113435.0, 6.59228756E8, 2.4096679E7);
INSERT INTO O_273 VALUES('240331048013', '240331048000', '7001', 6113435.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.105', 6113435.0, 6.65342191E8, 1.7983244E7);
INSERT INTO O_273 VALUES('240331048014', '240331048000', '7001', 6143840.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.105', 6143840.0, 6.71486031E8, 1.1839404E7);
INSERT INTO O_273 VALUES('240331048015', '240331048000', '7001', 750000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.105', 750000.0, 6.72236031E8, 1.1089404E7);
INSERT INTO O_273 VALUES('240331048016', '240331048000', '7001', 750000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-13 14:05:58.105', 750000.0, 6.72986031E8, 1.0339404E7);
INSERT INTO O_273 VALUES('240331048017', '240331048000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-08-13 14:05:58.105', 25000.0, 25000.0, 1.0314404E7);
INSERT INTO O_273 VALUES('240331048018', '240331048000', '9003', 438.0, 'PAJAK', TIMESTAMP '2024-08-13 14:05:58.105', 438.0, -1157325.0, 1.0313966E7);
INSERT INTO O_273 VALUES('240331051001', '240331051000', '7016', 1.958015E8, '01 CK 357854 / pembayaran sparepart lewat leasing', TIMESTAMP '2024-08-13 15:10:20.665', 1.958015E8, 3.4076718E8, 2.762001611E9);
INSERT INTO O_273 VALUES('240331051002', '240331051000', '1003', 7.4E7, '01 CK 540222 / TR 871', TIMESTAMP '2024-08-13 15:10:20.665', 7.4E7, -1.762511518E9, 2.688001611E9);
INSERT INTO O_273 VALUES('240331051003', '240331051000', '1003', 2.3371013E7, '01 CK 540221 / TR 873', TIMESTAMP '2024-08-13 15:10:20.665', 2.3371013E7, -1.739140505E9, 2.664630598E9);
INSERT INTO O_273 VALUES('240331051004', '240331051000', '3105', 2.12243317E8, '04 CK 187248 LEASING 7 UNIT DT KE 26 / BRI', TIMESTAMP '2024-08-13 15:10:20.665', 2.12243317E8, -2.566991784E9, 2.452387281E9);
INSERT INTO O_273 VALUES('240331051005', '240331051000', '1003', 8876767.0, '04 CK 540223 / TR 881', TIMESTAMP '2024-08-13 15:10:20.665', 8876767.0, -1.730263738E9, 2.443510514E9);
INSERT INTO O_273 VALUES('240331051006', '240331051000', '1003', 2.43747214E8, '04 CK 540224 / TR 880', TIMESTAMP '2024-08-13 15:10:20.665', 2.43747214E8, -1.486516524E9, 2.1997633E9);
INSERT INTO O_273 VALUES('240331051007', '240331051000', '1003', 2.0E8, '04 CK 540225', TIMESTAMP '2024-08-13 15:10:20.665', 2.0E8, -1.286516524E9, 1.9997633E9);
INSERT INTO O_273 VALUES('240331051008', '240331051000', '1003', 5.0E7, '04 CK 540226 / TR 879', TIMESTAMP '2024-08-13 15:10:20.665', 5.0E7, -1.236516524E9, 1.9497633E9);
INSERT INTO O_273 VALUES('240331051009', '240331051000', '7010', 10000.0, '04 BUKU CEK', TIMESTAMP '2024-08-13 15:10:20.665', 10000.0, 35000.0, 1.9497533E9);
INSERT INTO O_273 VALUES('240331051010', '240331051000', '7010', 100000.0, '04 MATERAI', TIMESTAMP '2024-08-13 15:10:20.665', 100000.0, 135000.0, 1.9496533E9);
INSERT INTO O_273 VALUES('240331051011', '240331051000', '1003', 3.0E7, '05 CK 540227 / TR 877', TIMESTAMP '2024-08-13 15:10:20.665', 3.0E7, -1.206516524E9, 1.9196533E9);
INSERT INTO O_273 VALUES('240331051012', '240331051000', '1003', 8401800.0, '05 CK 540228 / TR 882', TIMESTAMP '2024-08-13 15:10:20.665', 8401800.0, -1.198114724E9, 1.9112515E9);
INSERT INTO O_273 VALUES('240331051013', '240331051000', '1003', 1669959.0, '06 CK 540229 / TR 883', TIMESTAMP '2024-08-13 15:10:20.665', 1669959.0, -1.196444765E9, 1.909581541E9);
INSERT INTO O_273 VALUES('240331051014', '240331051000', '1003', 2.297353E7, '06 CK 540230 / TR 884', TIMESTAMP '2024-08-13 15:10:20.665', 2.297353E7, -1.173471235E9, 1.886608011E9);
INSERT INTO O_273 VALUES('240331051015', '240331051000', '1003', 6216000.0, '07 CK 540342 / TR 885', TIMESTAMP '2024-08-13 15:10:20.681', 6216000.0, -1.167255235E9, 1.880392011E9);
INSERT INTO O_273 VALUES('240331051016', '240331051000', '7016', 2.725E7, '07 CK 540341 / pembayaran sparepart lewat leasing', TIMESTAMP '2024-08-13 15:10:20.681', 2.725E7, 3.6801718E8, 1.853142011E9);
INSERT INTO O_273 VALUES('240331051017', '240331051000', '1003', 5450000.0, '08 CK 540345 / TR 889', TIMESTAMP '2024-08-13 15:10:20.681', 5450000.0, -1.161805235E9, 1.847692011E9);
INSERT INTO O_273 VALUES('240331051018', '240331051000', '1003', 9672389.0, '08 CK 540346 / TR 888', TIMESTAMP '2024-08-13 15:10:20.681', 9672389.0, -1.152132846E9, 1.838019622E9);
INSERT INTO O_273 VALUES('240331051019', '240331051000', '1003', 7.924488E7, '08 CK 540344 / TR INTERN ETIKA', TIMESTAMP '2024-08-13 15:10:20.681', 7.924488E7, -1.072887966E9, 1.758774742E9);
INSERT INTO O_273 VALUES('240331051020', '240331051000', '1003', 8.45E7, '08 CK 540343 / TR INTERN ETIKA', TIMESTAMP '2024-08-13 15:10:20.681', 8.45E7, -9.88387966E8, 1.674274742E9);
INSERT INTO O_273 VALUES('240331051021', '240331051000', '7016', 4.87525E7, '13 CK 539212 / pembayaran sparepart lewat leasing', TIMESTAMP '2024-08-13 15:10:20.681', 4.87525E7, 4.1676968E8, 1.625522242E9);
INSERT INTO O_273 VALUES('240331051022', '240331051000', '3106', 1.13694E8, '13 CK 539199 LEASING DOOSAN EXCA KE 25 / BFI', TIMESTAMP '2024-08-13 15:10:20.681', 1.13694E8, -6.0402671E9, 1.511828242E9);
INSERT INTO O_273 VALUES('240331051023', '240331051000', '1003', 5206788.0, '14 CK 540347 / TR 945', TIMESTAMP '2024-08-13 15:10:20.681', 5206788.0, -9.83181178E8, 1.506621454E9);
INSERT INTO O_273 VALUES('240331051024', '240331051000', '1003', 3132600.0, '18 CK 540348 TR 893', TIMESTAMP '2024-08-13 15:10:20.681', 3132600.0, -9.80048578E8, 1.503488854E9);
INSERT INTO O_273 VALUES('240331051025', '240331051000', '7010', 10000.0, '18 BUKU CEK', TIMESTAMP '2024-08-13 15:10:20.681', 10000.0, 145000.0, 1.503478854E9);
INSERT INTO O_273 VALUES('240331051026', '240331051000', '7010', 100000.0, '18 MATERAI ', TIMESTAMP '2024-08-13 15:10:20.681', 100000.0, 245000.0, 1.503378854E9);
INSERT INTO O_273 VALUES('240331051027', '240331051000', '3106', 9.27455E7, '19 CK 551554 LEASING DOZER KOMATSU KE 33 / BFI', TIMESTAMP '2024-08-13 15:10:20.681', 9.27455E7, -5.9475216E9, 1.410633354E9);
INSERT INTO O_273 VALUES('240331051028', '240331051000', '7010', 10000.0, 'BEAMATERAI', TIMESTAMP '2024-08-13 15:10:20.681', 10000.0, 255000.0, 1.410623354E9);
INSERT INTO O_273 VALUES('240331051029', '240331051000', '1003', 3.0E8, '20 CK 540349', TIMESTAMP '2024-08-13 15:10:20.681', 3.0E8, -6.80048578E8, 1.110623354E9);
INSERT INTO O_273 VALUES('240331051030', '240331051000', '1003', 1.3995E7, '21 CK 540350 / TR 897', TIMESTAMP '2024-08-13 15:10:20.681', 1.3995E7, -6.66053578E8, 1.096628354E9);
INSERT INTO O_273 VALUES('240331051031', '240331051000', '1003', 2.613E7, '25 CK 564061 / TR 900', TIMESTAMP '2024-08-13 15:10:20.681', 2.613E7, -6.39923578E8, 1.070498354E9);
INSERT INTO O_273 VALUES('240331051032', '240331051000', '3105', 2.01107607E8, '26 CK 187170 LEASING 2 DOOSAN EXCA KE 27', TIMESTAMP '2024-08-13 15:10:20.681', 2.01107607E8, -2.365884177E9, 8.69390747E8);
INSERT INTO O_273 VALUES('240331051033', '240331051000', '1003', 7.997896E7, '26 CK 564062 / TR 902', TIMESTAMP '2024-08-13 15:10:20.681', 7.997896E7, -5.59944618E8, 7.89411787E8);
INSERT INTO O_273 VALUES('240331051034', '240331051000', '3105', 3.4670325E7, '27 CK 451280 LEASING GREDER SANY KE 30 / BRI', TIMESTAMP '2024-08-13 15:10:20.681', 3.4670325E7, -2.331213852E9, 7.54741462E8);
INSERT INTO O_273 VALUES('240331051035', '240331051000', '1003', 1.452E7, '27 CK 564063 / TR 901', TIMESTAMP '2024-08-13 15:10:20.681', 1.452E7, -5.45424618E8, 7.40221462E8);
INSERT INTO O_273 VALUES('240331051036', '240331051000', '1003', 8.0925E7, '28 CK 564064 / TR 905', TIMESTAMP '2024-08-13 15:10:20.681', 8.0925E7, -4.64499618E8, 6.59296462E8);
INSERT INTO O_273 VALUES('240331051037', '240331051000', '7010', 10000.0, '28 BEAMATERAI', TIMESTAMP '2024-08-13 15:10:20.681', 10000.0, 265000.0, 6.59286462E8);
INSERT INTO O_273 VALUES('240331051038', '240331051000', '1003', 8.0E7, '28 CK 564065 / TR 906', TIMESTAMP '2024-08-13 15:10:20.681', 8.0E7, -3.84499618E8, 5.79286462E8);
INSERT INTO O_273 VALUES('240331051039', '240331051000', '7010', 25000.0, '31 BIAYA ADM', TIMESTAMP '2024-08-13 15:10:20.681', 25000.0, 290000.0, 5.79261462E8);
INSERT INTO O_273 VALUES('240331051040', '240331051000', '9003', 231552.0, '31 PAJAK', TIMESTAMP '2024-08-13 15:10:20.681', 231552.0, -925773.0, 5.7902991E8);
INSERT INTO O_273 VALUES('240331052001', '240331052000', '1003', 2.3E7, '08 CK172081 / TR 886', TIMESTAMP '2024-08-13 15:35:38.57', 2.3E7, -3.61499618E8, 4.86412778E8);
INSERT INTO O_273 VALUES('240331052002', '240331052000', '1003', 2.0E7, '08 CK172082 / TR 887', TIMESTAMP '2024-08-13 15:35:38.57', 2.0E7, -3.41499618E8, 4.66412778E8);
INSERT INTO O_273 VALUES('240331052003', '240331052000', '1003', 3.7E7, '14 CK172083 / TR 890', TIMESTAMP '2024-08-13 15:35:38.57', 3.7E7, -3.04499618E8, 4.29412778E8);
INSERT INTO O_273 VALUES('240331052004', '240331052000', '1003', 1.8643804E7, '15 CK172084 / TR 891', TIMESTAMP '2024-08-13 15:35:38.57', 1.8643804E7, -2.85855814E8, 4.10768974E8);
INSERT INTO O_273 VALUES('240331052005', '240331052000', '1003', 1.1837334E7, '16 CK172085 / TR 894', TIMESTAMP '2024-08-13 15:35:38.57', 1.1837334E7, -2.7401848E8, 3.9893164E8);
INSERT INTO O_273 VALUES('240331052006', '240331052000', '1003', 4.8E7, '20 CK172086 / TR 895', TIMESTAMP '2024-08-13 15:35:38.57', 4.8E7, -2.2601848E8, 3.5093164E8);
INSERT INTO O_273 VALUES('240331052007', '240331052000', '3106', 3.5619E7, '25 CK253131 LEASING 3 HILUX / BFI', TIMESTAMP '2024-08-13 15:35:38.57', 3.5619E7, -5.9119026E9, 3.1531264E8);
INSERT INTO O_273 VALUES('240331052008', '240331052000', '1003', 1.048618E7, '28 CK172089 / TR 903', TIMESTAMP '2024-08-13 15:35:38.57', 1.048618E7, -2.155323E8, 3.0482646E8);
INSERT INTO O_273 VALUES('240331052009', '240331052000', '1003', 3.0E7, '28 CK172088 / TR 904', TIMESTAMP '2024-08-13 15:35:38.57', 3.0E7, -1.855323E8, 2.7482646E8);
INSERT INTO O_273 VALUES('240331052010', '240331052000', '1003', 1.855323E8, '28 CK172087 / TR 907', TIMESTAMP '2024-08-13 15:35:38.57', 1.855323E8, 0.0, 8.929416E7);
INSERT INTO O_273 VALUES('240331052011', '240331052000', '9003', 26226.0, '31 PAJAK', TIMESTAMP '2024-08-13 15:35:38.57', 26226.0, -899547.0, 8.9267934E7);
INSERT INTO O_273 VALUES('240331052012', '240331052000', '7010', 25000.0, '31 ADM BANK / MAR', TIMESTAMP '2024-08-13 15:35:38.57', 25000.0, 315000.0, 8.9242934E7);
INSERT INTO O_273 VALUES('240430033001', '240430033000', '1003', 3.6547448E7, 'TRANSFER VIA MBANKING / TR 910', TIMESTAMP '2024-08-14 11:48:31.063', 3.6547448E7, -7.40305455E8, 5.42482462E8);
INSERT INTO O_273 VALUES('240430033002', '240430033000', '1003', 1566300.0, '02 CK 564067 / TR 911', TIMESTAMP '2024-08-14 11:48:31.064', 1566300.0, -7.38739155E8, 5.40916162E8);
INSERT INTO O_273 VALUES('240430033003', '240430033000', '1003', 2.74475E7, '02 CK 564066 / TR 912', TIMESTAMP '2024-08-14 11:48:31.064', 2.74475E7, -7.11291655E8, 5.13468662E8);
INSERT INTO O_273 VALUES('240430033004', '240430033000', '7010', 10000.0, 'ADM BANK', TIMESTAMP '2024-08-14 11:48:31.064', 10000.0, 633000.0, 5.13458662E8);
INSERT INTO O_273 VALUES('240430033005', '240430033000', '7010', 10000.0, 'ADM BANK', TIMESTAMP '2024-08-14 11:48:31.065', 10000.0, 643000.0, 5.13448662E8);
INSERT INTO O_273 VALUES('240430033006', '240430033000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-08-14 11:48:31.066', 25000.0, 668000.0, 5.13423662E8);
INSERT INTO O_273 VALUES('240430033007', '240430033000', '7010', 250000.0, 'ADM BANK', TIMESTAMP '2024-08-14 11:48:31.067', 250000.0, 918000.0, 5.13173662E8);
INSERT INTO O_273 VALUES('240430033008', '240430033000', '3105', 2.12243317E8, '04 CK 187249 LEASING 7 UNIT DT KE 27 / BRI ', TIMESTAMP '2024-08-14 11:48:31.068', 2.12243317E8, -2.118970535E9, 3.00930345E8);
INSERT INTO O_273 VALUES('240430033009', '240430033000', '1003', 1.5398823E7, '05 CK 564068 / TR 920', TIMESTAMP '2024-08-14 11:48:31.068', 1.5398823E7, -6.95892832E8, 2.85531522E8);
INSERT INTO O_273 VALUES('240430033010', '240430033000', '1003', 2041159.0, '05 CK 564069 / TR 919', TIMESTAMP '2024-08-14 11:48:31.068', 2041159.0, -6.93851673E8, 2.83490363E8);
INSERT INTO O_273 VALUES('240430033011', '240430033000', '1003', 5.0E8, '05 CK 564070 / TR 917', TIMESTAMP '2024-08-14 11:48:31.068', 5.0E8, -1.93851673E8, -2.16509637E8);
INSERT INTO O_273 VALUES('240430033012', '240430033000', '1003', 1898439.0, '05 CK 564341 / TR 916', TIMESTAMP '2024-08-14 11:48:31.07', 1898439.0, -1.91953234E8, -2.18408076E8);
INSERT INTO O_273 VALUES('240430033013', '240430033000', '1003', 2594213.0, '05 CK 564342 / TR 921', TIMESTAMP '2024-08-14 11:48:31.07', 2594213.0, -1.89359021E8, -2.21002289E8);
INSERT INTO O_273 VALUES('240430033014', '240430033000', '3106', 1.13694E8, '17 CK 539200 LEASING DOOSAN EXCA KE 26 / BFI', TIMESTAMP '2024-08-14 11:48:31.071', 1.13694E8, -5.7625896E9, -3.34696289E8);
INSERT INTO O_273 VALUES('240430033015', '240430033000', '1003', 5450000.0, '17 CK 564344 / TR 922', TIMESTAMP '2024-08-14 11:48:31.072', 5450000.0, -1.83909021E8, -3.40146289E8);
INSERT INTO O_273 VALUES('240430033016', '240430033000', '3106', 9.27455E7, '18 CK 551555 LEASING DOZER KOMATSU KE 34 / BFI', TIMESTAMP '2024-08-14 11:48:31.073', 9.27455E7, -5.6698441E9, -4.32891789E8);
INSERT INTO O_273 VALUES('240430033017', '240430033000', '7010', 10000.0, '18 BEA MATERAI', TIMESTAMP '2024-08-14 11:48:31.075', 10000.0, 928000.0, -4.32901789E8);
INSERT INTO O_273 VALUES('240430033018', '240430033000', '1003', 1.84598194E8, '24 CK 564345 / TR 924', TIMESTAMP '2024-08-14 11:48:31.075', 1.84598194E8, 689173.0, -6.17499983E8);
INSERT INTO O_273 VALUES('240430033019', '240430033000', '3302', 4.305E8, '25 CK 564346', TIMESTAMP '2024-08-14 11:48:31.076', 4.305E8, -1.574071769E9, -1.047999983E9);
INSERT INTO O_273 VALUES('240430033020', '240430033000', '3302', 4.752E8, '25 CK 564347', TIMESTAMP '2024-08-14 11:48:31.076', 4.752E8, -1.098871769E9, -1.523199983E9);
INSERT INTO O_273 VALUES('240430033021', '240430033000', '3302', 3.854E8, '25 CK 564348', TIMESTAMP '2024-08-14 11:48:31.076', 3.854E8, -7.13471769E8, -1.908599983E9);
INSERT INTO O_273 VALUES('240430033022', '240430033000', '3302', 3.765E8, '25 CK 564349', TIMESTAMP '2024-08-14 11:48:31.076', 3.765E8, -3.36971769E8, -2.285099983E9);
INSERT INTO O_273 VALUES('240430033023', '240430033000', '3302', 4.765E8, '25 CK 564350', TIMESTAMP '2024-08-14 11:48:31.078', 4.765E8, 1.39528231E8, -2.761599983E9);
INSERT INTO O_273 VALUES('240430033024', '240430033000', '3302', 4.257E8, '25 CK 992501', TIMESTAMP '2024-08-14 11:48:31.085', 4.257E8, 5.65228231E8, -3.187299983E9);
INSERT INTO O_273 VALUES('240430033025', '240430033000', '3302', 4.302E8, '25 CK 992502', TIMESTAMP '2024-08-14 11:48:31.085', 4.302E8, 9.95428231E8, -3.617499983E9);
INSERT INTO O_273 VALUES('240430033026', '240430033000', '3105', 2.01107607E8, '26 CK 187171 LEASING 2 DOOSAN EXCA KE 26 / BRI', TIMESTAMP '2024-08-14 11:48:31.085', 2.01107607E8, -1.917862928E9, -3.81860759E9);
INSERT INTO O_273 VALUES('240430033027', '240430033000', '3105', 3.4670325E7, '26 CK 451281 LEASING GREDER SANY KE 29 / BRI', TIMESTAMP '2024-08-14 11:48:31.086', 3.4670325E7, -1.883192603E9, -3.853277915E9);
INSERT INTO O_273 VALUES('240430033028', '240430033000', '1003', 3.16755E7, '26 CK 564343 / TR 925', TIMESTAMP '2024-08-14 11:48:31.087', 3.16755E7, 3.2364673E7, -3.884953415E9);
INSERT INTO O_273 VALUES('240430033029', '240430033000', '3302', 3.257E8, '26 CK 992503', TIMESTAMP '2024-08-14 11:48:31.089', 3.257E8, 1.321128231E9, -4.210653415E9);
INSERT INTO O_273 VALUES('240430033030', '240430033000', '3302', 2.843E8, '26 CK 992504', TIMESTAMP '2024-08-14 11:48:31.089', 2.843E8, 1.605428231E9, -4.494953415E9);
INSERT INTO O_273 VALUES('240430033031', '240430033000', '7010', 10000.0, '26 BEAMATERAI', TIMESTAMP '2024-08-14 11:48:31.089', 10000.0, 938000.0, -4.494963415E9);
INSERT INTO O_273 VALUES('240430033032', '240430033000', '1003', 2273575.0, '29 CK 992505 / TR 928', TIMESTAMP '2024-08-14 11:48:31.089', 2273575.0, 3.4638248E7, -4.49723699E9);
INSERT INTO O_273 VALUES('240430033033', '240430033000', '3302', 3.475E8, '29 CK 992506', TIMESTAMP '2024-08-14 11:48:31.089', 3.475E8, 1.952928231E9, -4.84473699E9);
INSERT INTO O_273 VALUES('240430033034', '240430033000', '3302', 3.274E8, '29 CK 992507', TIMESTAMP '2024-08-14 11:48:31.09', 3.274E8, 2.280328231E9, -5.17213699E9);
INSERT INTO O_273 VALUES('240430033035', '240430033000', '1003', 1909200.0, '29 CK 992509 / TR 927', TIMESTAMP '2024-08-14 11:48:31.09', 1909200.0, 3.6547448E7, -5.17404619E9);
INSERT INTO O_273 VALUES('240430033036', '240430033000', '1003', 8.04E7, '29 CK 992510 PINDAH BUKU PAYROLL', TIMESTAMP '2024-08-14 11:48:31.09', 8.04E7, 1.16947448E8, -5.25444619E9);
INSERT INTO O_273 VALUES('240430033037', '240430033000', '3302', 3.352E8, '30 CK 992513', TIMESTAMP '2024-08-14 11:48:31.091', 3.352E8, 2.615528231E9, -5.58964619E9);
INSERT INTO O_273 VALUES('240430033038', '240430033000', '3302', 2.854E8, '30 CK 992511', TIMESTAMP '2024-08-14 11:48:31.091', 2.854E8, 2.900928231E9, -5.87504619E9);
INSERT INTO O_273 VALUES('240430033039', '240430033000', '3302', 2.904E8, '30 CK 992512', TIMESTAMP '2024-08-14 11:48:31.091', 2.904E8, 3.191328231E9, -6.16544619E9);
INSERT INTO O_273 VALUES('240430033040', '240430033000', '7010', 25000.0, '31 BIAYA ADM', TIMESTAMP '2024-08-14 11:48:31.091', 25000.0, 963000.0, -6.16547119E9);
INSERT INTO O_273 VALUES('240430033041', '240430033000', '9003', 1885672.0, '31 PAJAK', TIMESTAMP '2024-08-14 11:48:31.091', 1885672.0, 1340530.0, -6.167356862E9);
INSERT INTO O_273 VALUES('240401001001', '240401001000', '1003', 5.4E7, '01 CK 172090 / TR 909', TIMESTAMP '2024-08-14 12:34:03.955', 5.4E7, 5.4E7, 3.5242934E7);
INSERT INTO O_273 VALUES('240401001002', '240401001000', '1003', 7424000.0, '02 CK 172091 / TR 915', TIMESTAMP '2024-08-14 12:34:03.955', 7424000.0, 6.1424E7, 2.7818934E7);
INSERT INTO O_273 VALUES('240401001003', '240401001000', '1003', 2.0E7, '05 CK 172092 / TR 918', TIMESTAMP '2024-08-14 12:34:03.958', 2.0E7, 8.1424E7, 7818934.0);
INSERT INTO O_273 VALUES('240401001004', '240401001000', '1003', 2.2E7, '22 CK 172093 / TR 923', TIMESTAMP '2024-08-14 12:34:03.958', 2.2E7, 1.03424E8, -1.4181066E7);
INSERT INTO O_273 VALUES('240401001005', '240401001000', '3106', 3.5619E7, '23 CK 253132 / LEASING 3 UNIT HILUX / BFI', TIMESTAMP '2024-08-14 12:34:03.958', 3.5619E7, -5.8762836E9, -4.9800066E7);
INSERT INTO O_273 VALUES('240401001006', '240401001000', '1003', 1.4E7, '26 CK 172094 / TR 926', TIMESTAMP '2024-08-14 12:34:03.958', 1.4E7, 1.17424E8, -6.3800066E7);
INSERT INTO O_273 VALUES('240401001007', '240401001000', '1003', 1.12435663E8, '30 CK 172095 / TR 931', TIMESTAMP '2024-08-14 12:34:03.959', 1.12435663E8, 2.29859663E8, -1.76235729E8);
INSERT INTO O_273 VALUES('240401001008', '240401001000', '1003', 3.5E7, '30 CK 172096 / TR 930', TIMESTAMP '2024-08-14 12:34:03.959', 3.5E7, 2.64859663E8, -2.11235729E8);
INSERT INTO O_273 VALUES('240401001009', '240401001000', '7010', 275000.0, '30 BIAYA CEK', TIMESTAMP '2024-08-14 12:34:03.959', 275000.0, 590000.0, -2.11510729E8);
INSERT INTO O_273 VALUES('240401001010', '240401001000', '9003', 354405.0, '30 PAJAK', TIMESTAMP '2024-08-14 12:34:03.959', 354405.0, -545142.0, -2.11865134E8);
INSERT INTO O_273 VALUES('240401001011', '240401001000', '7010', 25000.0, '30 ADM BANK / APR', TIMESTAMP '2024-08-14 12:34:03.959', 25000.0, 615000.0, -2.11890134E8);
INSERT INTO O_273 VALUES('240531001001', '240531001000', '3302', 2.755E8, '02 CK 992508', TIMESTAMP '2024-08-16 10:26:31.912', 2.755E8, 4.673908231E9, 9.521392288E9);
INSERT INTO O_273 VALUES('240531001002', '240531001000', '3302', 3.254E8, '02 CK 992514', TIMESTAMP '2024-08-16 10:26:31.912', 3.254E8, 4.999308231E9, 9.195992288E9);
INSERT INTO O_273 VALUES('240531001003', '240531001000', '3302', 2.746E8, '02 CK 992515', TIMESTAMP '2024-08-16 10:26:31.912', 2.746E8, 5.273908231E9, 8.921392288E9);
INSERT INTO O_273 VALUES('240531001004', '240531001000', '3302', 2.654E8, '02 CK 992516', TIMESTAMP '2024-08-16 10:26:31.912', 2.654E8, 5.539308231E9, 8.655992288E9);
INSERT INTO O_273 VALUES('240531001005', '240531001000', '3302', 3.154E8, '02 CK 992517', TIMESTAMP '2024-08-16 10:26:31.912', 3.154E8, 5.854708231E9, 8.340592288E9);
INSERT INTO O_273 VALUES('240531001006', '240531001000', '3302', 3.157E8, '03 CK 992518', TIMESTAMP '2024-08-16 10:26:31.912', 3.157E8, 6.170408231E9, 8.024892288E9);
INSERT INTO O_273 VALUES('240531001007', '240531001000', '3302', 3.248E8, '03 CK 992519', TIMESTAMP '2024-08-16 10:26:31.912', 3.248E8, 6.495208231E9, 7.700092288E9);
INSERT INTO O_273 VALUES('240531001008', '240531001000', '3302', 4.157E8, '03 CK 992520', TIMESTAMP '2024-08-16 10:26:31.918', 4.157E8, 6.910908231E9, 7.284392288E9);
INSERT INTO O_273 VALUES('240531001009', '240531001000', '3302', 4.427E8, '03 CK 992521', TIMESTAMP '2024-08-16 10:26:31.918', 4.427E8, 7.353608231E9, 6.841692288E9);
INSERT INTO O_273 VALUES('240531001010', '240531001000', '3302', 3.867E8, '03 CK 992522', TIMESTAMP '2024-08-16 10:26:31.918', 3.867E8, 7.740308231E9, 6.454992288E9);
INSERT INTO O_273 VALUES('240531001011', '240531001000', '3302', 3.685E8, '03 CK 992523', TIMESTAMP '2024-08-16 10:26:31.918', 3.685E8, 8.108808231E9, 6.086492288E9);
INSERT INTO O_273 VALUES('240531001012', '240531001000', '3302', 3.275E8, '03 CK 992524', TIMESTAMP '2024-08-16 10:26:31.918', 3.275E8, 8.436308231E9, 5.758992288E9);
INSERT INTO O_273 VALUES('240531001013', '240531001000', '3302', 3.367E8, '03 CK 992525', TIMESTAMP '2024-08-16 10:26:31.918', 3.367E8, 8.773008231E9, 5.422292288E9);
INSERT INTO O_273 VALUES('240531001014', '240531001000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-08-16 10:26:31.918', 25000.0, 1018000.0, 5.422267288E9);
INSERT INTO O_273 VALUES('240531001015', '240531001000', '7010', 250000.0, 'ADM BANK', TIMESTAMP '2024-08-16 10:26:31.918', 250000.0, 1268000.0, 5.422017288E9);
INSERT INTO O_273 VALUES('240531001016', '240531001000', '3105', 2.12243317E8, 'LEASING 7 UNIT DT KE 28 / BRI ', TIMESTAMP '2024-08-16 10:26:31.918', 2.12243317E8, -1.670949286E9, 5.209773971E9);
INSERT INTO O_273 VALUES('240531001017', '240531001000', '3302', 2.7E9, '06 CK 992876', TIMESTAMP '2024-08-16 10:26:31.918', 2.7E9, 1.1473008231E10, 2.509773971E9);
INSERT INTO O_273 VALUES('240531001018', '240531001000', '1003', 2041159.0, '07 CK 992878 / TR 934 ', TIMESTAMP '2024-08-16 10:26:31.918', 2041159.0, 2041159.0, 2.507732812E9);
INSERT INTO O_273 VALUES('240531001019', '240531001000', '1003', 1.5365906E7, '07 CK 992879 / TR 934 ', TIMESTAMP '2024-08-16 10:26:31.918', 1.5365906E7, 1.7407065E7, 2.492366906E9);
INSERT INTO O_273 VALUES('240531001020', '240531001000', '1003', 4309243.0, '07 CK 992880 / TR 936 ', TIMESTAMP '2024-08-16 10:26:31.918', 4309243.0, 2.1716308E7, 2.488057663E9);
INSERT INTO O_273 VALUES('240531001021', '240531001000', '3302', 2.755E8, '08 CK 992881', TIMESTAMP '2024-08-16 10:26:31.918', 2.755E8, 1.1748508231E10, 2.212557663E9);
INSERT INTO O_273 VALUES('240531001022', '240531001000', '3302', 2.854E8, '08 CK 992882', TIMESTAMP '2024-08-16 10:26:31.918', 2.854E8, 1.2033908231E10, 1.927157663E9);
INSERT INTO O_273 VALUES('240531001023', '240531001000', '3302', 2.9E8, '08 CK 992883', TIMESTAMP '2024-08-16 10:26:31.918', 2.9E8, 1.2323908231E10, 1.637157663E9);
INSERT INTO O_273 VALUES('240531001024', '240531001000', '3106', 1.13694E8, 'LEASING DOOSAN EXCA KE 27 / BFI', TIMESTAMP '2024-08-16 10:26:31.918', 1.13694E8, -5.5561501E9, 1.523463663E9);
INSERT INTO O_273 VALUES('240531001025', '240531001000', '1003', 5450000.0, '14 CK 992885 / TR 938', TIMESTAMP '2024-08-16 10:26:31.918', 5450000.0, 2.7166308E7, 1.518013663E9);
INSERT INTO O_273 VALUES('240531001026', '240531001000', '1003', 2.925E7, '17 CK 992887 / TR 940', TIMESTAMP '2024-08-16 10:26:31.918', 2.925E7, 5.6416308E7, 1.488763663E9);
INSERT INTO O_273 VALUES('240531001027', '240531001000', '1003', 3.05837691E8, '17 CK 992886 / TR 939', TIMESTAMP '2024-08-16 10:26:31.918', 3.05837691E8, 3.62253999E8, 1.182925972E9);
INSERT INTO O_273 VALUES('240531001028', '240531001000', '3106', 9.27455E7, 'LEASING DOZER KOMATSU KE 35 / BFI', TIMESTAMP '2024-08-16 10:26:31.934', 9.27455E7, -5.4634046E9, 1.090180472E9);
INSERT INTO O_273 VALUES('240531001029', '240531001000', '1003', 8.0E7, '20 CK 992888 / TR 942', TIMESTAMP '2024-08-16 10:26:31.934', 8.0E7, 4.42253999E8, 1.010180472E9);
INSERT INTO O_273 VALUES('240531001030', '240531001000', '7010', 10000.0, '20 BIAYA ADM', TIMESTAMP '2024-08-16 10:26:31.934', 10000.0, 1278000.0, 1.010170472E9);
INSERT INTO O_273 VALUES('240531001031', '240531001000', '3105', 2.01107607E8, 'LEASING 2 DOOSAN EXCA KE 29 / BRI', TIMESTAMP '2024-08-16 10:26:31.934', 2.01107607E8, -1.469841679E9, 8.09062865E8);
INSERT INTO O_273 VALUES('240531001032', '240531001000', '3105', 3.4670325E7, 'LEASING GREDER SANY KE 32 / BRI', TIMESTAMP '2024-08-16 10:26:31.934', 3.4670325E7, -1.435171354E9, 7.7439254E8);
INSERT INTO O_273 VALUES('240531001033', '240531001000', '1003', 5.3624987E8, '27 CK 992889 / TR 948', TIMESTAMP '2024-08-16 10:26:31.934', 5.3624987E8, 9.78503869E8, 2.3814267E8);
INSERT INTO O_273 VALUES('240531001034', '240531001000', '7010', 10000.0, '27 BIAYA ADM', TIMESTAMP '2024-08-16 10:26:31.934', 10000.0, 1288000.0, 2.3813267E8);
INSERT INTO O_273 VALUES('240531001035', '240531001000', '1003', 8.1E7, '27 CK 992890 / TR 949', TIMESTAMP '2024-08-16 10:26:31.934', 8.1E7, 1.059503869E9, 1.5713267E8);
INSERT INTO O_273 VALUES('240531001036', '240531001000', '7010', 25000.0, '31 BIAYA ADM', TIMESTAMP '2024-08-16 10:26:31.934', 25000.0, 1313000.0, 1.5710767E8);
INSERT INTO O_273 VALUES('240531001037', '240531001000', '9003', 1501602.0, '31 PAJAK', TIMESTAMP '2024-08-16 10:26:31.934', 1501602.0, -6585808.0, 1.55606068E8);
INSERT INTO O_273 VALUES('240531003001', '240531003000', '7001', 8.0089587E7, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 10:28:03.531', 8.0089587E7, 1.066428444E9, -6.9821044E7);
INSERT INTO O_273 VALUES('240531003002', '240531003000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-08-16 10:28:03.531', 25000.0, 1338000.0, -6.9846044E7);
INSERT INTO O_273 VALUES('240531003003', '240531003000', '9003', 549.0, 'PAJAK', TIMESTAMP '2024-08-16 10:28:03.531', 549.0, -6585259.0, -6.9846593E7);
INSERT INTO O_273 VALUES('240229059001', '240229059000', '1003', 1.69358712E8, '01 CK 319575', TIMESTAMP '2024-08-16 10:54:27.616', 1.69358712E8, -2.026473191E9, 3.375898506E9);
INSERT INTO O_273 VALUES('240229059002', '240229059000', '1003', 1.647E8, '01 CK 319576', TIMESTAMP '2024-08-16 10:54:27.616', 1.647E8, -1.861773191E9, 3.211198506E9);
INSERT INTO O_273 VALUES('240229059003', '240229059000', '1003', 2.20671065E8, '01 CK 319577', TIMESTAMP '2024-08-16 10:54:27.616', 2.20671065E8, -1.641102126E9, 2.990527441E9);
INSERT INTO O_273 VALUES('240229059004', '240229059000', '3105', 2.12243317E8, '02 CK 187247 LEASING 7 UNIT DT KE 25 / BRI ', TIMESTAMP '2024-08-16 10:54:27.616', 2.12243317E8, -3.015013033E9, 2.778284124E9);
INSERT INTO O_273 VALUES('240229059005', '240229059000', '1003', 1.505E7, '02 CK 357851', TIMESTAMP '2024-08-16 10:54:27.616', 1.505E7, -1.626052126E9, 2.763234124E9);
INSERT INTO O_273 VALUES('240229059006', '240229059000', '1003', 4500000.0, '02 CK 319578', TIMESTAMP '2024-08-16 10:54:27.616', 4500000.0, -1.621552126E9, 2.758734124E9);
INSERT INTO O_273 VALUES('240229059007', '240229059000', '1003', 2000000.0, '02 CK 319580', TIMESTAMP '2024-08-16 10:54:27.616', 2000000.0, -1.619552126E9, 2.756734124E9);
INSERT INTO O_273 VALUES('240229059008', '240229059000', '1003', 9600000.0, '02 CK 319579', TIMESTAMP '2024-08-16 10:54:27.616', 9600000.0, -1.609952126E9, 2.747134124E9);
INSERT INTO O_273 VALUES('240229059009', '240229059000', '1003', 6247680.0, '05 CK 357852', TIMESTAMP '2024-08-16 10:54:27.616', 6247680.0, -1.603704446E9, 2.740886444E9);
INSERT INTO O_273 VALUES('240229059010', '240229059000', '1003', 1669959.0, '06 CK 357855', TIMESTAMP '2024-08-16 10:54:27.616', 1669959.0, -1.602034487E9, 2.739216485E9);
INSERT INTO O_273 VALUES('240229059011', '240229059000', '1003', 2.4490215E7, '06 CK 357856', TIMESTAMP '2024-08-16 10:54:27.616', 2.4490215E7, -1.577544272E9, 2.71472627E9);
INSERT INTO O_273 VALUES('240229059012', '240229059000', '7010', 10000.0, '06 BUKU CEK', TIMESTAMP '2024-08-16 10:54:27.616', 10000.0, -615000.0, 2.71471627E9);
INSERT INTO O_273 VALUES('240229059013', '240229059000', '7010', 100000.0, '06 MATERAI', TIMESTAMP '2024-08-16 10:54:27.616', 100000.0, -515000.0, 2.71461627E9);
INSERT INTO O_273 VALUES('240229059014', '240229059000', '1003', 1.185E7, '07 CK 357857', TIMESTAMP '2024-08-16 10:54:27.616', 1.185E7, -1.565694272E9, 2.70276627E9);
INSERT INTO O_273 VALUES('240229059015', '240229059000', '1003', 3706090.0, '07 CK 357858', TIMESTAMP '2024-08-16 10:54:27.616', 3706090.0, -1.561988182E9, 2.69906018E9);
INSERT INTO O_273 VALUES('240229059016', '240229059000', '1003', 708098.0, '07 CK 357859', TIMESTAMP '2024-08-16 10:54:27.616', 708098.0, -1.561280084E9, 2.698352082E9);
INSERT INTO O_273 VALUES('240229059017', '240229059000', '1003', 1.0668E9, '12 CK 357860', TIMESTAMP '2024-08-16 10:54:27.616', 1.0668E9, -4.94480084E8, 1.631552082E9);
INSERT INTO O_273 VALUES('240229059018', '240229059000', '1003', 5450000.0, '12 CK 357891', TIMESTAMP '2024-08-16 10:54:27.616', 5450000.0, -4.89030084E8, 1.626102082E9);
INSERT INTO O_273 VALUES('240229059019', '240229059000', '3106', 1.13694E8, '13 CK 539198 LEASING DOOSAN EXCA KE 24 / BFI', TIMESTAMP '2024-08-16 10:54:27.616', 1.13694E8, -6.2467066E9, 1.512408082E9);
INSERT INTO O_273 VALUES('240229059020', '240229059000', '1003', 1.2896E7, '13 CK 357853', TIMESTAMP '2024-08-16 10:54:27.616', 1.2896E7, -4.76134084E8, 1.499512082E9);
INSERT INTO O_273 VALUES('240229059021', '240229059000', '7010', 10000.0, '15 BUKU CEK', TIMESTAMP '2024-08-16 10:54:27.631', 10000.0, -505000.0, 1.499502082E9);
INSERT INTO O_273 VALUES('240229059022', '240229059000', '7010', 100000.0, '15 MATERAI', TIMESTAMP '2024-08-16 10:54:27.631', 100000.0, -405000.0, 1.499402082E9);
INSERT INTO O_273 VALUES('240229059023', '240229059000', '1003', 2.8E7, '16 CK 357893', TIMESTAMP '2024-08-16 10:54:27.631', 2.8E7, -4.48134084E8, 1.471402082E9);
INSERT INTO O_273 VALUES('240229059024', '240229059000', '1003', 4.0E7, '16 CK 357892', TIMESTAMP '2024-08-16 10:54:27.631', 4.0E7, -4.08134084E8, 1.431402082E9);
INSERT INTO O_273 VALUES('240229059025', '240229059000', '1003', 3088076.0, '19 CK 357894', TIMESTAMP '2024-08-16 10:54:27.631', 3088076.0, -4.05046008E8, 1.428314006E9);
INSERT INTO O_273 VALUES('240229059026', '240229059000', '3106', 9.27455E7, '20 CK 551553 LEASING DOZER KOMATSU KE 32 / BFI', TIMESTAMP '2024-08-16 10:54:27.631', 9.27455E7, -6.1539611E9, 1.335568506E9);
INSERT INTO O_273 VALUES('240229059027', '240229059000', '1003', 8.884E7, '20 CK 357895', TIMESTAMP '2024-08-16 10:54:27.631', 8.884E7, -3.16206008E8, 1.246728506E9);
INSERT INTO O_273 VALUES('240229059028', '240229059000', '7010', 10000.0, '20 METERAI', TIMESTAMP '2024-08-16 10:54:27.631', 10000.0, -395000.0, 1.246718506E9);
INSERT INTO O_273 VALUES('240229059029', '240229059000', '7010', 10000.0, '20 METERAI', TIMESTAMP '2024-08-16 10:54:27.631', 10000.0, -385000.0, 1.246708506E9);
INSERT INTO O_273 VALUES('240229059030', '240229059000', '7010', 100000.0, '20 METERAI', TIMESTAMP '2024-08-16 10:54:27.631', 100000.0, -285000.0, 1.246608506E9);
INSERT INTO O_273 VALUES('240229059031', '240229059000', '1003', 8956800.0, '23 CK 357896', TIMESTAMP '2024-08-16 10:54:27.631', 8956800.0, -3.07249208E8, 1.237651706E9);
INSERT INTO O_273 VALUES('240229059032', '240229059000', '1003', 2.3E7, '23 CK 357898', TIMESTAMP '2024-08-16 10:54:27.631', 2.3E7, -2.84249208E8, 1.214651706E9);
INSERT INTO O_273 VALUES('240229059033', '240229059000', '3105', 2.01107607E8, '26 CK 187169 LEASING 2 DOOSAN EXCA KE 26 / BRI', TIMESTAMP '2024-08-16 10:54:27.631', 2.01107607E8, -2.813905426E9, 1.013544099E9);
INSERT INTO O_273 VALUES('240229059034', '240229059000', '7010', 125000.0, '27 ADM BANK', TIMESTAMP '2024-08-16 10:54:27.631', 125000.0, -160000.0, 1.013419099E9);
INSERT INTO O_273 VALUES('240229059035', '240229059000', '7010', 125000.0, '27 ADM BANK', TIMESTAMP '2024-08-16 10:54:27.631', 125000.0, -35000.0, 1.013294099E9);
INSERT INTO O_273 VALUES('240229059036', '240229059000', '1003', 1.57310825E8, '27 CK 357897', TIMESTAMP '2024-08-16 10:54:27.631', 1.57310825E8, -1.26938383E8, 8.55983274E8);
INSERT INTO O_273 VALUES('240229059037', '240229059000', '1003', 9.25E7, '28 CK 357899', TIMESTAMP '2024-08-16 10:54:27.631', 9.25E7, -3.4438383E7, 7.63483274E8);
INSERT INTO O_273 VALUES('240229059038', '240229059000', '3105', 3.4670325E7, '29 CK 451279 LEASING GREDER SANY KE 29 / BRI', TIMESTAMP '2024-08-16 10:54:27.631', 3.4670325E7, -2.779235101E9, 7.28812949E8);
INSERT INTO O_273 VALUES('240229059039', '240229059000', '7010', 10000.0, '29 MATERAI', TIMESTAMP '2024-08-16 10:54:27.631', 10000.0, -25000.0, 7.28802949E8);
INSERT INTO O_273 VALUES('240229059040', '240229059000', '1003', 4438383.0, '29 CK 357900', TIMESTAMP '2024-08-16 10:54:27.631', 4438383.0, -3.0E7, 7.24364566E8);
INSERT INTO O_273 VALUES('240229059041', '240229059000', '7010', 25000.0, '29 ADM BANK / FEB', TIMESTAMP '2024-08-16 10:54:27.631', 25000.0, 0.0, 7.24339566E8);
INSERT INTO O_273 VALUES('240229059042', '240229059000', '9003', 177565.0, '29 PAJAK', TIMESTAMP '2024-08-16 10:54:27.631', 177565.0, 0.0, 7.24162001E8);
INSERT INTO O_273 VALUES('240430037001', '240430037000', '7001', 522100.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 522100.0, 8.69896392E8, 9791866.0);
INSERT INTO O_273 VALUES('240430037002', '240430037000', '7001', 700000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 700000.0, 8.70596392E8, 9091866.0);
INSERT INTO O_273 VALUES('240430037003', '240430037000', '7001', 750000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 750000.0, 8.71346392E8, 8341866.0);
INSERT INTO O_273 VALUES('240430037004', '240430037000', '7001', 750000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 750000.0, 8.72096392E8, 7591866.0);
INSERT INTO O_273 VALUES('240430037005', '240430037000', '7001', 1044200.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 1044200.0, 8.73140592E8, 6547666.0);
INSERT INTO O_273 VALUES('240430037006', '240430037000', '7001', 1125000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 1125000.0, 8.74265592E8, 5422666.0);
INSERT INTO O_273 VALUES('240430037007', '240430037000', '7001', 1218233.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 1218233.0, 8.75483825E8, 4204433.0);
INSERT INTO O_273 VALUES('240430037008', '240430037000', '7001', 1305250.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 1305250.0, 8.76789075E8, 2899183.0);
INSERT INTO O_273 VALUES('240430037009', '240430037000', '7001', 1500000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 1500000.0, 8.78289075E8, 1399183.0);
INSERT INTO O_273 VALUES('240430037010', '240430037000', '7001', 1500000.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 1500000.0, 8.79789075E8, -100817.0);
INSERT INTO O_273 VALUES('240430037011', '240430037000', '7001', 1566300.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 1566300.0, 8.81355375E8, -1667117.0);
INSERT INTO O_273 VALUES('240430037012', '240430037000', '7001', 1740333.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 1740333.0, 8.83095708E8, -3407450.0);
INSERT INTO O_273 VALUES('240430037013', '240430037000', '7001', 5569067.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 5569067.0, 8.88664775E8, -8976517.0);
INSERT INTO O_273 VALUES('240430037014', '240430037000', '7001', 7700472.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 7700472.0, 8.96365247E8, -1.6676989E7);
INSERT INTO O_273 VALUES('240430037015', '240430037000', '7001', 9556492.0, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 9556492.0, 9.05921739E8, -2.6233481E7);
INSERT INTO O_273 VALUES('240430037016', '240430037000', '7010', 5000.0, 'ADM BANK', TIMESTAMP '2024-08-16 11:13:16.931', 5000.0, 968000.0, -2.6238481E7);
INSERT INTO O_273 VALUES('240430037017', '240430037000', '7001', 8.0417118E7, 'PAYROLL MAR 2024', TIMESTAMP '2024-08-16 11:13:16.931', 8.0417118E7, 9.86338857E8, -1.06655599E8);
INSERT INTO O_273 VALUES('240430037018', '240430037000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-08-16 11:13:16.931', 25000.0, 993000.0, -1.06680599E8);
INSERT INTO O_273 VALUES('240430037019', '240430037000', '9003', 423.0, 'PAJAK', TIMESTAMP '2024-08-16 11:13:16.931', 423.0, 1340953.0, -1.06681022E8);
INSERT INTO O_273 VALUES('240531038001', '240531038000', '1003', 2.0E9, '07 CK 172099', TIMESTAMP '2024-08-16 13:24:34.35', 2.0E9, 1.646490287E9, 2.289881891E9);
INSERT INTO O_273 VALUES('240531038002', '240531038000', '1003', 5568000.0, '07 CK 172098 / TR 934', TIMESTAMP '2024-08-16 13:24:34.35', 5568000.0, 1.652058287E9, 2.284313891E9);
INSERT INTO O_273 VALUES('240531038003', '240531038000', '1003', 1.85064E7, '07 CK 172097 / TR 934', TIMESTAMP '2024-08-16 13:24:34.351', 1.85064E7, 1.670564687E9, 2.265807491E9);
INSERT INTO O_273 VALUES('240531038004', '240531038000', '1003', 2.0E7, '08 CK 172100 / TR 935', TIMESTAMP '2024-08-16 13:24:34.351', 2.0E7, 1.690564687E9, 2.245807491E9);
INSERT INTO O_273 VALUES('240531038005', '240531038000', '1003', 3.0E7, '13 CK 172326 / TR 937', TIMESTAMP '2024-08-16 13:24:34.351', 3.0E7, 1.720564687E9, 2.215807491E9);
INSERT INTO O_273 VALUES('240531038006', '240531038000', '3302', 2.855E8, '17 CK 172328', TIMESTAMP '2024-08-16 13:24:34.351', 2.855E8, 1.2604938231E10, 1.930307491E9);
INSERT INTO O_273 VALUES('240531038007', '240531038000', '3302', 3.2E8, '17 CK 172327', TIMESTAMP '2024-08-16 13:24:34.351', 3.2E8, 1.2924938231E10, 1.610307491E9);
INSERT INTO O_273 VALUES('240531038008', '240531038000', '1003', 2.2E7, '17 CK 172329 / TR 941', TIMESTAMP '2024-08-16 13:24:34.351', 2.2E7, 1.742564687E9, 1.588307491E9);
INSERT INTO O_273 VALUES('240531038009', '240531038000', '7016', 3654000.0, '21 CK 251857', TIMESTAMP '2024-08-16 13:24:34.351', 3654000.0, 8.2256034E8, 1.584653491E9);
INSERT INTO O_273 VALUES('240531038010', '240531038000', '1003', 2.2E7, '21 CK 172331 / TR 943', TIMESTAMP '2024-08-16 13:24:34.351', 2.2E7, 1.764564687E9, 1.562653491E9);
INSERT INTO O_273 VALUES('240531038011', '240531038000', '1003', 1.0517333E7, '21 CK 172330 / TR 944', TIMESTAMP '2024-08-16 13:24:34.351', 1.0517333E7, 1.77508202E9, 1.552136158E9);
INSERT INTO O_273 VALUES('240531038012', '240531038000', '3106', 3.5619E7, '27 CK 253133 / LEASING 3 UNIT HILUX / BFI', TIMESTAMP '2024-08-16 13:24:34.351', 3.5619E7, -5.4277856E9, 1.516517158E9);
INSERT INTO O_273 VALUES('240531038013', '240531038000', '1003', 2.0E7, '29 CK 172332 / TR 948', TIMESTAMP '2024-08-16 13:24:34.351', 2.0E7, 1.79508202E9, 1.496517158E9);
INSERT INTO O_273 VALUES('240531038014', '240531038000', '1003', 5.85E7, '29 CK 172333 / TR 951', TIMESTAMP '2024-08-16 13:24:34.351', 5.85E7, 1.85358202E9, 1.438017158E9);
INSERT INTO O_273 VALUES('240531038015', '240531038000', '1003', 2.925E7, '29 CK 172334 / TR 950', TIMESTAMP '2024-08-16 13:24:34.352', 2.925E7, 1.88283202E9, 1.408767158E9);
INSERT INTO O_273 VALUES('240531038016', '240531038000', '1003', 1.0316798E8, '30 CK 172335 / TR 952', TIMESTAMP '2024-08-16 13:24:34.352', 1.0316798E8, 1.986E9, 1.305599178E9);
INSERT INTO O_273 VALUES('240531038017', '240531038000', '1003', 1.4E7, '31 CK 172336 / TR 953', TIMESTAMP '2024-08-16 13:24:34.352', 1.4E7, 2.0E9, 1.291599178E9);
INSERT INTO O_273 VALUES('240531038018', '240531038000', '9003', 1082890.0, '30 PAJAK', TIMESTAMP '2024-08-16 13:24:34.352', 1082890.0, -5502369.0, 1.290516288E9);
INSERT INTO O_273 VALUES('240531038019', '240531038000', '7010', 25000.0, '30 ADM BANK / MEI', TIMESTAMP '2024-08-16 13:24:34.352', 25000.0, 1363000.0, 1.290491288E9);
INSERT INTO O_273 VALUES('240630009001', '240630009000', '7001', 3000000.0, 'PAYROLL JUN 2024', TIMESTAMP '2024-08-16 13:44:52.133', 3000000.0, 1.368806157E9, 8156154.0);
INSERT INTO O_273 VALUES('240630009002', '240630009000', '7010', 2500.0, 'ADM BANK', TIMESTAMP '2024-08-16 13:44:52.133', 2500.0, 1365500.0, 8153654.0);
INSERT INTO O_273 VALUES('240630009003', '240630009000', '7001', 3000000.0, 'PAYROLL JUN 2024', TIMESTAMP '2024-08-16 13:44:52.133', 3000000.0, 1.371806157E9, 5153654.0);
INSERT INTO O_273 VALUES('240630009004', '240630009000', '7010', 2500.0, 'ADM BANK', TIMESTAMP '2024-08-16 13:44:52.133', 2500.0, 1368000.0, 5151154.0);
INSERT INTO O_273 VALUES('240630009005', '240630009000', '7001', 3000000.0, 'PAYROLL JUN 2024', TIMESTAMP '2024-08-16 13:44:52.133', 3000000.0, 1.374806157E9, 2151154.0);
INSERT INTO O_273 VALUES('240630009006', '240630009000', '7010', 2500.0, 'ADM BANK', TIMESTAMP '2024-08-16 13:44:52.133', 2500.0, 1370500.0, 2148654.0);
INSERT INTO O_273 VALUES('240630009007', '240630009000', '7001', 3800000.0, 'PAYROLL JUN 2024', TIMESTAMP '2024-08-16 13:44:52.133', 3800000.0, 1.378606157E9, -1651346.0);
INSERT INTO O_273 VALUES('240630009008', '240630009000', '7010', 2500.0, 'ADM BANK', TIMESTAMP '2024-08-16 13:44:52.133', 2500.0, 1373000.0, -1653846.0);
INSERT INTO O_273 VALUES('240630009009', '240630009000', '7001', 7.8634238E7, 'PAYROLL JUN 2024', TIMESTAMP '2024-08-16 13:44:52.133', 7.8634238E7, 1.457240395E9, -8.0288084E7);
INSERT INTO O_273 VALUES('240630009010', '240630009000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-08-16 13:44:52.133', 25000.0, 1398000.0, -8.0313084E7);
INSERT INTO O_273 VALUES('240630009011', '240630009000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-08-16 13:44:52.133', 25000.0, 1423000.0, -8.0338084E7);
INSERT INTO O_273 VALUES('240630009012', '240630009000', '9003', 412.0, 'PAJAK', TIMESTAMP '2024-08-16 13:44:52.133', 412.0, -1.3009967E7, -8.0338496E7);
INSERT INTO O_273 VALUES('240630042001', '240630042000', '1003', 2528580.0, '05 CK 992892', TIMESTAMP '2024-08-26 09:03:54.261', 2528580.0, -1.353278976E9, 5.531290516E9);
INSERT INTO O_273 VALUES('240630042002', '240630042000', '1003', 3.61E8, '05 CK 992891 / TR 955', TIMESTAMP '2024-08-26 09:03:54.261', 3.61E8, -9.92278976E8, 5.170290516E9);
INSERT INTO O_273 VALUES('240630042003', '240630042000', '1003', 2598008.0, '06 CK 992894 / TR 956', TIMESTAMP '2024-08-26 09:03:54.261', 2598008.0, -9.89680968E8, 5.167692508E9);
INSERT INTO O_273 VALUES('240630042004', '240630042000', '1003', 1.3662384E7, '06 CK 992895 / TR 957', TIMESTAMP '2024-08-26 09:03:54.261', 1.3662384E7, -9.76018584E8, 5.154030124E9);
INSERT INTO O_273 VALUES('240630042005', '240630042000', '1003', 1.2671189E7, '06 CK 992893 / TR 958', TIMESTAMP '2024-08-26 09:03:54.261', 1.2671189E7, -9.63347395E8, 5.141358935E9);
INSERT INTO O_273 VALUES('240630042006', '240630042000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-08-26 09:03:54.261', 25000.0, 1448000.0, 5.141333935E9);
INSERT INTO O_273 VALUES('240630042007', '240630042000', '7010', 250000.0, 'ADM BANK', TIMESTAMP '2024-08-26 09:03:54.261', 250000.0, 1698000.0, 5.141083935E9);
INSERT INTO O_273 VALUES('240630042008', '240630042000', '3105', 2.12243317E8, 'LEASING 7 UNIT DT KE 29 / BRI ', TIMESTAMP '2024-08-26 09:03:54.261', 2.12243317E8, -1.222928037E9, 4.928840618E9);
INSERT INTO O_273 VALUES('240630042009', '240630042000', '3106', 1.13694E8, 'LEASING DOOSAN EXCA KE 28 / BFI', TIMESTAMP '2024-08-26 09:03:54.261', 1.13694E8, -5.3140916E9, 4.815146618E9);
INSERT INTO O_273 VALUES('240630042010', '240630042000', '1003', 5450000.0, '11 CK 992896 / TR 962', TIMESTAMP '2024-08-26 09:03:54.261', 5450000.0, -9.57897395E8, 4.809696618E9);
INSERT INTO O_273 VALUES('240630042011', '240630042000', '1003', 2256852.0, '15 CK 992897 / TR 970', TIMESTAMP '2024-08-26 09:03:54.261', 2256852.0, -9.55640543E8, 4.807439766E9);
INSERT INTO O_273 VALUES('240630042012', '240630042000', '1003', 2610500.0, '15 CK 992898 / TR 965', TIMESTAMP '2024-08-26 09:03:54.261', 2610500.0, -9.53030043E8, 4.804829266E9);
INSERT INTO O_273 VALUES('240630042013', '240630042000', '1003', 2664000.0, '19 CK 992899 / TR 987', TIMESTAMP '2024-08-26 09:03:54.261', 2664000.0, -9.50366043E8, 4.802165266E9);
INSERT INTO O_273 VALUES('240630042014', '240630042000', '1003', 9900000.0, '20 CK 992900 / TR 968', TIMESTAMP '2024-08-26 09:03:54.261', 9900000.0, -9.40466043E8, 4.792265266E9);
INSERT INTO O_273 VALUES('240630042015', '240630042000', '1003', 426500.0, '21 CK 993601 / TR 972', TIMESTAMP '2024-08-26 09:03:54.261', 426500.0, -9.40039543E8, 4.791838766E9);
INSERT INTO O_273 VALUES('240630042016', '240630042000', '1401', 2.0E9, 'TARIKAN PIHAK KE 3', TIMESTAMP '2024-08-26 09:03:54.261', 2.0E9, 2.0E9, 2.791838766E9);
INSERT INTO O_273 VALUES('240630042017', '240630042000', '3105', 2.01107607E8, 'LEASING 2 DOOSAN EXCA KE 30 / BRI', TIMESTAMP '2024-08-26 09:03:54.261', 2.01107607E8, -1.02182043E9, 2.590731159E9);
INSERT INTO O_273 VALUES('240630042018', '240630042000', '3105', 3.4670325E7, 'LEASING GREDER SANY KE 33 / BRI', TIMESTAMP '2024-08-26 09:03:54.261', 3.4670325E7, -9.87150105E8, 2.556060834E9);
INSERT INTO O_273 VALUES('240630042019', '240630042000', '7010', 10000.0, 'ADM BANK', TIMESTAMP '2024-08-26 09:03:54.261', 10000.0, 1708000.0, 2.556050834E9);
INSERT INTO O_273 VALUES('240630042020', '240630042000', '1003', 8.9249175E7, '27 PPh PSL 29 / TR 977', TIMESTAMP '2024-08-26 09:03:54.261', 8.9249175E7, -8.50790368E8, 2.466801659E9);
INSERT INTO O_273 VALUES('240630042021', '240630042000', '1003', 8.1E7, '28 CK 993609 / TR TR 978', TIMESTAMP '2024-08-26 09:03:54.261', 8.1E7, -7.69790368E8, 2.385801659E9);
INSERT INTO O_273 VALUES('240630042022', '240630042000', '1003', 6703000.0, '28 CK 993610 / TR TR 988', TIMESTAMP '2024-08-26 09:03:54.261', 6703000.0, -7.63087368E8, 2.379098659E9);
INSERT INTO O_273 VALUES('240630042023', '240630042000', '7010', 25000.0, '31 BIAYA ADM', TIMESTAMP '2024-08-26 09:03:54.261', 25000.0, 1733000.0, 2.379073659E9);
INSERT INTO O_273 VALUES('240630042024', '240630042000', '9003', 750407.0, '31 PAJAK', TIMESTAMP '2024-08-26 09:03:54.261', 750407.0, -1.6011596E7, 2.378323252E9);
INSERT INTO O_273 VALUES('240630043001', '240630043000', '1003', 3.6E7, '03 CK 172337', TIMESTAMP '2024-08-26 09:04:36.797', 3.6E7, -7.27087368E8, 8.381142109E9);
INSERT INTO O_273 VALUES('240630043002', '240630043000', '3302', 2.0E9, '03 CK 172338', TIMESTAMP '2024-08-26 09:04:36.797', 2.0E9, 1.4772213231E10, 6.381142109E9);
INSERT INTO O_273 VALUES('240630043003', '240630043000', '3302', 5.2E7, '06 CK 172339', TIMESTAMP '2024-08-26 09:04:36.797', 5.2E7, 1.4824213231E10, 6.329142109E9);
INSERT INTO O_273 VALUES('240630043004', '240630043000', '1003', 2.0E7, '07 CK 172340 / TR 959', TIMESTAMP '2024-08-26 09:04:36.797', 2.0E7, -7.07087368E8, 6.309142109E9);
INSERT INTO O_273 VALUES('240630043005', '240630043000', '1003', 3.0E7, '10 CK 172341 / TR 960', TIMESTAMP '2024-08-26 09:04:36.797', 3.0E7, -6.77087368E8, 6.279142109E9);
INSERT INTO O_273 VALUES('240630043006', '240630043000', '1003', 4.0E8, '11 CK 172343 / TR 961', TIMESTAMP '2024-08-26 09:04:36.797', 4.0E8, -2.77087368E8, 5.879142109E9);
INSERT INTO O_273 VALUES('240630043007', '240630043000', '1003', 4.8032584E8, '11 CK 172342 / TR 963', TIMESTAMP '2024-08-26 09:04:36.801', 4.8032584E8, 2.03238472E8, 5.398816269E9);
INSERT INTO O_273 VALUES('240630043008', '240630043000', '1003', 3.6E7, '14 CK 172344 /TR 964', TIMESTAMP '2024-08-26 09:04:36.801', 3.6E7, 2.39238472E8, 5.362816269E9);
INSERT INTO O_273 VALUES('240630043009', '240630043000', '1401', 4.0E9, '14 CK 172345 PINJAMAN SSDK', TIMESTAMP '2024-08-26 09:04:36.801', 4.0E9, 6.0E9, 1.362816269E9);
INSERT INTO O_273 VALUES('240630043010', '240630043000', '3302', 2.5E8, '19 CK 172346', TIMESTAMP '2024-08-26 09:04:36.801', 2.5E8, 1.5074213231E10, 1.112816269E9);
INSERT INTO O_273 VALUES('240630043011', '240630043000', '7010', 275000.0, '19 BUKU CEK', TIMESTAMP '2024-08-26 09:04:36.832', 275000.0, 2008000.0, 1.112541269E9);
INSERT INTO O_273 VALUES('240630043012', '240630043000', '1003', 2.3E7, '20 CK 172347 / TR 966', TIMESTAMP '2024-08-26 09:04:36.832', 2.3E7, 2.62238472E8, 1.089541269E9);
INSERT INTO O_273 VALUES('240630043013', '240630043000', '1003', 2.0E7, '21 CK 172348 / TR 971', TIMESTAMP '2024-08-26 09:04:36.832', 2.0E7, 2.82238472E8, 1.069541269E9);
INSERT INTO O_273 VALUES('240630043014', '240630043000', '3106', 3.5619E7, '25 CK 253134 / LEASING 3 UNIT HILUX / BFI', TIMESTAMP '2024-08-26 09:04:36.832', 3.5619E7, -5.2784726E9, 1.033922269E9);
INSERT INTO O_273 VALUES('240630043015', '240630043000', '1003', 2165333.0, '25 CK 172349 / TR 974', TIMESTAMP '2024-08-26 09:04:36.832', 2165333.0, 2.84403805E8, 1.031756936E9);
INSERT INTO O_273 VALUES('240630043016', '240630043000', '1003', 1.8E7, '27 CK 172350 / TR 976', TIMESTAMP '2024-08-26 09:04:36.832', 1.8E7, 3.02403805E8, 1.013756936E9);
INSERT INTO O_273 VALUES('240630043017', '240630043000', '1003', 9.7596195E7, '28 CK 172435', TIMESTAMP '2024-08-26 09:04:36.833', 9.7596195E7, 4.0E8, 9.16160741E8);
INSERT INTO O_273 VALUES('240630043018', '240630043000', '9003', 754061.0, '30 PAJAK', TIMESTAMP '2024-08-26 09:04:36.833', 754061.0, -1.5257535E7, 9.1540668E8);
INSERT INTO O_273 VALUES('240630043019', '240630043000', '7010', 25000.0, '30 ADM BANK / MEI', TIMESTAMP '2024-08-26 09:04:36.833', 25000.0, 2033000.0, 9.1538168E8);
INSERT INTO O_273 VALUES('240731005001', '240731005000', '1003', 4.9E7, '03 CK 172426 / TR 980', TIMESTAMP '2024-08-27 09:12:21.436', 4.9E7, -4.4116E7, 8.97135407E8);
INSERT INTO O_273 VALUES('240731005002', '240731005000', '1003', 2.5E7, '05 CK 172427 / TR 981', TIMESTAMP '2024-08-27 09:12:21.436', 2.5E7, -1.9116E7, 8.72135407E8);
INSERT INTO O_273 VALUES('240731005003', '240731005000', '1003', 2.0E7, '18 CK 172428 / TR 993', TIMESTAMP '2024-08-27 09:12:21.436', 2.0E7, 884000.0, 8.52135407E8);
INSERT INTO O_273 VALUES('240731005004', '240731005000', '1003', 2.0E7, '22 CK 172430 / TR 995', TIMESTAMP '2024-08-27 09:12:21.436', 2.0E7, 2.0884E7, 8.32135407E8);
INSERT INTO O_273 VALUES('240731005005', '240731005000', '3106', 3.5619E7, '23 CK 253135', TIMESTAMP '2024-08-27 09:12:21.436', 3.5619E7, -5.2428536E9, 7.96516407E8);
INSERT INTO O_273 VALUES('240731005006', '240731005000', '1003', 6496000.0, '24 CK 172429 / TR 997', TIMESTAMP '2024-08-27 09:12:21.436', 6496000.0, 2.738E7, 7.90020407E8);
INSERT INTO O_273 VALUES('240731005007', '240731005000', '1003', 3.3E7, '26 CK 172431 / TR 999', TIMESTAMP '2024-08-27 09:12:21.436', 3.3E7, 6.038E7, 7.57020407E8);
INSERT INTO O_273 VALUES('240731005008', '240731005000', '1003', 9.315312E7, '29 CK 172432 / TR 1001', TIMESTAMP '2024-08-27 09:12:21.436', 9.315312E7, 1.5353312E8, 6.63867287E8);
INSERT INTO O_273 VALUES('240731005009', '240731005000', '9003', 150746.0, '31 PAJAK', TIMESTAMP '2024-08-27 09:12:21.436', 150746.0, -3415706.0, 6.63716541E8);
INSERT INTO O_273 VALUES('240731005010', '240731005000', '7010', 25000.0, '31 ADM BANK / JUL', TIMESTAMP '2024-08-27 09:12:21.436', 25000.0, 407000.0, 6.63691541E8);
INSERT INTO O_273 VALUES('240731007001', '240731007000', '7001', 7.9060709E7, 'PAYROLL JUL 2024', TIMESTAMP '2024-08-27 09:15:56.628', 7.9060709E7, 1.83006842E8, 1.6718858E7);
INSERT INTO O_273 VALUES('240731007002', '240731007000', '7001', 3638640.0, 'PAYROLL JUL 2024', TIMESTAMP '2024-08-27 09:15:56.628', 3638640.0, 1.86645482E8, 1.3080218E7);
INSERT INTO O_273 VALUES('240731007003', '240731007000', '7010', 2500.0, 'ADM BANK', TIMESTAMP '2024-08-27 09:15:56.628', 2500.0, 409500.0, 1.3077718E7);
INSERT INTO O_273 VALUES('240731007004', '240731007000', '7001', 3638640.0, 'PAYROLL JUN 2024', TIMESTAMP '2024-08-27 09:15:56.628', 3638640.0, 1.90284122E8, 9439078.0);
INSERT INTO O_273 VALUES('240731007005', '240731007000', '7010', 2500.0, 'ADM BANK', TIMESTAMP '2024-08-27 09:15:56.628', 2500.0, 412000.0, 9436578.0);
INSERT INTO O_273 VALUES('240731007006', '240731007000', '7001', 4638640.0, 'PAYROLL JUN 2024', TIMESTAMP '2024-08-27 09:15:56.628', 4638640.0, 1.94922762E8, 4797938.0);
INSERT INTO O_273 VALUES('240731007007', '240731007000', '7010', 2500.0, 'ADM BANK', TIMESTAMP '2024-08-27 09:15:56.628', 2500.0, 414500.0, 4795438.0);
INSERT INTO O_273 VALUES('240731007008', '240731007000', '7001', 3638640.0, 'PAYROLL JUN 2024', TIMESTAMP '2024-08-27 09:15:56.628', 3638640.0, 1.98561402E8, 1156798.0);
INSERT INTO O_273 VALUES('240731007009', '240731007000', '7010', 2500.0, 'ADM BANK', TIMESTAMP '2024-08-27 09:15:56.628', 2500.0, 417000.0, 1154298.0);
INSERT INTO O_273 VALUES('240731007010', '240731007000', '7010', 25000.0, 'ADM BANK', TIMESTAMP '2024-08-27 09:15:56.628', 25000.0, 442000.0, 1129298.0);
INSERT INTO O_273 VALUES('240731031001', '240731031000', '3105', 2.12243317E8, 'LEASING 7 UNIT DT / BRI ', TIMESTAMP '2024-08-29 14:53:45.479', 2.12243317E8, -7.74906788E8, 4.787172387E9);
INSERT INTO O_273 VALUES('240731031002', '240731031000', '1003', 8308663.0, '05 CK 993603', TIMESTAMP '2024-08-29 14:53:45.479', 8308663.0, -7.32308057E8, 4.778863724E9);
INSERT INTO O_273 VALUES('240731031003', '240731031000', '1003', 1.7837341E7, '08 CK 993604 / TR 982', TIMESTAMP '2024-08-29 14:53:45.479', 1.7837341E7, -7.14470716E8, 4.761026383E9);
INSERT INTO O_273 VALUES('240731031004', '240731031000', '3106', 1.13694E8, 'LEASING DOOSAN EXCA / BFI', TIMESTAMP '2024-08-29 14:53:45.479', 1.13694E8, -5.1291596E9, 4.647332383E9);
INSERT INTO O_273 VALUES('240731031005', '240731031000', '1003', 5450000.0, '09 CK 993606 / TR 984', TIMESTAMP '2024-08-29 14:53:45.479', 5450000.0, -7.09020716E8, 4.641882383E9);
INSERT INTO O_273 VALUES('240731031006', '240731031000', '1003', 2986148.0, '09 CK 993605 / TR 985', TIMESTAMP '2024-08-29 14:53:45.479', 2986148.0, -7.06034568E8, 4.638896235E9);
INSERT INTO O_273 VALUES('240731031007', '240731031000', '1003', 1.333845E8, '09 CK 993607 / TR 990', TIMESTAMP '2024-08-29 14:53:45.479', 1.333845E8, -5.72650068E8, 4.505511735E9);
INSERT INTO O_273 VALUES('240731031008', '240731031000', '1003', 3.1E7, '10 CK 993608 / TR 986', TIMESTAMP '2024-08-29 14:53:45.479', 3.1E7, -5.41650068E8, 4.474511735E9);
INSERT INTO O_273 VALUES('240731031009', '240731031000', '3302', 1.3795E8, '19 CK 993612', TIMESTAMP '2024-08-29 14:53:45.479', 1.3795E8, 1.5061898231E10, 4.336561735E9);
INSERT INTO O_273 VALUES('240731031010', '240731031000', '1003', 3.4106E7, '23 CK 993611 / TR 992', TIMESTAMP '2024-08-29 14:53:45.479', 3.4106E7, -5.07544068E8, 4.302455735E9);
INSERT INTO O_273 VALUES('240731031011', '240731031000', '3302', 3.0E9, '23 CK 993615', TIMESTAMP '2024-08-29 14:53:45.479', 3.0E9, 1.8061898231E10, 1.302455735E9);
INSERT INTO O_273 VALUES('240731031012', '240731031000', '1003', 1.39931E7, '24 CK 993614 / TR 996', TIMESTAMP '2024-08-29 14:53:45.479', 1.39931E7, -4.93550968E8, 1.288462635E9);
INSERT INTO O_273 VALUES('240731031013', '240731031000', '1003', 750000.0, '25 CK 993613 / TR 998', TIMESTAMP '2024-08-29 14:53:45.479', 750000.0, -4.92800968E8, 1.287712635E9);
INSERT INTO O_273 VALUES('240731031014', '240731031000', '3105', 2.01107607E8, 'LEASING 2 DOOSAN EXCA / BRI', TIMESTAMP '2024-08-29 14:53:45.479', 2.01107607E8, -5.73799181E8, 1.086605028E9);
INSERT INTO O_273 VALUES('240731031015', '240731031000', '3105', 3.4670325E7, 'LEASING GREDER SANY KE 32 / BRI', TIMESTAMP '2024-08-29 14:53:45.479', 3.4670325E7, -5.39128856E8, 1.051934703E9);
INSERT INTO O_273 VALUES('240731031016', '240731031000', '1003', 2.61734968E8, '26 CK 993616 / TR 1000', TIMESTAMP '2024-08-29 14:53:45.494', 2.61734968E8, -2.31066E8, 7.90199735E8);
INSERT INTO O_273 VALUES('240731031017', '240731031000', '7010', 10000.0, '26 BEA MATERAI', TIMESTAMP '2024-08-29 14:53:45.494', 10000.0, 452000.0, 7.90189735E8);
INSERT INTO O_273 VALUES('240731031018', '240731031000', '1003', 9.3116E7, '30 CK 993617 / TR 1004', TIMESTAMP '2024-08-29 14:53:45.494', 9.3116E7, -1.3795E8, 6.97073735E8);
INSERT INTO O_273 VALUES('240731031019', '240731031000', '7010', 2000000.0, '30 TRANSFER PINDAH BUKU', TIMESTAMP '2024-08-29 14:53:45.494', 2000000.0, 2452000.0, 6.95073735E8);
INSERT INTO O_273 VALUES('240731031020', '240731031000', '7010', 25000.0, '31 BIAYA ADM', TIMESTAMP '2024-08-29 14:53:45.494', 25000.0, 2477000.0, 6.95048735E8);
INSERT INTO O_273 VALUES('240731031021', '240731031000', '9003', 713290.0, '31 PAJAK', TIMESTAMP '2024-08-29 14:53:45.494', 713290.0, -2702416.0, 6.94335445E8);
INSERT INTO O_273 VALUES('240701002001', '240701002000', '7010', 25000.0, 'ADM BANK / MEI', TIMESTAMP '2024-09-02 13:44:39.247', 25000.0, 25000.0, 5.00044072E8);
INSERT INTO O_273 VALUES('240701002002', '240701002000', '7011', 104.0, 'PAJAK / MEI', TIMESTAMP '2024-09-02 13:44:39.247', 104.0, 2010154.0, 5.00043968E8);
INSERT INTO O_273 VALUES('240701002003', '240701002000', '7010', 30000.0, 'ADM BANK / MEI', TIMESTAMP '2024-09-02 13:44:39.247', 30000.0, 55000.0, 5.00013968E8);
INSERT INTO O_273 VALUES('240701002004', '240701002000', '7010', 275000.0, 'BUKU CEK / JUN', TIMESTAMP '2024-09-02 13:44:39.247', 275000.0, 330000.0, 4.99738968E8);
INSERT INTO O_273 VALUES('240701002005', '240701002000', '7010', 30000.0, 'ADM BANK / JUN', TIMESTAMP '2024-09-02 13:44:39.247', 30000.0, 360000.0, 4.99708968E8);
INSERT INTO O_273 VALUES('240701002006', '240701002000', '7011', 6000.0, 'PAJAK / JUN', TIMESTAMP '2024-09-02 13:44:39.247', 6000.0, 2016154.0, 4.99702968E8);
INSERT INTO O_273 VALUES('240731034001', '240731034000', '1003', 1.3795E8, 'TARIKAN TUNAI / 22 JULI 2024', TIMESTAMP '2024-09-02 13:45:47.311', 1.3795E8, 0.0, 3.61752968E8);
INSERT INTO O_273 VALUES('240731034002', '240731034000', '7010', 30000.0, 'ADM BANK / JUL', TIMESTAMP '2024-09-02 13:45:47.311', 30000.0, 2507000.0, 3.61722968E8);
INSERT INTO O_273 VALUES('240731034003', '240731034000', '9001', 7710.0, 'PAJAK / JUL', TIMESTAMP '2024-09-02 13:45:47.311', 7710.0, -815902.0, 3.61715258E8);
INSERT INTO O_273 VALUES('240831001001', '240831001000', '1003', 2.5E7, '01 CK 172433', TIMESTAMP '2024-09-05 14:21:29.402', 2.5E7, 2.5E7, 6.38691541E8);
INSERT INTO O_273 VALUES('240831001002', '240831001000', '1003', 1.8E7, '07 CK 172434', TIMESTAMP '2024-09-05 14:21:29.418', 1.8E7, 4.3E7, 6.20691541E8);
INSERT INTO O_273 VALUES('240831001003', '240831001000', '1003', 1.7E7, '09 CK 172436', TIMESTAMP '2024-09-05 14:21:29.418', 1.7E7, 6.0E7, 6.03691541E8);
INSERT INTO O_273 VALUES('240831001004', '240831001000', '1003', 3.743998E8, '15 CK 172437', TIMESTAMP '2024-09-05 14:21:29.418', 3.743998E8, 4.343998E8, 2.29291741E8);
INSERT INTO O_273 VALUES('240831001005', '240831001000', '1003', 1.5E7, '16 CK 172438', TIMESTAMP '2024-09-05 14:21:29.418', 1.5E7, 4.493998E8, 2.14291741E8);
INSERT INTO O_273 VALUES('240831001006', '240831001000', '1003', 2.5E7, '21 CK 172439', TIMESTAMP '2024-09-05 14:21:29.418', 2.5E7, 4.743998E8, 1.89291741E8);
INSERT INTO O_273 VALUES('240831001007', '240831001000', '3106', 3.5619E7, '23 CK 253136', TIMESTAMP '2024-09-05 14:21:29.418', 3.5619E7, -5.0935406E9, 1.53672741E8);
INSERT INTO O_273 VALUES('240831001008', '240831001000', '1003', 2.25E7, '27 CK 172440', TIMESTAMP '2024-09-05 14:21:29.418', 2.25E7, 4.968998E8, 1.31172741E8);
INSERT INTO O_273 VALUES('240831001009', '240831001000', '1003', 2.0E7, '30 CK 172443', TIMESTAMP '2024-09-05 14:21:29.418', 2.0E7, 5.168998E8, 1.11172741E8);
INSERT INTO O_273 VALUES('240831001010', '240831001000', '1003', 9.5361675E7, '30 CK 172442', TIMESTAMP '2024-09-05 14:21:29.418', 9.5361675E7, 6.12261475E8, 1.5811066E7);
INSERT INTO O_273 VALUES('240831001011', '240831001000', '1003', 9280000.0, '30 CK 172441', TIMESTAMP '2024-09-05 14:21:29.418', 9280000.0, 6.21541475E8, 6531066.0);
INSERT INTO O_273 VALUES('240831001012', '240831001000', '9003', 60336.0, '31 PAJAK', TIMESTAMP '2024-09-05 14:21:29.418', 60336.0, 60336.0, 6470730.0);
INSERT INTO O_273 VALUES('240831001013', '240831001000', '7010', 25000.0, '31 ADM BANK / JUL', TIMESTAMP '2024-09-05 14:21:29.418', 25000.0, 25000.0, 6445730.0);
INSERT INTO O_273 VALUES('240831003001', '240831003000', '1003', 9.7403003E7, '30 PAYROLL DHAKO', TIMESTAMP '2024-09-05 14:22:30.564', 9.7403003E7, 1.676545975E9, -9.6273705E7);
INSERT INTO O_273 VALUES('240831003002', '240831003000', '1003', 25000.0, 'ADM BANK / AGT', TIMESTAMP '2024-09-05 14:22:30.564', 25000.0, 1.676570975E9, -9.6298705E7);
INSERT INTO O_273 VALUES('240831002001', '240831002000', '3105', 2.12243317E8, '02 CK 187253', TIMESTAMP '2024-09-12 13:42:22.369', 2.12243317E8, -3.26885539E8, 4.82092128E8);
INSERT INTO O_273 VALUES('240831002002', '240831002000', '1003', 1.8124901E7, '06 CK 993618 / TR 1005', TIMESTAMP '2024-09-12 13:42:22.384', 1.8124901E7, 6.39666376E8, 4.63967227E8);
INSERT INTO O_273 VALUES('240831002003', '240831002000', '1003', 1.496975E7, '07 CK 993619 / TR 1006', TIMESTAMP '2024-09-12 13:42:22.384', 1.496975E7, 6.54636126E8, 4.48997477E8);
INSERT INTO O_273 VALUES('240831002004', '240831002000', '1003', 1.1183E7, '07 CK 993621 / TR 1009', TIMESTAMP '2024-09-12 13:42:22.384', 1.1183E7, 6.65819126E8, 4.37814477E8);
INSERT INTO O_273 VALUES('240831002005', '240831002000', '1003', 1.31990428E8, '07 CK 993620 / TR 1007', TIMESTAMP '2024-09-12 13:42:22.384', 1.31990428E8, 7.97809554E8, 3.05824049E8);
INSERT INTO O_273 VALUES('240831002006', '240831002000', '1003', 954907.0, '08 CK 993622 / TR 1015', TIMESTAMP '2024-09-12 13:42:22.384', 954907.0, 7.98764461E8, 3.04869142E8);
INSERT INTO O_273 VALUES('240831002007', '240831002000', '3106', 1.13694E8, '09 CK 539204', TIMESTAMP '2024-09-12 13:42:22.384', 1.13694E8, -4.9798466E9, 1.91175142E8);
INSERT INTO O_273 VALUES('240831002008', '240831002000', '1003', 5450000.0, '09 CK 993623 / TR 1017', TIMESTAMP '2024-09-12 13:42:22.384', 5450000.0, 8.04214461E8, 1.85725142E8);
INSERT INTO O_273 VALUES('240831002009', '240831002000', '7010', 25000.0, '09 BUKU CEK', TIMESTAMP '2024-09-12 13:42:22.384', 25000.0, 50000.0, 1.85700142E8);
INSERT INTO O_273 VALUES('240831002010', '240831002000', '7010', 250000.0, '09 MATERAI', TIMESTAMP '2024-09-12 13:42:22.384', 250000.0, 300000.0, 1.85450142E8);
INSERT INTO O_273 VALUES('240831002011', '240831002000', '1003', 3.5E7, '12 CK 993624 / TR 1019', TIMESTAMP '2024-09-12 13:42:22.384', 3.5E7, 8.39214461E8, 1.50450142E8);
INSERT INTO O_273 VALUES('240831002012', '240831002000', '1003', 4.1034302E7, '15 CK 993625 / TR 1030', TIMESTAMP '2024-09-12 13:42:22.384', 4.1034302E7, 8.80248763E8, 1.0941584E8);
INSERT INTO O_273 VALUES('240831002013', '240831002000', '1003', 4.524804E7, '15 CK 336676 / TR 1031', TIMESTAMP '2024-09-12 13:42:22.384', 4.524804E7, 9.25496803E8, 6.41678E7);
INSERT INTO O_273 VALUES('240831002014', '240831002000', '1003', 1.5220737E7, '15 CK 336677 / TR 1027', TIMESTAMP '2024-09-12 13:42:22.384', 1.5220737E7, 9.4071754E8, 4.8947063E7);
INSERT INTO O_273 VALUES('240831002015', '240831002000', '3105', 2.01107607E8, '26 CK 187175', TIMESTAMP '2024-09-12 13:42:22.384', 2.01107607E8, -1.25777932E8, -1.52160544E8);
INSERT INTO O_273 VALUES('240831002016', '240831002000', '1003', 8.3922254E7, '26 TR 1034', TIMESTAMP '2024-09-12 13:42:22.384', 8.3922254E7, 1.024639794E9, -2.36082798E8);
INSERT INTO O_273 VALUES('240831002017', '240831002000', '3105', 3.4670325E7, '26 CK 451285', TIMESTAMP '2024-09-12 13:42:22.384', 3.4670325E7, -9.1107607E7, -2.70753123E8);
INSERT INTO O_273 VALUES('240831002018', '240831002000', '1003', 482000.0, '27 CK 336679 / TR 1029', TIMESTAMP '2024-09-12 13:42:22.384', 482000.0, 1.025121794E9, -2.71235123E8);
INSERT INTO O_273 VALUES('240831002019', '240831002000', '1003', 1.16975804E8, '27 CK 336680 / TR 1036', TIMESTAMP '2024-09-12 13:42:22.384', 1.16975804E8, 1.142097598E9, -3.88210927E8);
INSERT INTO O_273 VALUES('240831002020', '240831002000', '1003', 5.88E7, '28 CK 336681 / TR 1037', TIMESTAMP '2024-09-12 13:42:22.384', 5.88E7, 1.200897598E9, -4.47010927E8);
INSERT INTO O_273 VALUES('240831002021', '240831002000', '1003', 10000.0, '28 MATERAI', TIMESTAMP '2024-09-12 13:42:22.384', 10000.0, 1.200907598E9, -4.47020927E8);
INSERT INTO O_273 VALUES('240831002022', '240831002000', '1003', 2.69276407E8, '29 CK 336678 / TR 1032', TIMESTAMP '2024-09-12 13:42:22.384', 2.69276407E8, 1.470184005E9, -7.16297334E8);
INSERT INTO O_273 VALUES('240831002023', '240831002000', '1003', 1.1553967E7, '30 CK 336683 / TR 1039', TIMESTAMP '2024-09-12 13:42:22.384', 1.1553967E7, 1.481737972E9, -7.27851301E8);
INSERT INTO O_273 VALUES('240831002024', '240831002000', '1003', 9.7405E7, '30 CK 336682 / TR 1038', TIMESTAMP '2024-09-12 13:42:22.384', 9.7405E7, 1.579142972E9, -8.25256301E8);
INSERT INTO O_273 VALUES('240831002025', '240831002000', '7010', 25000.0, '31 ADM BABK', TIMESTAMP '2024-09-12 13:42:22.4', 25000.0, 325000.0, -8.25281301E8);
INSERT INTO O_273 VALUES('240831002026', '240831002000', '9003', 45810.0, '31 PAJAK', TIMESTAMP '2024-09-12 13:42:22.4', 45810.0, 106146.0, -8.25327111E8);
CREATE TABLE O_284(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR, C6 VARCHAR, C7 VARCHAR, C8 VARCHAR);
INSERT INTO O_284 VALUES('240101001001', '240101001000', '9999', 6.21515729E8, 'SALDO AWAL JAN 2024', TIMESTAMP '2024-03-05 16:02:54.263', 6.21515729E8, -6.21515729E8, 6.21515729E8);
INSERT INTO O_284 VALUES('240131001001', '240131001000', '1202', 1.44985696E9, 'DARI DBP INV 47-2023', TIMESTAMP '2024-03-05 16:03:19.229', 1.44985696E9, 5.515506328E9, 2.071372689E9);
INSERT INTO O_284 VALUES('240131001002', '240131001000', '9001', 633701.0, 'BUNGA BANK / JAN', TIMESTAMP '2024-03-05 16:03:19.229', 633701.0, -633701.0, 2.07200639E9);
INSERT INTO O_284 VALUES('240131013001', '240131013000', '1003', 4.0E7, '18', TIMESTAMP '2024-04-04 10:19:55.104', 4.0E7, -2.28641659E9, 5.19517492E8);
INSERT INTO O_284 VALUES('240131013002', '240131013000', '1003', 2.5E8, '18', TIMESTAMP '2024-04-04 10:19:55.104', 2.5E8, -2.53641659E9, 7.69517492E8);
INSERT INTO O_284 VALUES('240131013003', '240131013000', '1003', 2.0E8, '26', TIMESTAMP '2024-04-04 10:19:55.104', 2.0E8, -2.73641659E9, 9.69517492E8);
INSERT INTO O_284 VALUES('240131013004', '240131013000', '1401', 3.0E8, '30', TIMESTAMP '2024-04-04 10:19:55.104', 3.0E8, 1.67E10, 1.269517492E9);
INSERT INTO O_284 VALUES('240131013005', '240131013000', '9002', 124829.0, '31', TIMESTAMP '2024-04-04 10:19:55.104', 124829.0, -124829.0, 1.269642321E9);
INSERT INTO O_284 VALUES('240131042001', '240131042000', '1003', 8.3E7, 'DARI MDR933', TIMESTAMP '2024-04-05 10:30:24.693', 8.3E7, -3.258852144E9, 1.0330373E7);
INSERT INTO O_284 VALUES('240131042002', '240131042000', '9002', 141.0, 'BUNGA', TIMESTAMP '2024-04-05 10:30:24.693', 141.0, -124970.0, 1.0330514E7);
INSERT INTO O_284 VALUES('240229003001', '240229003000', '9002', 31092.0, 'BUNGA BANK / FEB', TIMESTAMP '2024-04-18 09:16:18.931', 31092.0, -31122.0, 1.63931867E8);
INSERT INTO O_284 VALUES('240229005001', '240229005000', '1003', 9.25E7, 'PINDAH DARI MDR 933', TIMESTAMP '2024-04-18 09:30:18.867', 9.25E7, -9.25E7, 1.0333528E7);
INSERT INTO O_284 VALUES('240229005002', '240229005000', '9002', 2052.0, 'BUNGA FEB', TIMESTAMP '2024-04-18 09:30:18.867', 2052.0, -33174.0, 1.033558E7);
INSERT INTO O_284 VALUES('240229008001', '240229008000', '1202', 1.93423552E9, '01 MASUK DARI INV 01', TIMESTAMP '2024-04-18 10:43:59.605', 1.93423552E9, 6.100227563E9, 2.144369392E9);
INSERT INTO O_284 VALUES('240229008002', '240229008000', '1401', 4.0E8, '19 BAYAR PINJAMAN SSDK', TIMESTAMP '2024-04-18 10:43:59.605', 4.0E8, 1.660582E10, 2.544369392E9);
INSERT INTO O_284 VALUES('240229008003', '240229008000', '1401', 5.0E8, '27 BAYAR PINJAMAN SSDK', TIMESTAMP '2024-04-18 10:43:59.605', 5.0E8, 1.610582E10, 3.044369392E9);
INSERT INTO O_284 VALUES('240229008004', '240229008000', '1401', 5.0E8, '28 BAYAR PINJAMAN SSDK', TIMESTAMP '2024-04-18 10:43:59.605', 5.0E8, 1.560582E10, 3.544369392E9);
INSERT INTO O_284 VALUES('240229008005', '240229008000', '9002', 887826.0, 'BUNGA', TIMESTAMP '2024-04-18 10:43:59.605', 887826.0, -921000.0, 3.545257218E9);
INSERT INTO O_284 VALUES('240331035001', '240331035000', '1003', 2.0E8, 'PINDAH BUKU DARI MANDIRI', TIMESTAMP '2024-07-08 13:09:14.052', 2.0E8, -1.455586518E9, 2.09281648E8);
INSERT INTO O_284 VALUES('240331035002', '240331035000', '1003', 3.0E8, 'PINDAH BUKU DARI MANDIRI', TIMESTAMP '2024-07-08 13:09:14.052', 3.0E8, -1.755586518E9, 5.09281648E8);
INSERT INTO O_284 VALUES('240331035003', '240331035000', '9002', 131130.0, 'BUNGA BANK / FEB', TIMESTAMP '2024-07-08 13:09:14.052', 131130.0, -131130.0, 5.09412778E8);
INSERT INTO O_284 VALUES('240331039001', '240331039000', '1401', 1.0E9, 'PEMBAYARAN SSDK / MAR', TIMESTAMP '2024-07-08 16:00:12.714', 1.0E9, 1.4888217776E10, 1.724162001E9);
INSERT INTO O_284 VALUES('240331039002', '240331039000', '1202', 3.57565235E8, 'PEMBAYARANA INV 02', TIMESTAMP '2024-07-08 16:00:12.714', 3.57565235E8, 1.1532236227E10, 2.081727236E9);
INSERT INTO O_284 VALUES('240331039003', '240331039000', '1202', 2.27156E8, 'PEMBAYARANA INV 03', TIMESTAMP '2024-07-08 16:00:12.714', 2.27156E8, 1.1305080227E10, 2.308883236E9);
INSERT INTO O_284 VALUES('240331039004', '240331039000', '1202', 3.79593045E8, 'PEMBAYARANA INV 04', TIMESTAMP '2024-07-08 16:00:12.714', 3.79593045E8, 1.0925487182E10, 2.688476281E9);
INSERT INTO O_284 VALUES('240331039005', '240331039000', '1202', 2.68169067E8, 'PEMBAYARANA INV 05', TIMESTAMP '2024-07-08 16:00:12.714', 2.68169067E8, 1.0657318115E10, 2.956645348E9);
INSERT INTO O_284 VALUES('240331039006', '240331039000', '9003', 1157763.0, 'BUNGA', TIMESTAMP '2024-07-08 16:00:12.714', 1157763.0, -1157763.0, 2.957803111E9);
INSERT INTO O_284 VALUES('240331047001', '240331047000', '1003', 8.0925E7, 'PINDAH DARI MDR 933', TIMESTAMP '2024-08-13 14:05:17.207', 8.0925E7, -1.836511518E9, 9.126058E7);
INSERT INTO O_284 VALUES('240331047002', '240331047000', '9002', 2194.0, 'BUNGA MAR', TIMESTAMP '2024-08-13 14:05:17.208', 2194.0, -133324.0, 9.1262774E7);
INSERT INTO O_284 VALUES('240430006001', '240430006000', '1003', 5.0E8, 'PINDAH BUKU DARI MANDIRI', TIMESTAMP '2024-08-14 11:07:27.218', 5.0E8, -2.35140337E8, 2.88109866E8);
INSERT INTO O_284 VALUES('240430006002', '240430006000', '1401', 4.0E9, 'PEMBAYARAN PINJAMAN SSDK', TIMESTAMP '2024-08-14 11:07:27.218', 4.0E9, 1.0888217776E10, 4.288109866E9);
INSERT INTO O_284 VALUES('240430006003', '240430006000', '9002', 1772025.0, 'BUNGA BANK / APR', TIMESTAMP '2024-08-14 11:07:27.218', 1772025.0, -1905349.0, 4.289881891E9);
INSERT INTO O_284 VALUES('240531006001', '240531006000', '1003', 8.1E7, 'PINDAH DARI MDR 933', TIMESTAMP '2024-08-16 10:31:48.108', 8.1E7, 9.78503869E8, 1.1153407E7);
INSERT INTO O_284 VALUES('240531006002', '240531006000', '9002', 2747.0, 'BUNGA FEB', TIMESTAMP '2024-08-16 10:31:48.108', 2747.0, -1910213.0, 1.1156154E7);
INSERT INTO O_284 VALUES('240531039001', '240531039000', '1003', 1.0E9, 'PINDAH BUKU DARI MANDIRI', TIMESTAMP '2024-08-16 13:25:49.17', 1.0E9, 1.0E9, 2.290491288E9);
INSERT INTO O_284 VALUES('240531039002', '240531039000', '1003', 1.0E9, 'PINDAH BUKU DARI MANDIRI', TIMESTAMP '2024-08-16 13:25:49.17', 1.0E9, 0.0, 3.290491288E9);
INSERT INTO O_284 VALUES('240531039003', '240531039000', '9002', 5414447.0, 'BUNGA BANK / MEI', TIMESTAMP '2024-08-16 13:25:49.17', 5414447.0, -7324660.0, 3.295905735E9);
INSERT INTO O_284 VALUES('240430039001', '240430039000', '1003', 3.6547448E7, 'PINDAH BUKU', TIMESTAMP '2024-08-16 13:31:47.461', 3.6547448E7, 8.04E7, -7.0133574E7);
INSERT INTO O_284 VALUES('240430039002', '240430039000', '1003', 8.04E7, 'PINDAH DARI MDR 933', TIMESTAMP '2024-08-16 13:31:47.476', 8.04E7, 0.0, 1.0266426E7);
INSERT INTO O_284 VALUES('240430039003', '240430039000', '9002', 2117.0, 'BUNGA FEB', TIMESTAMP '2024-08-16 13:31:47.476', 2117.0, -1907466.0, 1.0268543E7);
INSERT INTO O_284 VALUES('240630012001', '240630012000', '1003', 8.1E7, 'PINDAH DARI MDR 933', TIMESTAMP '2024-08-16 13:47:47.733', 8.1E7, -8.1E7, 661504.0);
INSERT INTO O_284 VALUES('240630012002', '240630012000', '9002', 2063.0, 'BUNGA JUNI', TIMESTAMP '2024-08-16 13:47:47.733', 2063.0, -1.1097027E7, 663567.0);
INSERT INTO O_284 VALUES('240430040001', '240430040000', '1202', 1.42877963E9, 'PEMBAYARAN DBP INV 06 / APR', TIMESTAMP '2024-08-16 14:43:22.671', 1.42877963E9, 1.9680379535E10, -4.738577232E9);
INSERT INTO O_284 VALUES('240430040002', '240430040000', '1202', 2.616E9, 'PEMBAYARAN DBP INV 08 / APR', TIMESTAMP '2024-08-16 14:43:22.671', 2.616E9, 1.7064379535E10, -2.122577232E9);
INSERT INTO O_284 VALUES('240430040003', '240430040000', '1202', 1.097032157E9, 'PEMBAYARAN DBP INV 07 / APR', TIMESTAMP '2024-08-16 14:43:22.671', 1.097032157E9, 1.5967347378E10, -1.025545075E9);
INSERT INTO O_284 VALUES('240430040004', '240430040000', '1401', 1.0813009E10, 'PEMBAYARAN SSDK / APR', TIMESTAMP '2024-08-16 14:43:22.671', 1.0813009E10, 0.0, 9.787463925E9);
INSERT INTO O_284 VALUES('240430040005', '240430040000', '9003', 9428363.0, 'BUNGA', TIMESTAMP '2024-08-16 14:43:22.671', 9428363.0, -8087410.0, 9.796892288E9);
INSERT INTO O_284 VALUES('240531040001', '240531040000', '1202', 2.71837498E9, 'PEMBAYARAN DBP INV 09 / MEI', TIMESTAMP '2024-08-16 14:46:39.714', 2.71837498E9, 1.5864972398E10, 2.873981048E9);
INSERT INTO O_284 VALUES('240531040002', '240531040000', '7016', 3328002.0, '8 MEI UANG MASUK / TR 945', TIMESTAMP '2024-08-16 14:46:39.714', 3328002.0, 8.19232338E8, 2.87730905E9);
INSERT INTO O_284 VALUES('240531040003', '240531040000', '3302', 2.5E7, 'PEMBAYARAN DBP / MEI', TIMESTAMP '2024-08-16 14:46:39.714', 2.5E7, 1.2899938231E10, 2.90230905E9);
INSERT INTO O_284 VALUES('240531040004', '240531040000', '3302', 4250000.0, 'PEMBAYARAN DBP / MEI', TIMESTAMP '2024-08-16 14:46:39.729', 4250000.0, 1.2895688231E10, 2.90655905E9);
INSERT INTO O_284 VALUES('240531040005', '240531040000', '9003', 7508010.0, 'BUNGA', TIMESTAMP '2024-08-16 14:46:39.729', 7508010.0, -1.3010379E7, 2.91406706E9);
INSERT INTO O_284 VALUES('240630011001', '240630011000', '1202', 2.616E9, 'PEMBAYARAN DBP INV 11 / MEI', TIMESTAMP '2024-08-16 14:47:00.869', 2.616E9, 8.131506328E9, 5.53006706E9);
INSERT INTO O_284 VALUES('240630011002', '240630011000', '9003', 3752036.0, 'BUNGA', TIMESTAMP '2024-08-16 14:47:00.869', 3752036.0, -1.6762003E7, 5.533819096E9);
INSERT INTO O_284 VALUES('240630010001', '240630010000', '1202', 2.50146607E9, 'PEMBAYARAN DBP INV 10 / JUN', TIMESTAMP '2024-08-16 14:55:35.056', 2.50146607E9, 1.3363506328E10, 5.797371805E9);
INSERT INTO O_284 VALUES('240630010002', '240630010000', '1202', 2.616E9, 'PEMBAYARAN DBP INV 12 / JUN', TIMESTAMP '2024-08-16 14:55:35.056', 2.616E9, 1.0747506328E10, 8.413371805E9);
INSERT INTO O_284 VALUES('240630010003', '240630010000', '9002', 3770304.0, 'BUNGA / JUNI 2024', TIMESTAMP '2024-08-16 14:55:35.056', 3770304.0, -1.1094964E7, 8.417142109E9);
INSERT INTO O_284 VALUES('240731001001', '240731001000', '1004', 4.9E7, 'Terima Transfer dari Surabaya PTD 41', TIMESTAMP '2024-08-27 08:39:59.96', 4.9E7, -4.9E7, 7.3192592E7);
INSERT INTO O_284 VALUES('240731001002', '240731001000', '1004', 2.5E7, 'Terima Transfer dari Surabaya PTD 42', TIMESTAMP '2024-08-27 08:39:59.96', 2.5E7, -7.4E7, 9.7342592E7);
INSERT INTO O_284 VALUES('240731001003', '240731001000', '1004', 3.1E7, 'Terima Transfer dari Surabaya PTD 43', TIMESTAMP '2024-08-27 08:39:59.961', 3.1E7, -1.05E8, 1.28092592E8);
INSERT INTO O_284 VALUES('240731001004', '240731001000', '9001', 813.0, 'Bunga Bank', TIMESTAMP '2024-08-27 08:39:59.961', 813.0, -69885.0, 1.27568405E8);
INSERT INTO O_284 VALUES('240731001005', '240731001000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 44', TIMESTAMP '2024-08-27 08:39:59.961', 2.0E7, -1.25E8, 1.46968405E8);
INSERT INTO O_284 VALUES('240731001006', '240731001000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 45', TIMESTAMP '2024-08-27 08:39:59.961', 2.0E7, -1.45E8, 1.64868405E8);
INSERT INTO O_284 VALUES('240731001007', '240731001000', '1004', 3.3E7, 'Terima Transfer dari Surabaya PTD 46', TIMESTAMP '2024-08-27 08:39:59.961', 3.3E7, -1.78E8, 1.96468405E8);
INSERT INTO O_284 VALUES('240731002001', '240731002000', '3302', 3.0E7, 'PINDAH BUKU DARI MANDIRI', TIMESTAMP '2024-08-29 14:32:22.881', 3.0E7, 1.4944213231E10, 9.4538168E8);
INSERT INTO O_284 VALUES('240731002002', '240731002000', '9001', 753727.0, 'PINDAH BUKU DARI MANDIRI', TIMESTAMP '2024-08-29 14:32:22.913', 753727.0, -823612.0, 9.46135407E8);
INSERT INTO O_284 VALUES('240731004001', '240731004000', '1003', 9.3116E7, 'PINDAH DARI MDR 933', TIMESTAMP '2024-08-29 14:32:46.568', 9.3116E7, -9.3116E7, 9.3779567E7);
INSERT INTO O_284 VALUES('240731004002', '240731004000', '3302', 2000000.0, '-', TIMESTAMP '2024-08-29 14:32:46.569', 2000000.0, 1.4942213231E10, 9.5779567E7);
INSERT INTO O_284 VALUES('240731003001', '240731003000', '1204', 1400000.0, 'PEMBAYARAN INV-14 / NEON', TIMESTAMP '2024-08-29 15:03:21.463', 1400000.0, 126000.0, 2.379723252E9);
INSERT INTO O_284 VALUES('240731003002', '240731003000', '1204', 126000.0, 'PEMBAYARAN INV-14 / NEON', TIMESTAMP '2024-08-29 15:03:21.463', 126000.0, 0.0, 2.379849252E9);
INSERT INTO O_284 VALUES('240731003003', '240731003000', '1202', 2.616E9, 'PEMBAYARAN INV-13 / DBP', TIMESTAMP '2024-08-29 15:03:21.463', 2.616E9, 5.515506328E9, 4.995849252E9);
INSERT INTO O_284 VALUES('240731003004', '240731003000', '9003', 3566452.0, '31 BUNGA', TIMESTAMP '2024-08-29 15:03:21.463', 3566452.0, -3566452.0, 4.999415704E9);
INSERT INTO O_284 VALUES('240701001001', '240701001000', '3302', 9.5E7, 'PENGISIAN AWAL / HENDRA / 30 MEI 2024', TIMESTAMP '2024-09-02 13:40:19.006', 9.5E7, 1.4979213231E10, 9.5E7);
INSERT INTO O_284 VALUES('240701001002', '240701001000', '9001', 519.0, 'BUNGA / MEI', TIMESTAMP '2024-09-02 13:40:19.006', 519.0, -519.0, 9.5000519E7);
INSERT INTO O_284 VALUES('240701001003', '240701001000', '3302', 5000000.0, 'SETORAN MODAL YOHANA / 03 JUN 2024', TIMESTAMP '2024-09-02 13:40:19.006', 5000000.0, 1.4974213231E10, 1.00000519E8);
INSERT INTO O_284 VALUES('240701001004', '240701001000', '1003', 4.0E8, 'PINDAH BUKU / DHAKO / 11 JUNI 2024', TIMESTAMP '2024-09-02 13:40:19.006', 4.0E8, 0.0, 5.00000519E8);
INSERT INTO O_284 VALUES('240701001005', '240701001000', '9001', 30002.0, 'BUNGA / JUN', TIMESTAMP '2024-09-02 13:40:19.006', 30002.0, -30521.0, 5.00030521E8);
INSERT INTO O_284 VALUES('240701001006', '240701001000', '9001', 38551.0, 'BUNGA / JUL', TIMESTAMP '2024-09-02 13:40:19.006', 38551.0, -69072.0, 5.00069072E8);
INSERT INTO O_284 VALUES('240831004001', '240831004000', '1003', 9.7405E7, 'PINDAH BUKU', TIMESTAMP '2024-09-05 14:23:32.125', 9.7405E7, 1.579165975E9, 1106295.0);
INSERT INTO O_284 VALUES('240831005001', '240831005000', '9001', 301676.0, 'BUNGA BANK / AGT', TIMESTAMP '2024-09-05 14:24:23.661', 301676.0, -301676.0, 6747406.0);
INSERT INTO O_284 VALUES('240831006001', '240831006000', '1003', 1.496975E7, '06 SETOR TUNAI', TIMESTAMP '2024-09-12 11:28:53.948', 1.496975E7, 1.564196225E9, -8.10357361E8);
INSERT INTO O_284 VALUES('240831006002', '240831006000', '1401', 5.0E8, '23 TRANSFER', TIMESTAMP '2024-09-12 11:28:53.966', 5.0E8, 5.5E9, -3.10357361E8);
INSERT INTO O_284 VALUES('240831006003', '240831006000', '1401', 5.0E8, '29 TRANSFER', TIMESTAMP '2024-09-12 11:28:53.967', 5.0E8, 5.0E9, 1.89642639E8);
INSERT INTO O_284 VALUES('240831006004', '240831006000', '9001', 229052.0, 'BUNGA /AGT', TIMESTAMP '2024-09-12 11:28:53.968', 229052.0, -530728.0, 1.89871691E8);
CREATE TABLE O_295(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR, C6 VARCHAR, C7 VARCHAR, C8 VARCHAR);
INSERT INTO O_295 VALUES('240101003001', '240101003000', '9999', 3.0524432E7, 'SALDO AWAL JAN 2024', TIMESTAMP '2024-03-06 10:09:15.898', 3.0524432E7, -6.52040161E8, 3.0524432E7);
INSERT INTO O_295 VALUES('240131007001', '240131007000', '1004', 3.0E7, 'Terima Transfer dari Surabaya PTD 01', TIMESTAMP '2024-03-06 10:11:31.089', 3.0E7, 1.155E8, -8.7765143E7);
INSERT INTO O_295 VALUES('240131007002', '240131007000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 02', TIMESTAMP '2024-03-06 10:11:31.089', 2.0E7, 9.55E7, -6.7765143E7);
INSERT INTO O_295 VALUES('240131007003', '240131007000', '1004', 1.75E7, 'Terima Transfer dari Surabaya PTD 03 dan PTD 04', TIMESTAMP '2024-03-06 10:11:31.089', 1.75E7, 7.8E7, -5.0265143E7);
INSERT INTO O_295 VALUES('240131007004', '240131007000', '1004', 4.0E7, 'Terima Transfer dari Surabaya PTD 05', TIMESTAMP '2024-03-06 10:11:31.089', 4.0E7, 3.8E7, -1.0265143E7);
INSERT INTO O_295 VALUES('240131007005', '240131007000', '1004', 3.8E7, 'Terima Transfer dari Surabaya PTD 06 dan PTD 07', TIMESTAMP '2024-03-06 10:11:31.089', 3.8E7, 0.0, 2.7734857E7);
INSERT INTO O_295 VALUES('240131007006', '240131007000', '1004', 3.2E7, 'Terima Transfer dari Surabaya PTD 08', TIMESTAMP '2024-03-06 10:11:31.089', 3.2E7, -3.2E7, 5.9734857E7);
INSERT INTO O_295 VALUES('240131007007', '240131007000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 09', TIMESTAMP '2024-03-06 10:11:31.089', 2.0E7, -5.2E7, 7.9734857E7);
INSERT INTO O_295 VALUES('240229016001', '240229016000', '1004', 5.0E7, 'Terima Transfer dari Surabaya PTD 10', TIMESTAMP '2024-04-19 09:56:02.982', 5.0E7, -5.0E7, -1.59808626E8);
INSERT INTO O_295 VALUES('240229016002', '240229016000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 11', TIMESTAMP '2024-04-19 09:56:02.982', 2.0E7, -7.0E7, -1.39808626E8);
INSERT INTO O_295 VALUES('240229016003', '240229016000', '1004', 2.4E7, 'Terima Transfer dari Surabaya PTD 12', TIMESTAMP '2024-04-19 09:56:02.982', 2.4E7, -9.4E7, -1.15808626E8);
INSERT INTO O_295 VALUES('240229016004', '240229016000', '1004', 2.5E7, 'Terima Transfer dari Surabaya u/ Mobilisasi 6 Unit DT', TIMESTAMP '2024-04-19 09:56:02.982', 2.5E7, -1.19E8, -9.0808626E7);
INSERT INTO O_295 VALUES('240229016005', '240229016000', '1004', 4.0E7, 'Terima Transfer dari Surabaya u/ Belanja Sparepart Bp. Hani di Samarinda', TIMESTAMP '2024-04-19 09:56:02.982', 4.0E7, -1.59E8, -5.0808626E7);
INSERT INTO O_295 VALUES('240229016006', '240229016000', '1004', 2.8E7, 'Terima Transfer dari Surabaya PTD 13', TIMESTAMP '2024-04-19 09:56:02.982', 2.8E7, -1.87E8, -2.2808626E7);
INSERT INTO O_295 VALUES('240229016007', '240229016000', '1004', 2.3E7, 'Terima Transfer dari Surabaya PTD 14', TIMESTAMP '2024-04-19 09:56:02.982', 2.3E7, -2.1E8, 191374.0);
INSERT INTO O_295 VALUES('240229016008', '240229016000', '1004', 3.0E7, 'Terima Transfer dari Surabaya PTD 15', TIMESTAMP '2024-04-19 09:56:02.982', 3.0E7, -2.4E8, 3.0191374E7);
INSERT INTO O_295 VALUES('240331040001', '240331040000', '1004', 5.0E7, 'Terima Transfer dari Surabaya PTD 16', TIMESTAMP '2024-08-07 10:53:32.791', 5.0E7, 2.4248618E8, 8.0191374E7);
INSERT INTO O_295 VALUES('240331040002', '240331040000', '1004', 2.4E7, 'Terima Transfer dari Surabaya u/ Belanja Bp. Hani', TIMESTAMP '2024-08-07 10:53:32.791', 2.4E7, 2.1848618E8, 1.04191374E8);
INSERT INTO O_295 VALUES('240331040003', '240331040000', '7001', 33000.0, 'Pengembalian Kelebihan Bayar u/ Lembur Bani Susilo (tanggal 22 Jan 2024, 26 Jan 2024, dan 3 Feb 2024)', TIMESTAMP '2024-08-07 10:53:32.791', 33000.0, 4.97476731E8, 1.04224374E8);
INSERT INTO O_295 VALUES('240331040004', '240331040000', '1004', 5.0E7, 'Terima Transfer dari Surabaya PTD 17 (Belanja S-part  Pak Hani)', TIMESTAMP '2024-08-07 10:53:32.791', 5.0E7, 1.6848618E8, 1.54224374E8);
INSERT INTO O_295 VALUES('240331040005', '240331040000', '1004', 4.3E7, 'Terima Transfer dari Surabaya PTD 18', TIMESTAMP '2024-08-07 10:53:32.791', 4.3E7, 1.2548618E8, 1.97224374E8);
INSERT INTO O_295 VALUES('240331040006', '240331040000', '1004', 3.7E7, 'Terima Transfer dari Surabaya PTD 19', TIMESTAMP '2024-08-07 10:53:32.791', 3.7E7, 8.848618E7, 2.34224374E8);
INSERT INTO O_295 VALUES('240331040007', '240331040000', '1004', 4.8E7, 'Terima Transfer dari Surabaya PTD 20', TIMESTAMP '2024-08-07 10:53:32.791', 4.8E7, 4.048618E7, 2.82224374E8);
INSERT INTO O_295 VALUES('240331040008', '240331040000', '1004', 3.0E7, 'Terima Transfer dari Surabaya PTD 21', TIMESTAMP '2024-08-07 10:53:32.791', 3.0E7, 1.048618E7, 3.12224374E8);
INSERT INTO O_295 VALUES('240331040009', '240331040000', '1004', 1.048618E7, 'Terima Transfer dari Surabaya u/ Gaji Karyawan yang dibayar', TIMESTAMP '2024-08-07 10:53:32.791', 1.048618E7, 0.0, 3.22710554E8);
INSERT INTO O_295 VALUES('240430001001', '240430001000', '1004', 5.4E7, 'Terima Transfer dari Surabaya PTD 22', TIMESTAMP '2024-08-14 10:57:23.946', 5.4E7, -5.4E7, 9.3266465E7);
INSERT INTO O_295 VALUES('240430001002', '240430001000', '9001', 2272.0, 'Bunga Bank', TIMESTAMP '2024-08-14 10:57:23.947', 2272.0, 1728.0, 9.3268737E7);
INSERT INTO O_295 VALUES('240430001003', '240430001000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 23', TIMESTAMP '2024-08-14 10:57:23.947', 2.0E7, -7.4E7, 1.13268737E8);
INSERT INTO O_295 VALUES('240430001004', '240430001000', '7001', 40000.0, 'Uang Laundry Perjalanan A/n Anna Qodri & Supriyanto', TIMESTAMP '2024-08-14 10:57:23.947', 40000.0, 6.72946031E8, 1.13308737E8);
INSERT INTO O_295 VALUES('240430001005', '240430001000', '1004', 2.2E7, 'Terima Transfer dari Surabaya PTD 25', TIMESTAMP '2024-08-14 10:57:23.948', 2.2E7, -9.6E7, 1.35308737E8);
INSERT INTO O_295 VALUES('240430001006', '240430001000', '7001', 20000.0, 'Pengembalian kesalahan Pembukuan No. KK 05118  LKH 11 ', TIMESTAMP '2024-08-14 10:57:23.948', 20000.0, 6.72926031E8, 1.35328737E8);
INSERT INTO O_295 VALUES('240430001007', '240430001000', '7001', 20000.0, 'Uang Laundry dlm Perjalanan (30 Maret 2024) a/n Rinaldhie G.', TIMESTAMP '2024-08-14 10:57:23.948', 20000.0, 6.72906031E8, 1.35348737E8);
INSERT INTO O_295 VALUES('240430001008', '240430001000', '7001', 30000.0, 'Uang Laundry dlm Perjalanan (4 April 2024) a/n M. Agus Irwanto,', TIMESTAMP '2024-08-14 10:57:23.949', 30000.0, 6.72876031E8, 1.35378737E8);
INSERT INTO O_295 VALUES('240430001009', '240430001000', '1004', 1.4E7, 'Terima Transfer dari Surabaya PTD 26', TIMESTAMP '2024-08-14 10:57:23.949', 1.4E7, -1.1E8, 1.49378737E8);
INSERT INTO O_295 VALUES('240430001010', '240430001000', '1004', 3.5E7, 'Terima Transfer dari Surabaya PTD 27', TIMESTAMP '2024-08-14 10:57:23.95', 3.5E7, -1.45E8, 1.84378737E8);
INSERT INTO O_295 VALUES('240531011001', '240531011000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 28', TIMESTAMP '2024-08-16 10:40:27.709', 2.0E7, -2.0E7, -7.6852743E7);
INSERT INTO O_295 VALUES('240531011002', '240531011000', '9001', 6665.0, 'Bunga Bank', TIMESTAMP '2024-08-16 10:40:27.709', 6665.0, -1.222407109E9, -7.6846078E7);
INSERT INTO O_295 VALUES('240531011003', '240531011000', '1004', 3.0E7, 'Terima Transfer dari Surabaya PTD 29', TIMESTAMP '2024-08-16 10:40:27.709', 3.0E7, -5.0E7, -4.6846078E7);
INSERT INTO O_295 VALUES('240531011004', '240531011000', '1004', 2.2E7, 'Terima Transfer dari Surabaya PTD 30', TIMESTAMP '2024-08-16 10:40:27.709', 2.2E7, -7.2E7, -2.4846078E7);
INSERT INTO O_295 VALUES('240531011005', '240531011000', '1004', 2.2E7, 'Terima Transfer dari Surabaya PTD 31', TIMESTAMP '2024-08-16 10:40:27.709', 2.2E7, -9.4E7, -2846078.0);
INSERT INTO O_295 VALUES('240531011006', '240531011000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 32', TIMESTAMP '2024-08-16 10:40:27.709', 2.0E7, -1.14E8, 1.7153922E7);
INSERT INTO O_295 VALUES('240531011007', '240531011000', '1004', 1.4E7, 'Terima Transfer dari Surabaya PTD 33', TIMESTAMP '2024-08-16 10:40:27.709', 1.4E7, -1.28E8, 3.1153922E7);
INSERT INTO O_295 VALUES('240630006001', '240630006000', '1004', 3.6E7, 'Terima Transfer dari Surabaya PTD 34', TIMESTAMP '2024-08-27 14:08:23.97', 3.6E7, -3.6E7, -1.23274772E8);
INSERT INTO O_295 VALUES('240630006002', '240630006000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 35', TIMESTAMP '2024-08-27 14:08:23.971', 2.0E7, -5.6E7, -1.03274772E8);
INSERT INTO O_295 VALUES('240630006003', '240630006000', '1004', 3.0E7, 'Terima Transfer dari Surabaya PTD 36', TIMESTAMP '2024-08-27 14:08:23.971', 3.0E7, -8.6E7, -7.3274772E7);
INSERT INTO O_295 VALUES('240630006004', '240630006000', '9001', 2364.0, 'Bunga Bank', TIMESTAMP '2024-08-27 14:08:23.971', 2364.0, -1.222409473E9, -7.3272408E7);
INSERT INTO O_295 VALUES('240630006005', '240630006000', '1004', 3.6E7, 'Terima Transfer dari Surabaya PTD 37', TIMESTAMP '2024-08-27 14:08:23.971', 3.6E7, -1.22E8, -3.7272408E7);
INSERT INTO O_295 VALUES('240630006006', '240630006000', '1004', 2.3E7, 'Terima Transfer dari Surabaya PTD 38', TIMESTAMP '2024-08-27 14:08:23.972', 2.3E7, -1.45E8, -1.4272408E7);
INSERT INTO O_295 VALUES('240630006007', '240630006000', '1004', 2.0E7, 'Terima Transfer dari Surabaya PTD 39', TIMESTAMP '2024-08-27 14:08:23.972', 2.0E7, -1.65E8, 5727592.0);
INSERT INTO O_295 VALUES('240630006008', '240630006000', '7017', 465000.0, 'Pengembalian Kelebihan Bayar Karena Kesalahan Harga', TIMESTAMP '2024-08-27 14:08:23.972', 465000.0, 2.50123208E8, 6192592.0);
INSERT INTO O_295 VALUES('240630006009', '240630006000', '1004', 1.8E7, 'Terima Transfer dari Surabaya PTD 40', TIMESTAMP '2024-08-27 14:08:23.972', 1.8E7, -1.83E8, 2.4192592E7);
CREATE TABLE O_267(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR);
INSERT INTO O_267 VALUES('240131041000', DATE '2024-01-31', 'MDR761', DATE '2024-01-31', '1020', TIMESTAMP '2024-04-05 10:29:04.349');
INSERT INTO O_267 VALUES('240131043000', DATE '2024-01-31', 'BNI575', DATE '2024-01-31', '1005', TIMESTAMP '2024-04-05 14:14:05.587');
INSERT INTO O_267 VALUES('240131044000', DATE '2024-01-31', 'MDR933', DATE '2024-01-31', '1006', TIMESTAMP '2024-04-05 14:14:34.375');
INSERT INTO O_267 VALUES('240229004000', DATE '2024-02-29', 'MDR761', DATE '2024-02-29', '1020', TIMESTAMP '2024-04-18 09:29:06.09');
INSERT INTO O_267 VALUES('240229006000', DATE '2024-02-29', 'BNI 575', DATE '2024-02-29', '1005', TIMESTAMP '2024-04-18 10:42:08.881');
INSERT INTO O_267 VALUES('240331048000', DATE '2024-03-31', 'MDR761', DATE '2024-03-31', '1020', TIMESTAMP '2024-08-13 14:05:58.102');
INSERT INTO O_267 VALUES('240331051000', DATE '2024-03-31', 'MDR933', DATE '2024-03-31', '1006', TIMESTAMP '2024-08-13 15:10:20.665');
INSERT INTO O_267 VALUES('240331052000', DATE '2024-03-31', 'BNI575', DATE '2024-03-31', '1005', TIMESTAMP '2024-08-13 15:35:38.569');
INSERT INTO O_267 VALUES('240430033000', DATE '2024-04-30', 'MDR933', DATE '2024-04-30', '1006', TIMESTAMP '2024-08-14 11:48:31.06');
INSERT INTO O_267 VALUES('240401001000', DATE '2024-04-01', 'BNI575', DATE '2024-04-30', '1005', TIMESTAMP '2024-08-14 12:34:03.954');
INSERT INTO O_267 VALUES('240531001000', DATE '2024-05-31', 'MDR933', DATE '2024-05-31', '1006', TIMESTAMP '2024-08-16 10:26:31.896');
INSERT INTO O_267 VALUES('240531003000', DATE '2024-05-31', 'MDR761', DATE '2024-05-31', '1020', TIMESTAMP '2024-08-16 10:28:03.531');
INSERT INTO O_267 VALUES('240229059000', DATE '2024-02-29', 'MDR933', DATE '2024-02-29', '1006', TIMESTAMP '2024-08-16 10:54:27.616');
INSERT INTO O_267 VALUES('240430037000', DATE '2024-04-30', 'MDR761', DATE '2024-04-30', '1020', TIMESTAMP '2024-08-16 11:13:16.915');
INSERT INTO O_267 VALUES('240531038000', DATE '2024-05-31', 'BNI575', DATE '2024-05-31', '1005', TIMESTAMP '2024-08-16 13:24:34.35');
INSERT INTO O_267 VALUES('240630009000', DATE '2024-06-30', 'MDR761', DATE '2024-06-30', '1020', TIMESTAMP '2024-08-16 13:44:52.133');
INSERT INTO O_267 VALUES('240630042000', DATE '2024-06-30', 'MDR933', DATE '2024-06-30', '1006', TIMESTAMP '2024-08-26 09:03:54.261');
INSERT INTO O_267 VALUES('240630043000', DATE '2024-06-30', 'BNI575', DATE '2024-06-30', '1005', TIMESTAMP '2024-08-26 09:04:36.796');
INSERT INTO O_267 VALUES('240731005000', DATE '2024-07-31', 'BNI575', DATE '2024-07-31', '1005', TIMESTAMP '2024-08-27 09:12:21.436');
INSERT INTO O_267 VALUES('240731007000', DATE '2024-07-31', 'MDR761', DATE '2024-07-31', '1020', TIMESTAMP '2024-08-27 09:15:56.628');
INSERT INTO O_267 VALUES('240731031000', DATE '2024-07-31', 'MDR933', DATE '2024-07-31', '1006', TIMESTAMP '2024-08-29 09:39:10.051');
INSERT INTO O_267 VALUES('240701002000', DATE '2024-07-01', 'BCA113', DATE '2024-07-01', '1009', TIMESTAMP '2024-09-02 13:44:39.247');
INSERT INTO O_267 VALUES('240731034000', DATE '2024-07-31', 'BCA113', DATE '2024-07-31', '1009', TIMESTAMP '2024-09-02 13:45:47.311');
INSERT INTO O_267 VALUES('240831001000', DATE '2024-08-31', 'BNI575', DATE '2024-08-31', '1005', TIMESTAMP '2024-09-05 14:21:29.402');
INSERT INTO O_267 VALUES('240831002000', DATE '2024-08-31', 'MDR933', DATE '2024-08-31', '1006', TIMESTAMP '2024-09-05 14:21:57.756');
INSERT INTO O_267 VALUES('240831003000', DATE '2024-08-31', 'MDR761', DATE '2024-08-31', '1020', TIMESTAMP '2024-09-05 14:22:30.564');
CREATE TABLE O_278(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR);
INSERT INTO O_278 VALUES('240101001000', DATE '2024-01-01', 'BNI 575', DATE '2024-01-01', '1005', TIMESTAMP '2024-03-05 16:02:54.263');
INSERT INTO O_278 VALUES('240131001000', DATE '2024-01-31', 'BNI 575', DATE '2024-01-31', '1005', TIMESTAMP '2024-03-05 16:03:19.229');
INSERT INTO O_278 VALUES('240131013000', DATE '2024-01-31', 'MDR933', DATE '2024-01-31', '1006', TIMESTAMP '2024-04-04 10:19:55.104');
INSERT INTO O_278 VALUES('240131042000', DATE '2024-01-31', 'MDR761', DATE '2024-01-31', '1020', TIMESTAMP '2024-04-05 10:30:24.693');
INSERT INTO O_278 VALUES('240229003000', DATE '2024-02-29', 'BNI575', DATE '2024-02-29', '1005', TIMESTAMP '2024-04-18 09:16:18.931');
INSERT INTO O_278 VALUES('240229005000', DATE '2024-02-29', 'MDR761', DATE '2024-02-29', '1020', TIMESTAMP '2024-04-18 09:30:18.867');
INSERT INTO O_278 VALUES('240229008000', DATE '2024-02-29', 'MDR933', DATE '2024-02-29', '1006', TIMESTAMP '2024-04-18 10:43:59.605');
INSERT INTO O_278 VALUES('240331035000', DATE '2024-03-31', 'BNI575', DATE '2024-03-31', '1005', TIMESTAMP '2024-07-08 13:09:14.036');
INSERT INTO O_278 VALUES('240331039000', DATE '2024-03-31', 'MDR933', DATE '2024-03-31', '1006', TIMESTAMP '2024-07-08 16:00:12.712');
INSERT INTO O_278 VALUES('240331047000', DATE '2024-03-31', 'MDR761', DATE '2024-03-31', '1020', TIMESTAMP '2024-08-13 14:05:17.201');
INSERT INTO O_278 VALUES('240430006000', DATE '2024-04-30', 'BNI575', DATE '2024-04-30', '1005', TIMESTAMP '2024-08-14 11:07:27.218');
INSERT INTO O_278 VALUES('240531006000', DATE '2024-05-31', 'MDR761', DATE '2024-05-31', '1020', TIMESTAMP '2024-08-16 10:31:48.108');
INSERT INTO O_278 VALUES('240531039000', DATE '2024-05-31', 'BNI575', DATE '2024-05-31', '1005', TIMESTAMP '2024-08-16 13:25:49.17');
INSERT INTO O_278 VALUES('240430039000', DATE '2024-04-30', 'MDR761', DATE '2024-04-30', '1020', TIMESTAMP '2024-08-16 13:31:47.461');
INSERT INTO O_278 VALUES('240630010000', DATE '2024-06-30', 'BNI575', DATE '2024-06-30', '1005', TIMESTAMP '2024-08-16 13:46:24.916');
INSERT INTO O_278 VALUES('240630011000', DATE '2024-06-30', 'MDR933', DATE '2024-06-30', '1006', TIMESTAMP '2024-08-16 13:47:17.601');
INSERT INTO O_278 VALUES('240630012000', DATE '2024-06-30', 'MDR761', DATE '2024-06-30', '1020', TIMESTAMP '2024-08-16 13:47:47.733');
INSERT INTO O_278 VALUES('240430040000', DATE '2024-04-30', 'MDR933', DATE '2024-04-30', '1006', TIMESTAMP '2024-08-16 14:43:22.671');
INSERT INTO O_278 VALUES('240531040000', DATE '2024-05-31', 'MDR933', DATE '2024-05-31', '1006', TIMESTAMP '2024-08-16 14:46:39.714');
INSERT INTO O_278 VALUES('240731001000', DATE '2024-07-31', 'LKH 07', DATE '2024-07-31', '1002', TIMESTAMP '2024-08-27 08:39:59.959');
INSERT INTO O_278 VALUES('240731002000', DATE '2024-07-31', 'BNI575', DATE '2024-07-31', '1005', TIMESTAMP '2024-08-27 09:09:00.356');
INSERT INTO O_278 VALUES('240731003000', DATE '2024-07-31', 'MDR933', DATE '2024-07-31', '1006', TIMESTAMP '2024-08-27 09:10:11.3');
INSERT INTO O_278 VALUES('240731004000', DATE '2024-07-31', 'MDR761', DATE '2024-07-31', '1020', TIMESTAMP '2024-08-27 09:11:06.988');
INSERT INTO O_278 VALUES('240701001000', DATE '2024-07-01', 'BCA113', DATE '2024-07-01', '1009', TIMESTAMP '2024-09-02 13:40:19.006');
INSERT INTO O_278 VALUES('240831004000', DATE '2024-08-31', 'MDR761', DATE '2024-08-31', '1020', TIMESTAMP '2024-09-05 14:23:32.125');
INSERT INTO O_278 VALUES('240831005000', DATE '2024-08-31', 'BNI575', DATE '2024-08-31', '1005', TIMESTAMP '2024-09-05 14:24:23.646');
INSERT INTO O_278 VALUES('240831006000', DATE '2024-08-31', 'MDR933', DATE '2024-08-31', '1006', TIMESTAMP '2024-09-05 14:24:59.525');
CREATE TABLE O_289(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR);
INSERT INTO O_289 VALUES('240131007000', DATE '2024-01-31', 'LKH01', DATE '2024-01-31', '1002', TIMESTAMP '2024-03-06 08:59:00.248');
INSERT INTO O_289 VALUES('240101003000', DATE '2024-01-01', 'SO MELAK', DATE '2024-01-01', '1002', TIMESTAMP '2024-03-06 10:09:15.898');
INSERT INTO O_289 VALUES('240229016000', DATE '2024-02-29', 'LKH 02 A', DATE '2024-02-29', '1002', TIMESTAMP '2024-04-19 09:56:02.982');
INSERT INTO O_289 VALUES('240331040000', DATE '2024-03-31', 'LKH 03', DATE '2024-03-31', '1002', TIMESTAMP '2024-08-07 10:53:32.791');
INSERT INTO O_289 VALUES('240430001000', DATE '2024-04-30', 'LKH 04', DATE '2024-04-30', '1002', TIMESTAMP '2024-08-14 10:57:23.942');
INSERT INTO O_289 VALUES('240531011000', DATE '2024-05-31', 'LKH 05', DATE '2024-05-31', '1002', TIMESTAMP '2024-08-16 10:40:27.709');
INSERT INTO O_289 VALUES('240630006000', DATE '2024-06-30', 'LKH 06', DATE '2024-06-30', '1002', TIMESTAMP '2024-08-16 13:40:15.933');
CREATE TABLE O_300(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR);
INSERT INTO O_300 VALUES('240131003000', DATE '2024-01-31', 'LKH 01A', DATE '2024-01-31', '1002', TIMESTAMP '2024-03-06 10:04:08.194');
INSERT INTO O_300 VALUES('240131004000', DATE '2024-01-31', 'LKH 01B', DATE '2024-01-31', '1002', TIMESTAMP '2024-03-06 10:04:29.866');
INSERT INTO O_300 VALUES('240131005000', DATE '2024-01-31', 'LKH 01C', DATE '2024-01-31', '1002', TIMESTAMP '2024-03-06 10:04:53.353');
INSERT INTO O_300 VALUES('240131015000', DATE '2024-01-31', 'LKH 01D', DATE '2024-01-31', '1002', TIMESTAMP '2024-04-05 09:00:08.689');
INSERT INTO O_300 VALUES('240229010000', DATE '2024-02-29', 'LKH 02A', DATE '2024-02-29', '1002', TIMESTAMP '2024-04-19 09:45:29.611');
INSERT INTO O_300 VALUES('240229011000', DATE '2024-02-29', 'LKH 02B', DATE '2024-02-29', '1002', TIMESTAMP '2024-04-19 09:46:42.329');
INSERT INTO O_300 VALUES('240229013000', DATE '2024-02-29', 'LKH 02E', DATE '2024-02-29', '1002', TIMESTAMP '2024-04-19 09:48:52.866');
INSERT INTO O_300 VALUES('240229014000', DATE '2024-02-29', 'LKH 02C', DATE '2024-02-29', '1002', TIMESTAMP '2024-04-19 09:49:59.008');
INSERT INTO O_300 VALUES('240229015000', DATE '2024-02-29', 'LKH 02D', DATE '2024-02-29', '1002', TIMESTAMP '2024-04-19 09:51:15.586');
INSERT INTO O_300 VALUES('240331041000', DATE '2024-03-31', 'LKH 03A', DATE '2024-03-31', '1002', TIMESTAMP '2024-08-07 10:59:17.108');
INSERT INTO O_300 VALUES('240331042000', DATE '2024-03-31', 'LKH 03B', DATE '2024-03-31', '1002', TIMESTAMP '2024-08-07 11:00:36.244');
INSERT INTO O_300 VALUES('240331043000', DATE '2024-03-31', 'LKH 03C', DATE '2024-03-31', '1002', TIMESTAMP '2024-08-07 11:03:03.958');
INSERT INTO O_300 VALUES('240331044000', DATE '2024-03-31', 'LKH 03D', DATE '2024-03-31', '1002', TIMESTAMP '2024-08-07 11:04:32.773');
INSERT INTO O_300 VALUES('240331045000', DATE '2024-03-31', 'LKH 03E', DATE '2024-03-31', '1002', TIMESTAMP '2024-08-07 11:05:26.663');
INSERT INTO O_300 VALUES('240331046000', DATE '2024-03-31', 'LKH 03F', DATE '2024-03-31', '1002', TIMESTAMP '2024-08-07 11:06:18.819');
INSERT INTO O_300 VALUES('240430002000', DATE '2024-04-30', 'LKH 04A', DATE '2024-04-30', '1002', TIMESTAMP '2024-08-14 10:58:41.598');
INSERT INTO O_300 VALUES('240430003000', DATE '2024-04-30', 'LKH 04B', DATE '2024-04-30', '1002', TIMESTAMP '2024-08-14 10:59:34.376');
INSERT INTO O_300 VALUES('240430004000', DATE '2024-04-30', 'LKH 04C', DATE '2024-04-30', '1002', TIMESTAMP '2024-08-14 11:00:23.326');
INSERT INTO O_300 VALUES('240531007000', DATE '2024-05-31', 'LKH 05A', DATE '2024-05-31', '1002', TIMESTAMP '2024-08-16 10:32:44.583');
INSERT INTO O_300 VALUES('240531008000', DATE '2024-05-31', 'LKH 05B', DATE '2024-05-31', '1002', TIMESTAMP '2024-08-16 10:33:50.831');
INSERT INTO O_300 VALUES('240531009000', DATE '2024-05-31', 'LKH 05C', DATE '2024-05-31', '1002', TIMESTAMP '2024-08-16 10:34:47.339');
INSERT INTO O_300 VALUES('240531010000', DATE '2024-05-31', 'LKH 05D', DATE '2024-05-31', '1002', TIMESTAMP '2024-08-16 10:39:29.026');
INSERT INTO O_300 VALUES('240630001000', DATE '2024-06-30', 'LKH 06A', DATE '2024-06-30', '1002', TIMESTAMP '2024-08-16 13:36:08.65');
INSERT INTO O_300 VALUES('240630002000', DATE '2024-06-30', 'LKH 06B', DATE '2024-06-30', '1002', TIMESTAMP '2024-08-16 13:36:56.619');
INSERT INTO O_300 VALUES('240630003000', DATE '2024-06-30', 'LKH 06C', DATE '2024-06-30', '1002', TIMESTAMP '2024-08-16 13:37:50.947');
INSERT INTO O_300 VALUES('240630004000', DATE '2024-06-30', 'LKH 06D', DATE '2024-06-30', '1002', TIMESTAMP '2024-08-16 13:38:31.843');
INSERT INTO O_300 VALUES('240630005000', DATE '2024-06-30', 'LKH 06E', DATE '2024-06-30', '1002', TIMESTAMP '2024-08-16 13:39:21.17');
INSERT INTO O_300 VALUES('240731001000', DATE '2024-07-31', 'LKH 07', DATE '2024-07-31', '1002', TIMESTAMP '2024-08-27 08:38:55.113');
CREATE TABLE O_311(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR, C6 VARCHAR, C7 VARCHAR, C8 VARCHAR);
INSERT INTO O_311 VALUES('10', 'KAS & SETARA KAS', 0.0, 0, 0, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('1004', 'KAS IN TRANSIT', 0.0, 2, 0, '', NULL, 0, 1.775E8);
INSERT INTO O_311 VALUES('1003', 'BANK IN TRANSIT', 0.0, 2, 0, '', NULL, 0, -6.6894817E7);
INSERT INTO O_311 VALUES('1005', 'BNI 2542552575', 0.0, 1, 0, '', NULL, 1, 6747406.0);
INSERT INTO O_311 VALUES('1006', 'MANDIRI 1420018944933', 0.0, 1, 0, '', NULL, 1, 1.89871691E8);
INSERT INTO O_311 VALUES('1008', 'BNI 253552577 (KAS LOKASI MELAK)', 0.0, 1, 0, '', NULL, 1, 0.0);
INSERT INTO O_311 VALUES('11', 'PIUTANG USAHA', 0.0, 2, 0, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('1106', 'PERSEDIAAN SOLAR - MELAK', 0.0, 2, 0, '', NULL, 0, 4.59563451E8);
INSERT INTO O_311 VALUES('1310', 'PIUTANG NON USAHA - PEMEGANG SAHAM', 0.0, 2, 0, '', NULL, 1, 0.0);
INSERT INTO O_311 VALUES('15', 'PAJAK DIBAYAR DIMUKA', 0.0, 2, 0, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('1502', 'PPN MASUKAN', 0.0, 2, 0, '', NULL, 0, 3.53920942E8);
INSERT INTO O_311 VALUES('20', 'AKTIVA TETAP', 0.0, 2, 0, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('2001', 'INVENTARIS KANTOR', 0.0, 2, 0, '', NULL, 0, 5.010119E8);
INSERT INTO O_311 VALUES('30', 'UTANG USAHA', 0.0, 2, 2, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('3001', 'UTANG USAHA - LONG IRAM ', 0.0, 2, 2, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('3002', 'UTANG USAHA - BERKAT USAHA MANDIRI', 0.0, 2, 2, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('3004', 'UTANG USAHA - SRIWIJAYA TEKNIK', 0.0, 2, 2, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('3105', 'UTANG USAHA - BRI FINANCE', 0.0, 2, 2, '', NULL, 0, -9.1107607E7);
INSERT INTO O_311 VALUES('31', 'UTANG LEASING', 0.0, 2, 2, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('32', 'PAJAK YMH DIBAYAR', 0.0, 2, 2, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('3210', 'PPN KELUARAN', 0.0, 2, 2, '', NULL, 0, -9.8875448E8);
INSERT INTO O_311 VALUES('3220', 'PPH 23', 0.0, 2, 2, '', NULL, 0, -1.3757262E7);
INSERT INTO O_311 VALUES('33', 'UTANG NON USAHA', 0.0, 2, 2, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('3301', 'UTANG NON USAHA - PT.ETIKA (LEASING ALAT BERAT) ', 0.0, 2, 2, '', NULL, 0, -1.5252146542E10);
INSERT INTO O_311 VALUES('40', 'MODAL', 0.0, 2, 2, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('4101', 'MODAL DISETOR', 0.0, 2, 2, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('4102', 'LABA DITAHAN - TAHUN BERLALU', 0.0, 2, 2, '', NULL, 0, -1.2005047908E10);
INSERT INTO O_311 VALUES('4103', 'LABA DITAHAN TAHUN BERJALAN', 0.0, 2, 2, '', NULL, 0, -1.665365076E9);
INSERT INTO O_311 VALUES('50', 'PENDAPATAN ', 0.0, 2, 1, '', NULL, 0, 0.0);
INSERT INTO O_311 VALUES('1201', 'PIUTANG USAHA - SURYA SAKTI DARMA KENCANA', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:34:04.658', 0, 0.0);
INSERT INTO O_311 VALUES('1202', 'PIUTANG USAHA - DAVID BUMI PERKASA', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:34:27.498', 0, 5.515506328E9);
INSERT INTO O_311 VALUES('1203', 'PIUTANG USAHA - BERKAT DOA PUTRI', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:34:55.017', 0, 2.561382E8);
INSERT INTO O_311 VALUES('1301', 'PIUTAN KARYAWAN - MEKANIK 03 MALANG', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:35:40.075', 0, 4500000.0);
INSERT INTO O_311 VALUES('1401', 'PIUTANG NON USAHA - SURYA SAKTI DARMAN KENCANA', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:36:19.84', 0, 5.0E9);
INSERT INTO O_311 VALUES('1402', 'PIUTANG NON USAHA - BEKAL', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:36:55.514', 0, -1.74549603E8);
INSERT INTO O_311 VALUES('1403', 'PIUTANG NON USAHA - DAVID BUMI PERKASA', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:37:23.592', 0, 4.56725776E8);
INSERT INTO O_311 VALUES('1501', 'PPh 23 DI BAYAR DI MUKA', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:38:35.633', 0, 1.681961636E9);
INSERT INTO O_311 VALUES('1701', 'UANG MUKA PEMBANGUNAN WORKSHOP - SUWIDI', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:40:41.564', 0, 4.0E7);
INSERT INTO O_311 VALUES('2002', 'KENDARAAN', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:41:53.491', 0, 2.513805436E9);
INSERT INTO O_311 VALUES('2003', 'ALAT BERAT', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:43:22.937', 0, 1.9942685851E10);
INSERT INTO O_311 VALUES('2004', 'DUMP TRUCK', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:43:42.033', 0, 1.1159139912E10);
INSERT INTO O_311 VALUES('2088', 'AKUMULASI PENYUSUTAN (SESUAI LEASING) ', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:44:41.041', 0, -1.7356089441E10);
INSERT INTO O_311 VALUES('2099', 'AKUMULASI PENYUSUTAN', 0.0, 2, 0, '', TIMESTAMP '2024-02-27 13:44:56.115', 0, -3.59722867E8);
INSERT INTO O_311 VALUES('3106', 'UTANG USAHA - BFI FINANCE', 0.0, 0, 2, '', TIMESTAMP '2024-02-27 13:48:02.112', 0, -4.9798466E9);
INSERT INTO O_311 VALUES('3302', 'UTANG NON USAHA - WAHJUDI GATOT ', 0.0, 2, 2, '', TIMESTAMP '2024-02-27 13:50:50.348', 0, 1.8040558231E10);
INSERT INTO O_311 VALUES('3303', 'UTANG NON USAHA - PT ETIKA (EKS MODAL) ', 0.0, 2, 2, '', TIMESTAMP '2024-02-27 13:51:58.77', 0, -1.45E10);
INSERT INTO O_311 VALUES('5001', 'PENDAPATAN - OVERBURDEN', 0.0, 2, 1, '', TIMESTAMP '2024-02-27 14:04:44.239', 0, 0.0);
INSERT INTO O_311 VALUES('5002', 'PENDAPATAN - COAL HAULING', 0.0, 2, 1, '', TIMESTAMP '2024-02-27 14:06:25.249', 0, 0.0);
INSERT INTO O_311 VALUES('5003', 'PENDAPATAN - RENTAL ALAT BERAT & DT', 0.0, 2, 1, '', TIMESTAMP '2024-02-27 14:09:23.739', 0, 0.0);
INSERT INTO O_311 VALUES('5004', 'PENDAPATAN - REKLAMASI', 0.0, 2, 1, '', TIMESTAMP '2024-02-27 14:09:56.003', 0, 0.0);
INSERT INTO O_311 VALUES('7001', 'GAJI KARYAWAN', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:18:14.533', 0, 2.24783642E8);
INSERT INTO O_311 VALUES('7002', 'PPh 21 KARYAWAN', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:18:39.453', 0, 0.0);
INSERT INTO O_311 VALUES('7003', 'UANG MAKAN & TUNJANGAN', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:19:03.029', 0, 0.0);
INSERT INTO O_311 VALUES('7004', 'KEPERLUAN KANTOR DAPUR & MESS', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:19:34.928', 0, 6.6232E7);
INSERT INTO O_311 VALUES('7005', 'ATK CETAKAN FOTOCOPY DLL', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:25:15.455', 0, 0.0);
INSERT INTO O_311 VALUES('7006', 'TRANSPORTASI AKOMODASI & PERJALANAN DINAS', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:25:51.343', 0, 3.534E7);
INSERT INTO O_311 VALUES('7007', 'PERBAIKAN & PEMELIHARAAN ALAT BERAT', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:26:35.215', 0, 0.0);
INSERT INTO O_311 VALUES('7008', 'PERBAIKAN & PEMELIHARAAN KENDARAAN', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:26:57.214', 0, 0.0);
INSERT INTO O_311 VALUES('7009', 'PENGIRIMAN & EKSPEDISI', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:27:30.68', 0, 0.0);
INSERT INTO O_311 VALUES('7010', 'BIAYA BANK', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:27:44.257', 0, 325000.0);
INSERT INTO O_311 VALUES('7011', 'PAJAK PERSAHAAN', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:28:09.615', 0, 2.17073702E8);
INSERT INTO O_311 VALUES('7012', 'BPJS KESEHATAN & KETENAGAKERJAAN', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:28:35.504', 0, 1.8124901E7);
INSERT INTO O_311 VALUES('7013', 'PENYUSUTAN INVENTARIS', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:36:00.392', 0, 0.0);
INSERT INTO O_311 VALUES('7014', 'PENYUSUTAN KENDARAAN', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:36:25.422', 0, 0.0);
INSERT INTO O_311 VALUES('7015', 'PENYUSUTAN ALAT BERAT', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:36:56.278', 0, 0.0);
INSERT INTO O_311 VALUES('7016', 'PEMBELIAN SPAREPART', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 14:37:33.669', 0, 7.7731839E7);
INSERT INTO O_311 VALUES('7017', 'KEPERLUAN WORKSHOP', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 15:13:26.97', 0, 1.18165348E8);
INSERT INTO O_311 VALUES('7018', 'PEMAKAIAN SOLAR', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 15:13:41.329', 0, 0.0);
INSERT INTO O_311 VALUES('7019', 'SEWA ALAT BERAT', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 15:14:47.373', 0, 0.0);
INSERT INTO O_311 VALUES('7020', 'BEBAN LEASING ETIKA', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 16:13:36.522', 0, 0.0);
INSERT INTO O_311 VALUES('7021', 'BEBAN LEASING DHAKO', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 16:13:52.961', 0, 0.0);
INSERT INTO O_311 VALUES('9001', 'BIAYA / PENDAPATAN LAIN LAIN', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 16:14:27.365', 0, -527920.0);
INSERT INTO O_311 VALUES('9002', 'PENDAPATAN JASA GIRO', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 16:24:19.355', 0, 0.0);
INSERT INTO O_311 VALUES('9003', 'PAJAK ATAS JASA GIRO', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 16:24:41.76', 0, 106146.0);
INSERT INTO O_311 VALUES('9999', 'RUGI LABA PERIODE SAAT INI', 0.0, 2, 3, '', TIMESTAMP '2024-02-27 16:25:10.652', 0, 0.0);
INSERT INTO O_311 VALUES('7022', 'DONASI / CSR', 0.0, 2, 3, '', TIMESTAMP '2024-03-06 09:35:20.591', 0, 0.0);
INSERT INTO O_311 VALUES('7023', 'BBM SELAIN SOLAR', 0.0, 2, 3, '', TIMESTAMP '2024-03-06 09:38:39.497', 0, 0.0);
INSERT INTO O_311 VALUES('3005', 'UTANG USAHA - BEKAL PUTRA JAYA', 0.0, 2, 2, '', TIMESTAMP '2024-05-20 10:14:49.769', 0, 0.0);
INSERT INTO O_311 VALUES('1002', 'KAS MELAK', 0.0, 0, 0, '', TIMESTAMP '2024-08-07 11:11:01.056', 1, 3.3469232E7);
INSERT INTO O_311 VALUES('1020', 'MANDIRI 1420020021761', 0.0, 1, 0, '', TIMESTAMP '2024-08-16 11:04:35.242', 1, 1106295.0);
INSERT INTO O_311 VALUES('1204', 'PIUTANG USAHA - NEON SINERGI PERKASA', 0.0, 2, 0, '', TIMESTAMP '2024-08-29 14:57:41.783', 0, 0.0);
INSERT INTO O_311 VALUES('1009', 'BCA RUKUN AMAN DAMAI - 8223322113', 0.0, 1, 0, '', TIMESTAMP '2024-09-02 13:35:35.729', 1, 3.61715258E8);
CREATE TABLE O_306(C0 VARCHAR, C1 VARCHAR, C2 VARCHAR, C3 VARCHAR, C4 VARCHAR, C5 VARCHAR, C6 VARCHAR, C7 VARCHAR, C8 VARCHAR);
INSERT INTO O_306 VALUES('240131004001', '240131004000', '7003', 1400000.0, 'UM Anna Qodri Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:04:29.866', 1400000.0, 1.9E7, -2.5500494E7);
INSERT INTO O_306 VALUES('240131004002', '240131004000', '7003', 735000.0, 'UM Raju Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:04:29.866', 735000.0, 1.9735E7, -2.6235494E7);
INSERT INTO O_306 VALUES('240131004003', '240131004000', '7003', 1400000.0, 'UM Yono S. Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:04:29.866', 1400000.0, 2.1135E7, -2.7635494E7);
INSERT INTO O_306 VALUES('240131004004', '240131004000', '7003', 1170000.0, 'UM Andri Syamsul Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:04:29.866', 1170000.0, 2.2305E7, -2.8805494E7);
INSERT INTO O_306 VALUES('240131004005', '240131004000', '7003', 1500000.0, 'Kasbon Potong Uang Makan Periode 1 Jan - 10 Jan 2024', TIMESTAMP '2024-03-06 10:04:29.866', 1500000.0, 2.3805E7, -3.0305494E7);
INSERT INTO O_306 VALUES('240131004006', '240131004000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Januari 2024', TIMESTAMP '2024-03-06 10:04:29.866', 500000.0, 3.12793014E8, -3.0805494E7);
INSERT INTO O_306 VALUES('240131004007', '240131004000', '7016', 500000.0, '2 Meter Hose 1  @ Rp250.000  u/ Hose Dump TR 08 PR 3238 / H 776', TIMESTAMP '2024-03-06 10:04:29.866', 500000.0, 1.5176963E8, -3.1305494E7);
INSERT INTO O_306 VALUES('240131004008', '240131004000', '7016', 160000.0, '4 Pcs Clamp Hose 1  (32 - 35) @ Rp40.000  U/ Hose Dump TR 08 PR 3238 / H 776', TIMESTAMP '2024-03-06 10:04:29.866', 160000.0, 1.5192963E8, -3.1465494E7);
INSERT INTO O_306 VALUES('240131004009', '240131004000', '7016', 140000.0, '1 Pcs Coupler SF - 40 u/ Kompresor Angin PR 3238 / H 776', TIMESTAMP '2024-03-06 10:04:29.866', 140000.0, 1.5206963E8, -3.1605494E7);
INSERT INTO O_306 VALUES('240131004010', '240131004000', '7016', 38000.0, '1 Pcs Fitting 1/2  Male u/ Kompresor Angin PR 3238 / H 776', TIMESTAMP '2024-03-06 10:04:29.866', 38000.0, 1.5210763E8, -3.1643494E7);
INSERT INTO O_306 VALUES('240131004011', '240131004000', '7016', 50000.0, '1 Pcs Coupler PF - 40 u/ Kompresor Angin PR 3238 / H 776', TIMESTAMP '2024-03-06 10:04:29.866', 50000.0, 1.5215763E8, -3.1693494E7);
INSERT INTO O_306 VALUES('240131004012', '240131004000', '7016', 38000.0, '1 Pcs Nepel 1/2  X 3/8 u/ Kompresor Angin PR 3238 / H 776', TIMESTAMP '2024-03-06 10:04:29.866', 38000.0, 1.5219563E8, -3.1731494E7);
INSERT INTO O_306 VALUES('240131004013', '240131004000', '7016', 53000.0, '1 Pcs Fitting 1/2  Female u/ Kompresor Angin PR 3238 / H 776', TIMESTAMP '2024-03-06 10:04:29.866', 53000.0, 1.5224863E8, -3.1784494E7);
INSERT INTO O_306 VALUES('240131004014', '240131004000', '7017', 1600000.0, '1 Pcs Kinci Momen TQ-PF0329 TW Professional T600 1/2  12-68 Nm u/ W-Shop  PR 3244 / H 298', TIMESTAMP '2024-03-06 10:04:29.866', 1600000.0, 3.14003461E8, -3.3384494E7);
INSERT INTO O_306 VALUES('240131004015', '240131004000', '7017', 370000.0, '1 Pcs Impact Socket IS-IS0689  6PT 3/4  55 mm u/ W-Shop PR 3244 / H 298', TIMESTAMP '2024-03-06 10:04:29.866', 370000.0, 3.14373461E8, -3.3754494E7);
INSERT INTO O_306 VALUES('240131004016', '240131004000', '7017', 130000.0, '1 Pcs Sambungan Sock SC-EB0586  Extension Bar 3/4  X 4  u/ W-Shop  PR 3244 / H 298', TIMESTAMP '2024-03-06 10:04:29.866', 130000.0, 3.14503461E8, -3.3884494E7);
INSERT INTO O_306 VALUES('240131004017', '240131004000', '7016', 1500000.0, '1 Pcs Las Bubut T. Dam Kanan Kiri u/ TR 05  PR 3243 / H 278', TIMESTAMP '2024-03-06 10:04:29.866', 1500000.0, 1.5374863E8, -3.5384494E7);
INSERT INTO O_306 VALUES('240131004018', '240131004000', '7016', 1500000.0, '2 Pcs Las Bubut Rumah Bushing Kupu-kupu Dam u/ TR 05 PR 3243 / H 278', TIMESTAMP '2024-03-06 10:04:29.866', 1500000.0, 1.5524863E8, -3.6884494E7);
INSERT INTO O_306 VALUES('240131004019', '240131004000', '7016', 1000000.0, 'Pembuatan 2 Pcs Bushing Kuningan u/ TR 05  PR 3243 / H 278', TIMESTAMP '2024-03-06 10:04:29.866', 1000000.0, 1.5624863E8, -3.7884494E7);
INSERT INTO O_306 VALUES('240131004020', '240131004000', '7016', 50000.0, U&'5 Pcs Nepel Grease 90\2070 @ Rp10.000 u/ Stok PR 3242 / H 277', TIMESTAMP '2024-03-06 10:04:29.866', 50000.0, 1.5629863E8, -3.7934494E7);
INSERT INTO O_306 VALUES('240131004021', '240131004000', '7016', 50000.0, '5 Pcs Nepel Grease Lurus @ Rp10.000 u/ Stok PR 3242 / H 277', TIMESTAMP '2024-03-06 10:04:29.866', 50000.0, 1.5634863E8, -3.7984494E7);
INSERT INTO O_306 VALUES('240131004022', '240131004000', '7016', 145000.0, '1 Pcs BM Kit Dutro (Repair Kit Rem) u/ Manhaul 01 PR3242 / H277', TIMESTAMP '2024-03-06 10:04:29.882', 145000.0, 1.5649363E8, -3.8129494E7);
INSERT INTO O_306 VALUES('240131004023', '240131004000', '7017', 109800.0, '1 Pcs Ball Valve 1/2  ONDA u/ Kompresor W-Shop PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 109800.0, 3.14613261E8, -3.8239294E7);
INSERT INTO O_306 VALUES('240131004024', '240131004000', '7017', 18360.0, '1 Pcs Coupling HID ZIMP MB 08-08 Sachio u/ Kompresor W-Shop PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 18360.0, 3.14631621E8, -3.8257654E7);
INSERT INTO O_306 VALUES('240131004025', '240131004000', '7017', 16200.0, '1 Pcs Coupling HID 08-08 NU No. Brand u/ Kompresor W-Shop PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 16200.0, 3.14647821E8, -3.8273854E7);
INSERT INTO O_306 VALUES('240131004026', '240131004000', '7017', 15300.0, '1 Pcs DN 08 MU X 08 MB No. Brand u/ Kompresor W-Shop PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 15300.0, 3.14663121E8, -3.8289154E7);
INSERT INTO O_306 VALUES('240131004027', '240131004000', '7017', 32400.0, '2 Pcs DN 08 MB X 08 MB No. Brand u/ Kompresor W-Shop PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 32400.0, 3.14695521E8, -3.8321554E7);
INSERT INTO O_306 VALUES('240131004028', '240131004000', '7017', 383850.0, '1 Pcs Coupler Hydraulic Besi 1/2  SITH u/ Kompresor W-Shop PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 383850.0, 3.15079371E8, -3.8705404E7);
INSERT INTO O_306 VALUES('240131004029', '240131004000', '7016', 1134250.0, '50 Pcs Angker Bolt 3/4 X 400 X 80 MTHH @ Rp22.685 u/ PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 1134250.0, 1.5762788E8, -3.9839654E7);
INSERT INTO O_306 VALUES('240131004030', '240131004000', '7016', 124250.0, '50 Pcs Hex Nut Only Unc 3/4 X 28 10T MTHF @ Rp2.485 u/ PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 124250.0, 1.5775213E8, -3.9963904E7);
INSERT INTO O_306 VALUES('240131004031', '240131004000', '7016', 84000.0, '50 Pcs Washer Plate M 20 X 42 X 3.0 Kuning @ Rp1.680 u/ PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 84000.0, 1.5783613E8, -4.0047904E7);
INSERT INTO O_306 VALUES('240131004032', '240131004000', '7016', 150000.0, '1 Pcs Sambungan Sock SC-EB0587 Extension Bar 3/4  X 8  PR 3245 / H 455', TIMESTAMP '2024-03-06 10:04:29.882', 150000.0, 1.5798613E8, -4.0197904E7);
INSERT INTO O_306 VALUES('240131004033', '240131004000', '7009', 156000.0, 'Biaya Pengiriman Barang (Ball Valve, Coupling Hid, Angker Bolt,', TIMESTAMP '2024-03-06 10:04:29.882', 156000.0, 156000.0, -4.0353904E7);
INSERT INTO O_306 VALUES('240131004034', '240131004000', '7016', 16000.0, '8 Pcs Baut 12  @ Rp2.000 u/ Kontainer PR 2253 / H 544', TIMESTAMP '2024-03-06 10:04:29.882', 16000.0, 1.5800213E8, -4.0369904E7);
INSERT INTO O_306 VALUES('240131004035', '240131004000', '7016', 4000.0, '8 Pcs Mur Baut 12  @ Rp500 u/ Kontainer  PR 2253 / H 544', TIMESTAMP '2024-03-06 10:04:29.882', 4000.0, 1.5800613E8, -4.0373904E7);
INSERT INTO O_306 VALUES('240131004036', '240131004000', '7016', 65000.0, 'Pembuatan 1 Pcs Kunci Kontak u/ Doser 38  PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.882', 65000.0, 1.5807113E8, -4.0438904E7);
INSERT INTO O_306 VALUES('240131004037', '240131004000', '7016', 105000.0, '1 Pasang Sepatu Boots u/ Bp. Rinto  PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.882', 105000.0, 1.5817613E8, -4.0543904E7);
INSERT INTO O_306 VALUES('240131004038', '240131004000', '7016', 83000.0, '1 Klg Cat Hitam u/ Rangka Doser 36  PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.882', 83000.0, 1.5825913E8, -4.0626904E7);
INSERT INTO O_306 VALUES('240131004039', '240131004000', '7016', 20000.0, '1 Pcs Reducer (Over Sock) 3/4  ke 1/2  u/ Kompresor PR3249 / H891', TIMESTAMP '2024-03-06 10:04:29.897', 20000.0, 1.5827913E8, -4.0646904E7);
INSERT INTO O_306 VALUES('240131004040', '240131004000', '7016', 20000.0, '1 Pcs Nepel Drat (Double Nepel) 3/4 u/ Kompresor PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.897', 20000.0, 1.5829913E8, -4.0666904E7);
INSERT INTO O_306 VALUES('240131004041', '240131004000', '7016', 300000.0, '1 Pcs B/M Kit Inova (Repair Kit Master Rem Atas) u/ L 9502 GH PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.897', 300000.0, 1.5859913E8, -4.0966904E7);
INSERT INTO O_306 VALUES('240131004042', '240131004000', '7016', 100000.0, '1 Pcs Baut Taf Oli Magnet u/ TR 07  PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.897', 100000.0, 1.5869913E8, -4.1066904E7);
INSERT INTO O_306 VALUES('240131004043', '240131004000', '7016', 225000.0, '5 Pcs Helm Putih u/ Safety (Pengawas) @ Rp45.000 PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.897', 225000.0, 1.5892413E8, -4.1291904E7);
INSERT INTO O_306 VALUES('240131004044', '240131004000', '7016', 70000.0, '10 Pcs Baut 88 M10 X 30 + Ring u/ PC400 - 02 @ Rp7.000 PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.897', 70000.0, 1.5899413E8, -4.1361904E7);
INSERT INTO O_306 VALUES('240131004045', '240131004000', '7016', 40000.0, '5 Pcs Baut 88 M12 X 40 + Ring u/ PC400 - 02 @ Rp8.000 PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.897', 40000.0, 1.5903413E8, -4.1401904E7);
INSERT INTO O_306 VALUES('240131004046', '240131004000', '7016', 100000.0, '10 Pcs Baut 88 M12 X 30 + Ring u/ Doser 38 @ Rp10.000 PR 3249 / H 891', TIMESTAMP '2024-03-06 10:04:29.897', 100000.0, 1.5913413E8, -4.1501904E7);
INSERT INTO O_306 VALUES('240131004047', '240131004000', '7016', 75000.0, '1 Pcs Klakson u/ Manhaul 01  PR 2252 / H 655', TIMESTAMP '2024-03-06 10:04:29.897', 75000.0, 1.5920913E8, -4.1576904E7);
INSERT INTO O_306 VALUES('240131004048', '240131004000', '7016', 32000.0, '4 Pcs Baut M10 X 150 (K14 X 14) u/ Doser 38 @ Rp 8000 PR 2252 / H 655', TIMESTAMP '2024-03-06 10:04:29.897', 32000.0, 1.5924113E8, -4.1608904E7);
INSERT INTO O_306 VALUES('240131004049', '240131004000', '7016', 140000.0, '1 Pcs Regulator LPG u/ W-Shop  PR 2252 / H 655', TIMESTAMP '2024-03-06 10:04:29.897', 140000.0, 1.5938113E8, -4.1748904E7);
INSERT INTO O_306 VALUES('240131004050', '240131004000', '7016', 130000.0, U&'2 Pcs Van Belt \0394 - 49 Genset Deutz 02  PR 2252 / H 655', TIMESTAMP '2024-03-06 10:04:29.897', 130000.0, 1.5951113E8, -4.1878904E7);
INSERT INTO O_306 VALUES('240131004051', '240131004000', '7016', 130000.0, U&'2 Pcs Van Belt \0394 - 53 Genset Deutz 01  PR 2252 / H 655', TIMESTAMP '2024-03-06 10:04:29.897', 130000.0, 1.5964113E8, -4.2008904E7);
INSERT INTO O_306 VALUES('240131004052', '240131004000', '7016', 350000.0, '10 Meter Selang Solar u/ Genset Deutz 02  PR 2252 / H 655', TIMESTAMP '2024-03-06 10:04:29.897', 350000.0, 1.5999113E8, -4.2358904E7);
INSERT INTO O_306 VALUES('240131004053', '240131004000', '7016', 460000.0, '2 Pcs Pompa Grease Tekio u/ W-Shop @ Rp230.000  PR2253 / H 544', TIMESTAMP '2024-03-06 10:04:29.897', 460000.0, 1.6045113E8, -4.2818904E7);
INSERT INTO O_306 VALUES('240131004054', '240131004000', '7016', 500000.0, '2 Pcs Rack End L/R (1 Set) u/ N 9811 EE  PR 2253 / H 544', TIMESTAMP '2024-03-06 10:04:29.897', 500000.0, 1.6095113E8, -4.3318904E7);
INSERT INTO O_306 VALUES('240131004055', '240131004000', '7016', 175000.0, '1 Pcs Wheel Cylinder Hilux (Master Rem Bawah) u/ N 9811 EE PR 2255 / H 223', TIMESTAMP '2024-03-06 10:04:29.897', 175000.0, 1.6112613E8, -4.3493904E7);
INSERT INTO O_306 VALUES('240131004056', '240131004000', '7016', 40000.0, '4 Pcs Seal Rem Hino Dutro HT u/ Dutro Servis  PR 2255 / H 223', TIMESTAMP '2024-03-06 10:04:29.897', 40000.0, 1.6116613E8, -4.3533904E7);
INSERT INTO O_306 VALUES('240131004057', '240131004000', '7016', 20000.0, '4 Pcs Seal Debu HT u/ Dutro Servis  PR 2255 / H 223', TIMESTAMP '2024-03-06 10:04:29.897', 20000.0, 1.6118613E8, -4.3553904E7);
INSERT INTO O_306 VALUES('240131004058', '240131004000', '7016', 550000.0, '1 Pcs Tie Rod HT Hino Dutro u/ Dutro Servis  PR 2255 / H 223', TIMESTAMP '2024-03-06 10:04:29.897', 550000.0, 1.6173613E8, -4.4103904E7);
INSERT INTO O_306 VALUES('240131004059', '240131004000', '7016', 300000.0, 'Perbaikan (Service) Radiator u/ TR 71  PR 2255 / H 223', TIMESTAMP '2024-03-06 10:04:29.897', 300000.0, 1.6203613E8, -4.4403904E7);
INSERT INTO O_306 VALUES('240131004060', '240131004000', '7016', 385000.0, '1 Meter Rantai Baja 10 mm u/ TR 89  PR 2255 / H 223', TIMESTAMP '2024-03-06 10:04:29.897', 385000.0, 1.6242113E8, -4.4788904E7);
INSERT INTO O_306 VALUES('240131004061', '240131004000', '7016', 75000.0, '1 Pcs Baut Baja 20 X 150 u/ TR 89  PR 2255 / H 223', TIMESTAMP '2024-03-06 10:04:29.897', 75000.0, 1.6249613E8, -4.4863904E7);
INSERT INTO O_306 VALUES('240131004062', '240131004000', '7016', 1190000.0, '1 Pcs Hose Hydraulic Assy 3/4  X 1,22 M c/w Fitting Survel u/ TR 01 PR 2255 / H 223', TIMESTAMP '2024-03-06 10:04:29.897', 1190000.0, 1.6368613E8, -4.6053904E7);
INSERT INTO O_306 VALUES('240131004063', '240131004000', '7016', 210000.0, '1 Pcs Hose Hydraulic Assy 1/2  X 0,7 M c/w Fitting Indle u/ TR 74 PR 2255 / H 223', TIMESTAMP '2024-03-06 10:04:29.897', 210000.0, 1.6389613E8, -4.6263904E7);
INSERT INTO O_306 VALUES('240131004064', '240131004000', '7006', 50000.0, 'Penyeberangan PP L 9205 GH u/ Pengambilan (Mengangkut)', TIMESTAMP '2024-03-06 10:04:29.897', 50000.0, 1.053E7, -4.6313904E7);
INSERT INTO O_306 VALUES('240131004065', '240131004000', '7006', 1.2E7, 'Biaya PS Ekspedisi u/ Membawa Barang Bekas (Mesin, Kompresor', TIMESTAMP '2024-03-06 10:04:29.897', 1.2E7, 2.253E7, -5.8313904E7);
INSERT INTO O_306 VALUES('240131004066', '240131004000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Pengambilan (Mengangkut)', TIMESTAMP '2024-03-06 10:04:29.897', 50000.0, 2.258E7, -5.8363904E7);
INSERT INTO O_306 VALUES('240131004067', '240131004000', '7001', 3806890.0, 'Gaji dan Insentif Periode 1 Des - 31 Des 2023 a/n Joel Domikus', TIMESTAMP '2024-03-06 10:04:29.897', 3806890.0, 3.16599904E8, -6.2170794E7);
INSERT INTO O_306 VALUES('240131004068', '240131004000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Pengambilan (Mengangkut)', TIMESTAMP '2024-03-06 10:04:29.897', 50000.0, 2.263E7, -6.2220794E7);
INSERT INTO O_306 VALUES('240131004069', '240131004000', '7017', 17400.0, '1 Pak (2 Pcs) Baterai ABC Alkaline AAA-LR03/2MP utk Remote', TIMESTAMP '2024-03-06 10:04:29.897', 17400.0, 3.15096771E8, -6.2238194E7);
INSERT INTO O_306 VALUES('240131004070', '240131004000', '7017', 28800.0, '2 Pak (12 Pcs) Baterai ABC Super/PWR AAA/4S u/ Remote', TIMESTAMP '2024-03-06 10:04:29.897', 28800.0, 3.15125571E8, -6.2266994E7);
INSERT INTO O_306 VALUES('240131004071', '240131004000', '7006', 50000.0, 'Penyeberangan PP L 9205 GH u/ Menjemput Karyawan ', TIMESTAMP '2024-03-06 10:04:29.897', 50000.0, 2.268E7, -6.2316994E7);
INSERT INTO O_306 VALUES('240131004072', '240131004000', '7017', 400000.0, '1 Pcs Lemari u/ Kamar Bapak Go Oei Hap PR 3242 / H 277', TIMESTAMP '2024-03-06 10:04:29.913', 400000.0, 3.15525571E8, -6.2716994E7);
INSERT INTO O_306 VALUES('240131004073', '240131004000', '7017', 75000.0, '3 Pcs Sapu @ Rp25.000 u/ Mess dan Kantor  ', TIMESTAMP '2024-03-06 10:04:29.913', 75000.0, 3.15600571E8, -6.2791994E7);
INSERT INTO O_306 VALUES('240131004074', '240131004000', '7017', 45000.0, '3 Pcs Kemoceng @ Rp15.000 u/ Mess dan Kantor', TIMESTAMP '2024-03-06 10:04:29.913', 45000.0, 3.15645571E8, -6.2836994E7);
INSERT INTO O_306 VALUES('240131004075', '240131004000', '7017', 300000.0, '1 Tabung Oksigen u/ W-Shop PR 3242 / H 277', TIMESTAMP '2024-03-06 10:04:29.913', 300000.0, 3.15945571E8, -6.3136994E7);
INSERT INTO O_306 VALUES('240131004076', '240131004000', '7017', 260000.0, '1 Tabung LPG 12 Kg u/ W-Shop  PR 3242 / H 277', TIMESTAMP '2024-03-06 10:04:29.913', 260000.0, 3.16205571E8, -6.3396994E7);
INSERT INTO O_306 VALUES('240131004077', '240131004000', '7017', 75000.0, '5 Pcs Silikon (Lem) Red Kecil u/ Stok  PR 3242 / H 277', TIMESTAMP '2024-03-06 10:04:29.913', 75000.0, 3.16280571E8, -6.3471994E7);
INSERT INTO O_306 VALUES('240131004078', '240131004000', '7017', 70000.0, '2 Pcs Cat Semprot (Pilok Hitam) u/ L 8397 VB  PR 3242 / H 277', TIMESTAMP '2024-03-06 10:04:29.913', 70000.0, 3.16350571E8, -6.3541994E7);
INSERT INTO O_306 VALUES('240131004079', '240131004000', '7022', 2500000.0, 'Bantuan Sosial u/ Pengurus Muara Batuq Periode Januari 2024', TIMESTAMP '2024-03-06 10:04:29.913', 2500000.0, 2500000.0, -6.6041994E7);
INSERT INTO O_306 VALUES('240131004080', '240131004000', '7004', 1500000.0, 'Pembayaran u/ Patroli PAM Brimob KM 18 dan Areal Tambang PT. Dharma Abadi Kontraktor (Desember 2023)', TIMESTAMP '2024-03-06 10:04:29.913', 1500000.0, 2.14675E8, -6.7541994E7);
INSERT INTO O_306 VALUES('240131004081', '240131004000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart', TIMESTAMP '2024-03-06 10:04:29.913', 50000.0, 2.273E7, -6.7591994E7);
INSERT INTO O_306 VALUES('240131004082', '240131004000', '7017', 75000.0, '5 Pcs Keset u/ Mess KM 18 dan Kantor @ Rp15.000 PR3250 / H617', TIMESTAMP '2024-03-06 10:04:29.913', 75000.0, 3.16425571E8, -6.7666994E7);
INSERT INTO O_306 VALUES('240131004083', '240131004000', '7017', 100000.0, '2 Pcs Sapu Taman u/ Mess dan Kantor @ Rp50.000 PR 3250 / H 617', TIMESTAMP '2024-03-06 10:04:29.913', 100000.0, 3.16525571E8, -6.7766994E7);
INSERT INTO O_306 VALUES('240131004084', '240131004000', '7017', 50000.0, '2 Pcs Sapu Lantai u/ Mess dan Kantor @ Rp25.000  PR 3250 / H 617', TIMESTAMP '2024-03-06 10:04:29.913', 50000.0, 3.16575571E8, -6.7816994E7);
INSERT INTO O_306 VALUES('240131004085', '240131004000', '7017', 800000.0, '4 Kotak Skrup Galvalum CM L 16 u/ W-Shop PR 3250 / H 617', TIMESTAMP '2024-03-06 10:04:29.913', 800000.0, 3.17375571E8, -6.8616994E7);
INSERT INTO O_306 VALUES('240131004086', '240131004000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (LKH 01 dan Surat Jalan Asli)', TIMESTAMP '2024-03-06 10:04:29.913', 47000.0, 203000.0, -6.8663994E7);
INSERT INTO O_306 VALUES('240131004087', '240131004000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Oper Barang Henicargo dan', TIMESTAMP '2024-03-06 10:04:29.913', 50000.0, 2.278E7, -6.8713994E7);
INSERT INTO O_306 VALUES('240131004088', '240131004000', '7023', 270000.0, '20 Liter Pertamax u/ Alcon FT 01  @ Rp13.500  PR 2253 / H 544', TIMESTAMP '2024-03-06 10:04:29.913', 270000.0, 270000.0, -6.8983994E7);
INSERT INTO O_306 VALUES('240131004089', '240131004000', '7017', 50000.0, '1 Pcs Bantal u/ Bp. Suradi (Pengawas) PR 2253 / H 544', TIMESTAMP '2024-03-06 10:04:29.913', 50000.0, 3.17425571E8, -6.9033994E7);
INSERT INTO O_306 VALUES('240131003001', '240131003000', '7007', 550000.0, 'Service Radiator u/ TR 71  PR 3223 / H 819', TIMESTAMP '2024-03-06 10:10:55.657', 550000.0, 550000.0, 2.9974432E7);
INSERT INTO O_306 VALUES('240131003002', '240131003000', '7016', 320000.0, '2 Dus (8 Gln) Air Radiator (Air Coolant) u/ Stok  PR 3223 / H 819', TIMESTAMP '2024-03-06 10:10:55.657', 320000.0, 1.32972E8, 2.9654432E7);
INSERT INTO O_306 VALUES('240131003003', '240131003000', '7016', 100000.0, '20 Pcs Lampu K1 24 V @ Rp5.000 u/ Stok  PR 8223 / H 819', TIMESTAMP '2024-03-06 10:10:55.657', 100000.0, 1.33072E8, 2.9554432E7);
INSERT INTO O_306 VALUES('240131003004', '240131003000', '7016', 120000.0, '20 Pcs Lampu K2 24 V @ Rp6.000 u/ Stok  PR 3223 / H 819', TIMESTAMP '2024-03-06 10:10:55.657', 120000.0, 1.33192E8, 2.9434432E7);
INSERT INTO O_306 VALUES('240131003005', '240131003000', '7016', 3500000.0, U&' \2022 Gulung Rotor  PR 3201 / H 278 / Service Dinamo Mesin Las 12 KW  PR 3201 / H 278', TIMESTAMP '2024-03-06 10:10:55.657', 3500000.0, 1.36692E8, 2.5934432E7);
INSERT INTO O_306 VALUES('240131003006', '240131003000', '7016', 4000000.0, U&' \2022 Gulung Stator  PR 3201 / H 278', TIMESTAMP '2024-03-06 10:10:55.657', 4000000.0, 1.40692E8, 2.1934432E7);
INSERT INTO O_306 VALUES('240131003007', '240131003000', '7016', 500000.0, U&' \2022 2 Pcs Bearing 6309 @ Rp250.000  PR 3201 / H 278', TIMESTAMP '2024-03-06 10:10:55.657', 500000.0, 1.41192E8, 2.1434432E7);
INSERT INTO O_306 VALUES('240131003008', '240131003000', '7016', 228000.0, '6,5 Kg Rantai u/ TR Hauling  PR 3225 / H 199', TIMESTAMP '2024-03-06 10:10:55.657', 228000.0, 1.4142E8, 2.1206432E7);
INSERT INTO O_306 VALUES('240131003009', '240131003000', '7016', 250000.0, '1 Pcs Ring Piston u/ Mesin Cacer W-Shop  PR 3225 / H 199', TIMESTAMP '2024-03-06 10:10:55.657', 250000.0, 1.4167E8, 2.0956432E7);
INSERT INTO O_306 VALUES('240131003010', '240131003000', '7016', 105000.0, '30 Pcs Baut M10 X 50 @ Rp3.500 u/ TR Hauling PR 3225 / H 199', TIMESTAMP '2024-03-06 10:10:55.657', 105000.0, 1.41775E8, 2.0851432E7);
INSERT INTO O_306 VALUES('240131003011', '240131003000', '7016', 60000.0, '20 Pcs Baut M10 X 40 @ Rp3.000 u/ TR Hauling PR 3225 / H 199', TIMESTAMP '2024-03-06 10:10:55.657', 60000.0, 1.41835E8, 2.0791432E7);
INSERT INTO O_306 VALUES('240131003012', '240131003000', '7016', 80000.0, '200 Pcs Ring Plat M10 @ Rp400 u/ TR Hauling PR 3225 / H 199', TIMESTAMP '2024-03-06 10:10:55.657', 80000.0, 1.41915E8, 2.0711432E7);
INSERT INTO O_306 VALUES('240131003013', '240131003000', '7016', 55000.0, '1 Pcs Gunting Seng u/ Gudang PR 3225 / H 199', TIMESTAMP '2024-03-06 10:10:55.657', 55000.0, 1.4197E8, 2.0656432E7);
INSERT INTO O_306 VALUES('240131003014', '240131003000', '7016', 70000.0, '1 Pcs Mata Bor 9  u/ Gudang  PR 3225 / H 199', TIMESTAMP '2024-03-06 10:10:55.657', 70000.0, 1.4204E8, 2.0586432E7);
INSERT INTO O_306 VALUES('240131003015', '240131003000', '7016', 180000.0, '10 Meter Selang Benang 1  u/ Tangki FT-01  PR 3225 / H 199', TIMESTAMP '2024-03-06 10:10:55.657', 180000.0, 1.4222E8, 2.0406432E7);
INSERT INTO O_306 VALUES('240131003016', '240131003000', '7016', 48000.0, '4 Pcs Baut 88 M10 X 60 + R2 @ Rp12.000 u/ PC 400 - 01 PR 3225 / H 199', TIMESTAMP '2024-03-06 10:10:55.657', 48000.0, 1.42268E8, 2.0358432E7);
INSERT INTO O_306 VALUES('240131003017', '240131003000', '7016', 500000.0, '1 Pcs Seal Crankshaft Belakang u/ TR 10  PR 3228 / H 766', TIMESTAMP '2024-03-06 10:10:55.657', 500000.0, 1.42768E8, 1.9858432E7);
INSERT INTO O_306 VALUES('240131003018', '240131003000', '7016', 700000.0, '2 Pcs Tutup Tangki Solar (Hino 500) u/ TR 82 dan TR 40 PR 3228 / H 766', TIMESTAMP '2024-03-06 10:10:55.657', 700000.0, 1.43468E8, 1.9158432E7);
INSERT INTO O_306 VALUES('240131003019', '240131003000', '7016', 2670000.0, '267 Kg (4 Lembar) Besi Plat 6 ml u/ Tambal Bak TR - OB PR 3228 / H 766', TIMESTAMP '2024-03-06 10:10:55.657', 2670000.0, 1.46138E8, 1.6488432E7);
INSERT INTO O_306 VALUES('240131003020', '240131003000', '7016', 850000.0, '1 Pcs Master Rem Atas (B/M HT 130) u/ Manhaul 01 PR 3228 / H 766', TIMESTAMP '2024-03-06 10:10:55.657', 850000.0, 1.46988E8, 1.5638432E7);
INSERT INTO O_306 VALUES('240131003021', '240131003000', '7016', 1080000.0, '4 Pcs Kampas Rem Belakang X-Power LR - 4PC u/ Manhaul 01 PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.657', 1080000.0, 1.48068E8, 1.4558432E7);
INSERT INTO O_306 VALUES('240131003022', '240131003000', '7016', 115000.0, '5 Pcs Silikon Red (Lem Red Bsr) u/ Stok  PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.657', 115000.0, 1.48183E8, 1.4443432E7);
INSERT INTO O_306 VALUES('240131003023', '240131003000', '7016', 250000.0, 'Kampas Rem Depan Hilux 46165 oke340 u/ L 9205 GH PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.657', 250000.0, 1.48433E8, 1.4193432E7);
INSERT INTO O_306 VALUES('240131003024', '240131003000', '7016', 400000.0, 'Kampas Rem Belakang (Hilux Rr) u/ L 9205 GH  PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.657', 400000.0, 1.48833E8, 1.3793432E7);
INSERT INTO O_306 VALUES('240131003025', '240131003000', '7016', 350000.0, '2 Pcs Kabel Gas Hino SF802 - 53121 u/ TR 09 dan Stok PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.657', 350000.0, 1.49183E8, 1.3443432E7);
INSERT INTO O_306 VALUES('240131003026', '240131003000', '7016', 595000.0, '7 Batang Besi (Betoneser) 10  u/ Pengaman Kaca PC400 - 02 PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.657', 595000.0, 1.49778E8, 1.2848432E7);
INSERT INTO O_306 VALUES('240131003027', '240131003000', '7016', 30000.0, '1 Pcs Kopler 1/2  Cewe u/ Kompresor  PR 3237 / H 166', TIMESTAMP '2024-03-06 10:10:55.657', 30000.0, 1.49808E8, 1.2818432E7);
INSERT INTO O_306 VALUES('240131003028', '240131003000', '7016', 40000.0, '1 Pcs Kopler 1/2  Cowo u/ Kompresor  PR 3237 / H 166', TIMESTAMP '2024-03-06 10:10:55.657', 40000.0, 1.49848E8, 1.2778432E7);
INSERT INTO O_306 VALUES('240131003029', '240131003000', '7016', 112500.0, '45 Pcs Sekring Kecil 10-15-20 @ Rp2.500  u/ Stok PR 3237 / H 166', TIMESTAMP '2024-03-06 10:10:55.657', 112500.0, 1.499605E8, 1.2665932E7);
INSERT INTO O_306 VALUES('240131003030', '240131003000', '7016', 112500.0, '45 Pcs Sekring Besar 10-15-20 @ Rp2.500  u/ Stok PR 3237 / H 166', TIMESTAMP '2024-03-06 10:10:55.657', 112500.0, 1.50073E8, 1.2553432E7);
INSERT INTO O_306 VALUES('240131003031', '240131003000', '7016', 95000.0, '1 Pcs Stopkran 1/2  u/ Kompresor  PR 3237 / H 166', TIMESTAMP '2024-03-06 10:10:55.657', 95000.0, 1.50168E8, 1.2458432E7);
INSERT INTO O_306 VALUES('240131003032', '240131003000', '7016', 50000.0, '2 Pcs Double Nepel 1/2  u/ Kompresor PR 3237 / H 166', TIMESTAMP '2024-03-06 10:10:55.657', 50000.0, 1.50218E8, 1.2408432E7);
INSERT INTO O_306 VALUES('240131003033', '240131003000', '7016', 60000.0, '5 Pcs Amplas Gerinda @ Rp12.000 u/ Stok  PR 3237 / H 166', TIMESTAMP '2024-03-06 10:10:55.657', 60000.0, 1.50278E8, 1.2348432E7);
INSERT INTO O_306 VALUES('240131003034', '240131003000', '7016', 40000.0, '2 Pcs Lakban Hitam @ Rp20.000 u/ Gudang  PR 3237 / H 166', TIMESTAMP '2024-03-06 10:10:55.657', 40000.0, 1.50318E8, 1.2308432E7);
INSERT INTO O_306 VALUES('240131003035', '240131003000', '7016', 55000.0, '1 Pcs Gergaji Besi u/ Gudang  PR 3237 / H 166', TIMESTAMP '2024-03-06 10:10:55.657', 55000.0, 1.50373E8, 1.2253432E7);
INSERT INTO O_306 VALUES('240131003036', '240131003000', '7017', 300000.0, '10 Pcs Lampu Arius 15 Watt @ Rp30.000 u/ Stok  PR 3223 / H 819', TIMESTAMP '2024-03-06 10:10:55.657', 300000.0, 3.02985461E8, 1.1953432E7);
INSERT INTO O_306 VALUES('240131003037', '240131003000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart', TIMESTAMP '2024-03-06 10:10:55.657', 50000.0, 9310000.0, 1.1903432E7);
INSERT INTO O_306 VALUES('240131003038', '240131003000', '7017', 1000000.0, '30 Pcs Wheel Chock (Ganjal Ban)  PR 4371 / H 334', TIMESTAMP '2024-03-06 10:10:55.673', 1000000.0, 3.03985461E8, 1.0903432E7);
INSERT INTO O_306 VALUES('240131003039', '240131003000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-03-06 10:10:55.673', 500000.0, 3.04485461E8, 1.0403432E7);
INSERT INTO O_306 VALUES('240131003040', '240131003000', '7017', 63000.0, 'Bayar JNE u/ Pengiriman Dokumen (LKH 039) Melak - Surabaya', TIMESTAMP '2024-03-06 10:10:55.673', 63000.0, 3.04548461E8, 1.0340432E7);
INSERT INTO O_306 VALUES('240131003041', '240131003000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Pengambilan 100 Lembar spandex', TIMESTAMP '2024-03-06 10:10:55.673', 50000.0, 9360000.0, 1.0290432E7);
INSERT INTO O_306 VALUES('240131003042', '240131003000', '7017', 750000.0, 'Pengganti Bensin Perahu Penyeberangan Karyawan Periode', TIMESTAMP '2024-03-06 10:10:55.673', 750000.0, 3.05298461E8, 9540432.0);
INSERT INTO O_306 VALUES('240131003043', '240131003000', '7017', 3000000.0, 'Tambahan Insentif a/n Munas (HRD PT. DBP) selama Diperbantukan di PT. Dhako Unit Muara Batuq, Desember 2023', TIMESTAMP '2024-03-06 10:10:55.673', 3000000.0, 3.08298461E8, 6540432.0);
INSERT INTO O_306 VALUES('240131003044', '240131003000', '7017', 106000.0, 'Bayar Konsumsi u/ Commissioning (BISM) DT Hauling tgl 2 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 106000.0, 3.08404461E8, 6434432.0);
INSERT INTO O_306 VALUES('240131003045', '240131003000', '7017', 137000.0, 'Bayar Konsumsi u/ Commissioning (BISM) DT Hauling tgl 5 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 137000.0, 3.08541461E8, 6297432.0);
INSERT INTO O_306 VALUES('240131003046', '240131003000', '7017', 50000.0, '1 Pcs Kabel Power CPU u/ Admin Produksi  PR 3228 / H 766', TIMESTAMP '2024-03-06 10:10:55.673', 50000.0, 3.08591461E8, 6247432.0);
INSERT INTO O_306 VALUES('240131003047', '240131003000', '7017', 170000.0, '1 Pcs Kabel VGA u/ Komputer Admin Produksi PR3228 / H 766', TIMESTAMP '2024-03-06 10:10:55.673', 170000.0, 3.08761461E8, 6077432.0);
INSERT INTO O_306 VALUES('240131003048', '240131003000', '7017', 200000.0, 'Biaya Service CPU u/ Admin Produksi  PR 3228 / H 766', TIMESTAMP '2024-03-06 10:10:55.673', 200000.0, 3.08961461E8, 5877432.0);
INSERT INTO O_306 VALUES('240131003049', '240131003000', '7017', 180000.0, '3 Kg Kawat Las RD 460 - 2 mm u/ Stok  PR 3228 / H 766', TIMESTAMP '2024-03-06 10:10:55.673', 180000.0, 3.09141461E8, 5697432.0);
INSERT INTO O_306 VALUES('240131003050', '240131003000', '7017', 47000.0, 'Biaya Pengiriman Tiki (Contoh Sparepart) Melak - Surabaya', TIMESTAMP '2024-03-06 10:10:55.673', 47000.0, 3.09188461E8, 5650432.0);
INSERT INTO O_306 VALUES('240131003051', '240131003000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart', TIMESTAMP '2024-03-06 10:10:55.673', 50000.0, 9410000.0, 5600432.0);
INSERT INTO O_306 VALUES('240131003052', '240131003000', '7017', 65000.0, '1 Pcs Adaptor (Ca85) u/ Komputer Admin Produksi', TIMESTAMP '2024-03-06 10:10:55.673', 65000.0, 3.09253461E8, 5535432.0);
INSERT INTO O_306 VALUES('240131003053', '240131003000', '7006', 50000.0, 'Penyeberangan PP L 9205 GH Mengambil (Angkut) Keramik u/ Makam Bapak Suwidi', TIMESTAMP '2024-03-06 10:10:55.673', 50000.0, 9460000.0, 5485432.0);
INSERT INTO O_306 VALUES('240131003054', '240131003000', '7001', 2985417.0, 'Gaji 1 Desember 2023 - 31 Desember 2023 Pembayaran Gaji dan Kompensasi a/n Edi Gunawan (Driver DT OB)', TIMESTAMP '2024-03-06 10:10:55.673', 2985417.0, 3.08359135E8, 2500015.0);
INSERT INTO O_306 VALUES('240131003055', '240131003000', '7001', 1814213.0, 'Gaji 1 Januari 2024 - 20 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1814213.0, 3.10173348E8, 685802.0);
INSERT INTO O_306 VALUES('240131003056', '240131003000', '7001', 887800.0, 'Kompensasi Per November 2023', TIMESTAMP '2024-03-06 10:10:55.673', 887800.0, 3.11061148E8, -201998.0);
INSERT INTO O_306 VALUES('240131003057', '240131003000', '7001', 591866.0, 'Kompensasi Per Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 591866.0, 3.11653014E8, -793864.0);
INSERT INTO O_306 VALUES('240131003058', '240131003000', '7001', 640000.0, 'Piket Genset Penerangan Periode 1 Jan 2024 - 10 Jan 2024 (10 Hari X Rp64.000)', TIMESTAMP '2024-03-06 10:10:55.673', 640000.0, 3.12293014E8, -1433864.0);
INSERT INTO O_306 VALUES('240131003059', '240131003000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-03-06 10:10:55.673', 500000.0, 3.09753461E8, -1933864.0);
INSERT INTO O_306 VALUES('240131003060', '240131003000', '7017', 130000.0, '2 Pcs Sprei @ Rp65.000 u/ Mess KM 18  PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.673', 130000.0, 3.09883461E8, -2063864.0);
INSERT INTO O_306 VALUES('240131003061', '240131003000', '7017', 100000.0, '2 Pcs Bantal @ Rp50.000 u/ Mess KM 18  PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.673', 100000.0, 3.09983461E8, -2163864.0);
INSERT INTO O_306 VALUES('240131003062', '240131003000', '7017', 600000.0, '1 Tabung Acetylene u/ W-Shop  PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.673', 600000.0, 3.10583461E8, -2763864.0);
INSERT INTO O_306 VALUES('240131003063', '240131003000', '7017', 85000.0, '1 Pcs Keyboard Komputer M-Tech u/ Admin Produksi PR3236 / H809', TIMESTAMP '2024-03-06 10:10:55.673', 85000.0, 3.10668461E8, -2848864.0);
INSERT INTO O_306 VALUES('240131003064', '240131003000', '7017', 370000.0, '2 Rim Cetakan P2H (Cetakan 2 Rim 2ply) PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.673', 370000.0, 3.11038461E8, -3218864.0);
INSERT INTO O_306 VALUES('240131003065', '240131003000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Mengambil Oli di UT (5 Drum),', TIMESTAMP '2024-03-06 10:10:55.673', 50000.0, 9510000.0, -3268864.0);
INSERT INTO O_306 VALUES('240131003066', '240131003000', '7017', 240000.0, '20 Meter Selang 5/8 u/ Selang AC Kantor  PR 3223 / H 819', TIMESTAMP '2024-03-06 10:10:55.673', 240000.0, 3.11278461E8, -3508864.0);
INSERT INTO O_306 VALUES('240131003067', '240131003000', '7017', 75000.0, '30 Pcs Lampu 24 V @ Rp2.500 u/ Stok  PR 3223 / H 819', TIMESTAMP '2024-03-06 10:10:55.673', 75000.0, 3.11353461E8, -3583864.0);
INSERT INTO O_306 VALUES('240131003068', '240131003000', '7017', 100000.0, '5 Dus Air Gelas Multazam @ Rp20.000 u/ Minum Tukang', TIMESTAMP '2024-03-06 10:10:55.673', 100000.0, 3.11453461E8, -3683864.0);
INSERT INTO O_306 VALUES('240131003069', '240131003000', '7017', 350000.0, '10 Pcs Konektor Kabel SR @ Rp35.000 u/ Kantor Kontainer PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.673', 350000.0, 3.11803461E8, -4033864.0);
INSERT INTO O_306 VALUES('240131003070', '240131003000', '7017', 600000.0, '6 Meter Pipa AC @ Rp100.000 u/ Kantor Kontainer PR 3236 / H 809', TIMESTAMP '2024-03-06 10:10:55.673', 600000.0, 3.12403461E8, -4633864.0);
INSERT INTO O_306 VALUES('240131003071', '240131003000', '7006', 900000.0, 'Transport Darat  Melak -Balikpapan PP (Cuti Periodik) tgl 24 Desember 2023 dan 9 Januari 2024 @ Rp450.000', TIMESTAMP '2024-03-06 10:10:55.673', 900000.0, 1.041E7, -5533864.0);
INSERT INTO O_306 VALUES('240131003072', '240131003000', '7006', 35000.0, 'Transport DAMRI dari Bandara ke Bungurasih (25 Des 2023)', TIMESTAMP '2024-03-06 10:10:55.673', 35000.0, 1.0445E7, -5568864.0);
INSERT INTO O_306 VALUES('240131003073', '240131003000', '7006', 35000.0, 'Transport DAMRI dari Bungurasih ke Bandara (9 Januari 2024)', TIMESTAMP '2024-03-06 10:10:55.673', 35000.0, 1.048E7, -5603864.0);
INSERT INTO O_306 VALUES('240131003074', '240131003000', '7003', 320000.0, 'Bayar Tambahan Uang Makan (Buka Gudang & Tunggu Mekanik) Periode 21 Des 2023 s/d 31 Des 2023', TIMESTAMP '2024-03-06 10:10:55.673', 320000.0, 320000.0, -5923864.0);
INSERT INTO O_306 VALUES('240131003075', '240131003000', '7003', 1700000.0, 'UM Desanto Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1700000.0, 2020000.0, -7623864.0);
INSERT INTO O_306 VALUES('240131003076', '240131003000', '7003', 1400000.0, 'UM Slamet Subagyo Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1400000.0, 3420000.0, -9023864.0);
INSERT INTO O_306 VALUES('240131003077', '240131003000', '7003', 1400000.0, 'UM Syaifullah Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1400000.0, 4820000.0, -1.0423864E7);
INSERT INTO O_306 VALUES('240131003078', '240131003000', '7003', 930000.0, 'UM Haqqul Istaflaha Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 930000.0, 5750000.0, -1.1353864E7);
INSERT INTO O_306 VALUES('240131003079', '240131003000', '7003', 1100000.0, 'UM Sarjito F. Adam Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1100000.0, 6850000.0, -1.2453864E7);
INSERT INTO O_306 VALUES('240131003080', '240131003000', '7003', 450000.0, 'UM Samuel Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 450000.0, 7300000.0, -1.2903864E7);
INSERT INTO O_306 VALUES('240131003081', '240131003000', '7003', 600000.0, 'UM Jakaria Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 600000.0, 7900000.0, -1.3503864E7);
INSERT INTO O_306 VALUES('240131003082', '240131003000', '7003', 1170000.0, 'UM Didik Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1170000.0, 9070000.0, -1.4673864E7);
INSERT INTO O_306 VALUES('240131003083', '240131003000', '7003', 1600000.0, 'UM Go Oei Hap Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1600000.0, 1.067E7, -1.6273864E7);
INSERT INTO O_306 VALUES('240131003084', '240131003000', '7003', 1400000.0, 'UM Syamsudin Noor Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1400000.0, 1.207E7, -1.7673864E7);
INSERT INTO O_306 VALUES('240131003085', '240131003000', '7003', 1400000.0, 'UM Supriyanto Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1400000.0, 1.347E7, -1.9073864E7);
INSERT INTO O_306 VALUES('240131003086', '240131003000', '7003', 1400000.0, 'UM Handriadi Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1400000.0, 1.487E7, -2.0473864E7);
INSERT INTO O_306 VALUES('240131003087', '240131003000', '7003', 1400000.0, 'UM Wijanarko Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1400000.0, 1.627E7, -2.1873864E7);
INSERT INTO O_306 VALUES('240131003088', '240131003000', '7003', 280000.0, 'UM Sekhan Periode 9 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 280000.0, 1.655E7, -2.2153864E7);
INSERT INTO O_306 VALUES('240131003089', '240131003000', '7003', 1050000.0, 'UM Mauretius Oji Periode 1 Januari - 10 Januari 2024', TIMESTAMP '2024-03-06 10:10:55.673', 1050000.0, 1.76E7, -2.3203864E7);
INSERT INTO O_306 VALUES('240131003090', '240131003000', '7016', 896630.0, 'Pembelian Sparepart Des 2023', TIMESTAMP '2024-03-06 10:10:55.673', 896630.0, 1.5126963E8, -2.4100494E7);
INSERT INTO O_306 VALUES('240131005001', '240131005000', '7017', 65000.0, '1 Pcs Sprei u/ Bp. Suradi (Pengawas)  PR 2253 / H 544', TIMESTAMP '2024-03-06 10:36:26.121', 65000.0, 3.17490571E8, -6.9098994E7);
INSERT INTO O_306 VALUES('240131005002', '240131005000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-03-06 10:36:26.122', 500000.0, 3.17990571E8, -6.9598994E7);
INSERT INTO O_306 VALUES('240131005003', '240131005000', '7006', 1403349.0, 'Biaya Perjalanan Dinas ke Site Melak dan ke Samarinda u/ Menanyakan Harga-harga Peralatan Kantor (12 Jan - 14 Jan 2024)', TIMESTAMP '2024-03-06 10:36:26.122', 1403349.0, 2.4183349E7, -7.1002343E7);
INSERT INTO O_306 VALUES('240131005004', '240131005000', '7017', 18000.0, '6 Sachet Sabun Ekonomi u/ W-Shop @ Rp3.000', TIMESTAMP '2024-03-06 10:36:26.122', 18000.0, 3.18008571E8, -7.1020343E7);
INSERT INTO O_306 VALUES('240131005005', '240131005000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Sparepart dan Mengantar Karyawan (Handriadi) ke Melak (Cuti Periodik)', TIMESTAMP '2024-03-06 10:36:26.122', 50000.0, 2.4233349E7, -7.1070343E7);
INSERT INTO O_306 VALUES('240131005006', '240131005000', '7001', 591867.0, 'Pembayaran Kompensasi Periode Desember 2023 a/n Naran (Op. Excavator) Periode PKWT 11 Okt 2023 s/d 10 Des 2023', TIMESTAMP '2024-03-06 10:36:26.123', 591867.0, 3.17191771E8, -7.166221E7);
INSERT INTO O_306 VALUES('240131005007', '240131005000', '7001', 295933.0, 'Pembayaran Kompensasi Periode Desember 2023 a/n Joel (Op. Excavator) Periode PKWT 24 Nov 2023 s/d 22 Des 2023', TIMESTAMP '2024-03-06 10:36:26.123', 295933.0, 3.17487704E8, -7.1958143E7);
INSERT INTO O_306 VALUES('240131005008', '240131005000', '7022', 1500000.0, 'Bantuan Sosial u/ Pengurus Muyub Ilir Periode Januari 2024', TIMESTAMP '2024-03-06 10:36:26.123', 1500000.0, 4000000.0, -7.3458143E7);
INSERT INTO O_306 VALUES('240131005009', '240131005000', '7001', 640000.0, 'Piket Genset Penerangan Periode 11 Jan 2024 - 20 Jan 2024 (10 Hari X Rp64.000)', TIMESTAMP '2024-03-06 10:36:26.123', 640000.0, 3.18127704E8, -7.4098143E7);
INSERT INTO O_306 VALUES('240131005010', '240131005000', '7010', 6500.0, 'Biaya Admin u/ Transfer ke Bp. Nalaw Aldistia (16 Jan 2024)', TIMESTAMP '2024-03-06 10:36:26.123', 6500.0, 6500.0, -7.4104643E7);
INSERT INTO O_306 VALUES('240131005011', '240131005000', '7017', 1000000.0, 'Biaya Borongan Pasang AC (8 Unit) u/ Kantor dan R. Meeting', TIMESTAMP '2024-03-06 10:36:26.123', 1000000.0, 3.19008571E8, -7.5104643E7);
INSERT INTO O_306 VALUES('240131005012', '240131005000', '7017', 300000.0, '1 Tabung Oksigen u/ Kontainer KM 18  PR 2255 / H 223', TIMESTAMP '2024-03-06 10:36:26.123', 300000.0, 3.19308571E8, -7.5404643E7);
INSERT INTO O_306 VALUES('240131005013', '240131005000', '7017', 275000.0, '1 Tabung LPG 12 Kg u/ Kontainer KM 18  PR 2255 / H 223', TIMESTAMP '2024-03-06 10:36:26.123', 275000.0, 3.19583571E8, -7.5679643E7);
INSERT INTO O_306 VALUES('240131005014', '240131005000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak (Kedatangan) tgl 12 Jan  24', TIMESTAMP '2024-03-06 10:36:26.123', 450000.0, 2.4683349E7, -7.6129643E7);
INSERT INTO O_306 VALUES('240131005015', '240131005000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak (Kedatangan) tgl 12 Jan  24', TIMESTAMP '2024-03-06 10:36:26.125', 450000.0, 2.5133349E7, -7.6579643E7);
INSERT INTO O_306 VALUES('240131005016', '240131005000', '7003', 320000.0, 'Bayar Tambahan Uang Makan (Buka Gudang, Tunggu Mekanik,dan Belanja) Periode 1 Jan 2024 s/d 10 Jan 2024', TIMESTAMP '2024-03-06 10:36:26.127', 320000.0, 2.4125E7, -7.6899643E7);
INSERT INTO O_306 VALUES('240131005017', '240131005000', '7003', 840000.0, 'Uang Makan dan Tunjangan Hadir Periode 11 Jan - 16 Jan 2024', TIMESTAMP '2024-03-06 10:36:26.127', 840000.0, 2.4965E7, -7.7739643E7);
INSERT INTO O_306 VALUES('240131005018', '240131005000', '7003', 1400000.0, 'Uang Makan dan Tunjangan Hadir Periode 11 Jan - 20 Jan 2024', TIMESTAMP '2024-03-06 10:36:26.127', 1400000.0, 2.6365E7, -7.9139643E7);
INSERT INTO O_306 VALUES('240131005019', '240131005000', '7003', 450000.0, 'UM Desanto Periode 21 Jan - 23 Jan 2024 (Selesai Kontrak)', TIMESTAMP '2024-03-06 10:36:26.133', 450000.0, 2.6815E7, -7.9589643E7);
INSERT INTO O_306 VALUES('240131005020', '240131005000', '7003', 1500000.0, 'UM Desanto Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 1500000.0, 2.8315E7, -8.1089643E7);
INSERT INTO O_306 VALUES('240131005021', '240131005000', '7003', 1400000.0, 'UM Slamet Subagyo Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 1400000.0, 2.9715E7, -8.2489643E7);
INSERT INTO O_306 VALUES('240131005022', '240131005000', '7003', 1100000.0, 'UM Haqqul I. Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 1100000.0, 3.0815E7, -8.3589643E7);
INSERT INTO O_306 VALUES('240131005023', '240131005000', '7003', 1100000.0, 'UM Sarjito Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 1100000.0, 3.1915E7, -8.4689643E7);
INSERT INTO O_306 VALUES('240131005024', '240131005000', '7003', 375000.0, 'UM Samuel Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 375000.0, 3.229E7, -8.5064643E7);
INSERT INTO O_306 VALUES('240131005025', '240131005000', '7003', 675000.0, 'UM Jakaria Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 675000.0, 3.2965E7, -8.5739643E7);
INSERT INTO O_306 VALUES('240131005026', '240131005000', '7003', 1170000.0, 'UM Didik Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 1170000.0, 3.4135E7, -8.6909643E7);
INSERT INTO O_306 VALUES('240131005027', '240131005000', '7003', 1400000.0, 'UM Go Oei Hap Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 1400000.0, 3.5535E7, -8.8309643E7);
INSERT INTO O_306 VALUES('240131005028', '240131005000', '7003', 1400000.0, 'UM Syamsudin N. Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 1400000.0, 3.6935E7, -8.9709643E7);
INSERT INTO O_306 VALUES('240131005029', '240131005000', '7003', 1400000.0, 'UM Wijanarko Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.133', 1400000.0, 3.8335E7, -9.1109643E7);
INSERT INTO O_306 VALUES('240131005030', '240131005000', '7003', 1400000.0, 'UM Sekhan Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 1400000.0, 3.9735E7, -9.2509643E7);
INSERT INTO O_306 VALUES('240131005031', '240131005000', '7003', 1050000.0, 'UM Mauretius Oji Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 1050000.0, 4.0785E7, -9.3559643E7);
INSERT INTO O_306 VALUES('240131005032', '240131005000', '7003', 1400000.0, 'UM Anna Qodri Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 1400000.0, 4.2185E7, -9.4959643E7);
INSERT INTO O_306 VALUES('240131005033', '240131005000', '7003', 945000.0, 'UM Raju Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 945000.0, 4.313E7, -9.5904643E7);
INSERT INTO O_306 VALUES('240131005034', '240131005000', '7003', 1400000.0, 'UM Yono S. Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 1400000.0, 4.453E7, -9.7304643E7);
INSERT INTO O_306 VALUES('240131005035', '240131005000', '7003', 1170000.0, 'UM Andri S. Periode 11 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 1170000.0, 4.57E7, -9.8474643E7);
INSERT INTO O_306 VALUES('240131005036', '240131005000', '7003', 1350000.0, 'UM Rinaldhie G. Periode 12 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 1350000.0, 4.705E7, -9.9824643E7);
INSERT INTO O_306 VALUES('240131005037', '240131005000', '7003', 1350000.0, 'UM M. Hafizhni Periode 12 Januari - 20 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 1350000.0, 4.84E7, -1.01174643E8);
INSERT INTO O_306 VALUES('240131005038', '240131005000', '7003', 1500000.0, 'Kasbon Potong Uang Makan Periode 11 Jan - 20 Jan 2024', TIMESTAMP '2024-03-06 10:36:26.135', 1500000.0, 4.99E7, -1.02674643E8);
INSERT INTO O_306 VALUES('240131005039', '240131005000', '7001', 700000.0, 'Kasbon Potong Gaji Periode Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 700000.0, 3.18827704E8, -1.03374643E8);
INSERT INTO O_306 VALUES('240131005040', '240131005000', '7001', 2000000.0, 'Kasbon Potong Gaji Periode Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 2000000.0, 3.20827704E8, -1.05374643E8);
INSERT INTO O_306 VALUES('240131005041', '240131005000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Januari 2024', TIMESTAMP '2024-03-06 10:36:26.135', 500000.0, 3.21327704E8, -1.05874643E8);
INSERT INTO O_306 VALUES('240131005042', '240131005000', '7016', 757000.0, 'Tie Rod End L/R u/ TR 06  PR 2256 / H 243', TIMESTAMP '2024-03-06 10:36:26.135', 757000.0, 1.6465313E8, -1.06631643E8);
INSERT INTO O_306 VALUES('240131005043', '240131005000', '7016', 60000.0, '1 Meter Selang Angin (Presto) 12  u/ Stok  PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.135', 60000.0, 1.6471313E8, -1.06691643E8);
INSERT INTO O_306 VALUES('240131005044', '240131005000', '7016', 90000.0, '1 Meter Selang Angin (Presto) 14  u/ Stok  PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.135', 90000.0, 1.6480313E8, -1.06781643E8);
INSERT INTO O_306 VALUES('240131005045', '240131005000', '7016', 330000.0, '3 Meter Selang Angin (Presto) 16  u/ TR 76  PR 2259 / H871', TIMESTAMP '2024-03-06 10:36:26.135', 330000.0, 1.6513313E8, -1.07111643E8);
INSERT INTO O_306 VALUES('240131005046', '240131005000', '7016', 300000.0, '1 Set Lever Kit Assy (Stelan Rem Belakang Kiri) u/ N 9811 EE PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.135', 300000.0, 1.6543313E8, -1.07411643E8);
INSERT INTO O_306 VALUES('240131005047', '240131005000', '7016', 600000.0, '1 Pcs Cable Assy (Kabel Hand Rem Kiri) u/ N 9811 EE PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.135', 600000.0, 1.6603313E8, -1.08011643E8);
INSERT INTO O_306 VALUES('240131005048', '240131005000', '7016', 165000.0, '1 Pcs W/C Hilux (Kas Rem Belakang Kanan) u/ N 9811 EE PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.135', 165000.0, 1.6619813E8, -1.08176643E8);
INSERT INTO O_306 VALUES('240131005049', '240131005000', '7016', 185000.0, '1 Pcs Stelan Rem Hilux Belakang Kanan u/ N 9811 EE  PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.136', 185000.0, 1.6638313E8, -1.08361643E8);
INSERT INTO O_306 VALUES('240131005050', '240131005000', '7016', 1575000.0, '1 Pcs Pompa Power Steering u/ N 9811 EE  PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.136', 1575000.0, 1.6795813E8, -1.09936643E8);
INSERT INTO O_306 VALUES('240131005051', '240131005000', '7016', 585000.0, '1 Pcs Kampas Rem Belakang u/ N 9811 EE  PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.136', 585000.0, 1.6854313E8, -1.10521643E8);
INSERT INTO O_306 VALUES('240131005052', '240131005000', '7016', 500000.0, '4 Pcs Baut Dingdong Pendek u/ TR 08  PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.136', 500000.0, 1.6904313E8, -1.11021643E8);
INSERT INTO O_306 VALUES('240131005053', '240131005000', '7016', 600000.0, '4 Pcs Baut Dingdong Panjang u/ TR 08  PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.136', 600000.0, 1.6964313E8, -1.11621643E8);
INSERT INTO O_306 VALUES('240131005054', '240131005000', '7016', 150000.0, '1 Pcs Ring Injector Hilux u/ N 8993 AT', TIMESTAMP '2024-03-06 10:36:26.136', 150000.0, 1.6979313E8, -1.11771643E8);
INSERT INTO O_306 VALUES('240131005055', '240131005000', '7016', 30000.0, '10 Pcs Ring Kuningan K12 u/ Genset Mitsubishi PR 2260 / 278', TIMESTAMP '2024-03-06 10:36:26.136', 30000.0, 1.6982313E8, -1.11801643E8);
INSERT INTO O_306 VALUES('240131005056', '240131005000', '7016', 630000.0, '3 Set Hose Assy 1/2  X 0,71 M c/w Fitting Indle / Ripper u/ Stok @ Rp210.000  PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.136', 630000.0, 1.7045313E8, -1.12431643E8);
INSERT INTO O_306 VALUES('240131005057', '240131005000', '7016', 570000.0, '3 Set Hose Assy 1/2  X 0,71 M / Ripper u/ Stock @ Rp190.000 PR 2260 / H 278', TIMESTAMP '2024-03-06 10:36:26.136', 570000.0, 1.7102313E8, -1.13001643E8);
INSERT INTO O_306 VALUES('240131005058', '240131005000', '7017', 50000.0, '5 Pcs Lem Korea u/ Stok @ Rp10.000  PR 2257 / H 122', TIMESTAMP '2024-03-06 10:36:26.136', 50000.0, 3.19633571E8, -1.13051643E8);
INSERT INTO O_306 VALUES('240131005059', '240131005000', '7017', 36000.0, '2 Pcs Lakban Bening u/ Stok @ Rp18.000  PR 2257 / H 122', TIMESTAMP '2024-03-06 10:36:26.136', 36000.0, 3.19669571E8, -1.13087643E8);
INSERT INTO O_306 VALUES('240131005060', '240131005000', '7017', 40000.0, '1 Pcs Bak u/ Mess KM 18', TIMESTAMP '2024-03-06 10:36:26.136', 40000.0, 3.19709571E8, -1.13127643E8);
INSERT INTO O_306 VALUES('240131005061', '240131005000', '7017', 30000.0, '1 Pcs Ember u/ Mess KM 18', TIMESTAMP '2024-03-06 10:36:26.136', 30000.0, 3.19739571E8, -1.13157643E8);
INSERT INTO O_306 VALUES('240131005062', '240131005000', '7017', 10000.0, '1 Pcs Gayung u/ Mess KM 18', TIMESTAMP '2024-03-06 10:36:26.136', 10000.0, 3.19749571E8, -1.13167643E8);
INSERT INTO O_306 VALUES('240131005063', '240131005000', '7017', 40000.0, '2 Pcs Cantolan Baju u/ Mess KM 18 @ Rp20.000', TIMESTAMP '2024-03-06 10:36:26.136', 40000.0, 3.19789571E8, -1.13207643E8);
INSERT INTO O_306 VALUES('240131005065', '240131005000', '7006', 280000.0, 'Bayar Penginapan Rumah Apollo di Samarinda a/n Go Oei Hap PR 2251', TIMESTAMP '2024-03-06 10:36:26.136', 280000.0, 2.5413349E7, -1.13487643E8);
INSERT INTO O_306 VALUES('240131005066', '240131005000', '7004', 120000.0, '2 Porsi Makan, 2 Porsi Minum tgl 18 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.136', 120000.0, 2.14795E8, -1.13607643E8);
INSERT INTO O_306 VALUES('240131005067', '240131005000', '7004', 135000.0, '2 Porsi Makan, 2 Porsi Minum tgl 19 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.136', 135000.0, 2.1493E8, -1.13742643E8);
INSERT INTO O_306 VALUES('240131005068', '240131005000', '7004', 160000.0, '2 Porsi Bakso tanpa Mie, 1 Soto Nasi Putih, 3 Es Jeruk, Pajak Restauran (10%) tanggal 19 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.136', 160000.0, 2.1509E8, -1.13902643E8);
INSERT INTO O_306 VALUES('240131005069', '240131005000', '7004', 145000.0, '3 Porsi Makan dan Minum tanggal 19 Januari 2024', TIMESTAMP '2024-03-06 10:36:26.136', 145000.0, 2.15235E8, -1.14047643E8);
INSERT INTO O_306 VALUES('240131005070', '240131005000', '7008', 100000.0, 'Cuci Mobil (Luar + Dalam) u/ L 8397 VB', TIMESTAMP '2024-03-06 10:36:26.136', 100000.0, 100000.0, -1.14147643E8);
INSERT INTO O_306 VALUES('240131005071', '240131005000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Sparepart dan Mengantar Karyawan ke Melak (Desanto - Selesai Kontrak)', TIMESTAMP '2024-03-06 10:36:26.136', 50000.0, 2.5463349E7, -1.14197643E8);
INSERT INTO O_306 VALUES('240131005072', '240131005000', '7017', 150000.0, '5 Pcs MCB 16 Ampere u/ Kantor @ Rp30.000 PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.136', 150000.0, 3.19939571E8, -1.14347643E8);
INSERT INTO O_306 VALUES('240131005073', '240131005000', '7017', 190000.0, '2 Kotak (20 Pcs) Mata Gerinda Potong u/ Stok ', TIMESTAMP '2024-03-06 10:36:26.137', 190000.0, 3.20129571E8, -1.14537643E8);
INSERT INTO O_306 VALUES('240131005074', '240131005000', '7017', 97000.0, '1 Set Terminal (Stop Kontak) Isi 4 X 3 Meter u/ Kantor PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.137', 97000.0, 3.20226571E8, -1.14634643E8);
INSERT INTO O_306 VALUES('240131005075', '240131005000', '7017', 405000.0, '3 Kotak (2 Kg) Kawat Las RD 460 - 2 mm u/ Stok PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.137', 405000.0, 3.20631571E8, -1.15039643E8);
INSERT INTO O_306 VALUES('240131005076', '240131005000', '7017', 130000.0, '2 Pcs Contact Cleaner Rexco u/ Stok @ Rp65.000 PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.137', 130000.0, 3.20761571E8, -1.15169643E8);
INSERT INTO O_306 VALUES('240131005077', '240131005000', '7017', 110000.0, '2 Pcs WD (Master MP80) u/ Stok @ Rp55.000  PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.137', 110000.0, 3.20871571E8, -1.15279643E8);
INSERT INTO O_306 VALUES('240131005078', '240131005000', '7017', 784000.0, '8 Set Terminal (Stop Kontak) Isi 4 X 3 Meter u/ Kantor @ Rp98.000 PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.137', 784000.0, 3.21655571E8, -1.16063643E8);
INSERT INTO O_306 VALUES('240131005079', '240131005000', '7017', 128000.0, '1 Set Terminal (Stop Kontak) Isi 4 X 5 Meter u/ Kantor PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.137', 128000.0, 3.21783571E8, -1.16191643E8);
INSERT INTO O_306 VALUES('240131005080', '240131005000', '7017', 100000.0, '2 Pcs Tribon Gray (Lem Tribon) u/ Stok @ Rp50.000 PR 2259 / H 871', TIMESTAMP '2024-03-06 10:36:26.137', 100000.0, 3.21883571E8, -1.16291643E8);
INSERT INTO O_306 VALUES('240131005081', '240131005000', '7006', 500000.0, 'Perjalanan (Speed Boat) dari Samarinda - Melak 21 Jan 2024', TIMESTAMP '2024-03-06 10:36:26.137', 500000.0, 2.5963349E7, -1.16791643E8);
INSERT INTO O_306 VALUES('240131005082', '240131005000', '7006', 5500.0, 'Retribusi Kapal Wisata', TIMESTAMP '2024-03-06 10:36:26.137', 5500.0, 2.5968849E7, -1.16797143E8);
INSERT INTO O_306 VALUES('240131005083', '240131005000', '7006', 7000.0, 'Retribusi Speed Boat', TIMESTAMP '2024-03-06 10:36:26.137', 7000.0, 2.5975849E7, -1.16804143E8);
INSERT INTO O_306 VALUES('240131005084', '240131005000', '7003', 440000.0, 'Bayar Tambahan Uang Makan (Buka Gudang, Tunggu Mekanik,Belanja, Perjalanan Dinas ke Samarinda) Per 11 Januari 2024 s/d', TIMESTAMP '2024-03-06 10:36:26.137', 440000.0, 5.034E7, -1.17244143E8);
INSERT INTO O_306 VALUES('240131005085', '240131005000', '7016', 336000.0, '2 Dus Air Zuur u/ Stok gudang PR 2262/H.988', TIMESTAMP '2024-03-06 10:36:26.137', 336000.0, 1.7135913E8, -1.17580143E8);
INSERT INTO O_306 VALUES('240131005086', '240131005000', '7016', 50000.0, '5 pc Isolasi Nasional u/Stok gudang  PR 2262/H.988', TIMESTAMP '2024-03-06 10:36:26.137', 50000.0, 1.7140913E8, -1.17630143E8);
INSERT INTO O_306 VALUES('240131005087', '240131005000', '7016', 25000.0, '5 pc Klem stenlis 1  u/stok  PR 2262/H.988', TIMESTAMP '2024-03-06 10:36:26.137', 25000.0, 1.7143413E8, -1.17655143E8);
INSERT INTO O_306 VALUES('240131005088', '240131005000', '7016', 40000.0, '5 pc Klem stenlis 1,5  u/stok  PR 2262/H.988', TIMESTAMP '2024-03-06 10:36:26.137', 40000.0, 1.7147413E8, -1.17695143E8);
INSERT INTO O_306 VALUES('240131005089', '240131005000', '7016', 70000.0, '2 pc sekring besar 30A u/ L8504 AJ PR2262/H.988', TIMESTAMP '2024-03-06 10:36:26.137', 70000.0, 1.7154413E8, -1.17765143E8);
INSERT INTO O_306 VALUES('240131015001', '240131015000', '7016', 150000.0, '2 pc stelan klep u/TR 07 PR2262/H.988', TIMESTAMP '2024-04-05 09:00:08.689', 150000.0, 1.7169413E8, 7.9584857E7);
INSERT INTO O_306 VALUES('240131015002', '240131015000', '7016', 5000.0, '1 pc seal debu u/ Dutro servis PR2262/H.988', TIMESTAMP '2024-04-05 09:00:08.689', 5000.0, 1.7169913E8, 7.9579857E7);
INSERT INTO O_306 VALUES('240131015003', '240131015000', '7016', 20000.0, '2 pc seal rem HT u/ Dutro servis PR2262/H.988', TIMESTAMP '2024-04-05 09:00:08.689', 20000.0, 1.7171913E8, 7.9559857E7);
INSERT INTO O_306 VALUES('240131015004', '240131015000', '7009', 156000.0, 'Ongkos Henicargo Penerusan Samarinda-Melak PR 3245-H.455', TIMESTAMP '2024-04-05 09:00:08.689', 156000.0, 359000.0, 7.9403857E7);
INSERT INTO O_306 VALUES('240131015005', '240131015000', '7016', 140000.0, '4 pc Bendera segi tiga u/L9502GH, N8993AT, N9811EE, L8039BX', TIMESTAMP '2024-04-05 09:00:08.689', 140000.0, 1.7185913E8, 7.9263857E7);
INSERT INTO O_306 VALUES('240131015006', '240131015000', '7016', 65000.0, '1 BJ Stik Bendera u/ N9811EE', TIMESTAMP '2024-04-05 09:00:08.689', 65000.0, 1.7192413E8, 7.9198857E7);
INSERT INTO O_306 VALUES('240131015007', '240131015000', '7016', 110000.0, '1 PcTerpal 3x4 u/ W.Shop', TIMESTAMP '2024-04-05 09:00:08.689', 110000.0, 1.7203413E8, 7.9088857E7);
INSERT INTO O_306 VALUES('240131015008', '240131015000', '7008', 80000.0, 'Cuci Mobil L9502GH', TIMESTAMP '2024-04-05 09:00:08.689', 80000.0, 180000.0, 7.9008857E7);
INSERT INTO O_306 VALUES('240131015009', '240131015000', '7017', 400000.0, '1 Pasang Sepatu Safety u/ HSE (Hafiz)', TIMESTAMP '2024-04-05 09:00:08.689', 400000.0, 3.22283571E8, 7.8608857E7);
INSERT INTO O_306 VALUES('240131015010', '240131015000', '7016', 404000.0, '1Pc pipa 1190 u/TR 40 Pipa Turbo PR 2265/H.551 (yg ambil Henicargo)', TIMESTAMP '2024-04-05 09:00:08.689', 404000.0, 1.7243813E8, 7.8204857E7);
INSERT INTO O_306 VALUES('240131015011', '240131015000', '7016', 577000.0, '1 1/2 m Rantai Baja 13  PR2266/H.665', TIMESTAMP '2024-04-05 09:00:08.689', 577000.0, 1.7301513E8, 7.7627857E7);
INSERT INTO O_306 VALUES('240131015012', '240131015000', '7016', 270000.0, '2 meter Kabel Las 50  PR 2266/H.665', TIMESTAMP '2024-04-05 09:00:08.689', 270000.0, 1.7328513E8, 7.7357857E7);
INSERT INTO O_306 VALUES('240131015013', '240131015000', '7016', 495000.0, '3pc Lampu LED 50 watt u/W.shop PR.2266/H.665', TIMESTAMP '2024-04-05 09:00:08.689', 495000.0, 1.7378013E8, 7.6862857E7);
INSERT INTO O_306 VALUES('240131015014', '240131015000', '7016', 150000.0, '10pc sekun 50  u/Stok PR.2266/H.665', TIMESTAMP '2024-04-05 09:00:08.689', 150000.0, 1.7393013E8, 7.6712857E7);
INSERT INTO O_306 VALUES('240131015015', '240131015000', '7016', 80000.0, '1btg baut stut bolt 3/4 PR.2266/H.665', TIMESTAMP '2024-04-05 09:00:08.689', 80000.0, 1.7401013E8, 7.6632857E7);
INSERT INTO O_306 VALUES('240131015016', '240131015000', '7016', 16000.0, '2pc mur 3/4 PR.2266/H.665', TIMESTAMP '2024-04-05 09:00:08.689', 16000.0, 1.7402613E8, 7.6616857E7);
INSERT INTO O_306 VALUES('240131015017', '240131015000', '7016', 50000.0, '1pc obat solder timah u/W.shop PR.2266/H.665', TIMESTAMP '2024-04-05 09:00:08.689', 50000.0, 1.7407613E8, 7.6566857E7);
INSERT INTO O_306 VALUES('240131015018', '240131015000', '7016', 300000.0, '1pc Las Aluminium u/ PC 400-02 (Cover Control Valve) PR.2266/H.665', TIMESTAMP '2024-04-05 09:00:08.689', 300000.0, 1.7437613E8, 7.6266857E7);
INSERT INTO O_306 VALUES('240131015019', '240131015000', '7016', 750000.0, '2pc Bubut bikin boring kupu2 dump u/TR 05 PR.2266/H.665', TIMESTAMP '2024-04-05 09:00:08.689', 750000.0, 1.7512613E8, 7.5516857E7);
INSERT INTO O_306 VALUES('240131015020', '240131015000', '7016', 290000.0, '1tbg Oxigen u/W.shop PR.2267/H.788', TIMESTAMP '2024-04-05 09:00:08.689', 290000.0, 1.7541613E8, 7.5226857E7);
INSERT INTO O_306 VALUES('240131015021', '240131015000', '7016', 240000.0, '4pc lampu H4 12v u/Stok PR.2267/H.788', TIMESTAMP '2024-04-05 09:00:08.689', 240000.0, 1.7565613E8, 7.4986857E7);
INSERT INTO O_306 VALUES('240131015022', '240131015000', '7016', 40000.0, '4x sekun lurus 35  u/Panel Listrik Mess 18 PR.2267/H.788', TIMESTAMP '2024-04-05 09:00:08.689', 40000.0, 1.7569613E8, 7.4946857E7);
INSERT INTO O_306 VALUES('240131015023', '240131015000', '7016', 120000.0, '2 vanbelt A 34 u/AC L504AJ+ stok PR 2269 H445', TIMESTAMP '2024-04-05 09:00:08.689', 120000.0, 1.7581613E8, 7.4826857E7);
INSERT INTO O_306 VALUES('240131015024', '240131015000', '7016', 120000.0, '2 vanbelt A 30 u/power stering L8504AJ+ stok PR 2269 H445', TIMESTAMP '2024-04-05 09:00:08.689', 120000.0, 1.7593613E8, 7.4706857E7);
INSERT INTO O_306 VALUES('240131015025', '240131015000', '7016', 130000.0, '2 vanbelt A 40 u/Dinamo ampere L8504AJ+ stok PR 2269 H445', TIMESTAMP '2024-04-05 09:00:08.689', 130000.0, 1.7606613E8, 7.4576857E7);
INSERT INTO O_306 VALUES('240131015026', '240131015000', '7016', 135000.0, '1 Bendix stater u/ L 8039 BX PR 2269 H445', TIMESTAMP '2024-04-05 09:00:08.689', 135000.0, 1.7620113E8, 7.4441857E7);
INSERT INTO O_306 VALUES('240131015027', '240131015000', '7016', 80000.0, '1 lem epoxy u/ genset penerangan PR 2269 H445', TIMESTAMP '2024-04-05 09:00:08.689', 80000.0, 1.7628113E8, 7.4361857E7);
INSERT INTO O_306 VALUES('240131015028', '240131015000', '7016', 290000.0, '1 Tbg oxygen u/ W. Shop PR. 2269/H445', TIMESTAMP '2024-04-05 09:00:08.689', 290000.0, 1.7657113E8, 7.4071857E7);
INSERT INTO O_306 VALUES('240131015029', '240131015000', '7016', 75000.0, '3 baut roda u/ L 8504 AJ PR. 2269/H445', TIMESTAMP '2024-04-05 09:00:08.689', 75000.0, 1.7664613E8, 7.3996857E7);
INSERT INTO O_306 VALUES('240131015030', '240131015000', '7016', 100000.0, '1 Presto u/ TR 10 PR. 2269/H445', TIMESTAMP '2024-04-05 09:00:08.689', 100000.0, 1.7674613E8, 7.3896857E7);
INSERT INTO O_306 VALUES('240131015031', '240131015000', '7022', 135000.0, '10 liter Pertamax u/ alkon FT 01', TIMESTAMP '2024-04-05 09:00:08.689', 135000.0, 4135000.0, 7.3761857E7);
INSERT INTO O_306 VALUES('240131015032', '240131015000', '7016', 325000.0, '1 Servis Valve ND u/ TR 07 PR. 2268/H877', TIMESTAMP '2024-04-05 09:00:08.689', 325000.0, 1.7707113E8, 7.3436857E7);
INSERT INTO O_306 VALUES('240131015033', '240131015000', '7016', 1800000.0, '1 Freon klea R134A Ineous PR. 2268/H877', TIMESTAMP '2024-04-05 09:00:08.689', 1800000.0, 1.7887113E8, 7.1636857E7);
INSERT INTO O_306 VALUES('240131015034', '240131015000', '7009', 85000.0, 'Ongkos kirim Cendana', TIMESTAMP '2024-04-05 09:00:08.689', 85000.0, 444000.0, 7.1551857E7);
INSERT INTO O_306 VALUES('240131015035', '240131015000', '7016', 1050000.0, '7 set Lampu Stop RH/LH u/ Hino 350 PR 2274/H. 899', TIMESTAMP '2024-04-05 09:00:08.689', 1050000.0, 1.7992113E8, 7.0501857E7);
INSERT INTO O_306 VALUES('240131015036', '240131015000', '7009', 200000.0, 'Ongkos kirim Cendana PR 2274/H. 899', TIMESTAMP '2024-04-05 09:00:08.689', 200000.0, 644000.0, 7.0301857E7);
INSERT INTO O_306 VALUES('240131015037', '240131015000', '7016', 450000.0, '1 pcs Selenoid assy 27690-EW020 PR.3230/H.278', TIMESTAMP '2024-04-05 09:00:08.689', 450000.0, 1.8037113E8, 6.9851857E7);
INSERT INTO O_306 VALUES('240131015038', '240131015000', '7016', 313000.0, '1 PCS Pipa Transmisi S33S2-EW011 PR.3230/H.278', TIMESTAMP '2024-04-05 09:00:08.705', 313000.0, 1.8068413E8, 6.9538857E7);
INSERT INTO O_306 VALUES('240131015039', '240131015000', '7016', 500000.0, '2 Pcs Kaca mata dump PTO Hino Lohan 2mm PR. 3234/H.223', TIMESTAMP '2024-04-05 09:00:08.705', 500000.0, 1.8118413E8, 6.9038857E7);
INSERT INTO O_306 VALUES('240131015040', '240131015000', '7016', 500000.0, '2 Pcs Kaca mata dump PTO Hino Lohan 4mm PR. 3234/H.223', TIMESTAMP '2024-04-05 09:00:08.705', 500000.0, 1.8168413E8, 6.8538857E7);
INSERT INTO O_306 VALUES('240131015041', '240131015000', '7009', 150000.0, 'Biaya Expedisi Henocargo (Barang PR. 3234/H.223)', TIMESTAMP '2024-04-05 09:00:08.705', 150000.0, 794000.0, 6.8388857E7);
INSERT INTO O_306 VALUES('240131015042', '240131015000', '7009', 150000.0, 'Biaya Expedisi Henocargo (Barang PR.3230/H.278)', TIMESTAMP '2024-04-05 09:00:08.705', 150000.0, 944000.0, 6.8238857E7);
INSERT INTO O_306 VALUES('240131015043', '240131015000', '7016', 550000.0, '2 EA Idle pully ND PR. 2279/H666', TIMESTAMP '2024-04-05 09:00:08.705', 550000.0, 1.8223413E8, 6.7688857E7);
INSERT INTO O_306 VALUES('240131015044', '240131015000', '7016', 600000.0, '2 EA Expansion blok for PC400 PR. 2279/H666', TIMESTAMP '2024-04-05 09:00:08.705', 600000.0, 1.8283413E8, 6.7088857E7);
INSERT INTO O_306 VALUES('240131015045', '240131015000', '7016', 450000.0, '2 EADryer 0 3/8 PDK R134 ALM PR. 2279/H666', TIMESTAMP '2024-04-05 09:00:08.705', 450000.0, 1.8328413E8, 6.6638857E7);
INSERT INTO O_306 VALUES('240131015046', '240131015000', '7009', 50000.0, 'ongkir cendana', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 994000.0, 6.6588857E7);
INSERT INTO O_306 VALUES('240131015047', '240131015000', '7016', 50000.0, '2 Oper sok 1 -1/2  PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 1.8333413E8, 6.6538857E7);
INSERT INTO O_306 VALUES('240131015048', '240131015000', '7016', 80000.0, '1 Timah solder PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 80000.0, 1.8341413E8, 6.6458857E7);
INSERT INTO O_306 VALUES('240131015049', '240131015000', '7016', 30000.0, '2 set jepitan aki u/ jemper PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 30000.0, 1.8344413E8, 6.6428857E7);
INSERT INTO O_306 VALUES('240131015050', '240131015000', '7016', 24000.0, '1 Baut solar u/ genset Mitsubishi PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 24000.0, 1.8346813E8, 6.6404857E7);
INSERT INTO O_306 VALUES('240131015051', '240131015000', '7016', 225000.0, '3 pompa solar u/ stok PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 225000.0, 1.8369313E8, 6.6179857E7);
INSERT INTO O_306 VALUES('240131015052', '240131015000', '7016', 360000.0, '1 pc webing seling kain  PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 360000.0, 1.8405313E8, 6.5819857E7);
INSERT INTO O_306 VALUES('240131015053', '240131015000', '7016', 25000.0, '10 pc baut 12x3 u/ stok PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 25000.0, 1.8407813E8, 6.5794857E7);
INSERT INTO O_306 VALUES('240131015054', '240131015000', '7016', 35000.0, '10 pc baut 12x7 u/ stok PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 35000.0, 1.8411313E8, 6.5759857E7);
INSERT INTO O_306 VALUES('240131015055', '240131015000', '7016', 60000.0, '2 pc T kuningan u/ compresor  PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 60000.0, 1.8417313E8, 6.5699857E7);
INSERT INTO O_306 VALUES('240131015056', '240131015000', '7016', 30000.0, '1 Pc sok drat dalam u/ compressor  PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 30000.0, 1.8420313E8, 6.5669857E7);
INSERT INTO O_306 VALUES('240131015057', '240131015000', '7016', 100000.0, '2 pc obeng - & + u/ mekanik slamet  PR. 2277/H811', TIMESTAMP '2024-04-05 09:00:08.705', 100000.0, 1.8430313E8, 6.5569857E7);
INSERT INTO O_306 VALUES('240131015058', '240131015000', '7016', 320000.0, '8 air radiator u/ stok PR. 2277/H.811', TIMESTAMP '2024-04-05 09:00:08.705', 320000.0, 1.8462313E8, 6.5249857E7);
INSERT INTO O_306 VALUES('240131015059', '240131015000', '7016', 150000.0, '1 boll join atas kiri PR. 2277/H.811 u/ L8039 BX', TIMESTAMP '2024-04-05 09:00:08.705', 150000.0, 1.8477313E8, 6.5099857E7);
INSERT INTO O_306 VALUES('240131015060', '240131015000', '7016', 295000.0, '1 boll join bawah kiri PR. 2277/H.811 u/ L8039 BX', TIMESTAMP '2024-04-05 09:00:08.705', 295000.0, 1.8506813E8, 6.4804857E7);
INSERT INTO O_306 VALUES('240131015061', '240131015000', '7016', 175000.0, '5 pc Relay 12v u/ stok PR. 2277/H.811', TIMESTAMP '2024-04-05 09:00:08.705', 175000.0, 1.8524313E8, 6.4629857E7);
INSERT INTO O_306 VALUES('240131015062', '240131015000', '7016', 75000.0, '5 pc soket relay u/ stok PR. 2277/H.811', TIMESTAMP '2024-04-05 09:00:08.705', 75000.0, 1.8531813E8, 6.4554857E7);
INSERT INTO O_306 VALUES('240131015063', '240131015000', '7016', 215000.0, '1 bh tinta printer hitam u/ HSE PR.2278/H.277', TIMESTAMP '2024-04-05 09:00:08.705', 215000.0, 1.8553313E8, 6.4339857E7);
INSERT INTO O_306 VALUES('240131015064', '240131015000', '7016', 100000.0, '1 pc bor lubang peleng join u/ L 8504 AJ PR.2278/H.277', TIMESTAMP '2024-04-05 09:00:08.705', 100000.0, 1.8563313E8, 6.4239857E7);
INSERT INTO O_306 VALUES('240131015065', '240131015000', '7016', 400000.0, '1 pc bubut gigi nanas u/ TR 73 PR.2278/H.277', TIMESTAMP '2024-04-05 09:00:08.705', 400000.0, 1.8603313E8, 6.3839857E7);
INSERT INTO O_306 VALUES('240131015066', '240131015000', '7016', 510000.0, '1 set Hose Assy Hyd 3/8  u/ PC 400-02 PR.2278/H.277 hose stering', TIMESTAMP '2024-04-05 09:00:08.705', 510000.0, 1.8654313E8, 6.3329857E7);
INSERT INTO O_306 VALUES('240131015067', '240131015000', '7006', 100000.0, 'Transport Dinas ke BPJS, Sosialisasi UMK Terbaru (17/01/24)', TIMESTAMP '2024-04-05 09:00:08.705', 100000.0, 2.6075849E7, 6.3229857E7);
INSERT INTO O_306 VALUES('240131015068', '240131015000', '7017', 500000.0, '50 Jerigen air isi ulang untuk Karyawan di mess km 18', TIMESTAMP '2024-04-05 09:00:08.705', 500000.0, 3.22783571E8, 6.2729857E7);
INSERT INTO O_306 VALUES('240131015069', '240131015000', '7001', 437000.0, 'Uang lembur dan Tunjangan dinas luar kota ke Samarinda Antar pak Go belanja dan ambil barang tgl 4/1 sd 5/1/24 (2 Hari)', TIMESTAMP '2024-04-05 09:00:08.705', 437000.0, 3.21764704E8, 6.2292857E7);
INSERT INTO O_306 VALUES('240131015070', '240131015000', '7004', 150000.0, 'Servis printer Epson L3210 u/Logistik PR.2267/H.788', TIMESTAMP '2024-04-05 09:00:08.705', 150000.0, 2.15385E8, 6.2142857E7);
INSERT INTO O_306 VALUES('240131015071', '240131015000', '7004', 110000.0, '1 Btl Tinta hitam u/ Printer epson L3210 PR.2267/H.788', TIMESTAMP '2024-04-05 09:00:08.705', 110000.0, 2.15495E8, 6.2032857E7);
INSERT INTO O_306 VALUES('240131015072', '240131015000', '7006', 50000.0, 'Penyebrangan PP u/ L9502 GH Belanja s.part dan ambil uang', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 2.6125849E7, 6.1982857E7);
INSERT INTO O_306 VALUES('240131015073', '240131015000', '7006', 50000.0, 'Penyebrangan PP u/ L 8397 VB Mekanik Jemput L9502GH', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 2.6175849E7, 6.1932857E7);
INSERT INTO O_306 VALUES('240131015074', '240131015000', '7004', 50000.0, 'Tgl 23 Makan, Kopi, Teh 1x', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 2.15545E8, 6.1882857E7);
INSERT INTO O_306 VALUES('240131015075', '240131015000', '7004', 150000.0, 'Tgl 24 Makan, Kopi, Teh 3x', TIMESTAMP '2024-04-05 09:00:08.705', 150000.0, 2.15695E8, 6.1732857E7);
INSERT INTO O_306 VALUES('240131015076', '240131015000', '7004', 600000.0, '60 lembar materai u/ PKWT PR 2266/H.665', TIMESTAMP '2024-04-05 09:00:08.705', 600000.0, 2.16295E8, 6.1132857E7);
INSERT INTO O_306 VALUES('240131015077', '240131015000', '7006', 50000.0, 'Penyeberangan PP u/ L 9502 GH (Belanja Spare Part)', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 2.6225849E7, 6.1082857E7);
INSERT INTO O_306 VALUES('240131015078', '240131015000', '7006', 50000.0, 'Penyeberangan PP u/ L 8397 VB (Belanja Spare Part+Jemput Supriyanto)', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 2.6275849E7, 6.1032857E7);
INSERT INTO O_306 VALUES('240131015079', '240131015000', '7009', 70000.0, 'Ongkos kirim ambil barang (Barang PR 2265/H.551)', TIMESTAMP '2024-04-05 09:00:08.705', 70000.0, 1064000.0, 6.0962857E7);
INSERT INTO O_306 VALUES('240131015080', '240131015000', '7009', 50000.0, 'Ongkos Cendana Travel (Barang PR 2265/H.551)', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 1114000.0, 6.0912857E7);
INSERT INTO O_306 VALUES('240131015081', '240131015000', '7017', 150000.0, 'Tgl 25 Makan, Kopi, Teh 3x Konsumsi mekanik Hino (2 Orang)', TIMESTAMP '2024-04-05 09:00:08.705', 150000.0, 3.22933571E8, 6.0762857E7);
INSERT INTO O_306 VALUES('240131015082', '240131015000', '7017', 50000.0, 'Tgl 26 Makan, Kopi, Teh 1x', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 3.22983571E8, 6.0712857E7);
INSERT INTO O_306 VALUES('240131015083', '240131015000', '7017', 40000.0, '2 Rol pita surfay u/ HSE Dhako', TIMESTAMP '2024-04-05 09:00:08.705', 40000.0, 3.23023571E8, 6.0672857E7);
INSERT INTO O_306 VALUES('240131015084', '240131015000', '7017', 125000.0, '5 meter scot let merah u/ HSE Dhako', TIMESTAMP '2024-04-05 09:00:08.705', 125000.0, 3.23148571E8, 6.0547857E7);
INSERT INTO O_306 VALUES('240131015085', '240131015000', '7017', 120000.0, '1 Sprei u/ Pengawas Supriyanto', TIMESTAMP '2024-04-05 09:00:08.705', 120000.0, 3.23268571E8, 6.0427857E7);
INSERT INTO O_306 VALUES('240131015086', '240131015000', '7006', 50000.0, 'Penyeberangan PP u/ L 9502 GH (Ambil uang&belanja perlengkapan HSE)', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 2.6325849E7, 6.0377857E7);
INSERT INTO O_306 VALUES('240131015087', '240131015000', '7017', 36000.0, '6 pc sabun wing biru 1/2 pot u/W.Shop', TIMESTAMP '2024-04-05 09:00:08.705', 36000.0, 3.23304571E8, 6.0341857E7);
INSERT INTO O_306 VALUES('240131015088', '240131015000', '7017', 67000.0, 'Konsumsi tukang u/W.Shop mess 18', TIMESTAMP '2024-04-05 09:00:08.705', 67000.0, 3.23371571E8, 6.0274857E7);
INSERT INTO O_306 VALUES('240131015089', '240131015000', '7008', 100000.0, 'Cuci mobil L8397VB', TIMESTAMP '2024-04-05 09:00:08.705', 100000.0, 280000.0, 6.0174857E7);
INSERT INTO O_306 VALUES('240131015090', '240131015000', '7006', 50000.0, 'Penyeberangan PP u/ L 8397 VB (Belanja Spare Part)', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 2.6375849E7, 6.0124857E7);
INSERT INTO O_306 VALUES('240131015091', '240131015000', '7017', 500000.0, '50 Jerigen air isi ulang untuk Karyawan di mess km 18', TIMESTAMP '2024-04-05 09:00:08.705', 500000.0, 3.23871571E8, 5.9624857E7);
INSERT INTO O_306 VALUES('240131015092', '240131015000', '7017', 704000.0, 'Piket Genset Penerangan Periode 11 Jan 2024 - 31 Jan 2024 (11 Hari X Rp64.000)', TIMESTAMP '2024-04-05 09:00:08.705', 704000.0, 3.24575571E8, 5.8920857E7);
INSERT INTO O_306 VALUES('240131015093', '240131015000', '7006', 50000.0, 'Penyeberangan PP u/ L 9502 GH (Antar Hose PC 400)', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 2.6425849E7, 5.8870857E7);
INSERT INTO O_306 VALUES('240131015094', '240131015000', '7017', 290000.0, '1 Tbg LPG 12kg PR.2278 / H. 277', TIMESTAMP '2024-04-05 09:00:08.705', 290000.0, 3.24865571E8, 5.8580857E7);
INSERT INTO O_306 VALUES('240131015095', '240131015000', '7017', 45000.0, '1 Tbg LPG 3kg PR.2278 / H. 277', TIMESTAMP '2024-04-05 09:00:08.705', 45000.0, 3.24910571E8, 5.8535857E7);
INSERT INTO O_306 VALUES('240131015096', '240131015000', '7010', 8000.0, 'Biaya admin bank BNI prd 21-31 Jan 2024', TIMESTAMP '2024-04-05 09:00:08.705', 8000.0, 14500.0, 5.8527857E7);
INSERT INTO O_306 VALUES('240131015097', '240131015000', '7009', 400000.0, 'Ongkos buat peti kayu PR 2274/H899 u Kaca TR 81 (PR. 2258)', TIMESTAMP '2024-04-05 09:00:08.705', 400000.0, 1514000.0, 5.8127857E7);
INSERT INTO O_306 VALUES('240131015098', '240131015000', '7010', 2500.0, 'Biaya admin transfer', TIMESTAMP '2024-04-05 09:00:08.705', 2500.0, 17000.0, 5.8125357E7);
INSERT INTO O_306 VALUES('240131015099', '240131015000', '7017', 150000.0, '2 Dus Aqua Tanggung u/ Proyek Kantor', TIMESTAMP '2024-04-05 09:00:08.705', 150000.0, 3.25060571E8, 5.7975357E7);
INSERT INTO O_306 VALUES('240131015100', '240131015000', '7017', 92000.0, '4 dus Air kemasan Gelas (Multazam) u/ Proyek Kantor', TIMESTAMP '2024-04-05 09:00:08.705', 92000.0, 3.25152571E8, 5.7883357E7);
INSERT INTO O_306 VALUES('240131015101', '240131015000', '7009', 47000.0, 'Biaya kirim dokumen via Tiki', TIMESTAMP '2024-04-05 09:00:08.705', 47000.0, 1561000.0, 5.7836357E7);
INSERT INTO O_306 VALUES('240131015102', '240131015000', '7017', 92000.0, '4 pc gembok u/ kantor mess 18 PR. 2269/H445', TIMESTAMP '2024-04-05 09:00:08.705', 92000.0, 3.25244571E8, 5.7744357E7);
INSERT INTO O_306 VALUES('240131015103', '240131015000', '7017', 210000.0, '6 btg pipa pvc 1/2  u/ Pengaman kabel mess 18 PR. 2269/H445', TIMESTAMP '2024-04-05 09:00:08.705', 210000.0, 3.25454571E8, 5.7534357E7);
INSERT INTO O_306 VALUES('240131015104', '240131015000', '7017', 525000.0, '3 kotak skrup taso PR. 2269/H445', TIMESTAMP '2024-04-05 09:00:08.705', 525000.0, 3.25979571E8, 5.7009357E7);
INSERT INTO O_306 VALUES('240131015105', '240131015000', '7017', 25000.0, '1 Stop kontak u/ kantor mess 18 PR. 2269/H445', TIMESTAMP '2024-04-05 09:00:08.705', 25000.0, 3.26004571E8, 5.6984357E7);
INSERT INTO O_306 VALUES('240131015106', '240131015000', '7017', 120000.0, '6 dus air kemasan gelas u/ konsumsi tukang w.shop', TIMESTAMP '2024-04-05 09:00:08.705', 120000.0, 3.26124571E8, 5.6864357E7);
INSERT INTO O_306 VALUES('240131015107', '240131015000', '7006', 50000.0, 'Penyeberangan PP u/ L 8397 VB (Belanja Spare Part)', TIMESTAMP '2024-04-05 09:00:08.705', 50000.0, 2.6475849E7, 5.6814357E7);
INSERT INTO O_306 VALUES('240131015108', '240131015000', '7009', 450000.0, 'Travel Elkana Melak-Balikpapan (21/01/24) (Selesai Kontrak)', TIMESTAMP '2024-04-05 09:00:08.705', 450000.0, 2011000.0, 5.6364357E7);
INSERT INTO O_306 VALUES('240131015109', '240131015000', '7006', 225000.0, 'Akomodasi Hotel (22/01/24) (Selesai Kontrak)', TIMESTAMP '2024-04-05 09:00:08.705', 225000.0, 2.6700849E7, 5.6139357E7);
INSERT INTO O_306 VALUES('240131015110', '240131015000', '7006', 200000.0, 'Travel Kualanamu-Rumah 22/01/24 (Selesai Kontrak)', TIMESTAMP '2024-04-05 09:00:08.705', 200000.0, 2.6900849E7, 5.5939357E7);
INSERT INTO O_306 VALUES('240131015111', '240131015000', '7006', 500000.0, 'Sped boat Melak-Samarinda (Pulang Ke Rumah)', TIMESTAMP '2024-04-05 09:00:08.705', 500000.0, 2.7400849E7, 5.5439357E7);
INSERT INTO O_306 VALUES('240131015112', '240131015000', '7006', 500000.0, 'Sped boat Samarinda-Melak (Kembali ke Lokasi)', TIMESTAMP '2024-04-05 09:00:08.705', 500000.0, 2.7900849E7, 5.4939357E7);
INSERT INTO O_306 VALUES('240131015113', '240131015000', '7006', 500000.0, 'Sped boat Melak-Samarinda (Pulang Ke Rumah)', TIMESTAMP '2024-04-05 09:00:08.705', 500000.0, 2.8400849E7, 5.4439357E7);
INSERT INTO O_306 VALUES('240131015114', '240131015000', '7006', 512500.0, 'Sped boat Samarinda-Melak + Retribusi Kapal Wisata + Retribusi Speed 5.500+7000(Kembali ke Lokasi)', TIMESTAMP '2024-04-05 09:00:08.705', 512500.0, 2.8913349E7, 5.3926857E7);
INSERT INTO O_306 VALUES('240131015115', '240131015000', '7001', 2673079.0, 'Gaji, UM, Ritase dan Kompensasi Periode 1 jan sd 20 Jan 2024 Lampiran PKWT dan Kompensasi Asli bermaterai', TIMESTAMP '2024-04-05 09:00:08.705', 2673079.0, 3.24437783E8, 5.1253778E7);
INSERT INTO O_306 VALUES('240131015116', '240131015000', '7003', 440000.0, 'UM Sarjito Periode 21 Januari - 24 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 440000.0, 5.078E7, 5.0813778E7);
INSERT INTO O_306 VALUES('240131015117', '240131015000', '7003', 560000.0, 'UM Wijanarko Periode 21 Januari - 24 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 560000.0, 5.134E7, 5.0253778E7);
INSERT INTO O_306 VALUES('240131015118', '240131015000', '7003', 468000.0, 'UM Didik Periode 21 Januari - 24 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 468000.0, 5.1808E7, 4.9785778E7);
INSERT INTO O_306 VALUES('240131015119', '240131015000', '7003', 1540000.0, 'UM Slamet Subagyo Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1540000.0, 5.3348E7, 4.8245778E7);
INSERT INTO O_306 VALUES('240131015120', '240131015000', '7003', 840000.0, 'UM Supriyanto Periode 26 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 840000.0, 5.4188E7, 4.7405778E7);
INSERT INTO O_306 VALUES('240131015121', '240131015000', '7003', 1100000.0, 'UM Haqqul I. Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1100000.0, 5.5288E7, 4.6305778E7);
INSERT INTO O_306 VALUES('240131015122', '240131015000', '7003', 375000.0, 'UM Samuel Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 375000.0, 5.5663E7, 4.5930778E7);
INSERT INTO O_306 VALUES('240131015123', '240131015000', '7003', 750000.0, 'UM Jakaria Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 750000.0, 5.6413E7, 4.5180778E7);
INSERT INTO O_306 VALUES('240131015124', '240131015000', '7003', 1540000.0, 'UM Go Oei Hap Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1540000.0, 5.7953E7, 4.3640778E7);
INSERT INTO O_306 VALUES('240131015125', '240131015000', '7003', 1540000.0, 'UM Syamsudin N. Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1540000.0, 5.9493E7, 4.2100778E7);
INSERT INTO O_306 VALUES('240131015126', '240131015000', '7003', 1540000.0, 'UM Sekhan Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1540000.0, 6.1033E7, 4.0560778E7);
INSERT INTO O_306 VALUES('240131015127', '240131015000', '7003', 1050000.0, 'UM Mauretius Oji Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1050000.0, 6.2083E7, 3.9510778E7);
INSERT INTO O_306 VALUES('240131015128', '240131015000', '7003', 1540000.0, 'UM Anna Qodri Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1540000.0, 6.3623E7, 3.7970778E7);
INSERT INTO O_306 VALUES('240131015129', '240131015000', '7003', 525000.0, 'UM Raju Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 525000.0, 6.4148E7, 3.7445778E7);
INSERT INTO O_306 VALUES('240131015130', '240131015000', '7003', 1540000.0, 'UM Yono S. Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1540000.0, 6.5688E7, 3.5905778E7);
INSERT INTO O_306 VALUES('240131015131', '240131015000', '7003', 1287000.0, 'UM Andri S. Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1287000.0, 6.6975E7, 3.4618778E7);
INSERT INTO O_306 VALUES('240131015132', '240131015000', '7003', 1650000.0, 'UM Rinaldhie G. Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1650000.0, 6.8625E7, 3.2968778E7);
INSERT INTO O_306 VALUES('240131015133', '240131015000', '7003', 1650000.0, 'UM M. Hafizhni Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1650000.0, 7.0275E7, 3.1318778E7);
INSERT INTO O_306 VALUES('240131015134', '240131015000', '7003', 1540000.0, 'UM Syaifullah Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1540000.0, 7.1815E7, 2.9778778E7);
INSERT INTO O_306 VALUES('240131015135', '240131015000', '7003', 1710000.0, 'UM M.Agus Irwanto Periode 12 Januari - 20 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1710000.0, 7.3525E7, 2.8068778E7);
INSERT INTO O_306 VALUES('240131015136', '240131015000', '7003', 2090000.0, 'UM M.Agus Irwanto Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 2090000.0, 7.5615E7, 2.5978778E7);
INSERT INTO O_306 VALUES('240131015137', '240131015000', '7003', 330000.0, 'UM Bani Susilo Periode 18 Januari - 20 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 330000.0, 7.5945E7, 2.5648778E7);
INSERT INTO O_306 VALUES('240131015138', '240131015000', '7003', 1210000.0, 'UM Bani Susilo Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1210000.0, 7.7155E7, 2.4438778E7);
INSERT INTO O_306 VALUES('240131015139', '240131015000', '7003', 1540000.0, 'UM Suradi Periode 21 Januari - 31 Januari 2024', TIMESTAMP '2024-04-05 09:00:08.705', 1540000.0, 7.8695E7, 2.2898778E7);
INSERT INTO O_306 VALUES('240131015140', '240131015000', '7003', 440000.0, 'Tambahan Uang Makan (Buka Gudang, Tunggu Mekanik,', TIMESTAMP '2024-04-05 09:00:08.705', 440000.0, 7.9135E7, 2.2458778E7);
INSERT INTO O_306 VALUES('240229010001', '240229010000', '7016', 150000.0, '10 pc baut L k10x40 u/ Genset Mitsubishi PR 2285 H617', TIMESTAMP '2024-04-19 09:45:29.627', 150000.0, 1.76547569E8, 2.2308778E7);
INSERT INTO O_306 VALUES('240229010002', '240229010000', '7016', 50000.0, '5 pc baut 88 k10x70 u/ Genset Mitsubishi PR 2285 H617', TIMESTAMP '2024-04-19 09:45:29.627', 50000.0, 1.76597569E8, 2.2258778E7);
INSERT INTO O_306 VALUES('240229010003', '240229010000', '7016', 36000.0, '3 pc baut 88 k12x70 u/ Genset Mitsubishi PR 2285 H617', TIMESTAMP '2024-04-19 09:45:29.627', 36000.0, 1.76633569E8, 2.2222778E7);
INSERT INTO O_306 VALUES('240229010004', '240229010000', '7016', 470000.0, '1 Rol kabe l Eterna 2x1,5 u/Power Wifi PR 2286 H716', TIMESTAMP '2024-04-19 09:45:29.627', 470000.0, 1.77103569E8, 2.1752778E7);
INSERT INTO O_306 VALUES('240229010005', '240229010000', '7016', 1675000.0, '1 Pc Alat tes Nozle (Nota Asli di Surabaya) PR 2285. H 617', TIMESTAMP '2024-04-19 09:45:29.627', 1675000.0, 1.78778569E8, 2.0077778E7);
INSERT INTO O_306 VALUES('240229010006', '240229010000', '7010', 2500.0, 'Admin transfer Pak Hani Transfer Tes Nozle', TIMESTAMP '2024-04-19 09:45:29.627', 2500.0, 97530.0, 2.0075278E7);
INSERT INTO O_306 VALUES('240229010007', '240229010000', '7016', 180000.0, '2 pc 6304-2R5/C3 u/ Sakai-17 PR 2284 H 998', TIMESTAMP '2024-04-19 09:45:29.627', 180000.0, 1.78958569E8, 1.9895278E7);
INSERT INTO O_306 VALUES('240229010008', '240229010000', '7016', 150000.0, '2 pc 6204-2R5/C3 u/ Sakai-17 PR 2284 H 998', TIMESTAMP '2024-04-19 09:45:29.627', 150000.0, 1.79108569E8, 1.9745278E7);
INSERT INTO O_306 VALUES('240229010009', '240229010000', '7016', 120000.0, '3 pc MEC Seal F-12L CAR/CER u/ Sakai-17 PR 2284 H 998', TIMESTAMP '2024-04-19 09:45:29.627', 120000.0, 1.79228569E8, 1.9625278E7);
INSERT INTO O_306 VALUES('240229010010', '240229010000', '7016', 104000.0, '4 pc TC 20x38x7 NBR u/ Sakai-17 PR 2284 H 998', TIMESTAMP '2024-04-19 09:45:29.627', 104000.0, 1.79332569E8, 1.9521278E7);
INSERT INTO O_306 VALUES('240229010011', '240229010000', '7009', 50000.0, 'Ongkir Cendana (Melak)', TIMESTAMP '2024-04-19 09:45:29.627', 50000.0, 50000.0, 1.9471278E7);
INSERT INTO O_306 VALUES('240229010012', '240229010000', '7009', 150000.0, 'Ongkir Heni Cargo pengiriman barang TR 10 PR 2285', TIMESTAMP '2024-04-19 09:45:29.627', 150000.0, 200000.0, 1.9321278E7);
INSERT INTO O_306 VALUES('240229010013', '240229010000', '7009', 425000.0, 'Ongkir Cendana (Melak) pengiriman barang TR 10 PR 2285', TIMESTAMP '2024-04-19 09:45:29.627', 425000.0, 625000.0, 1.8896278E7);
INSERT INTO O_306 VALUES('240229010014', '240229010000', '7010', 2500.0, 'Admin transfer Anna Qodri ke Pak Hani  ', TIMESTAMP '2024-04-19 09:45:29.627', 2500.0, 100030.0, 1.8893778E7);
INSERT INTO O_306 VALUES('240229010015', '240229010000', '7016', 84000.0, '1 pc Terpal 3x4 u/ tukang tambal ban PR 2285 H617', TIMESTAMP '2024-04-19 09:45:29.627', 84000.0, 1.79416569E8, 1.8809778E7);
INSERT INTO O_306 VALUES('240229010016', '240229010000', '7016', 35000.0, '1 pc Stop kontak u/ kantor mess 18 PR 2285 H617', TIMESTAMP '2024-04-19 09:45:29.627', 35000.0, 1.79451569E8, 1.8774778E7);
INSERT INTO O_306 VALUES('240229010017', '240229010000', '7016', 90000.0, '3 pc baut L 8x30 PR 2285 H617', TIMESTAMP '2024-04-19 09:45:29.627', 90000.0, 1.79541569E8, 1.8684778E7);
INSERT INTO O_306 VALUES('240229010018', '240229010000', '7016', 125000.0, '1 pc Multitester u/ Listrik PR 2286 H.716', TIMESTAMP '2024-04-19 09:45:29.627', 125000.0, 1.79666569E8, 1.8559778E7);
INSERT INTO O_306 VALUES('240229010019', '240229010000', '7006', 750000.0, 'Pengganti Bensin Perahu Penyeberangan Karyawan Periode Feb 2024', TIMESTAMP '2024-04-19 09:45:29.627', 750000.0, 750000.0, 1.7809778E7);
INSERT INTO O_306 VALUES('240229010020', '240229010000', '7004', 500000.0, '50 jerigen Air isi ulang u/ mess km 18', TIMESTAMP '2024-04-19 09:45:29.627', 500000.0, 500000.0, 1.7309778E7);
INSERT INTO O_306 VALUES('240229010021', '240229010000', '7006', 50000.0, 'Penyeberangan PP u/ L 8397 VB (Belanja Spare Part)', TIMESTAMP '2024-04-19 09:45:29.627', 50000.0, 800000.0, 1.7259778E7);
INSERT INTO O_306 VALUES('240229010022', '240229010000', '7004', 84000.0, '2 pc Ordner u/ office PR 2286 H 716', TIMESTAMP '2024-04-19 09:45:29.627', 84000.0, 584000.0, 1.7175778E7);
INSERT INTO O_306 VALUES('240229010023', '240229010000', '7004', 24000.0, '2 kotak binder clip u/ office PR 2286 H 716', TIMESTAMP '2024-04-19 09:45:29.627', 24000.0, 608000.0, 1.7151778E7);
INSERT INTO O_306 VALUES('240229010024', '240229010000', '7004', 100000.0, '1 pc Konverter HDMI to VGA u/ PJO PR 2286 H 716', TIMESTAMP '2024-04-19 09:45:29.627', 100000.0, 708000.0, 1.7051778E7);
INSERT INTO O_306 VALUES('240229010025', '240229010000', '7009', 94000.0, 'biaya kirim paket via Tiki ', TIMESTAMP '2024-04-19 09:45:29.627', 94000.0, 719000.0, 1.6957778E7);
INSERT INTO O_306 VALUES('240229010026', '240229010000', '7006', 50000.0, 'Penyeberangan PP u/ L 8397 VB (Ambil paket di Cendana, Ambil uang & Belanja Spare Part)', TIMESTAMP '2024-04-19 09:45:29.627', 50000.0, 850000.0, 1.6907778E7);
INSERT INTO O_306 VALUES('240229010027', '240229010000', '7001', 3000000.0, 'Tambahan Insentif a/n Munas (HRD PT. DBP) selama Diperbantukan di PT. Dhako Unit Muara Batuq, Februari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 3000000.0, 9.5471576E7, 1.3907778E7);
INSERT INTO O_306 VALUES('240229010028', '240229010000', '7004', 255000.0, 'Cetak Simpper/ID Card PT Dhako 17Pcs x @15.000', TIMESTAMP '2024-04-19 09:45:29.627', 255000.0, 963000.0, 1.3652778E7);
INSERT INTO O_306 VALUES('240229010029', '240229010000', '7006', 50000.0, 'Penyeberangan PP u/ L 9502 GH (Ambil Bubutan u/ Genset Mitsubishi)', TIMESTAMP '2024-04-19 09:45:29.627', 50000.0, 900000.0, 1.3602778E7);
INSERT INTO O_306 VALUES('240229010030', '240229010000', '7006', 50000.0, 'Penyeberangan PP u/ L 9502 GH (Antar Slamet Subagio Cuti)', TIMESTAMP '2024-04-19 09:45:29.627', 50000.0, 950000.0, 1.3552778E7);
INSERT INTO O_306 VALUES('240229010031', '240229010000', '7003', 200000.0, 'Pulsa u/ bulan Februari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 200000.0, 200000.0, 1.3352778E7);
INSERT INTO O_306 VALUES('240229010032', '240229010000', '7003', 420000.0, 'UM Go Oei Hap Periode 1 Februari - 3 Februari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 420000.0, 620000.0, 1.2932778E7);
INSERT INTO O_306 VALUES('240229010033', '240229010000', '7001', 378000.0, 'Gaji/Insentif Helper Mekanik priode Januari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 378000.0, 9.5849576E7, 1.2554778E7);
INSERT INTO O_306 VALUES('240229010034', '240229010000', '7001', 2639077.0, 'Gaji periode Januari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 2639077.0, 9.8488653E7, 9915701.0);
INSERT INTO O_306 VALUES('240229010035', '240229010000', '7003', 840000.0, 'Periode 1 Februari -  6 Februari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 840000.0, 1460000.0, 9075701.0);
INSERT INTO O_306 VALUES('240229010036', '240229010000', '7003', 1120000.0, 'Periode 1 Februari -  8 Februari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 1120000.0, 2580000.0, 7955701.0);
INSERT INTO O_306 VALUES('240229010037', '240229010000', '7003', 1400000.0, 'Periode 1 Februari -  10 Februari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 1400000.0, 3980000.0, 6555701.0);
INSERT INTO O_306 VALUES('240229010038', '240229010000', '7003', 1500000.0, 'Kasbon Potong Uang Makan Periode 1 Feb - 10 Feb 2024', TIMESTAMP '2024-04-19 09:45:29.627', 1500000.0, 5480000.0, 5055701.0);
INSERT INTO O_306 VALUES('240229010039', '240229010000', '7003', 500000.0, 'Kasbon Potong Gaji Periode Februari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 500000.0, 5980000.0, 4555701.0);
INSERT INTO O_306 VALUES('240229010040', '240229010000', '7003', 200000.0, 'Kasbon Potong Gaji Periode Februari 2024', TIMESTAMP '2024-04-19 09:45:29.627', 200000.0, 6180000.0, 4355701.0);
INSERT INTO O_306 VALUES('240229010041', '240229010000', '7008', 50000.0, 'Service Alternator Nissan Frontier u/ N 8049 AB  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.627', 50000.0, 50000.0, 4305701.0);
INSERT INTO O_306 VALUES('240229010042', '240229010000', '7008', 200000.0, 'Service Las Bubut AS Water Pump u/ Sakai 17  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 200000.0, 250000.0, 4105701.0);
INSERT INTO O_306 VALUES('240229010043', '240229010000', '7008', 100000.0, 'Pembuatan Shim Generator u/ Dinamo Genset Mitsubishi PR 2293 / H 441', TIMESTAMP '2024-04-19 09:45:29.643', 100000.0, 350000.0, 4005701.0);
INSERT INTO O_306 VALUES('240229010044', '240229010000', '7016', 100000.0, '20 Pcs Sikring 20A @ Rp5.000  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 100000.0, 1.79766569E8, 3905701.0);
INSERT INTO O_306 VALUES('240229010045', '240229010000', '7016', 100000.0, '20 Pcs Sikring 10A @ Rp5.000  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 100000.0, 1.79866569E8, 3805701.0);
INSERT INTO O_306 VALUES('240229010046', '240229010000', '7016', 270000.0, '3 Pcs WD 40 @ Rp90.000  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 270000.0, 1.80136569E8, 3535701.0);
INSERT INTO O_306 VALUES('240229010047', '240229010000', '7016', 125000.0, '1 Pcs Spion Hino Lohan LH u/ TR 02  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 125000.0, 1.80261569E8, 3410701.0);
INSERT INTO O_306 VALUES('240229010048', '240229010000', '7016', 30000.0, '5 Pcs Amplas 1000 @ Rp6.000  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 30000.0, 1.80291569E8, 3380701.0);
INSERT INTO O_306 VALUES('240229010049', '240229010000', '7016', 25000.0, '5 Pcs Amplas 800 @ Rp5.000  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 25000.0, 1.80316569E8, 3355701.0);
INSERT INTO O_306 VALUES('240229010050', '240229010000', '7016', 25000.0, '5 Pcs Amplas 280 @ Rp5.000  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 25000.0, 1.80341569E8, 3330701.0);
INSERT INTO O_306 VALUES('240229010051', '240229010000', '7016', 215000.0, '1 Pcs Terpal 4 X 6 u/ Manhaul 01  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 215000.0, 1.80556569E8, 3115701.0);
INSERT INTO O_306 VALUES('240229010052', '240229010000', '7016', 15000.0, '1 Pcs Kikir Bulat Sinso  PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 15000.0, 1.80571569E8, 3100701.0);
INSERT INTO O_306 VALUES('240229010053', '240229010000', '7016', 25000.0, '1 Pcs Scrap (Capi) 2   PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 25000.0, 1.80596569E8, 3075701.0);
INSERT INTO O_306 VALUES('240229010054', '240229010000', '7016', 30000.0, '1 Pcs Scrap (Capi) 3   PR 2292 / H 411', TIMESTAMP '2024-04-19 09:45:29.643', 30000.0, 1.80626569E8, 3045701.0);
INSERT INTO O_306 VALUES('240229010055', '240229010000', '7016', 370000.0, '2 Rim Cetakan P2H DT  2PLY  PR 2293 / H 441', TIMESTAMP '2024-04-19 09:45:29.643', 370000.0, 1.80996569E8, 2675701.0);
INSERT INTO O_306 VALUES('240229010056', '240229010000', '7016', 370000.0, '2 Rim Cetakan P2H A2B  2PLY  PR 2293 / H 441', TIMESTAMP '2024-04-19 09:45:29.643', 370000.0, 1.81366569E8, 2305701.0);
INSERT INTO O_306 VALUES('240229010057', '240229010000', '7016', 185000.0, '1 Rim Form SPL  2PLY  PR 2293 / H 441', TIMESTAMP '2024-04-19 09:45:29.643', 185000.0, 1.81551569E8, 2120701.0);
INSERT INTO O_306 VALUES('240229010058', '240229010000', '7016', 65000.0, '1 Pcs Bearing 6205 u/ Genset Deutz  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.643', 65000.0, 1.81616569E8, 2055701.0);
INSERT INTO O_306 VALUES('240229010059', '240229010000', '7016', 95000.0, '1 Pcs Bearing 6305 u/ Genset Deutz  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.643', 95000.0, 1.81711569E8, 1960701.0);
INSERT INTO O_306 VALUES('240229010060', '240229010000', '7016', 165000.0, '1 Dus (12 Botol) Air Zhuur u/ Stok  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.643', 165000.0, 1.81876569E8, 1795701.0);
INSERT INTO O_306 VALUES('240229010061', '240229010000', '7008', 600000.0, 'Service dan Ganti Cover Radiator u/ L 9502 GH  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.658', 600000.0, 950000.0, 1195701.0);
INSERT INTO O_306 VALUES('240229010062', '240229010000', '7016', 270000.0, '6 Pcs Baut Roda Triton @ Rp45.000 u/ Strada L 8039 BX  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.658', 270000.0, 1.82146569E8, 925701.0);
INSERT INTO O_306 VALUES('240229010063', '240229010000', '7016', 45000.0, '15 Pcs Baut M8 X 70 @ Rp3.000 u/ Stok  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.658', 45000.0, 1.82191569E8, 880701.0);
INSERT INTO O_306 VALUES('240229010064', '240229010000', '7016', 30000.0, '15 Pcs Baut M8 X 30 @ Rp2.000 u/ Stok  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.658', 30000.0, 1.82221569E8, 850701.0);
INSERT INTO O_306 VALUES('240229010065', '240229010000', '7016', 45000.0, '15 Pcs Baut M10 X 30 @ Rp3.000 u/ Stok  PR 2294 / 990', TIMESTAMP '2024-04-19 09:45:29.658', 45000.0, 1.82266569E8, 805701.0);
INSERT INTO O_306 VALUES('240229010066', '240229010000', '7016', 12000.0, '1 Pcs Klem Stainless 4  u/ Genset Mitsubishi  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.658', 12000.0, 1.82278569E8, 793701.0);
INSERT INTO O_306 VALUES('240229010067', '240229010000', '7001', 3320151.0, 'Pembayaran Gaji Periode 1 Januari 2024 - 20 Januari 2024', TIMESTAMP '2024-04-19 09:45:29.658', 3320151.0, 1.01808804E8, -2526450.0);
INSERT INTO O_306 VALUES('240229010068', '240229010000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-04-19 09:45:29.658', 500000.0, 1463000.0, -3026450.0);
INSERT INTO O_306 VALUES('240229010069', '240229010000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart ', TIMESTAMP '2024-04-19 09:45:29.658', 50000.0, 1000000.0, -3076450.0);
INSERT INTO O_306 VALUES('240229010070', '240229010000', '7004', 168000.0, '1 Pcs Terpal 4 X 6 u/ Tambal Ban  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.658', 168000.0, 1631000.0, -3244450.0);
INSERT INTO O_306 VALUES('240229010071', '240229010000', '7004', 350000.0, '2 Pcs Pipa PVC 4  u/ Mess KM 18 @ Rp175.000  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.658', 350000.0, 1981000.0, -3594450.0);
INSERT INTO O_306 VALUES('240229010072', '240229010000', '7004', 150000.0, '10 Pcs Rumah Sikring u/ Stok @ Rp15.000  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.658', 150000.0, 2131000.0, -3744450.0);
INSERT INTO O_306 VALUES('240229010073', '240229010000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dan Antar Karyawan Cuti (Syamsudin Noor)', TIMESTAMP '2024-04-19 09:45:29.658', 50000.0, 1050000.0, -3794450.0);
INSERT INTO O_306 VALUES('240229010074', '240229010000', '7009', 564000.0, 'Jasa Pengiriman Tiki (12 Kg Dokumen dan Liner Genset Deutz) PR 2295 /  776', TIMESTAMP '2024-04-19 09:45:29.658', 564000.0, 1283000.0, -4358450.0);
INSERT INTO O_306 VALUES('240229010075', '240229010000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Pengiriman (Dokumen, dll) dan Jemput Karyawan dari Cuti (Wijanarko, Didik, Sarjito)', TIMESTAMP '2024-04-19 09:45:29.658', 50000.0, 1100000.0, -4408450.0);
INSERT INTO O_306 VALUES('240229010076', '240229010000', '7001', 150000.0, 'Harian Lepas Jaga Workshop Libur Isra Mi raj (8 Feb 2024) ', TIMESTAMP '2024-04-19 09:45:29.674', 150000.0, 1.01958804E8, -4558450.0);
INSERT INTO O_306 VALUES('240229010077', '240229010000', '7001', 150000.0, 'Harian Lepas Jaga Workshop Libur Hari Raya Imlek (10 Feb 2024) ', TIMESTAMP '2024-04-19 09:45:29.674', 150000.0, 1.02108804E8, -4708450.0);
INSERT INTO O_306 VALUES('240229010078', '240229010000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dan Antar Karyawan Cuti Keperluan Mendesak (Supriyanto)', TIMESTAMP '2024-04-19 09:45:29.674', 50000.0, 1150000.0, -4758450.0);
INSERT INTO O_306 VALUES('240229010079', '240229010000', '7004', 30000.0, '2 Pcs Isolasi Kertas (Nashua Tape 24 X 25) u/ Stok', TIMESTAMP '2024-04-19 09:45:29.674', 30000.0, 2161000.0, -4788450.0);
INSERT INTO O_306 VALUES('240229010080', '240229010000', '7017', 60000.0, '3 Dus Air Gelas Multazam u/ Gudang dan Proyek W-Shop', TIMESTAMP '2024-04-19 09:45:29.674', 60000.0, 60000.0, -4848450.0);
INSERT INTO O_306 VALUES('240229010081', '240229010000', '7004', 15000.0, 'Service Printer Epson L3210 (Admin Logistik) PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.674', 15000.0, 2176000.0, -4863450.0);
INSERT INTO O_306 VALUES('240229010082', '240229010000', '7008', 40000.0, '30 Meter Tali Nylon u/ Tambal Ban  PR 2294 / H 990', TIMESTAMP '2024-04-19 09:45:29.674', 40000.0, 990000.0, -4903450.0);
INSERT INTO O_306 VALUES('240229010083', '240229010000', '7001', 640000.0, 'Piket Genset Penerangan Periode 1 Feb 2024 - 10 Feb 2024 (10 Hari X Rp64.000)', TIMESTAMP '2024-04-19 09:45:29.674', 640000.0, 1.02748804E8, -5543450.0);
INSERT INTO O_306 VALUES('240229010084', '240229010000', '7006', 900000.0, 'Transport Darat Melak - Balikpapan (19 Jan 2024) dan Balikpapan - Melak (2 Feb 2024) u/ Cuti Periodik', TIMESTAMP '2024-04-19 09:45:29.674', 900000.0, 2050000.0, -6443450.0);
INSERT INTO O_306 VALUES('240229010085', '240229010000', '7006', 900000.0, 'Transport Darat Melak - Balikpapan (23 Jan 2024) dan Balikpapan - Melak (7 Feb 2024) u/ Cuti Periodik', TIMESTAMP '2024-04-19 09:45:29.674', 900000.0, 2950000.0, -7343450.0);
INSERT INTO O_306 VALUES('240229010086', '240229010000', '7006', 900000.0, 'Transport Darat Melak - Balikpapan (23 Jan 2024) dan Balikpapan - Melak (7 Feb 2024) u/ Cuti Periodik', TIMESTAMP '2024-04-19 09:45:29.674', 900000.0, 3850000.0, -8243450.0);
INSERT INTO O_306 VALUES('240229010087', '240229010000', '7006', 100000.0, 'Transport Darat Bandara Juanda - Bungurasih PP', TIMESTAMP '2024-04-19 09:45:29.674', 100000.0, 3950000.0, -8343450.0);
INSERT INTO O_306 VALUES('240229010088', '240229010000', '7006', 900000.0, 'Transport Darat Melak - Balikpapan (23 Jan 2024) dan Balikpapan - Melak (7 Feb 2024) u/ Cuti Periodik', TIMESTAMP '2024-04-19 09:45:29.674', 900000.0, 4850000.0, -9243450.0);
INSERT INTO O_306 VALUES('240229010089', '240229010000', '7006', 100000.0, 'Transport Darat Bandara Juanda - Bungurasih PP', TIMESTAMP '2024-04-19 09:45:29.674', 100000.0, 4950000.0, -9343450.0);
INSERT INTO O_306 VALUES('240229011001', '240229011000', '7003', 2050000.0, 'UM M.Agus Irwanto Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.329', 2050000.0, 8230000.0, -1.139345E7);
INSERT INTO O_306 VALUES('240229011002', '240229011000', '7003', 1400000.0, 'UM Syaifullah Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 1400000.0, 9630000.0, -1.279345E7);
INSERT INTO O_306 VALUES('240229011003', '240229011000', '7003', 1040000.0, 'UM Haqqul Istaflaha Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 1040000.0, 1.067E7, -1.383345E7);
INSERT INTO O_306 VALUES('240229011004', '240229011000', '7003', 440000.0, 'UM Sarjito F. Adam Periode 7 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 440000.0, 1.111E7, -1.427345E7);
INSERT INTO O_306 VALUES('240229011005', '240229011000', '7003', 300000.0, 'UM Samuel Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 300000.0, 1.141E7, -1.457345E7);
INSERT INTO O_306 VALUES('240229011006', '240229011000', '7003', 600000.0, 'UM Jakaria Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 600000.0, 1.201E7, -1.517345E7);
INSERT INTO O_306 VALUES('240229011007', '240229011000', '7003', 468000.0, 'UM Didik Periode 7 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 468000.0, 1.2478E7, -1.564145E7);
INSERT INTO O_306 VALUES('240229011008', '240229011000', '7003', 1800000.0, 'UM Supriyanto Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 1800000.0, 1.4278E7, -1.744145E7);
INSERT INTO O_306 VALUES('240229011009', '240229011000', '7003', 1260000.0, 'UM Handriadi Periode 2 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 1260000.0, 1.5538E7, -1.870145E7);
INSERT INTO O_306 VALUES('240229011010', '240229011000', '7003', 560000.0, 'UM Wijanarko Periode 7 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 560000.0, 1.6098E7, -1.926145E7);
INSERT INTO O_306 VALUES('240229011011', '240229011000', '7003', 1400000.0, 'UM Sekhan Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 1400000.0, 1.7498E7, -2.066145E7);
INSERT INTO O_306 VALUES('240229011012', '240229011000', '7003', 1050000.0, 'UM Mauretius Oji Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 1050000.0, 1.8548E7, -2.171145E7);
INSERT INTO O_306 VALUES('240229011013', '240229011000', '7003', 1400000.0, 'UM Anna Qodri Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 1400000.0, 1.9948E7, -2.311145E7);
INSERT INTO O_306 VALUES('240229011014', '240229011000', '7003', 945000.0, 'UM Raju Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.333', 945000.0, 2.0893E7, -2.405645E7);
INSERT INTO O_306 VALUES('240229011015', '240229011000', '7003', 1170000.0, 'UM Andri Syamsul Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.337', 1170000.0, 2.2063E7, -2.522645E7);
INSERT INTO O_306 VALUES('240229011016', '240229011000', '7003', 1500000.0, 'UM Rinaldhie G. Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.337', 1500000.0, 2.3563E7, -2.672645E7);
INSERT INTO O_306 VALUES('240229011017', '240229011000', '7003', 1500000.0, 'UM M. Hafizhnie Periode 1 Februari - 10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.337', 1500000.0, 2.5063E7, -2.822645E7);
INSERT INTO O_306 VALUES('240229011018', '240229011000', '7003', 1210000.0, 'UM Bani Susilo Periode 1 Februari - 11 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.337', 1210000.0, 2.6273E7, -2.943645E7);
INSERT INTO O_306 VALUES('240229011019', '240229011000', '7003', 1400000.0, 'UM Suradi Periode 1 Februari -  10 Februari 2024', TIMESTAMP '2024-04-19 09:46:42.337', 1400000.0, 2.7673E7, -3.083645E7);
INSERT INTO O_306 VALUES('240229011020', '240229011000', '7003', 1000000.0, 'Kasbon Potong Gaji Periode Februari 2024', TIMESTAMP '2024-04-19 09:46:42.337', 1000000.0, 2.8673E7, -3.183645E7);
INSERT INTO O_306 VALUES('240229011021', '240229011000', '7016', 300000.0, '2 Pcs Cras Joint Gum 88 u/ TR 01  PR 2300 / H 544', TIMESTAMP '2024-04-19 09:46:42.337', 300000.0, 1.82578569E8, -3.213645E7);
INSERT INTO O_306 VALUES('240229011022', '240229011000', '7007', 850000.0, 'Sevice Dinamo Starter Hino 500 (Bendix Komplit, Bushing, Ongkos) u/ TR 75  PR 2300 / H 544', TIMESTAMP '2024-04-19 09:46:42.337', 850000.0, 850000.0, -3.298645E7);
INSERT INTO O_306 VALUES('240229011023', '240229011000', '7016', 585000.0, '1 Pcs Kampas Rem (B. Shoes Hilux) u/ N 9811 EE  PR 2300 / H 544', TIMESTAMP '2024-04-19 09:46:42.337', 585000.0, 1.83163569E8, -3.357145E7);
INSERT INTO O_306 VALUES('240229011024', '240229011000', '7016', 185000.0, '1 Pcs Adjuster RH u/ N 9811 EE  PR 2300 / H 544', TIMESTAMP '2024-04-19 09:46:42.337', 185000.0, 1.83348569E8, -3.375645E7);
INSERT INTO O_306 VALUES('240229011025', '240229011000', '7017', 10000.0, '10 Pcs Skun u/ Tower Lamp 01 @ Rp1.000  PR 2300 / H 544', TIMESTAMP '2024-04-19 09:46:42.337', 10000.0, 70000.0, -3.376645E7);
INSERT INTO O_306 VALUES('240229011026', '240229011000', '7017', 120000.0, '1 Pcs Isolasi Scoth 3m u/ Dinamo Genset Deutz 01 PR 2300 / H 544', TIMESTAMP '2024-04-19 09:46:42.337', 120000.0, 190000.0, -3.388645E7);
INSERT INTO O_306 VALUES('240229011027', '240229011000', '7007', 700000.0, 'Service Alternator DT (Ganti IC Regulator, Dioda Lampu, Ongkos) u/ Sakai 17  PR 0801 / H 788', TIMESTAMP '2024-04-19 09:46:42.337', 700000.0, 1550000.0, -3.458645E7);
INSERT INTO O_306 VALUES('240229011028', '240229011000', '7017', 60000.0, '2 Pcs Stop Kran 3/4 u/ Mess KM 18 @ Rp30.000 PR 0801 / H 788', TIMESTAMP '2024-04-19 09:46:42.337', 60000.0, 250000.0, -3.464645E7);
INSERT INTO O_306 VALUES('240229011029', '240229011000', '7017', 18000.0, '1 Pcs Lem Pipa u/ Mess KM 18  PR 0801 / H 788', TIMESTAMP '2024-04-19 09:46:42.337', 18000.0, 268000.0, -3.466445E7);
INSERT INTO O_306 VALUES('240229011030', '240229011000', '7017', 6000.0, '1 Pcs Pipa T (PVC) 3/4 u/ Mess KM 18  PR 0801 / H 788', TIMESTAMP '2024-04-19 09:46:42.337', 6000.0, 274000.0, -3.467045E7);
INSERT INTO O_306 VALUES('240229011031', '240229011000', '7017', 16000.0, '4 Pcs L Bow PVC (Sambungan) 1/2 u/ Mess KM 18 PR 0801 / H 788', TIMESTAMP '2024-04-19 09:46:42.337', 16000.0, 290000.0, -3.468645E7);
INSERT INTO O_306 VALUES('240229011032', '240229011000', '7017', 600000.0, '4 Pcs Cross Joint Gum 88 u/ TR 09 dan Stok @ Rp150.000 PR 0803 / H 255', TIMESTAMP '2024-04-19 09:46:42.337', 600000.0, 890000.0, -3.528645E7);
INSERT INTO O_306 VALUES('240229011033', '240229011000', '7016', 100000.0, '1 Pcs C/M Atas u/ L 8504 AJ  PR 0803 / H 255', TIMESTAMP '2024-04-19 09:46:42.337', 100000.0, 1.83448569E8, -3.538645E7);
INSERT INTO O_306 VALUES('240229011034', '240229011000', '7016', 300000.0, '1 Pcs Diaphragm Ukuran 24 u/ TR 05  PR 0803 / H 255', TIMESTAMP '2024-04-19 09:46:42.337', 300000.0, 1.83748569E8, -3.568645E7);
INSERT INTO O_306 VALUES('240229011035', '240229011000', '7016', 200000.0, '2 Pcs Baut Carter (Tap Oli) u/ TR 04 dan Stok PR 0803 / H 255', TIMESTAMP '2024-04-19 09:46:42.337', 200000.0, 1.83948569E8, -3.588645E7);
INSERT INTO O_306 VALUES('240229011036', '240229011000', '7016', 225000.0, '3 Pcs Prime Pump (Pompa Minyak) u/ Stok @ Rp75.000 PR 0803 / H 255', TIMESTAMP '2024-04-19 09:46:42.337', 225000.0, 1.84173569E8, -3.611145E7);
INSERT INTO O_306 VALUES('240229011037', '240229011000', '7016', 410000.0, '1 Set Hose Assy Hyd 1/2  X 0,38 Meter c/w Fitting 4 Wire / Elbow u/ Sakai 18  PR 0803 / H 255', TIMESTAMP '2024-04-19 09:46:42.337', 410000.0, 1.84583569E8, -3.652145E7);
INSERT INTO O_306 VALUES('240229011038', '240229011000', '7016', 1250000.0, '5 Pcs Tutup Tangki Solar Hino 500 @ Rp250.000 u/ TR 70, TR 73, TR 74, TR 75, dan TR 76   PR 0805 / 991', TIMESTAMP '2024-04-19 09:46:42.341', 1250000.0, 1.85833569E8, -3.777145E7);
INSERT INTO O_306 VALUES('240229011039', '240229011000', '7016', 4149000.0, '3 Pcs Liner u/ Genset Deutz 2 @ Rp1.200.000 dan PPN 11% (Rp396.000)  PR 0805 / H 991', TIMESTAMP '2024-04-19 09:46:42.341', 4149000.0, 1.89982569E8, -4.192045E7);
INSERT INTO O_306 VALUES('240229011040', '240229011000', '7016', 150000.0, '1 Pcs Bearing NTN (Lii8) 132211 u/ N 9811 EE  PR 0805 / H 991', TIMESTAMP '2024-04-19 09:46:42.341', 150000.0, 1.90132569E8, -4.207045E7);
INSERT INTO O_306 VALUES('240229011041', '240229011000', '7016', 300000.0, '2 Pcs Bearing 89449 / 10 (Tiuii8) u/ N 9811 EE PR 0805 / H 991', TIMESTAMP '2024-04-19 09:46:42.341', 300000.0, 1.90432569E8, -4.237045E7);
INSERT INTO O_306 VALUES('240229011042', '240229011000', '7016', 300000.0, '40 Pcs Nepel L u/ Stok @ Rp7.500  PR 0805 / H 991', TIMESTAMP '2024-04-19 09:46:42.341', 300000.0, 1.90732569E8, -4.267045E7);
INSERT INTO O_306 VALUES('240229011043', '240229011000', '7016', 870000.0, '3 Pcs Cable Stop Assy Hino 500 u/ TR 01 & Stok @ Rp290.000 PR 0805 / H 991', TIMESTAMP '2024-04-19 09:46:42.341', 870000.0, 1.91602569E8, -4.354045E7);
INSERT INTO O_306 VALUES('240229011044', '240229011000', '7016', 480000.0, '3 Jerigen Air Zuur u/ Stok @ Rp160.000  PR 0805 / H 991', TIMESTAMP '2024-04-19 09:46:42.341', 480000.0, 1.92082569E8, -4.402045E7);
INSERT INTO O_306 VALUES('240229011045', '240229011000', '7016', 330000.0, '1 Pcs Bearing TR070904 u/ N 9811 EE  PR 0805 / H 991', TIMESTAMP '2024-04-19 09:46:42.341', 330000.0, 1.92412569E8, -4.435045E7);
INSERT INTO O_306 VALUES('240229011046', '240229011000', '7016', 50000.0, '1 Pcs Seal Gardan Depan u/ N 9811 EE  PR 0805 / H 991', TIMESTAMP '2024-04-19 09:46:42.341', 50000.0, 1.92462569E8, -4.440045E7);
INSERT INTO O_306 VALUES('240229011047', '240229011000', '7016', 550000.0, '1 Set Seal Kit P/S Bawah u/ N 9811 EE  PR 0805 / H 991', TIMESTAMP '2024-04-19 09:46:42.341', 550000.0, 1.93012569E8, -4.495045E7);
INSERT INTO O_306 VALUES('240229011048', '240229011000', '7016', 240000.0, '4 Pcs Fuel Filter Donaldson P55-0410 u/ Genset Rhino @ Rp60.000  PR 0806 / H 912', TIMESTAMP '2024-04-19 09:46:42.341', 240000.0, 1.93252569E8, -4.519045E7);
INSERT INTO O_306 VALUES('240229011049', '240229011000', '7016', 180000.0, '2 Pcs Filter Solar MB 220900 u/ L 8397 VB (L300) @ Rp90.000 PR 0806 / H 912 ', TIMESTAMP '2024-04-19 09:46:42.341', 180000.0, 1.93432569E8, -4.537045E7);
INSERT INTO O_306 VALUES('240229011050', '240229011000', '7016', 180000.0, '2 Pcs Oil Filter 1230A 186 u/ L 8397 VB (L300) @ Rp90.000 PR 0806 / H 912', TIMESTAMP '2024-04-19 09:46:42.341', 180000.0, 1.93612569E8, -4.555045E7);
INSERT INTO O_306 VALUES('240229011051', '240229011000', '7016', 300000.0, '5 Pcs Oil Filter C-1701 u/ Tower Lamp @ Rp60.000 PR 0806 / H 912', TIMESTAMP '2024-04-19 09:46:42.341', 300000.0, 1.93912569E8, -4.585045E7);
INSERT INTO O_306 VALUES('240229011052', '240229011000', '7017', 965000.0, '50 Meter Kabel NYYHY 2 X 2,5 JM u/ Workshop @ Rp19.300 PR 0806 / H 912', TIMESTAMP '2024-04-19 09:46:42.341', 965000.0, 1855000.0, -4.681545E7);
INSERT INTO O_306 VALUES('240229011053', '240229011000', '7017', 1042000.0, '50 Meter Kabel NYYHY 3 X 2,5 SP u/ Workshop PR 0806 / H 912', TIMESTAMP '2024-04-19 09:46:42.341', 1042000.0, 2897000.0, -4.785745E7);
INSERT INTO O_306 VALUES('240229011054', '240229011000', '7016', 395000.0, '1 Pcs Kontaktor LC1D16 / 220 V u/ Workshop  PR 0806 / H 912', TIMESTAMP '2024-04-19 09:46:42.341', 395000.0, 1.94307569E8, -4.825245E7);
INSERT INTO O_306 VALUES('240229011055', '240229011000', '7016', 190000.0, '2 Set Jepitan Aki 400A u/ Workshop @ Rp95.000 PR 0806 / H 912', TIMESTAMP '2024-04-19 09:46:42.341', 190000.0, 1.94497569E8, -4.844245E7);
INSERT INTO O_306 VALUES('240229011056', '240229011000', '7017', 78000.0, '1 Set Sikat Bor u/ Workshop  PR 0806 / H 912', TIMESTAMP '2024-04-19 09:46:42.341', 78000.0, 2975000.0, -4.852045E7);
INSERT INTO O_306 VALUES('240229011057', '240229011000', '7016', 8000.0, '4 Pcs O Ring 320 u/ TR 03 @ Rp2.000  PR 0807 / H 913', TIMESTAMP '2024-04-19 09:46:42.341', 8000.0, 1.94505569E8, -4.852845E7);
INSERT INTO O_306 VALUES('240229011058', '240229011000', '7016', 40000.0, '1 Pcs Oil Seal 55-72-10 u/ TR 03  PR 0807 / H 913', TIMESTAMP '2024-04-19 09:46:42.341', 40000.0, 1.94545569E8, -4.856845E7);
INSERT INTO O_306 VALUES('240229011059', '240229011000', '7016', 750000.0, '1 Pcs Flasher Sein 85900 - EW011 u/ TR    PR 0807 / H 913', TIMESTAMP '2024-04-19 09:46:42.341', 750000.0, 1.95295569E8, -4.931845E7);
INSERT INTO O_306 VALUES('240229011060', '240229011000', '7016', 250000.0, '2 Pcs Fuel Pump Espass 056200 - 0570 u/ Tower Lamp dan Stok  @ Rp125.000  PR 0807 / H 913', TIMESTAMP '2024-04-19 09:46:42.341', 250000.0, 1.95545569E8, -4.956845E7);
INSERT INTO O_306 VALUES('240229011061', '240229011000', '7016', 320000.0, '2 Pcs Tie Rod 555 - SE 3891 R/L u/ N 9811 EE @ Rp160.000 PR 0807 / H 913', TIMESTAMP '2024-04-19 09:46:42.341', 320000.0, 1.95865569E8, -4.988845E7);
INSERT INTO O_306 VALUES('240229011062', '240229011000', '7016', 150000.0, '2 Pcs Shock Absorbser Bush u/ N 9811 EE @ Rp75.000 PR 0807 / H 913', TIMESTAMP '2024-04-19 09:46:42.341', 150000.0, 1.96015569E8, -5.003845E7);
INSERT INTO O_306 VALUES('240229011063', '240229011000', '7016', 180000.0, '1 Pcs Cable Parking Brake RR RH 46420 - 0K040 u/ N 9811 EE PR 0807 / H 913', TIMESTAMP '2024-04-19 09:46:42.341', 180000.0, 1.96195569E8, -5.021845E7);
INSERT INTO O_306 VALUES('240229011064', '240229011000', '7016', 60000.0, '2 Pcs Tie Rod Stabil / RC 48815 - 0K010 u/ N 9811 EE @ Rp30.000 PR 0807 / H 913', TIMESTAMP '2024-04-19 09:46:42.341', 60000.0, 1.96255569E8, -5.027845E7);
INSERT INTO O_306 VALUES('240229011065', '240229011000', '7016', 60000.0, '4 Pcs Karet Shock RR u/ N 9811 EE @ Rp15.000 PR 0807 / H 913', TIMESTAMP '2024-04-19 09:46:42.341', 60000.0, 1.96315569E8, -5.033845E7);
INSERT INTO O_306 VALUES('240229011066', '240229011000', '7016', 1725000.0, '15 Pcs Baut Rocker Arm Hino Jobe S1370-91030 u/ Stok @ Rp115.000  PR 0808 / H 914', TIMESTAMP '2024-04-19 09:46:42.345', 1725000.0, 1.98040569E8, -5.206345E7);
INSERT INTO O_306 VALUES('240229011067', '240229011000', '7016', 860000.0, '20 Pcs Seal Klep Jobe S13719-1470 u/ TR 06 @ Rp43.000 PR 2298 / H 331', TIMESTAMP '2024-04-19 09:46:42.345', 860000.0, 1.98900569E8, -5.292345E7);
INSERT INTO O_306 VALUES('240229011068', '240229011000', '7016', 170000.0, '2 Pcs O Ring Nozzle Hino Jobe (O Ring Injector) SZ910-15047  u/ TR 10 @ Rp85.000  PR 2298 / H 331', TIMESTAMP '2024-04-19 09:46:42.345', 170000.0, 1.99070569E8, -5.309345E7);
INSERT INTO O_306 VALUES('240229011069', '240229011000', '7016', 230000.0, '2 Pcs Spion SBM-EG-2007 LH u/ Stok @ Rp115.000 PR 0808 / H 914', TIMESTAMP '2024-04-19 09:46:42.345', 230000.0, 1.99300569E8, -5.332345E7);
INSERT INTO O_306 VALUES('240229011070', '240229011000', '7016', 220000.0, '2 Pcs Spion SBM-EG-2006 RH u/ Stok @ Rp110.000 PR 0808 / H 914', TIMESTAMP '2024-04-19 09:46:42.345', 220000.0, 1.99520569E8, -5.354345E7);
INSERT INTO O_306 VALUES('240229011071', '240229011000', '7017', 320000.0, '2 Jerigen Air Zuur u/ Stok @ Rp160.000  PR 0808 / H 914', TIMESTAMP '2024-04-19 09:46:42.345', 320000.0, 3295000.0, -5.386345E7);
INSERT INTO O_306 VALUES('240229011072', '240229011000', '7016', 44700.0, '1 Pcs Rexco 18 Contact Cleaner 500 ML u/ Stok PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 44700.0, 1.99565269E8, -5.390815E7);
INSERT INTO O_306 VALUES('240229011073', '240229011000', '7016', 91800.0, '1 Pcs WD-40 Oil 382 ML u/ Stok  PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 91800.0, 1.99657069E8, -5.399995E7);
INSERT INTO O_306 VALUES('240229011074', '240229011000', '7016', 34500.0, '1 Pcs Rexco 81 Carbu & Injector Cleaner u/ Stok PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 34500.0, 1.99691569E8, -5.403445E7);
INSERT INTO O_306 VALUES('240229011075', '240229011000', '7016', 45400.0, '1 Pcs Tang Lancip 6  u/ Workshop  PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 45400.0, 1.99736969E8, -5.407985E7);
INSERT INTO O_306 VALUES('240229011076', '240229011000', '7016', 83300.0, '1 Pcs Screw Extractor / Tap Balik u/ Workshop PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 83300.0, 1.99820269E8, -5.416315E7);
INSERT INTO O_306 VALUES('240229011077', '240229011000', '7016', 209000.0, '1 Pcs Sok 1  30MM S6 u/ Workshop  PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 209000.0, 2.00029269E8, -5.437215E7);
INSERT INTO O_306 VALUES('240229011078', '240229011000', '7016', 62700.0, '1 Pcs Flexible Magnet Pick Up u/ Workshop PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 62700.0, 2.00091969E8, -5.443485E7);
INSERT INTO O_306 VALUES('240229011079', '240229011000', '7016', 337000.0, '1 Set (11 Pcs) K.Ring Pas 8 - 24 MM u/ Workshop  PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 337000.0, 2.00428969E8, -5.477185E7);
INSERT INTO O_306 VALUES('240229011080', '240229011000', '7016', 248000.0, '1 Set (4 Pcs) Tang Snap Ring 7  u/ Workshop  PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 248000.0, 2.00676969E8, -5.501985E7);
INSERT INTO O_306 VALUES('240229011081', '240229011000', '7016', 15800.0, '1 Pcs Obeng Go-Thru -6  X 6MM u/ Workshop  PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 15800.0, 2.00692769E8, -5.503565E7);
INSERT INTO O_306 VALUES('240229011082', '240229011000', '7016', 20100.0, '1 Pcs Obeng Go-Thru +6  X 125MM u/ Workshop  PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 20100.0, 2.00712869E8, -5.505575E7);
INSERT INTO O_306 VALUES('240229011083', '240229011000', '7016', 107500.0, '1 Pcs VDE Screwdriver 6,5MM X 150MM u/ W-shop PR 0809 / H 915', TIMESTAMP '2024-04-19 09:46:42.345', 107500.0, 2.00820369E8, -5.516325E7);
INSERT INTO O_306 VALUES('240229011084', '240229011000', '7016', 35000.0, '1 Pcs Kopler u/ Kompresor Grease  PR 0811 / H 917', TIMESTAMP '2024-04-19 09:46:42.345', 35000.0, 2.00855369E8, -5.519825E7);
INSERT INTO O_306 VALUES('240229011085', '240229011000', '7017', 160000.0, '1 Pcs (2 Meter) Kabel 2 mm u/ Paralel Aki PR 0811 / H 917', TIMESTAMP '2024-04-19 09:46:42.345', 160000.0, 3455000.0, -5.535825E7);
INSERT INTO O_306 VALUES('240229011086', '240229011000', '7017', 100000.0, '10 Pcs Skun Kabel u/ Paralel Aki  PR 0811 / H 917', TIMESTAMP '2024-04-19 09:46:42.345', 100000.0, 3555000.0, -5.545825E7);
INSERT INTO O_306 VALUES('240229011087', '240229011000', '7017', 90000.0, '1 Pcs Van Belt A 45 u/ Genset Roda  PR 0811 / H 917', TIMESTAMP '2024-04-19 09:46:42.345', 90000.0, 3645000.0, -5.554825E7);
INSERT INTO O_306 VALUES('240229011088', '240229011000', '7017', 125000.0, '1 Pcs Van Belt A 50 u/ Genset Roda  PR 0811 / H 917', TIMESTAMP '2024-04-19 09:46:42.345', 125000.0, 3770000.0, -5.567325E7);
INSERT INTO O_306 VALUES('240229011089', '240229011000', '7016', 300000.0, '3 Pcs Baut Copler u/ Kompresor Grease @ Rp100.000  PR 0811 / H 917', TIMESTAMP '2024-04-19 09:46:42.345', 300000.0, 2.01155369E8, -5.597325E7);
INSERT INTO O_306 VALUES('240229013001', '240229013000', '7016', 8000.0, '4 Pcs WR M8 u/ Blower Genset Deutz PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 8000.0, 2.01163369E8, -5.598125E7);
INSERT INTO O_306 VALUES('240229013002', '240229013000', '7016', 22000.0, '1 Pcs Snowman Refill Ink Biru u/ Planner PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 22000.0, 2.01185369E8, -5.600325E7);
INSERT INTO O_306 VALUES('240229013003', '240229013000', '7016', 8000.0, '1 Pcs Standard Marker Permanent (Spidol Permanen) u/ Planner', TIMESTAMP '2024-04-19 09:48:52.866', 8000.0, 2.01193369E8, -5.601125E7);
INSERT INTO O_306 VALUES('240229013004', '240229013000', '7016', 16000.0, '2 Pcs Standard W88 Black (Spidol Whiteboard) u/ Planner ', TIMESTAMP '2024-04-19 09:48:52.866', 16000.0, 2.01209369E8, -5.602725E7);
INSERT INTO O_306 VALUES('240229013005', '240229013000', '7017', 200000.0, '1 Set Obeng Tekiro u/ Workshop PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 200000.0, 3970000.0, -5.622725E7);
INSERT INTO O_306 VALUES('240229013006', '240229013000', '7017', 75000.0, '1 Klg Air Duster u/ Workshop  PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 75000.0, 4045000.0, -5.630225E7);
INSERT INTO O_306 VALUES('240229013007', '240229013000', '7017', 30000.0, '3 Pcs Sikat Kawat Gagang Hitam u/ Workshop PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 30000.0, 4075000.0, -5.633225E7);
INSERT INTO O_306 VALUES('240229013008', '240229013000', '7017', 45000.0, '3 Pcs Sikat Kawat Panjang u/ Workshop PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 45000.0, 4120000.0, -5.637725E7);
INSERT INTO O_306 VALUES('240229013009', '240229013000', '7017', 30000.0, '3 Pcs Sikat Kawat Gagang Kuning u/ Workshop PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 30000.0, 4150000.0, -5.640725E7);
INSERT INTO O_306 VALUES('240229013010', '240229013000', '7017', 18000.0, '1 Pcs Fitting Broco u/ Workshop PR 0828 / H112', TIMESTAMP '2024-04-19 09:48:52.866', 18000.0, 4168000.0, -5.642525E7);
INSERT INTO O_306 VALUES('240229013011', '240229013000', '7017', 48000.0, '1 Pcs Lampu LED 20 W u/ Workshop PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 48000.0, 4216000.0, -5.647325E7);
INSERT INTO O_306 VALUES('240229013012', '240229013000', '7017', 115000.0, '1 Lembar Plywood 9 mm u/ Workshop PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 115000.0, 4331000.0, -5.658825E7);
INSERT INTO O_306 VALUES('240229013013', '240229013000', '7017', 30000.0, '3 Pcs Sikat Kawat Lembut u/ Workshop  PR 0828 / H 112', TIMESTAMP '2024-04-19 09:48:52.866', 30000.0, 4361000.0, -5.661825E7);
INSERT INTO O_306 VALUES('240229013014', '240229013000', '7016', 60000.0, '1 Pcs Van Belt A - 48 u/ Genset Deutz PR 0830 / H 111', TIMESTAMP '2024-04-19 09:48:52.882', 60000.0, 2.01269369E8, -5.667825E7);
INSERT INTO O_306 VALUES('240229013015', '240229013000', '7016', 450000.0, '1 Pcs CB Triton (Bearing Gantung) u/ L 8039 DX PR 0830 / H 111', TIMESTAMP '2024-04-19 09:48:52.882', 450000.0, 2.01719369E8, -5.712825E7);
INSERT INTO O_306 VALUES('240229013016', '240229013000', '7016', 70000.0, '1 Pcs Van Belt A - 47 u/ Genset Deutz  PR 0830 / H 111', TIMESTAMP '2024-04-19 09:48:52.882', 70000.0, 2.01789369E8, -5.719825E7);
INSERT INTO O_306 VALUES('240229013017', '240229013000', '7017', 975000.0, 'Bor Tangan Maxtec 13 ml u/ Workshop PR 0830 / H 111', TIMESTAMP '2024-04-19 09:48:52.882', 975000.0, 5336000.0, -5.817325E7);
INSERT INTO O_306 VALUES('240229013018', '240229013000', '7016', 400000.0, '  - 1 Unit Nissan Frontier L 8504 AJ', TIMESTAMP '2024-04-19 09:48:52.882', 400000.0, 2.02189369E8, -5.857325E7);
INSERT INTO O_306 VALUES('240229013019', '240229013000', '7016', 400000.0, '  - 1 Unit Nissan Frontier N 8049 AB', TIMESTAMP '2024-04-19 09:48:52.882', 400000.0, 2.02589369E8, -5.897325E7);
INSERT INTO O_306 VALUES('240229013020', '240229013000', '7016', 400000.0, '  - 1 Unit Hilux N 8993 AT', TIMESTAMP '2024-04-19 09:48:52.882', 400000.0, 2.02989369E8, -5.937325E7);
INSERT INTO O_306 VALUES('240229013021', '240229013000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-04-19 09:48:52.882', 500000.0, 2676000.0, -5.987325E7);
INSERT INTO O_306 VALUES('240229013022', '240229013000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Sparepart dll.', TIMESTAMP '2024-04-19 09:48:52.882', 50000.0, 5000000.0, -5.992325E7);
INSERT INTO O_306 VALUES('240229013023', '240229013000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen dari Melak - Surabaya ', TIMESTAMP '2024-04-19 09:48:52.882', 47000.0, 1330000.0, -5.997025E7);
INSERT INTO O_306 VALUES('240229013024', '240229013000', '7009', 102000.0, 'Bayar Cendana u/ Pengiriman Barang dari Samarinda - Melak', TIMESTAMP '2024-04-19 09:48:52.882', 102000.0, 1432000.0, -6.007225E7);
INSERT INTO O_306 VALUES('240229013025', '240229013000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Sparepart dll.', TIMESTAMP '2024-04-19 09:48:52.882', 50000.0, 5050000.0, -6.012225E7);
INSERT INTO O_306 VALUES('240229013026', '240229013000', '7017', 75000.0, 'Pembuatan Banner 1,5 X 1 u/ HSE PR 0822 / H 119', TIMESTAMP '2024-04-19 09:48:52.882', 75000.0, 5411000.0, -6.019725E7);
INSERT INTO O_306 VALUES('240229013027', '240229013000', '7017', 40000.0, '1 Kaleng Tinner u/ HSE  PR 0822 / H 119', TIMESTAMP '2024-04-19 09:48:52.882', 40000.0, 5451000.0, -6.023725E7);
INSERT INTO O_306 VALUES('240229013028', '240229013000', '7017', 166000.0, '2 Kaleng Cat Avian u/ HSE @ Rp83.000  PR 0822 / H 119', TIMESTAMP '2024-04-19 09:48:52.882', 166000.0, 5617000.0, -6.040325E7);
INSERT INTO O_306 VALUES('240229013029', '240229013000', '7017', 6000.0, '1 Pcs Kuas 1  u/ HSE  PR 0822 / H 119', TIMESTAMP '2024-04-19 09:48:52.882', 6000.0, 5623000.0, -6.040925E7);
INSERT INTO O_306 VALUES('240229013030', '240229013000', '7017', 10000.0, '1 Pcs Kuas 2  u/ HSE  PR 0822 / H 119', TIMESTAMP '2024-04-19 09:48:52.882', 10000.0, 5633000.0, -6.041925E7);
INSERT INTO O_306 VALUES('240229013031', '240229013000', '7004', 60000.0, '6 Lembar Print Warna (Peta Tambang) u/ Pengawas dan Office', TIMESTAMP '2024-04-19 09:48:52.882', 60000.0, 2736000.0, -6.047925E7);
INSERT INTO O_306 VALUES('240229013032', '240229013000', '7009', 100000.0, 'Bayar Cendana + Kurir u/ Pengiriman Samarinda - Melak ', TIMESTAMP '2024-04-19 09:48:52.882', 100000.0, 1532000.0, -6.057925E7);
INSERT INTO O_306 VALUES('240229013033', '240229013000', '7010', 6500.0, 'Admin Bank (Transfer tgl 23 Februari 2024) ', TIMESTAMP '2024-04-19 09:48:52.882', 6500.0, 106530.0, -6.058575E7);
INSERT INTO O_306 VALUES('240229013034', '240229013000', '7022', 2500000.0, 'Bantuan Sosial u/ Pengurus Muara Batuq Periode Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 2500000.0, 2500000.0, -6.308575E7);
INSERT INTO O_306 VALUES('240229013035', '240229013000', '7001', 3267840.0, 'Gaji Selama Penugasan di PT. Dharma Abadi Kontraktor', TIMESTAMP '2024-04-19 09:48:52.882', 3267840.0, 1.06016644E8, -6.635359E7);
INSERT INTO O_306 VALUES('240229013036', '240229013000', '7006', 75000.0, 'Penyeberangan PP L 9502 GH u/ Ambil Barang Henicargo dan ', TIMESTAMP '2024-04-19 09:48:52.882', 75000.0, 5125000.0, -6.642859E7);
INSERT INTO O_306 VALUES('240229013037', '240229013000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen dari Melak - Surabaya ', TIMESTAMP '2024-04-19 09:48:52.882', 47000.0, 1579000.0, -6.647559E7);
INSERT INTO O_306 VALUES('240229013038', '240229013000', '7017', 15000.0, '1 Pcs Stapler Kangaro u/ PJO (Pak Agus) PR 0824 / H 655', TIMESTAMP '2024-04-19 09:48:52.882', 15000.0, 5648000.0, -6.649059E7);
INSERT INTO O_306 VALUES('240229013039', '240229013000', '7017', 12000.0, '1 Pcs Isolasi Bening (Okey Tape Transparant) u/ PJO (Pak Agus)', TIMESTAMP '2024-04-19 09:48:52.882', 12000.0, 5660000.0, -6.650259E7);
INSERT INTO O_306 VALUES('240229013040', '240229013000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-04-19 09:48:52.882', 500000.0, 6160000.0, -6.700259E7);
INSERT INTO O_306 VALUES('240229013041', '240229013000', '7017', 240000.0, '1 Pcs Terpal 4 X 6 A8 u/ Manhaul 02  PR 0829 / H 911', TIMESTAMP '2024-04-19 09:48:52.882', 240000.0, 6400000.0, -6.724259E7);
INSERT INTO O_306 VALUES('240229013042', '240229013000', '7017', 180000.0, '2 Pcs Kursi u/ Gudang @ Rp90.000  PR 0829 / H 911', TIMESTAMP '2024-04-19 09:48:52.882', 180000.0, 6580000.0, -6.742259E7);
INSERT INTO O_306 VALUES('240229013043', '240229013000', '7017', 90000.0, '2 Pcs Bantal u/ Sahardi (Op. Excavator) dan Fajar (Helper Mekanik)', TIMESTAMP '2024-04-19 09:48:52.882', 90000.0, 6670000.0, -6.751259E7);
INSERT INTO O_306 VALUES('240229013044', '240229013000', '7017', 50000.0, '2 Pcs Sarung Bantal u/ Sahardi (Op. Excavator) dan Fajar (Helper', TIMESTAMP '2024-04-19 09:48:52.882', 50000.0, 6720000.0, -6.756259E7);
INSERT INTO O_306 VALUES('240229013045', '240229013000', '7017', 110000.0, '1 Pcs Sprei u/ Bp. Hani (Tukar Sprei PR 0804 / H 267) PR 0829 / H 911', TIMESTAMP '2024-04-19 09:48:52.882', 110000.0, 6830000.0, -6.767259E7);
INSERT INTO O_306 VALUES('240229013046', '240229013000', '7017', 400000.0, '1 Pcs Kipas Angin u/ Gudang Workshop PR 0829 / H 911', TIMESTAMP '2024-04-19 09:48:52.882', 400000.0, 7230000.0, -6.807259E7);
INSERT INTO O_306 VALUES('240229013047', '240229013000', '7006', 100000.0, 'Bayar Cendana + Kurir Pengiriman S-Part Samarinda - Melak', TIMESTAMP '2024-04-19 09:48:52.882', 100000.0, 5225000.0, -6.817259E7);
INSERT INTO O_306 VALUES('240229013048', '240229013000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dll', TIMESTAMP '2024-04-19 09:48:52.882', 50000.0, 5275000.0, -6.822259E7);
INSERT INTO O_306 VALUES('240229013049', '240229013000', '7017', 120000.0, '2 Pcs Tespen DC Tekiro u/ Workshop @ Rp60.000 PR 0830 / H 111', TIMESTAMP '2024-04-19 09:48:52.882', 120000.0, 7350000.0, -6.834259E7);
INSERT INTO O_306 VALUES('240229013050', '240229013000', '7017', 275000.0, '1 Tabung LPG 12 Kg u/ Workshop  PR 0830 / H 111', TIMESTAMP '2024-04-19 09:48:52.882', 275000.0, 7625000.0, -6.861759E7);
INSERT INTO O_306 VALUES('240229013051', '240229013000', '7017', 67500.0, '5 Pcs Buku Surat Jalan 3 Ply PPL u/ Logistik  PR 0830 / H 111', TIMESTAMP '2024-04-19 09:48:52.882', 67500.0, 7692500.0, -6.868509E7);
INSERT INTO O_306 VALUES('240229013052', '240229013000', '7017', 95000.0, '5 Dus Air Gelas An Najwa u/ Proyek Gudang / Workshop', TIMESTAMP '2024-04-19 09:48:52.882', 95000.0, 7787500.0, -6.878009E7);
INSERT INTO O_306 VALUES('240229013053', '240229013000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Jemput Karyawan (Slamet S.) ', TIMESTAMP '2024-04-19 09:48:52.882', 50000.0, 5325000.0, -6.883009E7);
INSERT INTO O_306 VALUES('240229013054', '240229013000', '7001', 576000.0, 'Piket Genset Penerangan Periode 21 Feb 2024 - 29 Feb 2024', TIMESTAMP '2024-04-19 09:48:52.882', 576000.0, 1.06592644E8, -6.940609E7);
INSERT INTO O_306 VALUES('240229013055', '240229013000', '7006', 900000.0, 'Transport Darat Melak - Balikpapan (7 Feb 2024) dan Bandara (Banjarmasin) - Melak (21 Feb 2024) u/ Cuti Periodik', TIMESTAMP '2024-04-19 09:48:52.882', 900000.0, 6225000.0, -7.030609E7);
INSERT INTO O_306 VALUES('240229013056', '240229013000', '7006', 140000.0, 'Transport dari Rumah ke Bandara (21 Feb 1014)', TIMESTAMP '2024-04-19 09:48:52.882', 140000.0, 6365000.0, -7.044609E7);
INSERT INTO O_306 VALUES('240229013057', '240229013000', '7006', 450000.0, 'Transport (Speed Boat) dari Samarinda - Melak tgl 24 Feb 2024', TIMESTAMP '2024-04-19 09:48:52.882', 450000.0, 6815000.0, -7.089609E7);
INSERT INTO O_306 VALUES('240229013058', '240229013000', '7006', 12500.0, 'Retribusi Kapal Wisata Rp5.500 dan Retribusi Speed Boat Rp7.000', TIMESTAMP '2024-04-19 09:48:52.882', 12500.0, 6827500.0, -7.090859E7);
INSERT INTO O_306 VALUES('240229013059', '240229013000', '7003', 1710000.0, 'UM M.Agus Irwanto Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1710000.0, 3.0383E7, -7.261859E7);
INSERT INTO O_306 VALUES('240229013060', '240229013000', '7003', 420000.0, 'UM Slamet Subagyo Periode 27 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 420000.0, 3.0803E7, -7.303859E7);
INSERT INTO O_306 VALUES('240229013061', '240229013000', '7003', 1260000.0, 'UM Syaifullah Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1260000.0, 3.2063E7, -7.429859E7);
INSERT INTO O_306 VALUES('240229013062', '240229013000', '7003', 880000.0, 'UM Haqqul Istaflaha Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 880000.0, 3.2943E7, -7.517859E7);
INSERT INTO O_306 VALUES('240229013063', '240229013000', '7003', 990000.0, 'UM Sarjito F. Adam Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 990000.0, 3.3933E7, -7.616859E7);
INSERT INTO O_306 VALUES('240229013064', '240229013000', '7003', 600000.0, 'UM Jakaria Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 600000.0, 3.4533E7, -7.676859E7);
INSERT INTO O_306 VALUES('240229013065', '240229013000', '7003', 1053000.0, 'UM Didik Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1053000.0, 3.5586E7, -7.782159E7);
INSERT INTO O_306 VALUES('240229013066', '240229013000', '7003', 1260000.0, 'UM Syamsudin Noor Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1260000.0, 3.6846E7, -7.908159E7);
INSERT INTO O_306 VALUES('240229013067', '240229013000', '7003', 1620000.0, 'UM Supriyanto Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1620000.0, 3.8466E7, -8.070159E7);
INSERT INTO O_306 VALUES('240229013068', '240229013000', '7003', 1260000.0, 'UM Handriadi Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1260000.0, 3.9726E7, -8.196159E7);
INSERT INTO O_306 VALUES('240229013069', '240229013000', '7003', 1260000.0, 'UM Wijanarko Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1260000.0, 4.0986E7, -8.322159E7);
INSERT INTO O_306 VALUES('240229013070', '240229013000', '7003', 1260000.0, 'UM Sekhan Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1260000.0, 4.2246E7, -8.448159E7);
INSERT INTO O_306 VALUES('240229013071', '240229013000', '7003', 945000.0, 'UM Mauretius Oji Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 945000.0, 4.3191E7, -8.542659E7);
INSERT INTO O_306 VALUES('240229013072', '240229013000', '7003', 1260000.0, 'UM Anna Qodri Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1260000.0, 4.4451E7, -8.668659E7);
INSERT INTO O_306 VALUES('240229013073', '240229013000', '7003', 630000.0, 'UM Raju Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 630000.0, 4.5081E7, -8.731659E7);
INSERT INTO O_306 VALUES('240229013074', '240229013000', '7003', 1260000.0, 'UM Yono S. Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1260000.0, 4.6341E7, -8.857659E7);
INSERT INTO O_306 VALUES('240229013075', '240229013000', '7003', 1053000.0, 'UM Andri Syamsul Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1053000.0, 4.7394E7, -8.962959E7);
INSERT INTO O_306 VALUES('240229013076', '240229013000', '7003', 1350000.0, 'UM Rinaldhie G. Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1350000.0, 4.8744E7, -9.097959E7);
INSERT INTO O_306 VALUES('240229013077', '240229013000', '7003', 1350000.0, 'UM M. Hafizhni Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1350000.0, 5.0094E7, -9.232959E7);
INSERT INTO O_306 VALUES('240229013078', '240229013000', '7003', 1260000.0, 'UM Suradi Periode 21 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 1260000.0, 5.1354E7, -9.358959E7);
INSERT INTO O_306 VALUES('240229013079', '240229013000', '7003', 600000.0, 'UM Sahardi Periode 24 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 600000.0, 5.1954E7, -9.418959E7);
INSERT INTO O_306 VALUES('240229013080', '240229013000', '7003', 275000.0, 'UM Fajar N. Hidayat Periode 25 Februari - 29 Februari 2024', TIMESTAMP '2024-04-19 09:48:52.882', 275000.0, 5.2229E7, -9.446459E7);
INSERT INTO O_306 VALUES('240229013081', '240229013000', '7001', 300000.0, 'Kasbon Potong Gaji Periode Maret 2024', TIMESTAMP '2024-04-19 09:48:52.882', 300000.0, 1.06892644E8, -9.476459E7);
INSERT INTO O_306 VALUES('240229014001', '240229014000', '7017', 3815000.0, 'Jasa Bongkar Shaft Bogie (Cabut AS Trunion) u/ TR 10', TIMESTAMP '2024-04-19 09:49:59.008', 3815000.0, 1.16025E7, -9.857959E7);
INSERT INTO O_306 VALUES('240229014002', '240229014000', '7016', 6700000.0, '1 Pcs Gasket Kit Engine (Packing Set) 04111 - E0K78 u/ TR 06', TIMESTAMP '2024-04-19 09:49:59.008', 6700000.0, 2.09689369E8, -1.0527959E8);
INSERT INTO O_306 VALUES('240229014003', '240229014000', '7016', 2640000.0, '6 Pcs Ring Piston S1301 - 92080 u/ TR 06 @ Rp440.000', TIMESTAMP '2024-04-19 09:49:59.008', 2640000.0, 2.12329369E8, -1.0791959E8);
INSERT INTO O_306 VALUES('240229014004', '240229014000', '7016', 1000000.0, '1 Pcs Metal Duduk STD Hino J08E 11701 - E0100 u/ TR 06', TIMESTAMP '2024-04-19 09:49:59.008', 1000000.0, 2.13329369E8, -1.0891959E8);
INSERT INTO O_306 VALUES('240229014005', '240229014000', '7016', 1950000.0, '1 Set Metal Jalan STD Hino J08E 13041 - E0700 u/ TR 06', TIMESTAMP '2024-04-19 09:49:59.008', 1950000.0, 2.15279369E8, -1.1086959E8);
INSERT INTO O_306 VALUES('240229014006', '240229014000', '7016', 695000.0, '1 Pcs Washer Set STD Lohan J08E (Metal Bulan) 11011 - E0060', TIMESTAMP '2024-04-19 09:49:59.008', 695000.0, 2.15974369E8, -1.1156459E8);
INSERT INTO O_306 VALUES('240229014007', '240229014000', '7016', 865000.0, '1 Pcs Bearing Set Camshaft Hino J08E (Metal Camshaft / Noken AS)', TIMESTAMP '2024-04-19 09:49:59.008', 865000.0, 2.16839369E8, -1.1242959E8);
INSERT INTO O_306 VALUES('240229014008', '240229014000', '7016', 5600000.0, '4 Pcs Liner Hino Lohan J08E Type B (3mm) 11463 - E0050 ', TIMESTAMP '2024-04-19 09:49:59.008', 5600000.0, 2.22439369E8, -1.1802959E8);
INSERT INTO O_306 VALUES('240229014009', '240229014000', '7016', 3400000.0, '2 Pcs Liner Cylinder S/S 11464 - E0050 u/ TR 06 @ Rp1.700.000', TIMESTAMP '2024-04-19 09:49:59.008', 3400000.0, 2.25839369E8, -1.2142959E8);
INSERT INTO O_306 VALUES('240229014010', '240229014000', '7016', 1032000.0, '24 Pcs Seal Klep J08E S13719 - 1470 u/ TR 06 @ Rp43.000', TIMESTAMP '2024-04-19 09:49:59.008', 1032000.0, 2.26871369E8, -1.2246159E8);
INSERT INTO O_306 VALUES('240229014011', '240229014000', '7016', 510000.0, '6 Pcs O Ring Nozzle Hino J08E (O Ring Injector) SZ910 - 15047', TIMESTAMP '2024-04-19 09:49:59.008', 510000.0, 2.27381369E8, -1.2297159E8);
INSERT INTO O_306 VALUES('240229014012', '240229014000', '7016', 170000.0, '2 Pcs SZ311 - 55013, Seal Cort (Oil Seal) u/ TR 03 @ Rp85.000', TIMESTAMP '2024-04-19 09:49:59.008', 170000.0, 2.27551369E8, -1.2314159E8);
INSERT INTO O_306 VALUES('240229014013', '240229014000', '7016', 230000.0, '10 Pcs SZ301 -24016, Seal Viton (Oil Seal) u/ TR 03 @ Rp23.000', TIMESTAMP '2024-04-19 09:49:59.008', 230000.0, 2.27781369E8, -1.2337159E8);
INSERT INTO O_306 VALUES('240229014014', '240229014000', '7016', 424000.0, '4 Pcs SZ301 - 12020, Seal E (O Ring) u/ TR 03 @ Rp106.000', TIMESTAMP '2024-04-19 09:49:59.008', 424000.0, 2.28205369E8, -1.2379559E8);
INSERT INTO O_306 VALUES('240229014015', '240229014000', '7016', 1600000.0, '1 Pcs Hose Assy 4 Wire 3/4  X 0,81 Meter w/ Str Fitting + Spring', TIMESTAMP '2024-04-19 09:49:59.008', 1600000.0, 2.29805369E8, -1.2539559E8);
INSERT INTO O_306 VALUES('240229014016', '240229014000', '7016', 700000.0, '1 Pcs Hose Assy 2 Wire 1/2  X 1,00 Meter w/ Str Fitting u/ TR 74 ', TIMESTAMP '2024-04-19 09:49:59.008', 700000.0, 2.30505369E8, -1.2609559E8);
INSERT INTO O_306 VALUES('240229014017', '240229014000', '7016', 150000.0, '10 Pcs Skun Kabel SC 70 u/ Stok @ Rp15.000  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 150000.0, 2.30655369E8, -1.2624559E8);
INSERT INTO O_306 VALUES('240229014018', '240229014000', '7016', 25000.0, '5 Meter Spiral Kabel u/ Hino 260 @ Rp5.000  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 25000.0, 2.30680369E8, -1.2627059E8);
INSERT INTO O_306 VALUES('240229014019', '240229014000', '7016', 116000.0, '2 Kaleng Meni Kayu u/ Workshop @ Rp58.000  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 116000.0, 2.30796369E8, -1.2638659E8);
INSERT INTO O_306 VALUES('240229014020', '240229014000', '7016', 30000.0, '3 Pcs Lem Dextone u/ Stok @ Rp10.000  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 30000.0, 2.30826369E8, -1.2641659E8);
INSERT INTO O_306 VALUES('240229014021', '240229014000', '7016', 5000.0, '1 Pcs Klem u/ Kompresor  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 5000.0, 2.30831369E8, -1.2642159E8);
INSERT INTO O_306 VALUES('240229014022', '240229014000', '7016', 160000.0, '4 Pcs Kopler u/ Kompresor @ Rp40.000  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 160000.0, 2.30991369E8, -1.2658159E8);
INSERT INTO O_306 VALUES('240229014023', '240229014000', '7016', 30000.0, '2 Pcs Sok Kopler u/ Kompresor @ Rp15.000  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 30000.0, 2.31021369E8, -1.2661159E8);
INSERT INTO O_306 VALUES('240229014024', '240229014000', '7016', 40000.0, '2 Pcs Sok Kopler u/ Workshop @ Rp20.000  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 40000.0, 2.31061369E8, -1.2665159E8);
INSERT INTO O_306 VALUES('240229014025', '240229014000', '7016', 96000.0, '2 Pcs Terminal Broco u/ Workshop @ Rp48.000  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 96000.0, 2.31157369E8, -1.2674759E8);
INSERT INTO O_306 VALUES('240229014026', '240229014000', '7016', 700000.0, '2 Papan Plywood 18mm u/ Workshop @ Rp350.000 PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 700000.0, 2.31857369E8, -1.2744759E8);
INSERT INTO O_306 VALUES('240229014027', '240229014000', '7016', 60000.0, '3 Kg Paku 5  u/ Workshop @ Rp20.000  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:49:59.008', 60000.0, 2.31917369E8, -1.2750759E8);
INSERT INTO O_306 VALUES('240229014028', '240229014000', '7016', 550000.0, '10 Meter Selang Spiral 2  u/ Alcon Tangki Air @ Rp55.000', TIMESTAMP '2024-04-19 09:49:59.008', 550000.0, 2.32467369E8, -1.2805759E8);
INSERT INTO O_306 VALUES('240229014029', '240229014000', '7007', 300000.0, 'Perbaikan Radiator Bocor u/ Hino 260 - TR 09  PR 0817 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 300000.0, 1850000.0, -1.2835759E8);
INSERT INTO O_306 VALUES('240229014030', '240229014000', '7007', 300000.0, 'Perbaikan Radiator Bocor u/ Genset Mitsubishi  PR 0817 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 300000.0, 2150000.0, -1.2865759E8);
INSERT INTO O_306 VALUES('240229014031', '240229014000', '7007', 300000.0, 'Perbaikan Radiator Bocor u/ Tower Lamp PR 0817 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 300000.0, 2450000.0, -1.2895759E8);
INSERT INTO O_306 VALUES('240229014032', '240229014000', '7016', 175000.0, '1 Pcs Panel Meter HZ u/ Panel Genset Workshop PR 0817 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 175000.0, 2.32642369E8, -1.2913259E8);
INSERT INTO O_306 VALUES('240229014033', '240229014000', '7016', 100000.0, '4 Pcs Skun 95 - 12 u/ Stok @ Rp15.000  PR 0817 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 100000.0, 2.32742369E8, -1.2923259E8);
INSERT INTO O_306 VALUES('240229014034', '240229014000', '7016', 40000.0, '2 Pcs Skun 70 - 12 u/ Trafo Las @ Rp20.000  PR 0817 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 40000.0, 2.32782369E8, -1.2927259E8);
INSERT INTO O_306 VALUES('240229014035', '240229014000', '7016', 60000.0, '1 Pcs Stopkontak Broco u/ Workshop  PR 0817 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 60000.0, 2.32842369E8, -1.2933259E8);
INSERT INTO O_306 VALUES('240229014036', '240229014000', '7010', 24409.0, 'Admin Bank Periode 1 Feb - 8 Feb 2024', TIMESTAMP '2024-04-19 09:49:59.008', 24409.0, 130939.0, -1.29356999E8);
INSERT INTO O_306 VALUES('240229014037', '240229014000', '7010', 10500.0, 'Biaya Admin Bank  ', TIMESTAMP '2024-04-19 09:49:59.008', 10500.0, 141439.0, -1.29367499E8);
INSERT INTO O_306 VALUES('240229014038', '240229014000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dll.', TIMESTAMP '2024-04-19 09:49:59.008', 50000.0, 6877500.0, -1.29417499E8);
INSERT INTO O_306 VALUES('240229014039', '240229014000', '7009', 376000.0, 'Jasa Pengiriman Tiki u/ Kirim Dokumen, Contoh Liner Genset ', TIMESTAMP '2024-04-19 09:49:59.008', 376000.0, 1955000.0, -1.29793499E8);
INSERT INTO O_306 VALUES('240229014040', '240229014000', '7017', 290000.0, '1 Tabung Oxygen u/ Workshop  PR 2300 / H 544', TIMESTAMP '2024-04-19 09:49:59.008', 290000.0, 1.18925E7, -1.30083499E8);
INSERT INTO O_306 VALUES('240229014041', '240229014000', '7004', 125000.0, '1 Pcs Flashdisk merk Sandisk u/ Bp. Munas HRD PR 2300 / H 544', TIMESTAMP '2024-04-19 09:49:59.008', 125000.0, 2861000.0, -1.30208499E8);
INSERT INTO O_306 VALUES('240229014042', '240229014000', '7010', 4000.0, 'Biaya Admin Bank (Transfer ke Bp. Hani)', TIMESTAMP '2024-04-19 09:49:59.008', 4000.0, 145439.0, -1.30212499E8);
INSERT INTO O_306 VALUES('240229014043', '240229014000', '7001', 497000.0, 'Bayar Lembur Periode 20 Jan 2024 - 9 Feb 2024 a/n Bani Susilo', TIMESTAMP '2024-04-19 09:49:59.008', 497000.0, 1.07389644E8, -1.30709499E8);
INSERT INTO O_306 VALUES('240229014044', '240229014000', '7022', 1500000.0, 'Bantuan Sosial u/ Pengurus Muyub Ilir Periode Februari 2024', TIMESTAMP '2024-04-19 09:49:59.008', 1500000.0, 4000000.0, -1.32209499E8);
INSERT INTO O_306 VALUES('240229014045', '240229014000', '7009', 47000.0, 'Bayar Tiki u/ Kirim Dokumen No. Resi 660073377810', TIMESTAMP '2024-04-19 09:49:59.008', 47000.0, 2002000.0, -1.32256499E8);
INSERT INTO O_306 VALUES('240229014046', '240229014000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dll.', TIMESTAMP '2024-04-19 09:49:59.008', 50000.0, 6927500.0, -1.32306499E8);
INSERT INTO O_306 VALUES('240229014047', '240229014000', '7017', 280000.0, '1 Tabung LPG 12 Kg u/ Workshop PR 0801 / H 788', TIMESTAMP '2024-04-19 09:49:59.008', 280000.0, 1.21725E7, -1.32586499E8);
INSERT INTO O_306 VALUES('240229014048', '240229014000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-04-19 09:49:59.008', 500000.0, 3361000.0, -1.33086499E8);
INSERT INTO O_306 VALUES('240229014049', '240229014000', '7017', 135000.0, '1 Pcs Lem Kacs Teroson u/ TR 72  PR 0803 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 135000.0, 1.23075E7, -1.33221499E8);
INSERT INTO O_306 VALUES('240229014050', '240229014000', '7017', 330000.0, '3 Pcs Senter Kepala u/ Mekanik Kerja @ Rp110.000 PR 0803 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 330000.0, 1.26375E7, -1.33551499E8);
INSERT INTO O_306 VALUES('240229014051', '240229014000', '7017', 150000.0, '10 Kg Majun Jahit @ Rp15.000  PR 0803 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 150000.0, 1.27875E7, -1.33701499E8);
INSERT INTO O_306 VALUES('240229014052', '240229014000', '7017', 45000.0, '1 Pcs Topeng Las u/ Pak Rinto  PR 0803 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 45000.0, 1.28325E7, -1.33746499E8);
INSERT INTO O_306 VALUES('240229014053', '240229014000', '7017', 12000.0, '1 Pcs Sikat Baja (Gagang Kayu) u/ Pak Rinto  PR 0803 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 12000.0, 1.28445E7, -1.33758499E8);
INSERT INTO O_306 VALUES('240229014054', '240229014000', '7017', 25000.0, '1 Pcs Mata Bor 5m u/ Pak Rinto  PR 0803 / H 255', TIMESTAMP '2024-04-19 09:49:59.008', 25000.0, 1.28695E7, -1.33783499E8);
INSERT INTO O_306 VALUES('240229014055', '240229014000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dll.', TIMESTAMP '2024-04-19 09:49:59.008', 50000.0, 6977500.0, -1.33833499E8);
INSERT INTO O_306 VALUES('240229014056', '240229014000', '7017', 95000.0, '1 Pak (5 Pcs) Buku Folio Okey 100 u/ Pak Hani PR 0804 / H 267', TIMESTAMP '2024-04-19 09:49:59.008', 95000.0, 1.29645E7, -1.33928499E8);
INSERT INTO O_306 VALUES('240229014057', '240229014000', '7017', 5000.0, '1 Pcs Kertas Karton u/ PJO (Pak M. Agus I.) PR 0804 / H 267', TIMESTAMP '2024-04-19 09:49:59.008', 5000.0, 1.29695E7, -1.33933499E8);
INSERT INTO O_306 VALUES('240229014058', '240229014000', '7023', 135000.0, '10 Liter Pertamax u/ Alcon FT + Cuci Alat  PR 0804 / H 267', TIMESTAMP '2024-04-19 09:49:59.008', 135000.0, 135000.0, -1.34068499E8);
INSERT INTO O_306 VALUES('240229014059', '240229014000', '7017', 50000.0, '2 Kg Kawat Putih (Bw6) u/ TR 72  @ Rp25.000  PR 0804 / H 267', TIMESTAMP '2024-04-19 09:49:59.008', 50000.0, 1.30195E7, -1.34118499E8);
INSERT INTO O_306 VALUES('240229014060', '240229014000', '7017', 50000.0, '2,5 Meter Selang 3/4  u/ Solar Genset  PR 0804 / H 267', TIMESTAMP '2024-04-19 09:49:59.008', 50000.0, 1.30695E7, -1.34168499E8);
INSERT INTO O_306 VALUES('240229014061', '240229014000', '7017', 195000.0, '3 Pcs Timah Batangan u/ Cor Accu @ Rp65.000 PR 0804 / H 267', TIMESTAMP '2024-04-19 09:49:59.008', 195000.0, 1.32645E7, -1.34363499E8);
INSERT INTO O_306 VALUES('240229014062', '240229014000', '7017', 120000.0, '2 Pcs Bantal u/ Pak Yono & Pak Hani  PR 0804 / H 267', TIMESTAMP '2024-04-19 09:49:59.008', 120000.0, 1.33845E7, -1.34483499E8);
INSERT INTO O_306 VALUES('240229014063', '240229014000', '7017', 100000.0, '1 Pcs Sprei u/ Pak Hani  PR 0804 / H 267', TIMESTAMP '2024-04-19 09:49:59.008', 100000.0, 1.34845E7, -1.34583499E8);
INSERT INTO O_306 VALUES('240229014064', '240229014000', '7001', 600000.0, 'Penjagaan Pos Tangki BBM PT Dhako di Jeti 2 PT BDP tanggal', TIMESTAMP '2024-04-19 09:49:59.008', 600000.0, 1.07989644E8, -1.35183499E8);
INSERT INTO O_306 VALUES('240229014065', '240229014000', '7001', 600000.0, 'Penjagaan Pos Tangki BBM PT Dhako di Jeti 2 PT BDP tanggal', TIMESTAMP '2024-04-19 09:49:59.008', 600000.0, 1.08589644E8, -1.35783499E8);
INSERT INTO O_306 VALUES('240229014066', '240229014000', '7001', 150000.0, 'Harian Lepas Jaga Workshop Libur Pemilu 14 Feb 24 (Malam)', TIMESTAMP '2024-04-19 09:49:59.008', 150000.0, 1.08739644E8, -1.35933499E8);
INSERT INTO O_306 VALUES('240229014067', '240229014000', '7001', 300000.0, 'Harian Lepas Jaga Workshop Libur Pemilu 14 Feb 24 (Pagi - Malam)', TIMESTAMP '2024-04-19 09:49:59.008', 300000.0, 1.09039644E8, -1.36233499E8);
INSERT INTO O_306 VALUES('240229014068', '240229014000', '7001', 150000.0, 'Harian Lepas Jaga Tambang Libur Pemilu 14 Feb  24 ', TIMESTAMP '2024-04-19 09:49:59.008', 150000.0, 1.09189644E8, -1.36383499E8);
INSERT INTO O_306 VALUES('240229014069', '240229014000', '7001', 450000.0, 'Harian Lepas Jaga Tangki BBM PT Dhako di Jeti selama Libur', TIMESTAMP '2024-04-19 09:49:59.024', 450000.0, 1.09639644E8, -1.36833499E8);
INSERT INTO O_306 VALUES('240229014070', '240229014000', '7001', 500000.0, 'Bayar Pengawalan Mekanik u/ Mobilisasi 6 Unit TR 350', TIMESTAMP '2024-04-19 09:49:59.024', 500000.0, 1.10139644E8, -1.37333499E8);
INSERT INTO O_306 VALUES('240229014071', '240229014000', '7005', 46000.0, 'Foto Copy Surat Jalan Rp15.000 dan Kwitansi Rp6.000', TIMESTAMP '2024-04-19 09:49:59.024', 46000.0, 46000.0, -1.37379499E8);
INSERT INTO O_306 VALUES('240229014072', '240229014000', '7001', 6000000.0, 'Bayar Pengawalan Kepolisian u/ Mobilisasi 6 Unit DT (TR 350)', TIMESTAMP '2024-04-19 09:49:59.024', 6000000.0, 1.16139644E8, -1.43379499E8);
INSERT INTO O_306 VALUES('240229014073', '240229014000', '7004', 6000000.0, 'Bayar Driver u/ Mobilisasi 6 Unit DT (TR 350) dari Samarinda -', TIMESTAMP '2024-04-19 09:49:59.024', 6000000.0, 9361000.0, -1.49379499E8);
INSERT INTO O_306 VALUES('240229014074', '240229014000', '7003', 1500000.0, 'Biaya Konsumsi (Bp. Sekhan, Bp. Hani, dan 6 Orang Supir) u/', TIMESTAMP '2024-04-19 09:49:59.024', 1500000.0, 5.3729E7, -1.50879499E8);
INSERT INTO O_306 VALUES('240229014075', '240229014000', '7006', 200000.0, 'Biaya Penginapan tgl 12 Feb - 13 Feb 2024 (Mobilisasi 6 Unit DT)', TIMESTAMP '2024-04-19 09:49:59.024', 200000.0, 7177500.0, -1.51079499E8);
INSERT INTO O_306 VALUES('240229014076', '240229014000', '7006', 250000.0, 'Biaya Penginapan tgl 14 Feb - 15 Feb 2024 (Mobilisasi 6 Unit DT)', TIMESTAMP '2024-04-19 09:49:59.024', 250000.0, 7427500.0, -1.51329499E8);
INSERT INTO O_306 VALUES('240229014077', '240229014000', '7023', 600023.0, '40,270 Liter BBM Dexlite u/ L 9502 GH tgl 15 Feruari 2024', TIMESTAMP '2024-04-19 09:49:59.024', 600023.0, 735023.0, -1.51929522E8);
INSERT INTO O_306 VALUES('240229014078', '240229014000', '7023', 669904.0, '44, 96 Liter BBM Dexlite u/ L 9502 GH tgl 16 Februari 20024', TIMESTAMP '2024-04-19 09:49:59.024', 669904.0, 1404927.0, -1.52599426E8);
INSERT INTO O_306 VALUES('240229014079', '240229014000', '7006', 25000.0, 'Penyeberangan L 9502 GH u/ Mobilisasi 6 Unit DT (Kedatangan)', TIMESTAMP '2024-04-19 09:49:59.024', 25000.0, 7452500.0, -1.52624426E8);
INSERT INTO O_306 VALUES('240229014080', '240229014000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Kirim Sparepart (Boschpump TR 08) ', TIMESTAMP '2024-04-19 09:49:59.024', 50000.0, 7502500.0, -1.52674426E8);
INSERT INTO O_306 VALUES('240229014081', '240229014000', '7009', 175000.0, 'Bayar Cendana u/ Pengiriman Sparepart (Boschpump TR 08)', TIMESTAMP '2024-04-19 09:49:59.024', 175000.0, 2177000.0, -1.52849426E8);
INSERT INTO O_306 VALUES('240229014082', '240229014000', '7017', 700000.0, 'LCT. Berkat Usaha Mandiri GT 122 u/ 2 Unit Tronton TR 74 & ', TIMESTAMP '2024-04-19 09:49:59.024', 700000.0, 1.41845E7, -1.53549426E8);
INSERT INTO O_306 VALUES('240229014083', '240229014000', '7017', 1400000.0, 'LCT. Golden Star GT 180 u/ 4 Unit Tronton TR 70, TR 71, TR 73', TIMESTAMP '2024-04-19 09:49:59.024', 1400000.0, 1.55845E7, -1.54949426E8);
INSERT INTO O_306 VALUES('240229014084', '240229014000', '7023', 135000.0, '10 Liter Pertamax u/ Alcon FT PR 0813 / H 655', TIMESTAMP '2024-04-19 09:49:59.024', 135000.0, 1539927.0, -1.55084426E8);
INSERT INTO O_306 VALUES('240229014085', '240229014000', '7017', 300000.0, '1 Tabung Oksigen u/ Workshop  PR 0813 / H 655', TIMESTAMP '2024-04-19 09:49:59.024', 300000.0, 1.58845E7, -1.55384426E8);
INSERT INTO O_306 VALUES('240229014086', '240229014000', '7017', 135000.0, '1 Dus Air Aki Tambah u/ Stok  PR 0813 / H 655', TIMESTAMP '2024-04-19 09:49:59.024', 135000.0, 1.60195E7, -1.55519426E8);
INSERT INTO O_306 VALUES('240229014087', '240229014000', '7017', 20000.0, '1 Pak Kabel Ties Kecil u/ Stok  PR 0813 / H 655', TIMESTAMP '2024-04-19 09:49:59.024', 20000.0, 1.60395E7, -1.55539426E8);
INSERT INTO O_306 VALUES('240229014088', '240229014000', '7017', 50000.0, '5 Pcs Isolasi Kabel u/ Stok  PR 0813 / H 655', TIMESTAMP '2024-04-19 09:49:59.024', 50000.0, 1.60895E7, -1.55589426E8);
INSERT INTO O_306 VALUES('240229014089', '240229014000', '7017', 275000.0, '10 Pak (50 Pcs) Oktopo Paper Line (Buku Kecil) u/ Gudang', TIMESTAMP '2024-04-19 09:49:59.024', 275000.0, 1.63645E7, -1.55864426E8);
INSERT INTO O_306 VALUES('240229015001', '240229015000', '7017', 27000.0, '2 Pcs Buku Surat Jalan u/ Gudang @ Rp13.500 PR 0813 / H 655', TIMESTAMP '2024-04-19 09:51:15.586', 27000.0, 1.63915E7, -1.55891426E8);
INSERT INTO O_306 VALUES('240229015002', '240229015000', '7017', 16000.0, '2 Pcs Spidol Permanen u/ Gudang @ Rp8.000  PR 0813 / H 655', TIMESTAMP '2024-04-19 09:51:15.586', 16000.0, 1.64075E7, -1.55907426E8);
INSERT INTO O_306 VALUES('240229015003', '240229015000', '7009', 120000.0, 'Bayar Cendana (Rp50.000) + Kurir (Rp70.000) u/ Pengiriman', TIMESTAMP '2024-04-19 09:51:15.586', 120000.0, 2297000.0, -1.56027426E8);
INSERT INTO O_306 VALUES('240229015004', '240229015000', '7017', 1400000.0, '20 Meter Selang Benang 2  u/ Alcon Pengisian Air PR 0813 / H 655', TIMESTAMP '2024-04-19 09:51:15.586', 1400000.0, 1.78075E7, -1.57427426E8);
INSERT INTO O_306 VALUES('240229015005', '240229015000', '7017', 520000.0, '2 Pak Kawat Las LB 52 4mm u/ Stok @ Rp260.000 PR 0813 / H 655', TIMESTAMP '2024-04-19 09:51:15.586', 520000.0, 1.83275E7, -1.57947426E8);
INSERT INTO O_306 VALUES('240229015006', '240229015000', '7017', 190000.0, '2 Pak Kabel Ties Besar u/ Stok @ Rp95.000  PR 0813 / H 655', TIMESTAMP '2024-04-19 09:51:15.586', 190000.0, 1.85175E7, -1.58137426E8);
INSERT INTO O_306 VALUES('240229015007', '240229015000', '7017', 35000.0, '1 Pak Kabel Ties Sedaang u/ Stok  PR 0813 / H 655', TIMESTAMP '2024-04-19 09:51:15.586', 35000.0, 1.85525E7, -1.58172426E8);
INSERT INTO O_306 VALUES('240229015008', '240229015000', '7017', 644000.0, '4 Pcs Van Belt B.46 u/ Stok @ Rp161.000  PR 0813 / H 655', TIMESTAMP '2024-04-19 09:51:15.586', 644000.0, 1.91965E7, -1.58816426E8);
INSERT INTO O_306 VALUES('240229015009', '240229015000', '7017', 30000.0, '1 Pcs Busi u/ Alcon FT 01  PR 0813 / H 655', TIMESTAMP '2024-04-19 09:51:15.586', 30000.0, 1.92265E7, -1.58846426E8);
INSERT INTO O_306 VALUES('240229015010', '240229015000', '7017', 1267200.0, '10 Pcs Spc 6 - 03 (Rp180.000), 10 Pcs Spc 8 - 03 (Rp170.000),', TIMESTAMP '2024-04-19 09:51:15.601', 1267200.0, 2.04937E7, -1.60113626E8);
INSERT INTO O_306 VALUES('240229015011', '240229015000', '7017', 18000.0, '1 Pak Key Ring (Gantungan Kunci) PR 0815 / H 224', TIMESTAMP '2024-04-19 09:51:15.601', 18000.0, 2.05117E7, -1.60131626E8);
INSERT INTO O_306 VALUES('240229015012', '240229015000', '7017', 24000.0, '2 Pak Binder Klip u/ Admin Logistik dan Kasir PR 0815 / H 224', TIMESTAMP '2024-04-19 09:51:15.601', 24000.0, 2.05357E7, -1.60155626E8);
INSERT INTO O_306 VALUES('240229015013', '240229015000', '7017', 14000.0, '2 Pcs Correction CP (Tipe X) u/ Logistik  PR 0815 / H 224', TIMESTAMP '2024-04-19 09:51:15.601', 14000.0, 2.05497E7, -1.60169626E8);
INSERT INTO O_306 VALUES('240229015014', '240229015000', '7017', 80000.0, '4 Dus Air Gelas An Najwa u/ Proyek Workshop / Gudang @ Rp20.000', TIMESTAMP '2024-04-19 09:51:15.601', 80000.0, 2.06297E7, -1.60249626E8);
INSERT INTO O_306 VALUES('240229015015', '240229015000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dll.', TIMESTAMP '2024-04-19 09:51:15.601', 50000.0, 7552500.0, -1.60299626E8);
INSERT INTO O_306 VALUES('240229015016', '240229015000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Service Radiator dan Belanja', TIMESTAMP '2024-04-19 09:51:15.601', 50000.0, 7602500.0, -1.60349626E8);
INSERT INTO O_306 VALUES('240229015017', '240229015000', '7001', 640000.0, 'Piket Genset Penerangan Periode 11 Feb 2024 - 20 Feb 2024', TIMESTAMP '2024-04-19 09:51:15.601', 640000.0, 1.16779644E8, -1.60989626E8);
INSERT INTO O_306 VALUES('240229015018', '240229015000', '7003', 1900000.0, 'UM M.Agus Irwanto Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1900000.0, 5.5629E7, -1.62889626E8);
INSERT INTO O_306 VALUES('240229015019', '240229015000', '7003', 1400000.0, 'UM Syaifullah Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1400000.0, 5.7029E7, -1.64289626E8);
INSERT INTO O_306 VALUES('240229015020', '240229015000', '7003', 990000.0, 'UM Haqqul I. Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 990000.0, 5.8019E7, -1.65279626E8);
INSERT INTO O_306 VALUES('240229015021', '240229015000', '7003', 1100000.0, 'UM Sarjito F. Adam Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1100000.0, 5.9119E7, -1.66379626E8);
INSERT INTO O_306 VALUES('240229015022', '240229015000', '7003', 150000.0, 'UM Samuel Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 150000.0, 5.9269E7, -1.66529626E8);
INSERT INTO O_306 VALUES('240229015023', '240229015000', '7003', 675000.0, 'UM Jakaria Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 675000.0, 5.9944E7, -1.67204626E8);
INSERT INTO O_306 VALUES('240229015024', '240229015000', '7003', 1170000.0, 'UM Didik Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1170000.0, 6.1114E7, -1.68374626E8);
INSERT INTO O_306 VALUES('240229015025', '240229015000', '7003', 1080000.0, 'UM Supriyanto Periode 15 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1080000.0, 6.2194E7, -1.69454626E8);
INSERT INTO O_306 VALUES('240229015026', '240229015000', '7003', 1400000.0, 'UM Handriadi Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1400000.0, 6.3594E7, -1.70854626E8);
INSERT INTO O_306 VALUES('240229015027', '240229015000', '7003', 1400000.0, 'UM Wijanarko Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1400000.0, 6.4994E7, -1.72254626E8);
INSERT INTO O_306 VALUES('240229015028', '240229015000', '7003', 1400000.0, 'UM Sekhan Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1400000.0, 6.6394E7, -1.73654626E8);
INSERT INTO O_306 VALUES('240229015029', '240229015000', '7003', 1050000.0, 'UM Mauretius Oji Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1050000.0, 6.7444E7, -1.74704626E8);
INSERT INTO O_306 VALUES('240229015030', '240229015000', '7003', 1400000.0, 'UM Anna Qodri Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1400000.0, 6.8844E7, -1.76104626E8);
INSERT INTO O_306 VALUES('240229015031', '240229015000', '7003', 945000.0, 'UM Raju Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 945000.0, 6.9789E7, -1.77049626E8);
INSERT INTO O_306 VALUES('240229015032', '240229015000', '7003', 1400000.0, 'UM Yono S. Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1400000.0, 7.1189E7, -1.78449626E8);
INSERT INTO O_306 VALUES('240229015033', '240229015000', '7003', 1170000.0, 'UM Andri Syamsul Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1170000.0, 7.2359E7, -1.79619626E8);
INSERT INTO O_306 VALUES('240229015034', '240229015000', '7003', 1500000.0, 'UM Rinaldhie G. Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1500000.0, 7.3859E7, -1.81119626E8);
INSERT INTO O_306 VALUES('240229015035', '240229015000', '7003', 1500000.0, 'UM M. Hafizhni Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1500000.0, 7.5359E7, -1.82619626E8);
INSERT INTO O_306 VALUES('240229015036', '240229015000', '7003', 1400000.0, 'UM M. Suradi Periode 11 Februari - 20 Februari 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1400000.0, 7.6759E7, -1.84019626E8);
INSERT INTO O_306 VALUES('240229015037', '240229015000', '7003', 1500000.0, 'Kasbon Potong Uang Makan Per 11 Feb 2024 - 20 Feb 2024', TIMESTAMP '2024-04-19 09:51:15.601', 1500000.0, 7.8259E7, -1.85519626E8);
INSERT INTO O_306 VALUES('240229015038', '240229015000', '7017', 250000.0, '10 Pcs Lem Red u/ Stok @ Rp25.000  PR 0818 / H 120', TIMESTAMP '2024-04-19 09:51:15.601', 250000.0, 2.08797E7, -1.85769626E8);
INSERT INTO O_306 VALUES('240229015039', '240229015000', '7017', 75000.0, '5 Pcs Ring Tembaga K 22 u/ Stok @ Rp15.000 PR 0818 / H 120 ', TIMESTAMP '2024-04-19 09:51:15.601', 75000.0, 2.09547E7, -1.85844626E8);
INSERT INTO O_306 VALUES('240229015040', '240229015000', '7017', 50000.0, '5 Pcs Ring Tembaga K 19 u/ Stok @ Rp10.000 PR 0818 / H 120 ', TIMESTAMP '2024-04-19 09:51:15.601', 50000.0, 2.10047E7, -1.85894626E8);
INSERT INTO O_306 VALUES('240229015041', '240229015000', '7017', 50000.0, '5 Pcs Ring Tembaga K 17 u/ Stok @ Rp10.000 PR 0818 / H 120 ', TIMESTAMP '2024-04-19 09:51:15.601', 50000.0, 2.10547E7, -1.85944626E8);
INSERT INTO O_306 VALUES('240229015042', '240229015000', '7017', 250000.0, '10 Pcs Fitting SPU 10 u/ Stok @ Rp25.000  PR 0818 / H 120', TIMESTAMP '2024-04-19 09:51:15.601', 250000.0, 2.13047E7, -1.86194626E8);
INSERT INTO O_306 VALUES('240229015043', '240229015000', '7017', 95000.0, '1 Pcs Saringan Klep 2  u/ Alkon Pengambilan Air PR 0818 / H 120', TIMESTAMP '2024-04-19 09:51:15.601', 95000.0, 2.13997E7, -1.86289626E8);
INSERT INTO O_306 VALUES('240229015044', '240229015000', '7017', 24000.0, '2 Pcs Baut 10 X 120 u/ Workshop  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 24000.0, 2.14237E7, -1.86313626E8);
INSERT INTO O_306 VALUES('240229015045', '240229015000', '7017', 14000.0, '2 Pcs Baut 8 X 120 u/ Workshop  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 14000.0, 2.14377E7, -1.86327626E8);
INSERT INTO O_306 VALUES('240229015046', '240229015000', '7017', 15000.0, '1 Pcs Baut 10 X 150 u/ Workshop  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 15000.0, 2.14527E7, -1.86342626E8);
INSERT INTO O_306 VALUES('240229015047', '240229015000', '7017', 7000.0, '1 Pcs Baut 8 X 150 u/ Workshop  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 7000.0, 2.14597E7, -1.86349626E8);
INSERT INTO O_306 VALUES('240229015048', '240229015000', '7017', 9000.0, '3 Pcs WR M10 u/ Workshop  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 9000.0, 2.14687E7, -1.86358626E8);
INSERT INTO O_306 VALUES('240229015049', '240229015000', '7017', 9000.0, '3 Pcs WP M10 u/ Workshop  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 9000.0, 2.14777E7, -1.86367626E8);
INSERT INTO O_306 VALUES('240229015050', '240229015000', '7017', 6000.0, '3 Pcs WR M8 u/ Workshop  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 6000.0, 2.14837E7, -1.86373626E8);
INSERT INTO O_306 VALUES('240229015051', '240229015000', '7017', 6000.0, '3 Pcs WP M8 u/ Workshop  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 6000.0, 2.14897E7, -1.86379626E8);
INSERT INTO O_306 VALUES('240229015052', '240229015000', '7007', 150000.0, 'Biaya Las Pipa Hose AC (1 Pcs) u/ L 8397 VB  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 150000.0, 2600000.0, -1.86529626E8);
INSERT INTO O_306 VALUES('240229015053', '240229015000', '7017', 260000.0, '1 Dus (4 Botol) Air Coolant u/ Stok @ Rp65.000  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 260000.0, 2.17497E7, -1.86789626E8);
INSERT INTO O_306 VALUES('240229015054', '240229015000', '7016', 225000.0, '1 Pcs Pompa Grease Wipro u/ Workshop  PR 0819 / H 121', TIMESTAMP '2024-04-19 09:51:15.601', 225000.0, 2.33067369E8, -1.87014626E8);
INSERT INTO O_306 VALUES('240229015055', '240229015000', '7017', 120000.0, '6 Pcs Baut Stainless u/ Dinamo Genset Mitsubishi @ Rp20.000', TIMESTAMP '2024-04-19 09:51:15.601', 120000.0, 2.18697E7, -1.87134626E8);
INSERT INTO O_306 VALUES('240229015056', '240229015000', '7008', 240000.0, '8 Pcs Tambal Ban 1000 / 1100 / R-20 u/ TR OB @ Rp30.000', TIMESTAMP '2024-04-19 09:51:15.601', 240000.0, 1230000.0, -1.87374626E8);
INSERT INTO O_306 VALUES('240229015057', '240229015000', '7016', 400000.0, '1 Set Kampas Rem Belakang 04495 - OK120 u/ N 9811 EE', TIMESTAMP '2024-04-19 09:51:15.601', 400000.0, 2.33467369E8, -1.87774626E8);
INSERT INTO O_306 VALUES('240229015058', '240229015000', '7016', 350000.0, '2 Pcs Master Rem B TWR S42 u/ N 9811 EE PR 0824 / H 655', TIMESTAMP '2024-04-19 09:51:15.601', 350000.0, 2.33817369E8, -1.88124626E8);
INSERT INTO O_306 VALUES('240229015059', '240229015000', '7016', 1600000.0, '2 Pcs Tromol Rem 42431 - OK 120 u/ N 9811 EE PR 0824 / H 655', TIMESTAMP '2024-04-19 09:51:15.601', 1600000.0, 2.35417369E8, -1.89724626E8);
INSERT INTO O_306 VALUES('240229015060', '240229015000', '7016', 145000.0, '1 Pcs Lever Brake RH u/ N 9811 EE  PR 0824 / H 655', TIMESTAMP '2024-04-19 09:51:15.601', 145000.0, 2.35562369E8, -1.89869626E8);
INSERT INTO O_306 VALUES('240229015061', '240229015000', '7016', 1300000.0, '2 Pcs Sok FR Hilux (Absorbser Depan 341396) u/ N 9811 EE', TIMESTAMP '2024-04-19 09:51:15.601', 1300000.0, 2.36862369E8, -1.91169626E8);
INSERT INTO O_306 VALUES('240229015062', '240229015000', '7016', 700000.0, '2 Pcs Sok RR Hilux (Absorbser Belakang 48531 - 09040) u/', TIMESTAMP '2024-04-19 09:51:15.601', 700000.0, 2.37562369E8, -1.91869626E8);
INSERT INTO O_306 VALUES('240229015063', '240229015000', '7016', 350000.0, '2 Pcs Cross Joint G. Max (Gum 23) u/ N 9811 EE PR 0824 / H 655', TIMESTAMP '2024-04-19 09:51:15.601', 350000.0, 2.37912369E8, -1.92219626E8);
INSERT INTO O_306 VALUES('240229015064', '240229015000', '7016', 185000.0, '1 Pcs Adjuster Kit Hilux LH u/ N 9811 EE  PR 0824 / H 655', TIMESTAMP '2024-04-19 09:51:15.601', 185000.0, 2.38097369E8, -1.92404626E8);
INSERT INTO O_306 VALUES('240229015065', '240229015000', '7017', 70000.0, '10 Pcs Baut 8 X 120 u/ Genset Deutz + Stok  PR 0824 / H 655', TIMESTAMP '2024-04-19 09:51:15.601', 70000.0, 2.19397E7, -1.92474626E8);
INSERT INTO O_306 VALUES('240229015066', '240229015000', '7017', 70000.0, '10 Pcs Baut 8 X 80 u/ Genset Deutz + Stok  PR 0824 / H 655', TIMESTAMP '2024-04-19 09:51:15.601', 70000.0, 2.20097E7, -1.92544626E8);
INSERT INTO O_306 VALUES('240229015067', '240229015000', '7017', 40000.0, '10 Pcs Baut 8 X 20 u/ Genset Deutz + Stok  PR 0824 / H 655', TIMESTAMP '2024-04-19 09:51:15.601', 40000.0, 2.20497E7, -1.92584626E8);
INSERT INTO O_306 VALUES('240229015068', '240229015000', '7017', 60000.0, '60 Pcs WP M8 u/ Genset Deutz + Stok  PR 0824 / H 655', TIMESTAMP '2024-04-19 09:51:15.601', 60000.0, 2.21097E7, -1.92644626E8);
INSERT INTO O_306 VALUES('240229015069', '240229015000', '7016', 680000.0, '4 Pcs Valve Intake Dutro / Asli S1371 - 11443 @ Rp170.000', TIMESTAMP '2024-04-19 09:51:15.601', 680000.0, 2.38777369E8, -1.93324626E8);
INSERT INTO O_306 VALUES('240229015070', '240229015000', '7016', 980000.0, '4 Pcs Valve Exhaust STD Dutro 130 HT / Asli S1371 - 51251', TIMESTAMP '2024-04-19 09:51:15.601', 980000.0, 2.39757369E8, -1.94304626E8);
INSERT INTO O_306 VALUES('240229015071', '240229015000', '7016', 6000000.0, '4 Pcs Liner Cylinder S/S Dutro / Asli 11462 - E0170 ', TIMESTAMP '2024-04-19 09:51:15.601', 6000000.0, 2.45757369E8, -2.00304626E8);
INSERT INTO O_306 VALUES('240229015072', '240229015000', '7016', 1060000.0, 'Ring Piston STD 130HT / Astra S1304 - E0281 u/ Hino Dutro', TIMESTAMP '2024-04-19 09:51:15.601', 1060000.0, 2.46817369E8, -2.01364626E8);
INSERT INTO O_306 VALUES('240229015073', '240229015000', '7016', 1393000.0, '1 Pcs Bearing Set Crankshaft 130HT / Astra L / 11701 - E0070', TIMESTAMP '2024-04-19 09:51:15.601', 1393000.0, 2.48210369E8, -2.02757626E8);
INSERT INTO O_306 VALUES('240229015074', '240229015000', '7016', 755000.0, '1 Set Bearing Set 130HT / Astra S / 13041 - E0690 u/ Hino Dutro', TIMESTAMP '2024-04-19 09:51:15.601', 755000.0, 2.48965369E8, -2.03512626E8);
INSERT INTO O_306 VALUES('240229015075', '240229015000', '7016', 225000.0, '1 Pcs Washer Set Crankshaft Dutro / Asli 11011 - E0030 u/', TIMESTAMP '2024-04-19 09:51:15.601', 225000.0, 2.49190369E8, -2.03737626E8);
INSERT INTO O_306 VALUES('240229015076', '240229015000', '7016', 2810000.0, '1 Set Gasket Set 130 HT / Astra S / 04111 - 7C318', TIMESTAMP '2024-04-19 09:51:15.601', 2810000.0, 2.52000369E8, -2.06547626E8);
INSERT INTO O_306 VALUES('240229015077', '240229015000', '7016', 650000.0, '5 Pcs Cable Assy Hino Lohan 500 / Asli S7802 - 53400 u/ Stok', TIMESTAMP '2024-04-19 09:51:15.601', 650000.0, 2.52650369E8, -2.07197626E8);
INSERT INTO O_306 VALUES('240229015078', '240229015000', '7017', 1400000.0, '1 Pcs Alternator 12 V Ganti Baru u/ Genset Las Roda PR 0827 / H 817', TIMESTAMP '2024-04-19 09:51:15.601', 1400000.0, 2.35097E7, -2.08597626E8);
INSERT INTO O_306 VALUES('240229015079', '240229015000', '7017', 250000.0, '  - Bushing Komplit', TIMESTAMP '2024-04-19 09:51:15.601', 250000.0, 2.37597E7, -2.08847626E8);
INSERT INTO O_306 VALUES('240229015080', '240229015000', '7017', 150000.0, '  - Repair Bendix', TIMESTAMP '2024-04-19 09:51:15.601', 150000.0, 2.39097E7, -2.08997626E8);
INSERT INTO O_306 VALUES('240229015081', '240229015000', '7017', 100000.0, '  - Karbon Brush', TIMESTAMP '2024-04-19 09:51:15.601', 100000.0, 2.40097E7, -2.09097626E8);
INSERT INTO O_306 VALUES('240229015082', '240229015000', '7017', 100000.0, '  - Ongkos', TIMESTAMP '2024-04-19 09:51:15.601', 100000.0, 2.41097E7, -2.09197626E8);
INSERT INTO O_306 VALUES('240229015083', '240229015000', '7016', 175000.0, '5 Pcs Baut 88 M20 X 90 u/ D85 - 36 @ Rp35.000  PR 0827 / H 817', TIMESTAMP '2024-04-19 09:51:15.601', 175000.0, 2.52825369E8, -2.09372626E8);
INSERT INTO O_306 VALUES('240229015084', '240229015000', '7016', 15000.0, '5 Pcs Ring Per M20 u/ D85 - 36 @ Rp3.000  PR 0827 / H 817', TIMESTAMP '2024-04-19 09:51:15.601', 15000.0, 2.52840369E8, -2.09387626E8);
INSERT INTO O_306 VALUES('240229015085', '240229015000', '7016', 300000.0, '3 Rol Kabel 1,5 m u/ Stok @ Rp100.000  PR 0827 / H 817', TIMESTAMP '2024-04-19 09:51:15.601', 300000.0, 2.53140369E8, -2.09687626E8);
INSERT INTO O_306 VALUES('240229015086', '240229015000', '7017', 55000.0, '1 Pcs Tang Kombinasi u/ Workshop  PR 0827 / H 817', TIMESTAMP '2024-04-19 09:51:15.601', 55000.0, 2.41647E7, -2.09742626E8);
INSERT INTO O_306 VALUES('240229015087', '240229015000', '7016', 30000.0, '2 Pcs Tespen u/ Listrik @ Rp15.000  PR 0827 / H 817', TIMESTAMP '2024-04-19 09:51:15.601', 30000.0, 2.53170369E8, -2.09772626E8);
INSERT INTO O_306 VALUES('240229015088', '240229015000', '7016', 28000.0, '1 Pcs Baut M 8 X 10 u/ Blower Genset Deutz  PR 0828 / H 112', TIMESTAMP '2024-04-19 09:51:15.601', 28000.0, 2.53198369E8, -2.09800626E8);
INSERT INTO O_306 VALUES('240229015089', '240229015000', '7016', 8000.0, '4 Pcs WP M8 u/ Blower Genset Deutz PR 0828 / H 112', TIMESTAMP '2024-04-19 09:51:15.601', 8000.0, 2.53206369E8, -2.09808626E8);
INSERT INTO O_306 VALUES('240331041001', '240331041000', '7016', 400000.0, '2 Pcs Stabilizer Hilux u/ N 9811 EE @ Rp200.000 PR 0834 / H 155', TIMESTAMP '2024-08-07 10:59:17.108', 400000.0, 2.7648876E7, 3.22310554E8);
INSERT INTO O_306 VALUES('240331041002', '240331041000', '7016', 350000.0, '1 Pcs Hose Assy 1/4 X 140 cm 2 Ply u/ PC 400 - 02 PR 0834 / H 155', TIMESTAMP '2024-08-07 10:59:17.108', 350000.0, 2.7998876E7, 3.21960554E8);
INSERT INTO O_306 VALUES('240331041003', '240331041000', '7016', 150000.0, '1 Pcs Hose Assy 1/4 X 45 cm 2 Ply u/ PC 400 - 02 PR 0834 / H 155', TIMESTAMP '2024-08-07 10:59:17.108', 150000.0, 2.8148876E7, 3.21810554E8);
INSERT INTO O_306 VALUES('240331041004', '240331041000', '7016', 100000.0, '2 Pcs Fitting 1/4 L + Lurus  PR 0834 / H 155', TIMESTAMP '2024-08-07 10:59:17.124', 100000.0, 2.8248876E7, 3.21710554E8);
INSERT INTO O_306 VALUES('240331041005', '240331041000', '7016', 220000.0, '2 Pcs Filter Solar PS 200 PP 3004 (P55 3004) u/ Genset Deutz   @ Rp110.000 PR 0834 / H 155', TIMESTAMP '2024-08-07 10:59:17.124', 220000.0, 2.8468876E7, 3.21490554E8);
INSERT INTO O_306 VALUES('240331041006', '240331041000', '7016', 980000.0, '4 Pcs Zegel Omega 7/8 u/ Workshop @ Rp245.000 PR 0834 / H 155', TIMESTAMP '2024-08-07 10:59:17.124', 980000.0, 2.9448876E7, 3.20510554E8);
INSERT INTO O_306 VALUES('240331041007', '240331041000', '7016', 100000.0, '10 Pcs Mata Gergaji Besi u/ Stok @ Rp10.000 PR 0834 / H 155', TIMESTAMP '2024-08-07 10:59:17.124', 100000.0, 2.9548876E7, 3.20410554E8);
INSERT INTO O_306 VALUES('240331041008', '240331041000', '7016', 50000.0, '1 Roll Tali Nylon 5mm u/ Workshop  PR 0834 / H 155', TIMESTAMP '2024-08-07 10:59:17.124', 50000.0, 2.9598876E7, 3.20360554E8);
INSERT INTO O_306 VALUES('240331041009', '240331041000', '7016', 35000.0, '1 Pcs Lampu LED DC u/ Checker Tambang  PR 0834 / H 155', TIMESTAMP '2024-08-07 10:59:17.124', 35000.0, 2.9633876E7, 3.20325554E8);
INSERT INTO O_306 VALUES('240331041010', '240331041000', '7016', 750000.0, '1 Pcs A/C HI 130 Assy (Rumah Filter Udara) u/ Manhaul 01  PR 0835 / H 716', TIMESTAMP '2024-08-07 10:59:17.124', 750000.0, 3.0383876E7, 3.19575554E8);
INSERT INTO O_306 VALUES('240331041011', '240331041000', '7016', 180000.0, '2 Pcs Wiper 17  u/ L 8397 VB @ Rp90.000  PR 0835 / H 716', TIMESTAMP '2024-08-07 10:59:17.124', 180000.0, 3.0563876E7, 3.19395554E8);
INSERT INTO O_306 VALUES('240331041012', '240331041000', '7016', 25000.0, '10 Pcs Sekring Tabung (Botol) 5A  u/ Stok  PR 0835 / H 716', TIMESTAMP '2024-08-07 10:59:17.124', 25000.0, 3.0588876E7, 3.19370554E8);
INSERT INTO O_306 VALUES('240331041013', '240331041000', '7016', 35000.0, '2 Pcs Operval (Engsel / Tempat Gebok) u/ Mess 18 PR 0835 / H 716', TIMESTAMP '2024-08-07 10:59:17.124', 35000.0, 3.0623876E7, 3.19335554E8);
INSERT INTO O_306 VALUES('240331041014', '240331041000', '7016', 1.24E7, '1 Pcs Gardan Hilux Assy u/ N 9811 EE  PR 0836 / H 144', TIMESTAMP '2024-08-07 10:59:17.124', 1.24E7, 4.3023876E7, 3.06935554E8);
INSERT INTO O_306 VALUES('240331041015', '240331041000', '7016', 1.1E7, '2 Pcs Injector Nissan Frontier u/ N 8049 AB @ Rp5.500.000 PR 0836 / H 144', TIMESTAMP '2024-08-07 10:59:17.124', 1.1E7, 5.4023876E7, 2.95935554E8);
INSERT INTO O_306 VALUES('240331041016', '240331041000', '7016', 1616000.0, '8 Pcs Bushing Trunion CK @ Rp202.000 PR 0820 / H 122', TIMESTAMP '2024-08-07 10:59:17.124', 1616000.0, 5.5639876E7, 2.94319554E8);
INSERT INTO O_306 VALUES('240331041017', '240331041000', '7016', 332000.0, '4 Pcs Seal Trunion Corteco @ Rp83.000 PR 0820 / H 122', TIMESTAMP '2024-08-07 10:59:17.124', 332000.0, 5.5971876E7, 2.93987554E8);
INSERT INTO O_306 VALUES('240331041018', '240331041000', '7016', 999000.0, '3 Pcs Selenoid Assy 27690-EW020 u/ Stok @ Rp333.000', TIMESTAMP '2024-08-07 10:59:17.124', 999000.0, 5.6970876E7, 2.92988554E8);
INSERT INTO O_306 VALUES('240331041019', '240331041000', '7016', 1515000.0, '1 Pcs Water Pump u/ TR 09  PR 0820 / H 122', TIMESTAMP '2024-08-07 10:59:17.124', 1515000.0, 5.8485876E7, 2.91473554E8);
INSERT INTO O_306 VALUES('240331041020', '240331041000', '7016', 2444000.0, '2 Pcs Switch Hino 260 84540 - EW010 u/ Stok @ Rp1.222.000', TIMESTAMP '2024-08-07 10:59:17.124', 2444000.0, 6.0929876E7, 2.89029554E8);
INSERT INTO O_306 VALUES('240331041021', '240331041000', '7016', 1223960.0, '5 Pcs Kabel E/Stop 78504 - EW010 u/ Stok @ Rp315.000', TIMESTAMP '2024-08-07 10:59:17.14', 1223960.0, 6.2153836E7, 2.87805594E8);
INSERT INTO O_306 VALUES('240331041022', '240331041000', '7016', 40000.0, '5 Meter Hose Nylon 6 mm u/ Stok @ Rp8.000  PR 0820 / H 122-diskon', TIMESTAMP '2024-08-07 10:59:17.14', 40000.0, 6.2193836E7, 2.87765594E8);
INSERT INTO O_306 VALUES('240331041023', '240331041000', '7016', 55000.0, '5 Meter Hose Nylon 8 mm u/ Stok @ Rp11.000 PR 0820 / H 122', TIMESTAMP '2024-08-07 10:59:17.14', 55000.0, 6.2248836E7, 2.87710594E8);
INSERT INTO O_306 VALUES('240331041024', '240331041000', '7016', 85000.0, '5 Meter Hose Nylon 10 mm u/ Stok @ Rp17.000 PR 0820 / H 122', TIMESTAMP '2024-08-07 10:59:17.14', 85000.0, 6.2333836E7, 2.87625594E8);
INSERT INTO O_306 VALUES('240331041025', '240331041000', '7016', 115000.0, '5 Meter Hose Nylon 12 mm u/ Stok @ Rp23.000 PR 0820 / H 122', TIMESTAMP '2024-08-07 10:59:17.14', 115000.0, 6.2448836E7, 2.87510594E8);
INSERT INTO O_306 VALUES('240331041026', '240331041000', '7016', 95000.0, '1 Pcs Selang Piston u/ Alcon PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.14', 95000.0, 6.2543836E7, 2.87415594E8);
INSERT INTO O_306 VALUES('240331041027', '240331041000', '7016', 125000.0, '1 Set Piston + Ring u/ Alcon PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.14', 125000.0, 6.2668836E7, 2.87290594E8);
INSERT INTO O_306 VALUES('240331041028', '240331041000', '7016', 225000.0, '5 Pcs Baut Roda Hilux u/ Stok  PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.14', 225000.0, 6.2893836E7, 2.87065594E8);
INSERT INTO O_306 VALUES('240331041029', '240331041000', '7016', 225000.0, '5 Pcs Baut Roda Triton u/ Stok  PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.14', 225000.0, 6.3118836E7, 2.86840594E8);
INSERT INTO O_306 VALUES('240331041030', '240331041000', '7016', 190000.0, '1 Set Hose Assy Hydraulic 1/4  X 0,63 m c/w Fitting u/ Control Valve', TIMESTAMP '2024-08-07 10:59:17.14', 190000.0, 6.3308836E7, 2.86650594E8);
INSERT INTO O_306 VALUES('240331041031', '240331041000', '7016', 300000.0, 'Service Aftercooller (Intercooller) u/ Manhaul 01 PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.14', 300000.0, 6.3608836E7, 2.86350594E8);
INSERT INTO O_306 VALUES('240331041032', '240331041000', '7016', 395000.0, '2 Pcs Packing Tombo 0,8 m u/ D85-36 PR 0847 / H 781', TIMESTAMP '2024-08-07 10:59:17.14', 395000.0, 6.4003836E7, 2.85955594E8);
INSERT INTO O_306 VALUES('240331041033', '240331041000', '7016', 135000.0, '3 Lusin Sarung Tangan @ Rp45.000 u/ Workshop PR 0847 / H 781', TIMESTAMP '2024-08-07 10:59:17.14', 135000.0, 6.4138836E7, 2.85820594E8);
INSERT INTO O_306 VALUES('240331041034', '240331041000', '7016', 130000.0, '1 Set Wiper u/ L 8504 AJ  PR 0847 / H 781', TIMESTAMP '2024-08-07 10:59:17.14', 130000.0, 6.4268836E7, 2.85690594E8);
INSERT INTO O_306 VALUES('240331041035', '240331041000', '7016', 345000.0, 'Kaca Film u/ L 8039 BX  PR 0847 / H 781', TIMESTAMP '2024-08-07 10:59:17.14', 345000.0, 6.4613836E7, 2.85345594E8);
INSERT INTO O_306 VALUES('240331041036', '240331041000', '7001', 3991930.0, 'Gaji dan Insentif Periode 21 Januari - 20 Februari 2024 a/n Joel Domikus Yandi (Checker Produksi)', TIMESTAMP '2024-08-07 10:59:17.14', 3991930.0, 5.01468661E8, 2.81353664E8);
INSERT INTO O_306 VALUES('240331041037', '240331041000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-08-07 10:59:17.14', 500000.0, 5896000.0, 2.80853664E8);
INSERT INTO O_306 VALUES('240331041038', '240331041000', '7001', 948000.0, 'Insentif Tanggal 22 Jan  24, 5 Feb  24, dan 19 Feb  24 a/n Fernandez', TIMESTAMP '2024-08-07 10:59:17.14', 948000.0, 5.02416661E8, 2.79905664E8);
INSERT INTO O_306 VALUES('240331041039', '240331041000', '7023', 750000.0, 'Pengganti Bensin Perahu Penyeberangan Karyawan Periode maret', TIMESTAMP '2024-08-07 10:59:17.155', 750000.0, 750000.0, 2.79155664E8);
INSERT INTO O_306 VALUES('240331041040', '240331041000', '7005', 84000.0, '2 Pcs Ordner Bantex u/ PJO (Pak Agus|) @ Rp42.000 PR 0835 / H 716', TIMESTAMP '2024-08-07 10:59:17.155', 84000.0, 84000.0, 2.79071664E8);
INSERT INTO O_306 VALUES('240331041041', '240331041000', '7005', 16000.0, '2 Pcs Standard Black (Spidol Whiteboard) u/ PJO (Pak Agus)', TIMESTAMP '2024-08-07 10:59:17.155', 16000.0, 100000.0, 2.79055664E8);
INSERT INTO O_306 VALUES('240331041042', '240331041000', '7005', 8000.0, '1 Pcs Correction CP V-Tec (Tipe X) u/ PJO PR 0835 / H 716', TIMESTAMP '2024-08-07 10:59:17.155', 8000.0, 108000.0, 2.79047664E8);
INSERT INTO O_306 VALUES('240331041043', '240331041000', '7005', 12000.0, '1 Kotak Binder Clip 32 mm u/ PJO (Pak Agus) PR 0835 / H 716', TIMESTAMP '2024-08-07 10:59:17.155', 12000.0, 120000.0, 2.79035664E8);
INSERT INTO O_306 VALUES('240331041044', '240331041000', '7023', 280000.0, '20 Liter Petralite u/ Alcon @ Rp14.000  PR 0835 / H 716', TIMESTAMP '2024-08-07 10:59:17.155', 280000.0, 1030000.0, 2.78755664E8);
INSERT INTO O_306 VALUES('240331041045', '240331041000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dan Jemput Go oie hap', TIMESTAMP '2024-08-07 10:59:17.155', 50000.0, 4.5695E7, 2.78705664E8);
INSERT INTO O_306 VALUES('240331041046', '240331041000', '7023', 280000.0, '20 Liter Petralite u/ Alcon WT + Workshop @ Rp14.000   ', TIMESTAMP '2024-08-07 10:59:17.155', 280000.0, 1310000.0, 2.78425664E8);
INSERT INTO O_306 VALUES('240331041047', '240331041000', '7017', 50000.0, '1 Pcs Jerigen 20 Lt u/ Tempat Bensin PR 0835 / 716', TIMESTAMP '2024-08-07 10:59:17.155', 50000.0, 1.6379088E8, 2.78375664E8);
INSERT INTO O_306 VALUES('240331041048', '240331041000', '7017', 124000.0, '2 Dus Sabun Ekonomi Cream Lemon u/ Workshop @ Rp62.000', TIMESTAMP '2024-08-07 10:59:17.155', 124000.0, 1.6391488E8, 2.78251664E8);
INSERT INTO O_306 VALUES('240331041049', '240331041000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart ', TIMESTAMP '2024-08-07 10:59:17.155', 50000.0, 4.5745E7, 2.78201664E8);
INSERT INTO O_306 VALUES('240331041050', '240331041000', '7009', 245000.0, 'Bayar Cendana + Kurir + Packing (Kirim Gardan + Injector)', TIMESTAMP '2024-08-07 10:59:17.155', 245000.0, 245000.0, 2.77956664E8);
INSERT INTO O_306 VALUES('240331041051', '240331041000', '7017', 8000.0, 'Admin Bank (2 X Transfer ke Sukses Makmur Sempurna)', TIMESTAMP '2024-08-07 10:59:17.171', 8000.0, 1.6392288E8, 2.77948664E8);
INSERT INTO O_306 VALUES('240331041052', '240331041000', '7001', 3000000.0, 'Tambahan Insentif HRD PT DBP Selama Diperbantukan di PT Dhako Unit Muara Batuq a/n Munas Periode Februari 2024', TIMESTAMP '2024-08-07 10:59:17.171', 3000000.0, 5.05416661E8, 2.74948664E8);
INSERT INTO O_306 VALUES('240331041053', '240331041000', '7004', 1500000.0, 'Patroli Brimob u/ Pengamanan Tambang PT Dhako (PAM BRIMOB) tanggal 5 Februari 2024 s/d 5 Maret 2024', TIMESTAMP '2024-08-07 10:59:17.171', 1500000.0, 7396000.0, 2.73448664E8);
INSERT INTO O_306 VALUES('240331041054', '240331041000', '7017', 290000.0, '1 Tabung Oksigen u/ Workshop PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.171', 290000.0, 1.6421288E8, 2.73158664E8);
INSERT INTO O_306 VALUES('240331041055', '240331041000', '7017', 600000.0, '1 Tabung Acetelene u/ Workshop PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.171', 600000.0, 1.6481288E8, 2.72558664E8);
INSERT INTO O_306 VALUES('240331041056', '240331041000', '7017', 100000.0, '10 Pcs Klem 2,5  u/ Stok @ Rp10.000  PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.171', 100000.0, 1.6491288E8, 2.72458664E8);
INSERT INTO O_306 VALUES('240331041057', '240331041000', '7017', 600000.0, '60 Lembar Materai u/ PKWT dan Kompensasi PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.171', 600000.0, 1.6551288E8, 2.71858664E8);
INSERT INTO O_306 VALUES('240331041058', '240331041000', '7017', 95000.0, '1 Set Lem Epoxy Avian u/ L 9504 AJ  PR 0838 / H 766', TIMESTAMP '2024-08-07 10:59:17.171', 95000.0, 1.6560788E8, 2.71763664E8);
INSERT INTO O_306 VALUES('240331041059', '240331041000', '7017', 110000.0, '5 Dus Air Gelas An Najwa u/ Proyek Gudang / Workshop', TIMESTAMP '2024-08-07 10:59:17.171', 110000.0, 1.6571788E8, 2.71653664E8);
INSERT INTO O_306 VALUES('240331041060', '240331041000', '7017', 42000.0, 'Minuman u/ Pekerja yang Memindahan Kontainer Logistik ', TIMESTAMP '2024-08-07 10:59:17.171', 42000.0, 1.6575988E8, 2.71611664E8);
INSERT INTO O_306 VALUES('240331041061', '240331041000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (LKH 08) Melak - Surabaya', TIMESTAMP '2024-08-07 10:59:17.171', 47000.0, 292000.0, 2.71564664E8);
INSERT INTO O_306 VALUES('240331041062', '240331041000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Belanja Sparepart dll', TIMESTAMP '2024-08-07 10:59:17.171', 50000.0, 4.5795E7, 2.71514664E8);
INSERT INTO O_306 VALUES('240331041063', '240331041000', '7004', 7000.0, '1 Bungkus Mintz Duomint 24 X 115G', TIMESTAMP '2024-08-07 10:59:17.171', 7000.0, 7403000.0, 2.71507664E8);
INSERT INTO O_306 VALUES('240331041064', '240331041000', '7004', 10000.0, '1 Bungkus Kopiko 175Gr ', TIMESTAMP '2024-08-07 10:59:17.171', 10000.0, 7413000.0, 2.71497664E8);
INSERT INTO O_306 VALUES('240331041065', '240331041000', '7004', 8000.0, '1 Bungkus Alpenliebe Smooth Stawberry 40 X 125G', TIMESTAMP '2024-08-07 10:59:17.171', 8000.0, 7421000.0, 2.71489664E8);
INSERT INTO O_306 VALUES('240331041066', '240331041000', '7004', 7000.0, '1 Pak Tamarin Sari Asam 24 X 135Gr', TIMESTAMP '2024-08-07 10:59:17.171', 7000.0, 7428000.0, 2.71482664E8);
INSERT INTO O_306 VALUES('240331041067', '240331041000', '7004', 14000.0, '2 Pcs Roma Slai O lay Bluberry 128G @ Rp7.000', TIMESTAMP '2024-08-07 10:59:17.171', 14000.0, 7442000.0, 2.71468664E8);
INSERT INTO O_306 VALUES('240331041068', '240331041000', '7004', 40000.0, '4 Bungkus Wafer Oreo 24 X 140G Vanilla @ Rp10.000', TIMESTAMP '2024-08-07 10:59:17.171', 40000.0, 7482000.0, 2.71428664E8);
INSERT INTO O_306 VALUES('240331041069', '240331041000', '7004', 12000.0, '2 Pak Nabati L1 Wafer Richoco 24 X 110gr @ Rp6.000', TIMESTAMP '2024-08-07 10:59:17.171', 12000.0, 7494000.0, 2.71416664E8);
INSERT INTO O_306 VALUES('240331041070', '240331041000', '7004', 22000.0, '2 Bungkus Nissin Crispy Crackers 30 X 225G @ Rp11.000', TIMESTAMP '2024-08-07 10:59:17.171', 22000.0, 7516000.0, 2.71394664E8);
INSERT INTO O_306 VALUES('240331041071', '240331041000', '7004', 16000.0, '2 Bungkus Roma Malkis Abon 4 X 250Gr @ Rp8.000', TIMESTAMP '2024-08-07 10:59:17.171', 16000.0, 7532000.0, 2.71378664E8);
INSERT INTO O_306 VALUES('240331041072', '240331041000', '7004', 16000.0, '2 Bungkus Roma Sandwich Coklat 6 X 7 X 189 @ Rp8.000', TIMESTAMP '2024-08-07 10:59:17.171', 16000.0, 7548000.0, 2.71362664E8);
INSERT INTO O_306 VALUES('240331041073', '240331041000', '7004', 18000.0, '2 Pcs Slai O lai Blueberry 4 X 5 X 240Gr @ Rp9.000', TIMESTAMP '2024-08-07 10:59:17.171', 18000.0, 7566000.0, 2.71344664E8);
INSERT INTO O_306 VALUES('240331041074', '240331041000', '7004', 13000.0, '1 Renteng Nutrisari Es Cincau 4R X 10 X 11G', TIMESTAMP '2024-08-07 10:59:17.171', 13000.0, 7579000.0, 2.71331664E8);
INSERT INTO O_306 VALUES('240331041075', '240331041000', '7004', 13000.0, '1 Renteng Nutrisari Leci Pls 4P X 40S X 11G', TIMESTAMP '2024-08-07 10:59:17.171', 13000.0, 7592000.0, 2.71318664E8);
INSERT INTO O_306 VALUES('240331041076', '240331041000', '7004', 13000.0, '1 Renteng Nutrisari Anggur Pls 4P X 40S X 11G', TIMESTAMP '2024-08-07 10:59:17.171', 13000.0, 7605000.0, 2.71305664E8);
INSERT INTO O_306 VALUES('240331041077', '240331041000', '7004', 13000.0, '1 Renteng Nutrisari Jeruk Ekstra Manis Pls 4P X 40S X 11G', TIMESTAMP '2024-08-07 10:59:17.171', 13000.0, 7618000.0, 2.71292664E8);
INSERT INTO O_306 VALUES('240331041078', '240331041000', '7017', 8000.0, 'Admin Bank (2 X Transfer ke Bp. Hani)', TIMESTAMP '2024-08-07 10:59:17.171', 8000.0, 1.6576788E8, 2.71284664E8);
INSERT INTO O_306 VALUES('240331041079', '240331041000', '7017', 100000.0, '5 Pcs Gembok DLIQ 40L u/ Kantor dan Mess KM 18 @ Rp20.000', TIMESTAMP '2024-08-07 10:59:17.171', 100000.0, 1.6586788E8, 2.71184664E8);
INSERT INTO O_306 VALUES('240331041080', '240331041000', '7017', 50000.0, '5 Pcs Mata Bor 8 mm u/ Gudang @ Rp10.000 PR 0847 / H 781', TIMESTAMP '2024-08-07 10:59:17.171', 50000.0, 1.6591788E8, 2.71134664E8);
INSERT INTO O_306 VALUES('240331041081', '240331041000', '7017', 60000.0, '2 Roll Tali Nylon 2,5 u/ Pasang Seng Gudang PR 0847 / H 781', TIMESTAMP '2024-08-07 10:59:17.171', 60000.0, 1.6597788E8, 2.71074664E8);
INSERT INTO O_306 VALUES('240331041082', '240331041000', '7017', 137000.0, '1 Pcs Kalkulator Deli u/ Kasir PR 0847 / H 781', TIMESTAMP '2024-08-07 10:59:17.171', 137000.0, 1.6611488E8, 2.70937664E8);
INSERT INTO O_306 VALUES('240331041083', '240331041000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-08-07 10:59:17.171', 500000.0, 1.6661488E8, 2.70437664E8);
INSERT INTO O_306 VALUES('240331041084', '240331041000', '7004', 250000.0, '1 Paket Nasi Tumpeng dan 30 Lembar Kertas Minyak u/ Selamatan Pasang Kuda Kuda Kontainer Gudang Logistik', TIMESTAMP '2024-08-07 10:59:17.171', 250000.0, 7868000.0, 2.70187664E8);
INSERT INTO O_306 VALUES('240331041085', '240331041000', '7017', 100000.0, '5 Dus Air Gelas An Najwa u/ Proyek Gudang / Workshop', TIMESTAMP '2024-08-07 10:59:17.171', 100000.0, 1.6671488E8, 2.70087664E8);
INSERT INTO O_306 VALUES('240331041086', '240331041000', '7009', 33700.0, 'Bayar J&T u/ Pengiriman Dokumen (Slip Gaji + Time Sheet', TIMESTAMP '2024-08-07 10:59:17.171', 33700.0, 325700.0, 2.70053964E8);
INSERT INTO O_306 VALUES('240331041087', '240331041000', '7005', 60000.0, '5 Pcs ID Card ', TIMESTAMP '2024-08-07 10:59:17.187', 60000.0, 180000.0, 2.69993964E8);
INSERT INTO O_306 VALUES('240331041088', '240331041000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Belanja Sparepart dll', TIMESTAMP '2024-08-07 10:59:17.187', 50000.0, 4.5845E7, 2.69943964E8);
INSERT INTO O_306 VALUES('240331041089', '240331041000', '7001', 640000.0, 'Piket Genset Penerangan Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 10:59:17.187', 640000.0, 5.06056661E8, 2.69303964E8);
INSERT INTO O_306 VALUES('240331042001', '240331042000', '7006', 2250000.0, 'Transport Darat Melak - Balikpapan tgl 5 Februari 2024 ', TIMESTAMP '2024-08-07 11:00:36.244', 2250000.0, 4.8095E7, 2.67053964E8);
INSERT INTO O_306 VALUES('240331042002', '240331042000', '7006', 150000.0, 'Transport Darat Banjarmasin - Kintap tgl 6 Februari 2024', TIMESTAMP '2024-08-07 11:00:36.244', 150000.0, 4.8245E7, 2.66903964E8);
INSERT INTO O_306 VALUES('240331042003', '240331042000', '7006', 150000.0, 'Transport Darat Kintap - Banjarmasin tgl 27 Februari 2024', TIMESTAMP '2024-08-07 11:00:36.244', 150000.0, 4.8395E7, 2.66753964E8);
INSERT INTO O_306 VALUES('240331042004', '240331042000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak tgl 27 Februari 2024', TIMESTAMP '2024-08-07 11:00:36.244', 450000.0, 4.8845E7, 2.66303964E8);
INSERT INTO O_306 VALUES('240331042005', '240331042000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan tgl 2 Februari 2024 ', TIMESTAMP '2024-08-07 11:00:36.244', 450000.0, 4.9295E7, 2.65853964E8);
INSERT INTO O_306 VALUES('240331042006', '240331042000', '7006', 150000.0, 'Transport Darat Surabaya - Blitar tgl 3 Februari 2024', TIMESTAMP '2024-08-07 11:00:36.259', 150000.0, 4.9445E7, 2.65703964E8);
INSERT INTO O_306 VALUES('240331042007', '240331042000', '7006', 150000.0, 'Transport Darat Blitar - Surabaya tgl 29 Februari 2024', TIMESTAMP '2024-08-07 11:00:36.259', 150000.0, 4.9595E7, 2.65553964E8);
INSERT INTO O_306 VALUES('240331042008', '240331042000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak tgl 29 Februari 2024', TIMESTAMP '2024-08-07 11:00:36.259', 450000.0, 5.0045E7, 2.65103964E8);
INSERT INTO O_306 VALUES('240331042009', '240331042000', '7006', 400000.0, 'Perjalanan Darat Meak - Samarinda tgl 11 Feb 2024', TIMESTAMP '2024-08-07 11:00:36.259', 400000.0, 5.0445E7, 2.64703964E8);
INSERT INTO O_306 VALUES('240331042010', '240331042000', '7006', 600000.0, 'Perjalanan Darat Samarinda - Kintap tgl 11 Feb 2024', TIMESTAMP '2024-08-07 11:00:36.259', 600000.0, 5.1045E7, 2.64103964E8);
INSERT INTO O_306 VALUES('240331042011', '240331042000', '7006', 200000.0, 'Biaya Konsumsi selama Perjalanan Melak - Kintap dari tanggal', TIMESTAMP '2024-08-07 11:00:36.259', 200000.0, 5.1245E7, 2.63903964E8);
INSERT INTO O_306 VALUES('240331042012', '240331042000', '7001', 280000.0, 'Uang Makan & Tunj. Hadir Periode 1 Maret - 2 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 280000.0, 5.06336661E8, 2.63623964E8);
INSERT INTO O_306 VALUES('240331042013', '240331042000', '7001', 560000.0, 'Uang Makan & Tunj. Hadir Periode 1 Maret - 4 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 560000.0, 5.06896661E8, 2.63063964E8);
INSERT INTO O_306 VALUES('240331042014', '240331042000', '7001', 2050000.0, 'UM M. Agus Irwanto Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 2050000.0, 5.08946661E8, 2.61013964E8);
INSERT INTO O_306 VALUES('240331042015', '240331042000', '7001', 1400000.0, 'UM Slamet Subagyo Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1400000.0, 5.10346661E8, 2.59613964E8);
INSERT INTO O_306 VALUES('240331042016', '240331042000', '7001', 1040000.0, 'UM Haqqul Istaflaha Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1040000.0, 5.11386661E8, 2.58573964E8);
INSERT INTO O_306 VALUES('240331042017', '240331042000', '7001', 1100000.0, 'UM Sarjito F. Adam Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1100000.0, 5.12486661E8, 2.57473964E8);
INSERT INTO O_306 VALUES('240331042018', '240331042000', '7001', 675000.0, 'UM Jakaria Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 675000.0, 5.13161661E8, 2.56798964E8);
INSERT INTO O_306 VALUES('240331042019', '240331042000', '7001', 1170000.0, 'UM Didik Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1170000.0, 5.14331661E8, 2.55628964E8);
INSERT INTO O_306 VALUES('240331042020', '240331042000', '7001', 1740000.0, 'UM Go Oei Hap Periode 29 Februari 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1740000.0, 5.16071661E8, 2.53888964E8);
INSERT INTO O_306 VALUES('240331042021', '240331042000', '7001', 1400000.0, 'UM Syamsudin Noor Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1400000.0, 5.17471661E8, 2.52488964E8);
INSERT INTO O_306 VALUES('240331042022', '240331042000', '7001', 1800000.0, 'UM Supriyanto Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1800000.0, 5.19271661E8, 2.50688964E8);
INSERT INTO O_306 VALUES('240331042023', '240331042000', '7001', 1400000.0, 'UM Handriadi Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1400000.0, 5.20671661E8, 2.49288964E8);
INSERT INTO O_306 VALUES('240331042024', '240331042000', '7001', 1400000.0, 'UM Wijanarko Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1400000.0, 5.22071661E8, 2.47888964E8);
INSERT INTO O_306 VALUES('240331042025', '240331042000', '7001', 1400000.0, 'UM Sekhan Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1400000.0, 5.23471661E8, 2.46488964E8);
INSERT INTO O_306 VALUES('240331042026', '240331042000', '7001', 1050000.0, 'UM Mauretius Oji Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1050000.0, 5.24521661E8, 2.45438964E8);
INSERT INTO O_306 VALUES('240331042027', '240331042000', '7001', 945000.0, 'UM Raju Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 945000.0, 5.25466661E8, 2.44493964E8);
INSERT INTO O_306 VALUES('240331042028', '240331042000', '7001', 1400000.0, 'UM Yono Setyawan Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1400000.0, 5.26866661E8, 2.43093964E8);
INSERT INTO O_306 VALUES('240331042029', '240331042000', '7001', 1170000.0, 'UM Andri Syamsul Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1170000.0, 5.28036661E8, 2.41923964E8);
INSERT INTO O_306 VALUES('240331042030', '240331042000', '7001', 1500000.0, 'UM Rinaldhie G. Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1500000.0, 5.29536661E8, 2.40423964E8);
INSERT INTO O_306 VALUES('240331042031', '240331042000', '7001', 1500000.0, 'UM M. Hafizhni Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1500000.0, 5.31036661E8, 2.38923964E8);
INSERT INTO O_306 VALUES('240331042032', '240331042000', '7001', 1400000.0, 'UM Suradi Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1400000.0, 5.32436661E8, 2.37523964E8);
INSERT INTO O_306 VALUES('240331042033', '240331042000', '7001', 500000.0, 'UM Saharuddin Periode 1 Maret 2024 - 5 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 500000.0, 5.32936661E8, 2.37023964E8);
INSERT INTO O_306 VALUES('240331042034', '240331042000', '7001', 550000.0, 'UM Fajar N. Hidayat Periode 1 Maret 2024 - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 550000.0, 5.33486661E8, 2.36473964E8);
INSERT INTO O_306 VALUES('240331042035', '240331042000', '7001', 1500000.0, 'Kasbon Potong UM Per 1 Maret - 10 Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 1500000.0, 5.34986661E8, 2.34973964E8);
INSERT INTO O_306 VALUES('240331042036', '240331042000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 500000.0, 5.35486661E8, 2.34473964E8);
INSERT INTO O_306 VALUES('240331042037', '240331042000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Maret 2024', TIMESTAMP '2024-08-07 11:00:36.259', 500000.0, 5.35986661E8, 2.33973964E8);
INSERT INTO O_306 VALUES('240331042038', '240331042000', '7016', 165000.0, '1 Pcs Kas Rem Belakang (W/C HiLux) u/ L 9502 GH PR 0849 / H 877 Toko sumber rejeki', TIMESTAMP '2024-08-07 11:00:36.275', 165000.0, 6.4778836E7, 2.33808964E8);
INSERT INTO O_306 VALUES('240331042039', '240331042000', '7007', 150000.0, 'Service Dinamo Genset Mitsubishi  PR 0849 / H 877 (Sinar Jaya) Bearing 6305', TIMESTAMP '2024-08-07 11:00:36.275', 150000.0, 3600000.0, 2.33658964E8);
INSERT INTO O_306 VALUES('240331042040', '240331042000', '7007', 100000.0, 'Ongkos', TIMESTAMP '2024-08-07 11:00:36.275', 100000.0, 3700000.0, 2.33558964E8);
INSERT INTO O_306 VALUES('240331042041', '240331042000', '7007', 1000000.0, 'Modif Dinamo Genset Mitsubishi  PR 0849 / H 877 (CV Abdi Jaya)', TIMESTAMP '2024-08-07 11:00:36.275', 1000000.0, 4700000.0, 2.32558964E8);
INSERT INTO O_306 VALUES('240331042042', '240331042000', '7007', 2500000.0, 'Lepas Bogie / Trunion u/ AS Trunion TR 02  PR 0849 / H 877 (CV Abdi Jaya)', TIMESTAMP '2024-08-07 11:00:36.275', 2500000.0, 7200000.0, 2.30058964E8);
INSERT INTO O_306 VALUES('240331042043', '240331042000', '7016', 30000.0, '2 Pcs Sok Drat 2  u/ Pompa Air PR 0849 / H 877 (UD Mulia Jaya)', TIMESTAMP '2024-08-07 11:00:36.275', 30000.0, 6.4808836E7, 2.30028964E8);
INSERT INTO O_306 VALUES('240331042044', '240331042000', '7016', 20000.0, '2 Pcs Elbow 2  u/ Pompa Air PR 0849 / H 877 (UD Mulia Jaya)', TIMESTAMP '2024-08-07 11:00:36.275', 20000.0, 6.4828836E7, 2.30008964E8);
INSERT INTO O_306 VALUES('240331042045', '240331042000', '7016', 1280000.0, '1 Roll (100 m) Kabel Nym Eterna 2 X 2,5 u/ Gudang PR 0849 / H 877 mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 1280000.0, 6.6108836E7, 2.28728964E8);
INSERT INTO O_306 VALUES('240331042046', '240331042000', '7016', 50000.0, '10 Pcs Sealtip u/ Stok @ Rp5.000  PR 0849 / H 877 (UD Mulia Jaya)', TIMESTAMP '2024-08-07 11:00:36.275', 50000.0, 6.6158836E7, 2.28678964E8);
INSERT INTO O_306 VALUES('240331042047', '240331042000', '7016', 80000.0, '4 Pcs Stop Kontak u/ Gudang @ Rp20.000  PR 0849 / H 877 (UD Mulia Jaya)', TIMESTAMP '2024-08-07 11:00:36.275', 80000.0, 6.6238836E7, 2.28598964E8);
INSERT INTO O_306 VALUES('240331042048', '240331042000', '7016', 50000.0, '1 Pcs Relay Lampu 24 V u/ TR 08 PR 2406 / H 177 (Busur Jaya Mobil)', TIMESTAMP '2024-08-07 11:00:36.275', 50000.0, 6.6288836E7, 2.28548964E8);
INSERT INTO O_306 VALUES('240331042049', '240331042000', '7016', 50000.0, '2,5 Kg Kain Majun  PR 2406 / H 177 (Busur Jaya Mobil)', TIMESTAMP '2024-08-07 11:00:36.275', 50000.0, 6.6338836E7, 2.28498964E8);
INSERT INTO O_306 VALUES('240331042050', '240331042000', '7008', 400000.0, '1 Set Repair Disk Brake (Bubut + Tambal Rumah Kampas Rem)', TIMESTAMP '2024-08-07 11:00:36.275', 400000.0, 400000.0, 2.28098964E8);
INSERT INTO O_306 VALUES('240331042051', '240331042000', '7016', 150000.0, 'Bearing 6305 PR 2406 / H 177 (Service Dinamo  Sinar Jaya ', TIMESTAMP '2024-08-07 11:00:36.275', 150000.0, 6.6488836E7, 2.27948964E8);
INSERT INTO O_306 VALUES('240331042052', '240331042000', '7016', 50000.0, 'Bearing 6203', TIMESTAMP '2024-08-07 11:00:36.275', 50000.0, 6.6538836E7, 2.27898964E8);
INSERT INTO O_306 VALUES('240331042053', '240331042000', '7016', 100000.0, 'Holder', TIMESTAMP '2024-08-07 11:00:36.275', 100000.0, 6.6638836E7, 2.27798964E8);
INSERT INTO O_306 VALUES('240331042054', '240331042000', '7016', 50000.0, 'Karbon Brush', TIMESTAMP '2024-08-07 11:00:36.275', 50000.0, 6.6688836E7, 2.27748964E8);
INSERT INTO O_306 VALUES('240331042055', '240331042000', '7007', 100000.0, 'Repair Spul', TIMESTAMP '2024-08-07 11:00:36.275', 100000.0, 7300000.0, 2.27648964E8);
INSERT INTO O_306 VALUES('240331042056', '240331042000', '7007', 100000.0, 'Ongkos', TIMESTAMP '2024-08-07 11:00:36.275', 100000.0, 7400000.0, 2.27548964E8);
INSERT INTO O_306 VALUES('240331042057', '240331042000', '7016', 1050000.0, '3 Pcs Tutup Oli (CAP 17A-60-11310) u/ Stok @ Rp350.000 surya perkasa', TIMESTAMP '2024-08-07 11:00:36.275', 1050000.0, 6.7738836E7, 2.26498964E8);
INSERT INTO O_306 VALUES('240331042058', '240331042000', '7016', 366300.0, '3 Pcs Tutup Radiator D85SS-2 u/ Stok @ Rp122.100 surya perkasa', TIMESTAMP '2024-08-07 11:00:36.275', 366300.0, 6.8105136E7, 2.26132664E8);
INSERT INTO O_306 VALUES('240331042059', '240331042000', '7016', 3330000.0, '2 Pcs Carry Roller D85SS-2 u/ D85-36 + Stok @ Rp1.665.000 surya perkasa', TIMESTAMP '2024-08-07 11:00:36.275', 3330000.0, 7.1435136E7, 2.22802664E8);
INSERT INTO O_306 VALUES('240331042060', '240331042000', '7016', 300000.0, 'Service Alcon dan Ganti Stater PR 2408 / H 899 (UD. Rahmat Abadi)', TIMESTAMP '2024-08-07 11:00:36.275', 300000.0, 7.1735136E7, 2.22502664E8);
INSERT INTO O_306 VALUES('240331042061', '240331042000', '7016', 550000.0, '2 Pcs Mounting Mesin (Pangkon Mesin) u/ Manhaul 01 @ Rp275.000 eka jaya motor', TIMESTAMP '2024-08-07 11:00:36.275', 550000.0, 7.2285136E7, 2.21952664E8);
INSERT INTO O_306 VALUES('240331042062', '240331042000', '7016', 210000.0, '3 Meter Selang Benang Trilliun u/ FT 01 @ Rp70.000 IMFA jaya', TIMESTAMP '2024-08-07 11:00:36.275', 210000.0, 7.2495136E7, 2.21742664E8);
INSERT INTO O_306 VALUES('240331042063', '240331042000', '7016', 1650000.0, '1 Pcs Disc Cluth Dutro (Kampas Kopling) u/ Manhaul 01 sumber rejeki II', TIMESTAMP '2024-08-07 11:00:36.275', 1650000.0, 7.4145136E7, 2.20092664E8);
INSERT INTO O_306 VALUES('240331042064', '240331042000', '7016', 210000.0, '1 Pcs Kampas Hand Rem u/ Manhaul 01 PR 2409 / H 181 (Sumber Rejeki II)', TIMESTAMP '2024-08-07 11:00:36.275', 210000.0, 7.4355136E7, 2.19882664E8);
INSERT INTO O_306 VALUES('240331042065', '240331042000', '7016', 120000.0, '1 Pcs C/M Kit Hino (Repair Kit Kopling) u/ Mamhaul 02  PR 2409 / H 181 sumber rejeki II', TIMESTAMP '2024-08-07 11:00:36.275', 120000.0, 7.4475136E7, 2.19762664E8);
INSERT INTO O_306 VALUES('240331042066', '240331042000', '7016', 95000.0, '1 Pcs Washer Pump 120 (Pompa Air) u/ N 8504 AJ  PR 2409 / H 181 sumber rejeki II', TIMESTAMP '2024-08-07 11:00:36.275', 95000.0, 7.4570136E7, 2.19667664E8);
INSERT INTO O_306 VALUES('240331042067', '240331042000', '7016', 50000.0, '1 Pcs Gasket Lem u/ Workshop  PR 2409 / H 181 (Sumber Rejeki II)', TIMESTAMP '2024-08-07 11:00:36.275', 50000.0, 7.4620136E7, 2.19617664E8);
INSERT INTO O_306 VALUES('240331042068', '240331042000', '7016', 35000.0, '1 Pcs Autosol u/ Workshop PR 2409 / H 181  (Sumber Rejeki II)', TIMESTAMP '2024-08-07 11:00:36.275', 35000.0, 7.4655136E7, 2.19582664E8);
INSERT INTO O_306 VALUES('240331042069', '240331042000', '7016', 15000.0, '1 Pcs Soket A4 (Soket Lampu) u/ L 9502 GH PR 2409 / H 181 (Sumber Rejeki II)', TIMESTAMP '2024-08-07 11:00:36.275', 15000.0, 7.4670136E7, 2.19567664E8);
INSERT INTO O_306 VALUES('240331042070', '240331042000', '7007', 300000.0, 'Service Radiator Tower Lamp 02 PR 2410 / H 899 (Mitra Service)', TIMESTAMP '2024-08-07 11:00:36.275', 300000.0, 7700000.0, 2.19267664E8);
INSERT INTO O_306 VALUES('240331042071', '240331042000', '7016', 150000.0, '1 Roll Selang Kompresor u/ Workshop PR 2410 / H 899 (Busur Jaya Mobil)', TIMESTAMP '2024-08-07 11:00:36.275', 150000.0, 7.4820136E7, 2.19117664E8);
INSERT INTO O_306 VALUES('240331042072', '240331042000', '7016', 35000.0, '1 Pcs Nepel Drat (Nepel King) 1  u/ Tandon Air Workshop mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 35000.0, 7.4855136E7, 2.19082664E8);
INSERT INTO O_306 VALUES('240331042073', '240331042000', '7016', 35000.0, '1 Pcs Reducer (Oversock) 1 - 1 1/2  u/ Tandon Air Workshop mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 35000.0, 7.4890136E7, 2.19047664E8);
INSERT INTO O_306 VALUES('240331042074', '240331042000', '7016', 380000.0, '2 Pcs Stop Kran 1  u/ Tandon Air Workshop @ Rp190.000 mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 380000.0, 7.5270136E7, 2.18667664E8);
INSERT INTO O_306 VALUES('240331042075', '240331042000', '7016', 30000.0, '1 Pcs Tee Galvanis 1  u/ Tandon Air Workshop PR 2410 / H 899 mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 30000.0, 7.5300136E7, 2.18637664E8);
INSERT INTO O_306 VALUES('240331042076', '240331042000', '7016', 15000.0, '1 Pcs Tee Galvanis 1/2  u/ Tandon Air Workshop PR 2410 / H 899 mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 15000.0, 7.5315136E7, 2.18622664E8);
INSERT INTO O_306 VALUES('240331042077', '240331042000', '7016', 80000.0, '4 Pcs Nepel Drat (Double Nepel) 1  u/ Tandon Air Workshop mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 80000.0, 7.5395136E7, 2.18542664E8);
INSERT INTO O_306 VALUES('240331042078', '240331042000', '7016', 30000.0, '1 Pcs Nepel King (Double Nepel) 1/2  u/ Tandon Air Workshop mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 30000.0, 7.5425136E7, 2.18512664E8);
INSERT INTO O_306 VALUES('240331042079', '240331042000', '7016', 28000.0, '4 Pcs SD2 (Sok Drat Luar) 1  (PVC) u/ Tandon Air Workshop mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 28000.0, 7.5453136E7, 2.18484664E8);
INSERT INTO O_306 VALUES('240331042080', '240331042000', '7016', 14000.0, '2 Pcs SDD (Sok Drat Dalam) 1  (PVC) u/ Tandon Air Workshop mulia jaya', TIMESTAMP '2024-08-07 11:00:36.275', 14000.0, 7.5467136E7, 2.18470664E8);
INSERT INTO O_306 VALUES('240331042081', '240331042000', '7016', 160000.0, '4 Gln Radiator Coolant (Air Coolant) u/ Stok PR 2414 / H 144 sumber rejeki II', TIMESTAMP '2024-08-07 11:00:36.275', 160000.0, 7.5627136E7, 2.18310664E8);
INSERT INTO O_306 VALUES('240331042082', '240331042000', '7016', 625000.0, '1 Pcs C/O Assy Fuso (Rumah Kopling Atas) u/ Manhaul 02 sumber rejeki II', TIMESTAMP '2024-08-07 11:00:36.275', 625000.0, 7.6252136E7, 2.17685664E8);
INSERT INTO O_306 VALUES('240331042083', '240331042000', '7007', 2400000.0, 'Service Dinamo Genset (Generator Genset Mitsubishi) : Disc Kopling, sinar jaya', TIMESTAMP '2024-08-07 11:00:36.275', 2400000.0, 1.01E7, 2.15285664E8);
INSERT INTO O_306 VALUES('240331042084', '240331042000', '7016', 200000.0, '1 Pcs Riting Assy Hino L (Riting Kanan) u/ TR 72 PR 2414 / H 144 busur jaya mobil', TIMESTAMP '2024-08-07 11:00:36.275', 200000.0, 7.6452136E7, 2.15085664E8);
INSERT INTO O_306 VALUES('240331042085', '240331042000', '7016', 200000.0, '1 Set Hose Assy Hyd 1/4  X 0,77 M (Hose Control Valve) u/ cv inti bahagia', TIMESTAMP '2024-08-07 11:00:36.275', 200000.0, 7.6652136E7, 2.14885664E8);
INSERT INTO O_306 VALUES('240331042086', '240331042000', '7016', 50000.0, '2 Pcs Clamp 1/2  (Klem Hose) u/ Kompresor Workshop  PR 2414 / H 144 cv inti bahagia', TIMESTAMP '2024-08-07 11:00:36.275', 50000.0, 7.6702136E7, 2.14835664E8);
INSERT INTO O_306 VALUES('240331042087', '240331042000', '7009', 230000.0, 'Bayar Cendana u/ Pengiriman Sparepart (Crankshaft Manhaul 01)', TIMESTAMP '2024-08-07 11:00:36.275', 230000.0, 555700.0, 2.14605664E8);
INSERT INTO O_306 VALUES('240331042088', '240331042000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Belanja Sparepart, Pengiriman', TIMESTAMP '2024-08-07 11:00:36.275', 50000.0, 5.1295E7, 2.14555664E8);
INSERT INTO O_306 VALUES('240331042089', '240331042000', '7017', 48000.0, '1 Kaleng Pilok Putih (White Aerosol 400cc) u/ L 8504 AJ', TIMESTAMP '2024-08-07 11:00:36.275', 48000.0, 1.6676288E8, 2.14507664E8);
INSERT INTO O_306 VALUES('240331043001', '240331043000', '7008', 80000.0, 'Cuci Mobil L 8504 AJ', TIMESTAMP '2024-08-07 11:03:03.958', 80000.0, 480000.0, 2.14427664E8);
INSERT INTO O_306 VALUES('240331043002', '240331043000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Belanja Sparepart dll', TIMESTAMP '2024-08-07 11:03:03.958', 50000.0, 5.1345E7, 2.14377664E8);
INSERT INTO O_306 VALUES('240331043003', '240331043000', '7001', 150000.0, 'Jaga Workshop Libur Hari Suci Nyepi 11 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.958', 150000.0, 5.36136661E8, 2.14227664E8);
INSERT INTO O_306 VALUES('240331043004', '240331043000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Ambil Oli dan Sparepart di UT, ', TIMESTAMP '2024-08-07 11:03:03.958', 50000.0, 5.1395E7, 2.14177664E8);
INSERT INTO O_306 VALUES('240331043005', '240331043000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (LKH 09) Melak - Surabaya', TIMESTAMP '2024-08-07 11:03:03.958', 47000.0, 602700.0, 2.14130664E8);
INSERT INTO O_306 VALUES('240331043006', '240331043000', '7017', 290000.0, '1 Tabung Oksigen u/ Workshop PR 2406 / H 177 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:03:03.958', 290000.0, 1.6705288E8, 2.13840664E8);
INSERT INTO O_306 VALUES('240331043007', '240331043000', '7017', 45000.0, '3 Pcs Lem Red Silikon Kecil u/ Stok PR 2406 / 177 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:03:03.974', 45000.0, 1.6709788E8, 2.13795664E8);
INSERT INTO O_306 VALUES('240331043008', '240331043000', '7022', 2500000.0, 'Dana Sosial u/ Petinggi / Pengurus Muara Batuq Periode ', TIMESTAMP '2024-08-07 11:03:03.974', 2500000.0, 2500000.0, 2.11295664E8);
INSERT INTO O_306 VALUES('240331043009', '240331043000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-08-07 11:03:03.974', 500000.0, 1.6759788E8, 2.10795664E8);
INSERT INTO O_306 VALUES('240331043010', '240331043000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Belanja Sparepart dll', TIMESTAMP '2024-08-07 11:03:03.974', 50000.0, 5.1445E7, 2.10745664E8);
INSERT INTO O_306 VALUES('240331043011', '240331043000', '7005', 25500.0, '3 Pcs Tipe X Kertas @ Rp8.500  (CV Karya Teladan Jempol)', TIMESTAMP '2024-08-07 11:03:03.974', 25500.0, 205500.0, 2.10720164E8);
INSERT INTO O_306 VALUES('240331043012', '240331043000', '7017', 290000.0, '1 Tabung Oksigen u/ Workshop PR 2408 / H 899 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:03:03.974', 290000.0, 1.6788788E8, 2.10430164E8);
INSERT INTO O_306 VALUES('240331043013', '240331043000', '7001', 240000.0, 'Tambahan Uang Makan Periode 2 Maret - 16 Maret 2024 ', TIMESTAMP '2024-08-07 11:03:03.974', 240000.0, 5.36376661E8, 2.10190164E8);
INSERT INTO O_306 VALUES('240331043014', '240331043000', '7017', 270000.0, '1 Pcs Terpal 6 X 8 A3 u/ TR 72 PR 2409 / H 181 (UD Mulia Jaya)', TIMESTAMP '2024-08-07 11:03:03.974', 270000.0, 1.6815788E8, 2.09920164E8);
INSERT INTO O_306 VALUES('240331043015', '240331043000', '7017', 90000.0, '3 Kaleng Pilok RJ (Pilok Putih) u/ TR 72 PR 2409 / H 181 (UD Mulia Jaya)', TIMESTAMP '2024-08-07 11:03:03.974', 90000.0, 1.6824788E8, 2.09830164E8);
INSERT INTO O_306 VALUES('240331043016', '240331043000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dan Ambil', TIMESTAMP '2024-08-07 11:03:03.974', 50000.0, 5.1495E7, 2.09780164E8);
INSERT INTO O_306 VALUES('240331043017', '240331043000', '7017', 50000.0, '2 Pcs Tali Rafia u/ Gudang @ Rp25.000  PR 2409 / H 181 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:03:03.974', 50000.0, 1.6829788E8, 2.09730164E8);
INSERT INTO O_306 VALUES('240331043018', '240331043000', '7017', 80000.0, '20 Pcs Klem Stainless 5/8 u/ Stok @ Rp4.000  PR 2409 / H 181', TIMESTAMP '2024-08-07 11:03:03.974', 80000.0, 1.6837788E8, 2.09650164E8);
INSERT INTO O_306 VALUES('240331043019', '240331043000', '7017', 45000.0, '1 Pcs Braso 200 mm u/ Workshop PR 2409 / H 181 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:03:03.974', 45000.0, 1.6842288E8, 2.09605164E8);
INSERT INTO O_306 VALUES('240331043020', '240331043000', '7017', 580000.0, '2 Tabung Oksigen u/ Workshop @ Rp290.000 PR 2409 / H 181', TIMESTAMP '2024-08-07 11:03:03.974', 580000.0, 1.6900288E8, 2.09025164E8);
INSERT INTO O_306 VALUES('240331043021', '240331043000', '7017', 60000.0, '2 Pcs Nepel Y u/ Kompresor @ Rp30.000 PR 2409 / H 181 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:03:03.974', 60000.0, 1.6906288E8, 2.08965164E8);
INSERT INTO O_306 VALUES('240331043022', '240331043000', '7017', 80000.0, '4 Pcs Nepel Lurus u/ Kompresor @ Rp20.000  PR 2409 / H 181', TIMESTAMP '2024-08-07 11:03:03.974', 80000.0, 1.6914288E8, 2.08885164E8);
INSERT INTO O_306 VALUES('240331043023', '240331043000', '7017', 290000.0, '1 Tabung Oksigen u/ Workshop PR 2414 / H 144 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:03:03.974', 290000.0, 1.6943288E8, 2.08595164E8);
INSERT INTO O_306 VALUES('240331043024', '240331043000', '7017', 130000.0, '10 Pcs Isolasi Kabel Nasional u/ Stok PR 2414 / H 144 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:03:03.974', 130000.0, 1.6956288E8, 2.08465164E8);
INSERT INTO O_306 VALUES('240331043025', '240331043000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart & Jemput', TIMESTAMP '2024-08-07 11:03:03.974', 50000.0, 5.1545E7, 2.08415164E8);
INSERT INTO O_306 VALUES('240331043026', '240331043000', '7017', 17700.0, '1 Pcs Baterai Kotak ABC Super Power 9 Volt u/ Tachometer (Melak Mart)', TIMESTAMP '2024-08-07 11:03:03.974', 17700.0, 1.6958058E8, 2.08397464E8);
INSERT INTO O_306 VALUES('240331043027', '240331043000', '7001', 640000.0, 'Piket Genset Penerangan Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.974', 640000.0, 5.37016661E8, 2.07757464E8);
INSERT INTO O_306 VALUES('240331043028', '240331043000', '7017', 0.0, 'Konsumsi u/ Tukang Proyek Gudang / Workshop KM 18 (Mitha Swalayan)', TIMESTAMP '2024-08-07 11:03:03.974', 0.0, 1.6958058E8, 2.07757464E8);
INSERT INTO O_306 VALUES('240331043029', '240331043000', '7017', 7000.0, '1 Pak Tamarin Sari Asam 24 X 145 Gr', TIMESTAMP '2024-08-07 11:03:03.974', 7000.0, 1.6958758E8, 2.07750464E8);
INSERT INTO O_306 VALUES('240331043030', '240331043000', '7017', 8000.0, '1 Bks Alpenliebe Smooth Strawberry 40 X 125 Gr', TIMESTAMP '2024-08-07 11:03:03.974', 8000.0, 1.6959558E8, 2.07742464E8);
INSERT INTO O_306 VALUES('240331043031', '240331043000', '7017', 14000.0, '2 Bks Roma Malkis Abon 135 Gr @ Rp7.000', TIMESTAMP '2024-08-07 11:03:03.974', 14000.0, 1.6960958E8, 2.07728464E8);
INSERT INTO O_306 VALUES('240331043032', '240331043000', '7017', 22000.0, '2 Bks Nissin Crispy Crackers 30 X 225 Gr @ Rp11.000', TIMESTAMP '2024-08-07 11:03:03.974', 22000.0, 1.6963158E8, 2.07706464E8);
INSERT INTO O_306 VALUES('240331043033', '240331043000', '7017', 20000.0, '2 Bks Wafer Oreo 24 X 140 Gr Vanilla @ Rp10.000', TIMESTAMP '2024-08-07 11:03:03.974', 20000.0, 1.6965158E8, 2.07686464E8);
INSERT INTO O_306 VALUES('240331043034', '240331043000', '7017', 12000.0, '2 Bks Wafello Butter Caramel 114 Gr @ Rp6.000', TIMESTAMP '2024-08-07 11:03:03.974', 12000.0, 1.6966358E8, 2.07674464E8);
INSERT INTO O_306 VALUES('240331043035', '240331043000', '7017', 18000.0, '2 Pcs Slai Olai Nanas 4 X 5 X 240 Gr @ Rp9.000', TIMESTAMP '2024-08-07 11:03:03.974', 18000.0, 1.6968158E8, 2.07656464E8);
INSERT INTO O_306 VALUES('240331043036', '240331043000', '7017', 40000.0, '4 Bks Oreo 24 X 123 Gr Peanut Butter & Chocolate @ Rp10.000', TIMESTAMP '2024-08-07 11:03:03.974', 40000.0, 1.6972158E8, 2.07616464E8);
INSERT INTO O_306 VALUES('240331043037', '240331043000', '7017', 20000.0, '2 Kotak Nabati Siip Chicken 5G X 20 X 12 @ Rp10.000', TIMESTAMP '2024-08-07 11:03:03.974', 20000.0, 1.6974158E8, 2.07596464E8);
INSERT INTO O_306 VALUES('240331043038', '240331043000', '7017', 55000.0, '5 Botol Minuman u/ Tukang Proyek Gudang / Workshop KM 18', TIMESTAMP '2024-08-07 11:03:03.974', 55000.0, 1.6979658E8, 2.07541464E8);
INSERT INTO O_306 VALUES('240331043039', '240331043000', '7017', 350000.0, '2 Kotak Baut Frt Panjang u/ Gudang KM 18 @ Rp175.000', TIMESTAMP '2024-08-07 11:03:03.974', 350000.0, 1.7014658E8, 2.07191464E8);
INSERT INTO O_306 VALUES('240331043040', '240331043000', '7017', 675000.0, '3 Kotak Baut Frt Pendek u/ Gudang KM 18 @ Rp225.000', TIMESTAMP '2024-08-07 11:03:03.99', 675000.0, 1.7082158E8, 2.06516464E8);
INSERT INTO O_306 VALUES('240331043041', '240331043000', '7017', 63000.0, '6 Botol Minuman u/ Tukang Proyek Gudang / Workshop KM 18', TIMESTAMP '2024-08-07 11:03:03.99', 63000.0, 1.7088458E8, 2.06453464E8);
INSERT INTO O_306 VALUES('240331043042', '240331043000', '7017', 120000.0, '3 Kg Kawat Tali BWG u/ Tali Atap Gudang KM 18 PR 2410 / H 899', TIMESTAMP '2024-08-07 11:03:03.99', 120000.0, 1.7100458E8, 2.06333464E8);
INSERT INTO O_306 VALUES('240331043043', '240331043000', '7017', 300000.0, '20 Meter Selang Kompresor u/ Workshop PR 2414 / H 144', TIMESTAMP '2024-08-07 11:03:03.99', 300000.0, 1.7130458E8, 2.06033464E8);
INSERT INTO O_306 VALUES('240331043044', '240331043000', '7017', 100000.0, '10 Pcs Ember / Timba Cor u/ Cor Workshop @ Rp10.000 PR 2414 / H 144', TIMESTAMP '2024-08-07 11:03:03.99', 100000.0, 1.7140458E8, 2.05933464E8);
INSERT INTO O_306 VALUES('240331043045', '240331043000', '7017', 76000.0, 'Minuman utk Tukang Proyek Gudang / Workshop KM 18', TIMESTAMP '2024-08-07 11:03:03.99', 76000.0, 1.7148058E8, 2.05857464E8);
INSERT INTO O_306 VALUES('240331043046', '240331043000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan (1 Maret 2024 / Cuti Periodik)', TIMESTAMP '2024-08-07 11:03:03.99', 450000.0, 5.1995E7, 2.05407464E8);
INSERT INTO O_306 VALUES('240331043047', '240331043000', '7006', 166920.0, 'Transport Darat Bandara Juanda - Rumah (2 Maret 2024)', TIMESTAMP '2024-08-07 11:03:03.99', 166920.0, 5.216192E7, 2.05240544E8);
INSERT INTO O_306 VALUES('240331043048', '240331043000', '7006', 137910.0, 'Transport Darat Rumah - Bandara Juanda (18 Maret 2024)', TIMESTAMP '2024-08-07 11:03:03.99', 137910.0, 5.229983E7, 2.05102634E8);
INSERT INTO O_306 VALUES('240331043049', '240331043000', '7006', 375000.0, 'Transport Darat Samarinda - Melak (19 Maret 2024 / Kedatangan)', TIMESTAMP '2024-08-07 11:03:03.99', 375000.0, 5.267483E7, 2.04727634E8);
INSERT INTO O_306 VALUES('240331043050', '240331043000', '7001', 1900000.0, 'UM M. Agus Irwanto Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1900000.0, 5.38916661E8, 2.02827634E8);
INSERT INTO O_306 VALUES('240331043051', '240331043000', '7001', 1400000.0, 'UM Slamet Subagyo Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1400000.0, 5.40316661E8, 2.01427634E8);
INSERT INTO O_306 VALUES('240331043052', '240331043000', '7001', 420000.0, 'UM Syaifullah Periode 18 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 420000.0, 5.40736661E8, 2.01007634E8);
INSERT INTO O_306 VALUES('240331043053', '240331043000', '7001', 990000.0, 'UM Haqqul Istaflaha Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 990000.0, 5.41726661E8, 2.00017634E8);
INSERT INTO O_306 VALUES('240331043054', '240331043000', '7001', 1100000.0, 'UM Sarjito F. Adam Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1100000.0, 5.42826661E8, 1.98917634E8);
INSERT INTO O_306 VALUES('240331043055', '240331043000', '7001', 675000.0, 'UM Jakaria Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 675000.0, 5.43501661E8, 1.98242634E8);
INSERT INTO O_306 VALUES('240331043056', '240331043000', '7001', 1170000.0, 'UM Didik Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1170000.0, 5.44671661E8, 1.97072634E8);
INSERT INTO O_306 VALUES('240331043057', '240331043000', '7001', 1400000.0, 'UM Go Oei Hap Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1400000.0, 5.46071661E8, 1.95672634E8);
INSERT INTO O_306 VALUES('240331043058', '240331043000', '7001', 1400000.0, 'UM Syamsudin Noor Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1400000.0, 5.47471661E8, 1.94272634E8);
INSERT INTO O_306 VALUES('240331043059', '240331043000', '7001', 1400000.0, 'UM Handriadi Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1400000.0, 5.48871661E8, 1.92872634E8);
INSERT INTO O_306 VALUES('240331043060', '240331043000', '7001', 1400000.0, 'UM Wijanarko Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1400000.0, 5.50271661E8, 1.91472634E8);
INSERT INTO O_306 VALUES('240331043061', '240331043000', '7001', 1400000.0, 'UM Sekhan Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1400000.0, 5.51671661E8, 1.90072634E8);
INSERT INTO O_306 VALUES('240331043062', '240331043000', '7001', 945000.0, 'UM Maretius Oji Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 945000.0, 5.52616661E8, 1.89127634E8);
INSERT INTO O_306 VALUES('240331043063', '240331043000', '7001', 420000.0, 'UM Anna Qodri Periode 18 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 420000.0, 5.53036661E8, 1.88707634E8);
INSERT INTO O_306 VALUES('240331043064', '240331043000', '7001', 420000.0, 'UM Raju Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 420000.0, 5.53456661E8, 1.88287634E8);
INSERT INTO O_306 VALUES('240331043065', '240331043000', '7001', 1400000.0, 'UM Yono Setyawan Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1400000.0, 5.54856661E8, 1.86887634E8);
INSERT INTO O_306 VALUES('240331043066', '240331043000', '7001', 1170000.0, 'UM Andri Syamsul Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1170000.0, 5.56026661E8, 1.85717634E8);
INSERT INTO O_306 VALUES('240331043067', '240331043000', '7001', 1500000.0, 'UM Rinaldhie G. Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1500000.0, 5.57526661E8, 1.84217634E8);
INSERT INTO O_306 VALUES('240331043068', '240331043000', '7001', 1500000.0, 'UM M. Hafizhni Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1500000.0, 5.59026661E8, 1.82717634E8);
INSERT INTO O_306 VALUES('240331043069', '240331043000', '7001', 1400000.0, 'UM Suradi Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 1400000.0, 5.60426661E8, 1.81317634E8);
INSERT INTO O_306 VALUES('240331043070', '240331043000', '7001', 550000.0, 'UM Fajar N. Hidayat Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:03.99', 550000.0, 5.60976661E8, 1.80767634E8);
INSERT INTO O_306 VALUES('240331043071', '240331043000', '1301', 1500000.0, 'Kasbon Potong UM Periode 11 Maret 2024 - 20 Maret 2024', TIMESTAMP '2024-08-07 11:03:04.005', 1500000.0, 1500000.0, 1.79267634E8);
INSERT INTO O_306 VALUES('240331043072', '240331043000', '7016', 1.3390975E7, '3 Pcs Shaft Trunion NR @ Rp5.050.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 1.3390975E7, 9.0093111E7, 1.65876659E8);
INSERT INTO O_306 VALUES('240331043073', '240331043000', '7016', 6160000.0, '35 Pcs Tutup Tangki NR @ Rp176.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 6160000.0, 9.6253111E7, 1.59716659E8);
INSERT INTO O_306 VALUES('240331043074', '240331043000', '7016', 1484000.0, '2 Pcs Sensor 84540 - E0090 G u/ Stok @ Rp742.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 1484000.0, 9.7737111E7, 1.58232659E8);
INSERT INTO O_306 VALUES('240331043075', '240331043000', '7016', 225000.0, '1 Pcs Sensor 84540 - E0090 Mkn u/ Stok PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 225000.0, 9.7962111E7, 1.58007659E8);
INSERT INTO O_306 VALUES('240331043076', '240331043000', '7016', 500000.0, '10 Pcs Karet Chambers T30 tbc u/ Stok @ Rp50.000  PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 500000.0, 9.8462111E7, 1.57507659E8);
INSERT INTO O_306 VALUES('240331043077', '240331043000', '7016', 420000.0, '20 Set Kepala Aki Kuningan u/ Stok @ Rp21.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 420000.0, 9.8882111E7, 1.57087659E8);
INSERT INTO O_306 VALUES('240331043078', '240331043000', '7016', 60000.0, '20 Pcs Ring Tembaga K 10 (6) u/ Stok @ Rp3.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 60000.0, 9.8942111E7, 1.57027659E8);
INSERT INTO O_306 VALUES('240331043079', '240331043000', '7016', 80000.0, '20 Pcs Ring Tembaga K 12 (8) u/ Stok @ Rp4.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 80000.0, 9.9022111E7, 1.56947659E8);
INSERT INTO O_306 VALUES('240331043080', '240331043000', '7016', 80000.0, '20 Pcs Ring Tembaga K 14 (10) u/ Stok @ Rp4.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 80000.0, 9.9102111E7, 1.56867659E8);
INSERT INTO O_306 VALUES('240331043081', '240331043000', '7016', 80000.0, '20 Pcs Ring Tembaga K 17 (12) u/ Stok @ Rp4.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.005', 80000.0, 9.9182111E7, 1.56787659E8);
INSERT INTO O_306 VALUES('240331043082', '240331043000', '7016', 80000.0, '20 Pcs Ring Tembaga K 19 (12) u/ Stok @ Rp4.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.021', 80000.0, 9.9262111E7, 1.56707659E8);
INSERT INTO O_306 VALUES('240331043083', '240331043000', '7016', 140000.0, '20 Pcs Ring Tembaga K 24 (16) u/ Stok @ Rp7.000 PR 0840 / H 667', TIMESTAMP '2024-08-07 11:03:04.021', 140000.0, 9.9402111E7, 1.56567659E8);
INSERT INTO O_306 VALUES('240331043084', '240331043000', '7016', 1208000.0, '4 Set Kaca Mata PTO / Dump 2 mm u/ TR 01 + Stok @ Rp302.000', TIMESTAMP '2024-08-07 11:03:04.021', 1208000.0, 1.00610111E8, 1.55359659E8);
INSERT INTO O_306 VALUES('240331043085', '240331043000', '7016', 322000.0, '1 Set Kaca Mata PTO 4 mm PR  0842 / H 669 (Adi Surya T - Samarinda)', TIMESTAMP '2024-08-07 11:03:04.021', 322000.0, 1.00932111E8, 1.55037659E8);
INSERT INTO O_306 VALUES('240331043086', '240331043000', '7016', 140000.0, '20 Pcs Ring Solar 14 m @ Rp7.000  PR  0842 / H 669 ', TIMESTAMP '2024-08-07 11:03:04.021', 140000.0, 1.01072111E8, 1.54897659E8);
INSERT INTO O_306 VALUES('240331043087', '240331043000', '7016', 1270000.0, '10 Pcs SPC 12-03  K @ Rp127.000 PR  0842 / H 669', TIMESTAMP '2024-08-07 11:03:04.021', 1270000.0, 1.02342111E8, 1.53627659E8);
INSERT INTO O_306 VALUES('240331043088', '240331043000', '7016', 1616000.0, '8 Pcs Bushing Trunion CK u/ TR 05 + Stok @ Rp202.000  PR  0842 / H 669', TIMESTAMP '2024-08-07 11:03:04.021', 1616000.0, 1.03958111E8, 1.52011659E8);
INSERT INTO O_306 VALUES('240331043089', '240331043000', '7016', 332000.0, '4 Pcs Seal Trunion u/ TR 05 + Stok @ Rp83.000 PR  0842 / H 669', TIMESTAMP '2024-08-07 11:03:04.021', 332000.0, 1.04290111E8, 1.51679659E8);
INSERT INTO O_306 VALUES('240331044001', '240331044000', '7016', 262500.0, '3 Kaleng WD 40 412 ml u/ Stok @ Rp87.500 PR  0842 / H 669', TIMESTAMP '2024-08-07 11:04:32.773', 262500.0, 1.04552611E8, 1.51417159E8);
INSERT INTO O_306 VALUES('240331044002', '240331044000', '7016', 177000.0, '3 Kaleng Crc u/ Stok @ Rp59.000 PR  0842 / H 669 (Adi Surya T - Samarinda)', TIMESTAMP '2024-08-07 11:04:32.773', 177000.0, 1.04729611E8, 1.51240159E8);
INSERT INTO O_306 VALUES('240331044003', '240331044000', '7016', 555000.0, '5 Pcs Kaca Spion LH Hino 260 u/ Stok PR  0842 / H 669', TIMESTAMP '2024-08-07 11:04:32.773', 555000.0, 1.05284611E8, 1.50685159E8);
INSERT INTO O_306 VALUES('240331044004', '240331044000', '7016', 500000.0, '2 Pcs Pompa Solar u/ Stok @Rp250.000  PR  0842 / H 669 ', TIMESTAMP '2024-08-07 11:04:32.773', 500000.0, 1.05784611E8, 1.50185159E8);
INSERT INTO O_306 VALUES('240331044005', '240331044000', '7016', 650000.0, '50 Kg Majun u/ Gudang @ Rp13.000  PR  0842 / H 669 ', TIMESTAMP '2024-08-07 11:04:32.773', 650000.0, 1.06434611E8, 1.49535159E8);
INSERT INTO O_306 VALUES('240331044006', '240331044000', '7016', 90000.0, '20 Pcs Nepel Grease 1/8 Lurus u/ Stok @ Rp4.500 PR  0842 / H 669', TIMESTAMP '2024-08-07 11:04:32.773', 90000.0, 1.06524611E8, 1.49445159E8);
INSERT INTO O_306 VALUES('240331044007', '240331044000', '7016', 130000.0, '20 Pcs Nepel Grease 1/8 Bengkok u/ Stok @ Rp6.500 PR  0842 / H 669', TIMESTAMP '2024-08-07 11:04:32.773', 130000.0, 1.06654611E8, 1.49315159E8);
INSERT INTO O_306 VALUES('240331044008', '240331044000', '7016', 82000.0, '2 Pcs Pin Per FR Nr @ Rp41.000 PR  0842 / H 669 (Adi Surya T - Samarinda)', TIMESTAMP '2024-08-07 11:04:32.773', 82000.0, 1.06736611E8, 1.49233159E8);
INSERT INTO O_306 VALUES('240331044009', '240331044000', '7016', 164000.0, '4 Pcs Pin Per RR Nr @ Rp41.000 PR  0842 / H 669 (Adi Surya T - Samarinda)', TIMESTAMP '2024-08-07 11:04:32.773', 164000.0, 1.06900611E8, 1.49069159E8);
INSERT INTO O_306 VALUES('240331044010', '240331044000', '7016', 208000.0, '8 Pcs Bushing Per @ Rp26.000 PR 0843 / H 670 (Adi Surya T - Samarinda)', TIMESTAMP '2024-08-07 11:04:32.773', 208000.0, 1.07108611E8, 1.48861159E8);
INSERT INTO O_306 VALUES('240331044011', '240331044000', '7016', 555000.0, '5 Pcs Seal EH795 - 012 @ Rp111.000 PR 0843 / H 670', TIMESTAMP '2024-08-07 11:04:32.773', 555000.0, 1.07663611E8, 1.48306159E8);
INSERT INTO O_306 VALUES('240331044012', '240331044000', '7016', 1950000.0, '5 Pcs Hour Meter u/ Genset Roda + Stok @ Rp390.000 PR 0843 / H 670', TIMESTAMP '2024-08-07 11:04:32.773', 1950000.0, 1.09613611E8, 1.46356159E8);
INSERT INTO O_306 VALUES('240331044013', '240331044000', '7016', 510000.0, '15 Pcs Lem Red Silicon u/ Stok @ Rp34.000 PR 0843 / H 670', TIMESTAMP '2024-08-07 11:04:32.773', 510000.0, 1.10123611E8, 1.45846159E8);
INSERT INTO O_306 VALUES('240331044014', '240331044000', '7016', 130000.0, '20 Pcs Ring Tembaga 14 mm u/ Stok @ Rp6.500 PR 0844 / H 671', TIMESTAMP '2024-08-07 11:04:32.773', 130000.0, 1.10253611E8, 1.45716159E8);
INSERT INTO O_306 VALUES('240331044015', '240331044000', '7016', 4900000.0, '20 Pcs Rubber Bushing Hop u/ TR 09 + Stok @ Rp 245.000 ', TIMESTAMP '2024-08-07 11:04:32.789', 4900000.0, 1.15153611E8, 1.40816159E8);
INSERT INTO O_306 VALUES('240331044016', '240331044000', '7016', 3301500.0, '20 Pcs Stoper RR Jaf90 u/ TR 02 + Stok @ Rp187.000 PR 0844 / H 671', TIMESTAMP '2024-08-07 11:04:32.789', 3301500.0, 1.18455111E8, 1.37514659E8);
INSERT INTO O_306 VALUES('240331044017', '240331044000', '7016', 1560000.0, '4 Pcs MCB 3P 32A u/ Workshop @ Rp390.000 PR 0845 / H 111', TIMESTAMP '2024-08-07 11:04:32.789', 1560000.0, 1.20015111E8, 1.35954659E8);
INSERT INTO O_306 VALUES('240331044018', '240331044000', '7016', 750000.0, '10 Pcs MCB IP 6A u/ AC Mess KM 18 @ Rp75.000 PR 0845 / H 111', TIMESTAMP '2024-08-07 11:04:32.789', 750000.0, 1.20765111E8, 1.35204659E8);
INSERT INTO O_306 VALUES('240331044019', '240331044000', '7016', 1600000.0, '4 Pcs Kontaktor 25A u/ Kompresor + Stok @ Rp 400.000', TIMESTAMP '2024-08-07 11:04:32.789', 1600000.0, 1.22365111E8, 1.33604659E8);
INSERT INTO O_306 VALUES('240331044020', '240331044000', '7016', 500000.0, '1 Pcs Box Panel 40 X 60  u/ Workshop PR 0845 / H 111 ', TIMESTAMP '2024-08-07 11:04:32.789', 500000.0, 1.22865111E8, 1.33104659E8);
INSERT INTO O_306 VALUES('240331044021', '240331044000', '7016', 800000.0, '2 Set Kampas Rem Depan Nisan Frontier @ Rp400.000', TIMESTAMP '2024-08-07 11:04:32.789', 800000.0, 1.23665111E8, 1.32304659E8);
INSERT INTO O_306 VALUES('240331044022', '240331044000', '7016', 50000.0, '2 Pcs Kran Kompresor 1/4 @ Rp25.000  PR 0850 / H 111', TIMESTAMP '2024-08-07 11:04:32.789', 50000.0, 1.23715111E8, 1.32254659E8);
INSERT INTO O_306 VALUES('240331044023', '240331044000', '7016', 130000.0, '2 Pcs Nepel T 1/4 u/ Kompresor Workshop @ Rp65.000  PR 0850 / H 111', TIMESTAMP '2024-08-07 11:04:32.789', 130000.0, 1.23845111E8, 1.32124659E8);
INSERT INTO O_306 VALUES('240331044024', '240331044000', '7016', 300000.0, '1 Set Metal Jalan R133KI 0,75 Daido u/ Hino Dutro Manhaul 01', TIMESTAMP '2024-08-07 11:04:32.789', 300000.0, 1.24145111E8, 1.31824659E8);
INSERT INTO O_306 VALUES('240331044025', '240331044000', '7016', 280000.0, '1 Set Metal Duduk M133KI 0,25 Daido u/ Hino Dutro Manhaul 01', TIMESTAMP '2024-08-07 11:04:32.789', 280000.0, 1.24425111E8, 1.31544659E8);
INSERT INTO O_306 VALUES('240331044026', '240331044000', '7016', 140000.0, '4 Pcs Baut Roda + Pin Kaliper (Baut Kaliper) u/ N 8049 AB @ Rp35.000', TIMESTAMP '2024-08-07 11:04:32.789', 140000.0, 1.24565111E8, 1.31404659E8);
INSERT INTO O_306 VALUES('240331044027', '240331044000', '7016', 1600000.0, '1 Pcs Bubut / Service Crankshaft : Duduk/25 & Jalan/50 u/ Manhaul 01', TIMESTAMP '2024-08-07 11:04:32.789', 1600000.0, 1.26165111E8, 1.29804659E8);
INSERT INTO O_306 VALUES('240331044028', '240331044000', '7016', 1920000.0, '1 Pcs Connecting Rod Assy Dutro / Asli Hino (Stang Seher) 13260 - EW021', TIMESTAMP '2024-08-07 11:04:32.789', 1920000.0, 1.28085111E8, 1.27884659E8);
INSERT INTO O_306 VALUES('240331044029', '240331044000', '7016', 2156500.0, '2 Pcs Switch Transmisi 84220 - E0120 u/ TR 03 + Stok @ Rp1.135.000', TIMESTAMP '2024-08-07 11:04:32.789', 2156500.0, 1.30241611E8, 1.25728159E8);
INSERT INTO O_306 VALUES('240331044030', '240331044000', '7016', 94000.0, '2 Pcs SM 40 u/ Kompresor Workshop @ Rp47.000 PR 2401 / H 999', TIMESTAMP '2024-08-07 11:04:32.789', 94000.0, 1.30335611E8, 1.25634159E8);
INSERT INTO O_306 VALUES('240331044031', '240331044000', '7016', 1010000.0, '1 Pcs Lidah Knalpot Tbc (Exhaust Brake) PR 2401 / H 999 ', TIMESTAMP '2024-08-07 11:04:32.789', 1010000.0, 1.31345611E8, 1.24624159E8);
INSERT INTO O_306 VALUES('240331044032', '240331044000', '7016', 68000.0, '4 Pcs SM 20 u/ Kompresor Workshop @ Rp17.000 PR 2401 / H 999', TIMESTAMP '2024-08-07 11:04:32.789', 68000.0, 1.31413611E8, 1.24556159E8);
INSERT INTO O_306 VALUES('240331044033', '240331044000', '7016', 112400.0, '2 Pcs Packing Knalpot @ Rp90.000  PR 2401 / H 999', TIMESTAMP '2024-08-07 11:04:32.789', 112400.0, 1.31526011E8, 1.24443759E8);
INSERT INTO O_306 VALUES('240331044034', '240331044000', '7009', 270000.0, 'Ongkos Kirim Cendana (Samarinda - Melak) PR 2401 / H 999', TIMESTAMP '2024-08-07 11:04:32.789', 270000.0, 872700.0, 1.24173759E8);
INSERT INTO O_306 VALUES('240331044035', '240331044000', '7016', 800000.0, '1 Pcs Shaft Assy Axle Drive FR RH / LKS 3815A310 / 239104', TIMESTAMP '2024-08-07 11:04:32.789', 800000.0, 1.32326011E8, 1.23373759E8);
INSERT INTO O_306 VALUES('240331044036', '240331044000', '7016', 800000.0, '1 Pcs Shaft Assy Axle Drive FR LH / LKS 3815A309 / 239105', TIMESTAMP '2024-08-07 11:04:32.789', 800000.0, 1.33126011E8, 1.22573759E8);
INSERT INTO O_306 VALUES('240331044037', '240331044000', '7016', 220000.0, '10 Batang Kuningan u/ Stok PR 2402 / H 811 ', TIMESTAMP '2024-08-07 11:04:32.789', 220000.0, 1.33346011E8, 1.22353759E8);
INSERT INTO O_306 VALUES('240331044038', '240331044000', '7016', 675000.0, '1 Box Kawat Las RB 2,6 mm u/ Stok PR 2402 / H 811', TIMESTAMP '2024-08-07 11:04:32.805', 675000.0, 1.34021011E8, 1.21678759E8);
INSERT INTO O_306 VALUES('240331044039', '240331044000', '7016', 630000.0, '1 Box Kawat Las RB 4,0 mm u/ Stok PR 2402 / H 811', TIMESTAMP '2024-08-07 11:04:32.805', 630000.0, 1.34651011E8, 1.21048759E8);
INSERT INTO O_306 VALUES('240331044040', '240331044000', '7016', 150000.0, '1 Pcs Switch Temperatur u/ Genset Rino PR 2402 / H 811 (SM - Samarinda)', TIMESTAMP '2024-08-07 11:04:32.805', 150000.0, 1.34801011E8, 1.20898759E8);
INSERT INTO O_306 VALUES('240331044041', '240331044000', '7016', 25000.0, '1 Pcs Socket 1/4 3000 Psi u/ Kompresor Workshop PR 2402 / H 811', TIMESTAMP '2024-08-07 11:04:32.82', 25000.0, 1.34826011E8, 1.20873759E8);
INSERT INTO O_306 VALUES('240331044042', '240331044000', '7016', 100000.0, '1 Pcs Otomatis Kompresor u/ Kompresor Workshop PR 2402 / H 811', TIMESTAMP '2024-08-07 11:04:32.82', 100000.0, 1.34926011E8, 1.20773759E8);
INSERT INTO O_306 VALUES('240331044043', '240331044000', '7016', 1005000.0, '1 Pcs Assy Chamber 24/24 u/ TR 04 PR 2403 / H 812 ', TIMESTAMP '2024-08-07 11:04:32.82', 1005000.0, 1.35931011E8, 1.19768759E8);
INSERT INTO O_306 VALUES('240331044044', '240331044000', '7016', 757250.0, '10 Pcs Seal Chambers K u/ Stok @ Rp85.000 PR 2403 / H 812', TIMESTAMP '2024-08-07 11:04:32.82', 757250.0, 1.36688261E8, 1.19011509E8);
INSERT INTO O_306 VALUES('240331044045', '240331044000', '7016', 600000.0, '10 Pcs Isolatib Ban 33+ HTM u/ Workshop @ Rp60.000 PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 600000.0, 1.37288261E8, 1.18411509E8);
INSERT INTO O_306 VALUES('240331044046', '240331044000', '7016', 190000.0, '2 Pcs Kabel Ties 385 Putih STD u/ Gudang @ Rp 95.000 PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 190000.0, 1.37478261E8, 1.18221509E8);
INSERT INTO O_306 VALUES('240331044047', '240331044000', '7016', 48000.0, '2 Pcs Kabel Ties 150 MM Putih u/ Gudang @ Rp24.000 PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 48000.0, 1.37526261E8, 1.18173509E8);
INSERT INTO O_306 VALUES('240331044048', '240331044000', '7016', 116000.0, '2 Pcs Terminal 4P100 Bgs u/ Workshop @ Rp58.000 PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 116000.0, 1.37642261E8, 1.18057509E8);
INSERT INTO O_306 VALUES('240331044049', '240331044000', '7016', 140000.0, '2 Pcs Double PB Lay 37S Oval APB @ Rp35.000 PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 140000.0, 1.37782261E8, 1.17917509E8);
INSERT INTO O_306 VALUES('240331044050', '240331044000', '7016', 210000.0, '10 Pcs Skun 95-10 u/ Gudang @ Rp21.000 PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 210000.0, 1.37992261E8, 1.17707509E8);
INSERT INTO O_306 VALUES('240331044051', '240331044000', '7016', 17000.0, '1 Pcs Rel MCB Besi Kuning u/ Workshop PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 17000.0, 1.38009261E8, 1.17690509E8);
INSERT INTO O_306 VALUES('240331044052', '240331044000', '7016', 140000.0, '2 Pcs Busbar Besar N Isolator @ Rp70.000  PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 140000.0, 1.38149261E8, 1.17550509E8);
INSERT INTO O_306 VALUES('240331044053', '240331044000', '7016', 16500.0, '3 Pcs HeatSR Q4 MM / 5 HTM @ Rp5.500 PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 16500.0, 1.38165761E8, 1.17534009E8);
INSERT INTO O_306 VALUES('240331044054', '240331044000', '7016', 15000.0, '3 Pcs HeatSR Q6 MM / 5 Merah @ Rp5.000 PR 2404 / H 813', TIMESTAMP '2024-08-07 11:04:32.82', 15000.0, 1.38180761E8, 1.17519009E8);
INSERT INTO O_306 VALUES('240331044055', '240331044000', '7016', 104760.0, '1 Pcs Engine Cleaner DG-10-EK Wipro u/ Workshop ', TIMESTAMP '2024-08-07 11:04:32.82', 104760.0, 1.38285521E8, 1.17414249E8);
INSERT INTO O_306 VALUES('240331044056', '240331044000', '7016', 36084.0, '1 Pcs Air Duster Gun 6 MM X 316 MM u/ Workshop', TIMESTAMP '2024-08-07 11:04:32.82', 36084.0, 1.38321605E8, 1.17378165E8);
INSERT INTO O_306 VALUES('240331044057', '240331044000', '7016', 969000.0, '1 Pcs Three Arm Puller 10  u/ Workshop PR 2405 / H 814', TIMESTAMP '2024-08-07 11:04:32.82', 969000.0, 1.39290605E8, 1.16409165E8);
INSERT INTO O_306 VALUES('240331044058', '240331044000', '7016', 201875.0, '1 Pcs Three Arm Puller 6  u/ Workshop PR 2405 / H 814', TIMESTAMP '2024-08-07 11:04:32.82', 201875.0, 1.3949248E8, 1.1620729E8);
INSERT INTO O_306 VALUES('240331044059', '240331044000', '7016', 50000.0, '1 Pcs Member Card  PR 2405 / H 814 (Home Hardware - Samarinda)', TIMESTAMP '2024-08-07 11:04:32.82', 50000.0, 1.3954248E8, 1.1615729E8);
INSERT INTO O_306 VALUES('240331044060', '240331044000', '7016', 1500000.0, '1 Pcs Liner Cylinder S/S Dutro / Asli Hino u/ Manhaul 01 ', TIMESTAMP '2024-08-07 11:04:32.82', 1500000.0, 1.4104248E8, 1.1465729E8);
INSERT INTO O_306 VALUES('240331044061', '240331044000', '7016', 375000.0, '5 Pcs Element Oil Filter 130 HT (Filter Oli) / Astra BFL 12-16001', TIMESTAMP '2024-08-07 11:04:32.82', 375000.0, 1.4141748E8, 1.1428229E8);
INSERT INTO O_306 VALUES('240331044062', '240331044000', '7016', 435000.0, '3 Pcs Air Filter Hilux (Filter Udara) / Denso DXA-1001 u/ Hilux', TIMESTAMP '2024-08-07 11:04:32.836', 435000.0, 1.4185248E8, 1.1384729E8);
INSERT INTO O_306 VALUES('240331044063', '240331044000', '7016', 285000.0, '3 Pcs Element Air Cleaner Dutro (Filter Udara) / HOP 17801-LAA32', TIMESTAMP '2024-08-07 11:04:32.836', 285000.0, 1.4213748E8, 1.1356229E8);
INSERT INTO O_306 VALUES('240331044064', '240331044000', '7016', 310000.0, '2 Pcs Element Air Cleaner (Filter Udara) / KTB 1500A098A', TIMESTAMP '2024-08-07 11:04:32.836', 310000.0, 1.4244748E8, 1.1325229E8);
INSERT INTO O_306 VALUES('240331044065', '240331044000', '7016', 525000.0, '1 Pcs Gun For Air Grease Westco (Sedetan Grease Pistol Westco)', TIMESTAMP '2024-08-07 11:04:32.836', 525000.0, 1.4297248E8, 1.1272729E8);
INSERT INTO O_306 VALUES('240331044066', '240331044000', '7016', 455000.0, '1 Pcs Blander Potong Strong 8 Miwa u/ Workshop Rp650.000 Discount 30%', TIMESTAMP '2024-08-07 11:04:32.836', 455000.0, 1.4342748E8, 1.1227229E8);
INSERT INTO O_306 VALUES('240331044067', '240331044000', '7016', 88200.0, '2 Pcs Mata Blander ST-8 No. 2 LPG Chiyoda Max u/ Workshop', TIMESTAMP '2024-08-07 11:04:32.836', 88200.0, 1.4351568E8, 1.1218409E8);
INSERT INTO O_306 VALUES('240331044068', '240331044000', '7016', 630000.0, '1 Pcs Digit Tachometer Infrared u/ Tes RPM Mesin Rp900.000 Discount 30%', TIMESTAMP '2024-08-07 11:04:32.836', 630000.0, 1.4414568E8, 1.1155409E8);
INSERT INTO O_306 VALUES('240331044069', '240331044000', '7009', 60000.0, 'Biaya Pengiriman PR 2413 / H 665 (Anugrah Teknik Jaya - Balikpapan)', TIMESTAMP '2024-08-07 11:04:32.836', 60000.0, 932700.0, 1.1149409E8);
INSERT INTO O_306 VALUES('240331044070', '240331044000', '7016', 150000.0, '10 Pcs Waser 24 u/ Manhaul 01 @ Rp15.000 PR 2416 / H 665', TIMESTAMP '2024-08-07 11:04:32.836', 150000.0, 1.4429568E8, 1.1134409E8);
INSERT INTO O_306 VALUES('240331044071', '240331044000', '7016', 120000.0, '1 Pcs C/M Hino (Repair Kit Kopling Atas) u/ Manhaul 02 ', TIMESTAMP '2024-08-07 11:04:32.836', 120000.0, 1.4441568E8, 1.1122409E8);
INSERT INTO O_306 VALUES('240331044072', '240331044000', '7016', 275000.0, '1 Pcs Pipa u/ Kopling Manhaul 02  PR 2416 / 665 (UD Paras Wana)', TIMESTAMP '2024-08-07 11:04:32.836', 275000.0, 1.4469068E8, 1.1094909E8);
INSERT INTO O_306 VALUES('240331044073', '240331044000', '7016', 145000.0, '1 Pcs F/F L300 (Filter Solar MB 220 900) u/ L 8504 AJ ', TIMESTAMP '2024-08-07 11:04:32.836', 145000.0, 1.4483568E8, 1.1080409E8);
INSERT INTO O_306 VALUES('240331044074', '240331044000', '7016', 15000.0, '1 Pcs Tombol Klakson u/ L 9502 GH  PR 2416 / H 665', TIMESTAMP '2024-08-07 11:04:32.836', 15000.0, 1.4485068E8, 1.1078909E8);
INSERT INTO O_306 VALUES('240331044075', '240331044000', '7016', 40000.0, '1 Pcs Baut Kunci L 14 X 60 u/ SK 200 - 76  PR 2416 / H 665 (UD Maju)', TIMESTAMP '2024-08-07 11:04:32.836', 40000.0, 1.4489068E8, 1.1074909E8);
INSERT INTO O_306 VALUES('240331044076', '240331044000', '7016', 25000.0, '1 Pcs Putaran Kaca u/ TR 05  PR 2416 / H 665 (Sumber Rejeki II)', TIMESTAMP '2024-08-07 11:04:32.836', 25000.0, 1.4491568E8, 1.1072409E8);
INSERT INTO O_306 VALUES('240331044077', '240331044000', '7016', 20000.0, '1 Pcs Kapur Besi u/ Workshop (UD Mulia Jaya)', TIMESTAMP '2024-08-07 11:04:32.836', 20000.0, 1.4493568E8, 1.1070409E8);
INSERT INTO O_306 VALUES('240331044078', '240331044000', '7016', 30000.0, '2 Meter Selang Benang 3/4 u/ L 8397 VB (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:04:32.836', 30000.0, 1.4496568E8, 1.1067409E8);
INSERT INTO O_306 VALUES('240331044079', '240331044000', '7007', 300000.0, 'Service Radiator Genset u/ Genset Mitsubishi PR 2420 / H 112', TIMESTAMP '2024-08-07 11:04:32.836', 300000.0, 1.04E7, 1.1037409E8);
INSERT INTO O_306 VALUES('240331044080', '240331044000', '7007', 300000.0, 'Shellac Ulang', TIMESTAMP '2024-08-07 11:04:32.836', 300000.0, 1.07E7, 1.1007409E8);
INSERT INTO O_306 VALUES('240331044081', '240331044000', '7007', 250000.0, 'Ganti Bearing', TIMESTAMP '2024-08-07 11:04:32.836', 250000.0, 1.095E7, 1.0982409E8);
INSERT INTO O_306 VALUES('240331044082', '240331044000', '7007', 200000.0, 'Biaya / Ongkos', TIMESTAMP '2024-08-07 11:04:32.836', 200000.0, 1.115E7, 1.0962409E8);
INSERT INTO O_306 VALUES('240331044083', '240331044000', '7017', 159600.0, '1 Pcs Kunci Sok 3/4  46 MM S12 u/ Workshop Rp168.000 (Discount 5%)', TIMESTAMP '2024-08-07 11:04:32.836', 159600.0, 1.7164018E8, 1.0946449E8);
INSERT INTO O_306 VALUES('240331044084', '240331044000', '7017', 75000.0, '20 Pcs Baut & Mur M14 X 50 u/ TR 09 + Stok  PR 2423 / H 776', TIMESTAMP '2024-08-07 11:04:32.836', 75000.0, 1.7171518E8, 1.0938949E8);
INSERT INTO O_306 VALUES('240331044085', '240331044000', '7017', 19200.0, '40 Pcs Ring WP KNG M14 X 23 u/ TR 09 + Stok PR 2423 / H 776', TIMESTAMP '2024-08-07 11:04:32.836', 19200.0, 1.7173438E8, 1.0937029E8);
INSERT INTO O_306 VALUES('240331044086', '240331044000', '7017', 333000.0, '1 Pcs Alat Tes Cek Aki Mobil Motor (Alat Tes Kesehatan Aki)', TIMESTAMP '2024-08-07 11:04:32.836', 333000.0, 1.7206738E8, 1.0903729E8);
INSERT INTO O_306 VALUES('240331044087', '240331044000', '7017', 1248829.0, '1 Set Diesel Compression Tester (Alat Tes Kompresi Mesin Diesel)', TIMESTAMP '2024-08-07 11:04:32.836', 1248829.0, 1.73316209E8, 1.07788461E8);
INSERT INTO O_306 VALUES('240331044088', '240331044000', '7017', 200000.0, '1 Pcs Kabel Hand Brake (Hand Rem) RH 46420 - OK 210 u/', TIMESTAMP '2024-08-07 11:04:32.836', 200000.0, 1.73516209E8, 1.07588461E8);
INSERT INTO O_306 VALUES('240331044089', '240331044000', '7017', 130000.0, '2 Pcs Sil Roda RR (Belakang) u/ L 9502 GH @ Rp65.000', TIMESTAMP '2024-08-07 11:04:32.836', 130000.0, 1.73646209E8, 1.07458461E8);
INSERT INTO O_306 VALUES('240331045001', '240331045000', '7017', 165000.0, '1 Pcs W/C Hilux (Kasrem Belakang) 47550 - 17020 u/ L 9502 GH', TIMESTAMP '2024-08-07 11:05:26.663', 165000.0, 1.73811209E8, 1.07293461E8);
INSERT INTO O_306 VALUES('240331045002', '240331045000', '7017', 100000.0, '1 Pcs Bubut Buat Drat u/ Master Rem Atas Manhaul 02 ', TIMESTAMP '2024-08-07 11:05:26.663', 100000.0, 1.73911209E8, 1.07193461E8);
INSERT INTO O_306 VALUES('240331045003', '240331045000', '7017', 875000.0, '1 Pcs Gasket Cylinder Head (Packing Kop Cylinder0 / Astra u/ N 8993 AT', TIMESTAMP '2024-08-07 11:05:26.663', 875000.0, 1.74786209E8, 1.06318461E8);
INSERT INTO O_306 VALUES('240331045004', '240331045000', '7004', 90000.0, '1 Pack Plastik Klip Plong 25 TR (100) u/ Kantor PR 2403 / H 812', TIMESTAMP '2024-08-07 11:05:26.663', 90000.0, 7958000.0, 1.06228461E8);
INSERT INTO O_306 VALUES('240331045005', '240331045000', '7004', 36000.0, '1 Pack Plastik Klip Tebal 13 X 22 (100) u/ Kantor PR 2403 / H 812', TIMESTAMP '2024-08-07 11:05:26.663', 36000.0, 7994000.0, 1.06192461E8);
INSERT INTO O_306 VALUES('240331045006', '240331045000', '7006', 310000.0, 'Bayar Penginapan u/ Pak Hani Belanja Sparepart di Samarinda', TIMESTAMP '2024-08-07 11:05:26.663', 310000.0, 5.298483E7, 1.05882461E8);
INSERT INTO O_306 VALUES('240331045007', '240331045000', '7006', 100000.0, 'Bayar Penginapan (Sewa Kamar) u/ Pak Hani Belanja Sparepart', TIMESTAMP '2024-08-07 11:05:26.663', 100000.0, 5.308483E7, 1.05782461E8);
INSERT INTO O_306 VALUES('240331045008', '240331045000', '7006', 850000.0, 'Biaya Operasional dan Akomodasi u/ Pak Hani Belanja Sparepart', TIMESTAMP '2024-08-07 11:05:26.663', 850000.0, 5.393483E7, 1.04932461E8);
INSERT INTO O_306 VALUES('240331045009', '240331045000', '7006', 50000.0, 'Penyeberangan PP (Melak) L 8397 VB u/ Belanja Sparepart di ', TIMESTAMP '2024-08-07 11:05:26.663', 50000.0, 5.398483E7, 1.04882461E8);
INSERT INTO O_306 VALUES('240331045010', '240331045000', '7022', 1500000.0, 'Bantuan Sosial u/ Petinggi (Pengurus) Muyub Ilir Periode Maret 2024', TIMESTAMP '2024-08-07 11:05:26.663', 1500000.0, 4000000.0, 1.03382461E8);
INSERT INTO O_306 VALUES('240331045011', '240331045000', '7004', 50000.0, 'Minuman u/ Konsumsi Angkut Barang TR 72', TIMESTAMP '2024-08-07 11:05:26.663', 50000.0, 8044000.0, 1.03332461E8);
INSERT INTO O_306 VALUES('240331045012', '240331045000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen dari Melak - Surabaya', TIMESTAMP '2024-08-07 11:05:26.678', 47000.0, 979700.0, 1.03285461E8);
INSERT INTO O_306 VALUES('240331045013', '240331045000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Angkut 20 Sak Semen dan', TIMESTAMP '2024-08-07 11:05:26.678', 50000.0, 5.403483E7, 1.03235461E8);
INSERT INTO O_306 VALUES('240331045014', '240331045000', '7005', 20000.0, '2 Pak Isi Cutter u/ Gudang @ Rp10.000 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:05:26.678', 20000.0, 225500.0, 1.03215461E8);
INSERT INTO O_306 VALUES('240331045015', '240331045000', '7005', 25000.0, '1 Pcs Cutter Besar u/ Gudang (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:05:26.678', 25000.0, 250500.0, 1.03190461E8);
INSERT INTO O_306 VALUES('240331045016', '240331045000', '7004', 100000.0, '4 Pcs Sapu Lidi u/ Mess + Workshop @ Rp25.000 PR 2416 / H 665', TIMESTAMP '2024-08-07 11:05:26.678', 100000.0, 8144000.0, 1.03090461E8);
INSERT INTO O_306 VALUES('240331045017', '240331045000', '7004', 100000.0, '4 Pcs Sapu Lantai u/ Mess + Workshop @ Rp25.000 PR 2416 / H665', TIMESTAMP '2024-08-07 11:05:26.678', 100000.0, 8244000.0, 1.02990461E8);
INSERT INTO O_306 VALUES('240331045018', '240331045000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-08-07 11:05:26.678', 500000.0, 8744000.0, 1.02490461E8);
INSERT INTO O_306 VALUES('240331045019', '240331045000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Angkut 20 Sak Semen dan', TIMESTAMP '2024-08-07 11:05:26.678', 50000.0, 5.408483E7, 1.02440461E8);
INSERT INTO O_306 VALUES('240331045020', '240331045000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Angkut 15 Sak Semen, Belanja', TIMESTAMP '2024-08-07 11:05:26.678', 50000.0, 5.413483E7, 1.02390461E8);
INSERT INTO O_306 VALUES('240331045021', '240331045000', '7004', 110000.0, '1 Pcs Senter Kepala u/ Waker Tangki Solar PR 2420 / H 112', TIMESTAMP '2024-08-07 11:05:26.678', 110000.0, 8854000.0, 1.02280461E8);
INSERT INTO O_306 VALUES('240331045022', '240331045000', '7023', 592871.0, '39,79 Liter Dexlite @ Rp14.900 (14 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.678', 592871.0, 1902871.0, 1.0168759E8);
INSERT INTO O_306 VALUES('240331045023', '240331045000', '7023', 78523.0, '5,27 Liter Dexlite @ Rp14.900 (14 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.678', 78523.0, 1981394.0, 1.01609067E8);
INSERT INTO O_306 VALUES('240331045024', '240331045000', '7023', 300000.0, '20,14 Liter Dexlite @ Rp14.900 (15 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.678', 300000.0, 2281394.0, 1.01309067E8);
INSERT INTO O_306 VALUES('240331045025', '240331045000', '7009', 200000.0, 'Bayar Henicargo u/ Pengiriman Barang (Surabaya - Melak)', TIMESTAMP '2024-08-07 11:05:26.694', 200000.0, 1179700.0, 1.01109067E8);
INSERT INTO O_306 VALUES('240331045026', '240331045000', '7009', 255000.0, 'Bayar Cendana u/ Pengiriman Barang (Samarinda - Melak )', TIMESTAMP '2024-08-07 11:05:26.694', 255000.0, 1434700.0, 1.00854067E8);
INSERT INTO O_306 VALUES('240331045027', '240331045000', '7017', 17500.0, '1 Pak Masker u/ Gudang', TIMESTAMP '2024-08-07 11:05:26.694', 17500.0, 1.74803709E8, 1.00836567E8);
INSERT INTO O_306 VALUES('240331045028', '240331045000', '7017', 100000.0, '2 Pak Sarung Tangan u/ Workshop PR 2426 / H 977 (Sumber Rejeki)', TIMESTAMP '2024-08-07 11:05:26.694', 100000.0, 1.74903709E8, 1.00736567E8);
INSERT INTO O_306 VALUES('240331045029', '240331045000', '7017', 45000.0, '1 Gulung Tali Nylon u/ Workshop PR 2426 / H 977 (Sumber Rejeki)', TIMESTAMP '2024-08-07 11:05:26.694', 45000.0, 1.74948709E8, 1.00691567E8);
INSERT INTO O_306 VALUES('240331045030', '240331045000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Belanja Sparepart dan Ambil', TIMESTAMP '2024-08-07 11:05:26.694', 50000.0, 5.418483E7, 1.00641567E8);
INSERT INTO O_306 VALUES('240331045031', '240331045000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Transfer via ATM BNI Barong', TIMESTAMP '2024-08-07 11:05:26.694', 50000.0, 5.423483E7, 1.00591567E8);
INSERT INTO O_306 VALUES('240331045032', '240331045000', '7006', 750000.0, 'Pengganti Bensin Perahu Karyawan Periode April 2024', TIMESTAMP '2024-08-07 11:05:26.694', 750000.0, 5.498483E7, 9.9841567E7);
INSERT INTO O_306 VALUES('240331045033', '240331045000', '7004', 100000.0, '2 Pak Sarung Tangan u/ Proyek Gudang @ Rp50.000 (Toko Simpang Tiga)', TIMESTAMP '2024-08-07 11:05:26.694', 100000.0, 8954000.0, 9.9741567E7);
INSERT INTO O_306 VALUES('240331045034', '240331045000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Antar Karyawan Cuti', TIMESTAMP '2024-08-07 11:05:26.694', 50000.0, 5.503483E7, 9.9691567E7);
INSERT INTO O_306 VALUES('240331045035', '240331045000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Antar Karyawan Cuti (Suradi)', TIMESTAMP '2024-08-07 11:05:26.694', 50000.0, 5.508483E7, 9.9641567E7);
INSERT INTO O_306 VALUES('240331045036', '240331045000', '7004', 500000.0, 'Pengawalan Mekanik u/ Mobilisasi TR 72 Samarinda - Balikpapan', TIMESTAMP '2024-08-07 11:05:26.694', 500000.0, 9454000.0, 9.9141567E7);
INSERT INTO O_306 VALUES('240331045037', '240331045000', '7004', 1.6554E7, '6 Unit AC Akari A09TC88LWI/L Indoor / Outdoor u/ Mess KM 18', TIMESTAMP '2024-08-07 11:05:26.694', 1.6554E7, 2.6008E7, 8.2587567E7);
INSERT INTO O_306 VALUES('240331045038', '240331045000', '7004', 1000000.0, 'Bayar Borongan Sopir u/ Mobilisasi TR 72 Samarinda - Balikpapan', TIMESTAMP '2024-08-07 11:05:26.694', 1000000.0, 2.7008E7, 8.1587567E7);
INSERT INTO O_306 VALUES('240331045039', '240331045000', '7004', 1500000.0, 'Bayar Pengawalan Polisi u/ Mobilisasi TR 72 Samarinda - Balikpapan', TIMESTAMP '2024-08-07 11:05:26.694', 1500000.0, 2.8508E7, 8.0087567E7);
INSERT INTO O_306 VALUES('240331045040', '240331045000', '7004', 165000.0, '1 Galon (5 Liter) Oli S40 u/ TR 72 (Tambah) PR 2431 / H 111', TIMESTAMP '2024-08-07 11:05:26.694', 165000.0, 2.8673E7, 7.9922567E7);
INSERT INTO O_306 VALUES('240331045041', '240331045000', '7004', 120000.0, '20 Pcs Penjepit Kaca u/ Stok @ Rp6.000  PR 2431 / H 111 ', TIMESTAMP '2024-08-07 11:05:26.694', 120000.0, 2.8793E7, 7.9802567E7);
INSERT INTO O_306 VALUES('240331045042', '240331045000', '7004', 250000.0, '10 Pcs Kap Lampu (Kap Ijo) u/ Gudang + Workshop @ Rp25.000', TIMESTAMP '2024-08-07 11:05:26.694', 250000.0, 2.9043E7, 7.9552567E7);
INSERT INTO O_306 VALUES('240331045043', '240331045000', '7004', 1250000.0, '1 Roll (100 m) Kabel Nym 2 X 2,5 u/ Gudang + Workshop ', TIMESTAMP '2024-08-07 11:05:26.694', 1250000.0, 3.0293E7, 7.8302567E7);
INSERT INTO O_306 VALUES('240331045044', '240331045000', '7004', 75000.0, '2 Porsi Makan dan Minum (Makan Pagi - 26 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 75000.0, 3.0368E7, 7.8227567E7);
INSERT INTO O_306 VALUES('240331045045', '240331045000', '7004', 80000.0, '2 Porsi Makan dan Minum (Makan Siang - 26 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 80000.0, 3.0448E7, 7.8147567E7);
INSERT INTO O_306 VALUES('240331045046', '240331045000', '7004', 160000.0, '4 Porsi Makan dan Minum (Makan Malam - 26 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 160000.0, 3.0608E7, 7.7987567E7);
INSERT INTO O_306 VALUES('240331045047', '240331045000', '7004', 60000.0, '2 Porsi Rawon & 2 Teh (Makan Pagi - 27 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 60000.0, 3.0668E7, 7.7927567E7);
INSERT INTO O_306 VALUES('240331045048', '240331045000', '7004', 94000.0, '1 Ikan Nila Goreng Rp30.000, 1 Ayam Biasa Goreng Rp20.000,', TIMESTAMP '2024-08-07 11:05:26.709', 94000.0, 3.0762E7, 7.7833567E7);
INSERT INTO O_306 VALUES('240331045049', '240331045000', '7004', 60000.0, '2 Porsi Makan dan Minum (Makan Malam - 27 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 60000.0, 3.0822E7, 7.7773567E7);
INSERT INTO O_306 VALUES('240331045050', '240331045000', '7004', 102000.0, '2 Porsi Rawon Rp70.000, 2 Telur Asin Rp12.000, 2 Teh Rp10.000,', TIMESTAMP '2024-08-07 11:05:26.709', 102000.0, 3.0924E7, 7.7671567E7);
INSERT INTO O_306 VALUES('240331045051', '240331045000', '7004', 64000.0, '2 Porsi Nasi Goreng Special Rp48.000 dan 2 Esteh Rp16.000', TIMESTAMP '2024-08-07 11:05:26.709', 64000.0, 3.0988E7, 7.7607567E7);
INSERT INTO O_306 VALUES('240331045052', '240331045000', '7004', 80000.0, '2 Porsi Makan dan Minum (Makan Malam - 28 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 80000.0, 3.1068E7, 7.7527567E7);
INSERT INTO O_306 VALUES('240331045053', '240331045000', '7004', 155100.0, '1 Porsi Sop Iga Sapi Rp75.000, 1 Porsi Nasi Putih Rp7.000,', TIMESTAMP '2024-08-07 11:05:26.709', 155100.0, 3.12231E7, 7.7372467E7);
INSERT INTO O_306 VALUES('240331045054', '240331045000', '7004', 175000.0, '1 Kepiting Saos Rp85.000, 1 Cumi-cumi Saos Rp65.000, Nasi', TIMESTAMP '2024-08-07 11:05:26.709', 175000.0, 3.13981E7, 7.7197467E7);
INSERT INTO O_306 VALUES('240331045055', '240331045000', '7004', 74000.0, '2 Porsi Makan dan Minum (Makan Malam - 29 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 74000.0, 3.14721E7, 7.7123467E7);
INSERT INTO O_306 VALUES('240331045056', '240331045000', '7004', 74000.0, '2 Porsi Makan dan Minum (Makan Pagi - 30 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 74000.0, 3.15461E7, 7.7049467E7);
INSERT INTO O_306 VALUES('240331045057', '240331045000', '7004', 91000.0, '1 Porsi Rawon Rp35.000, 1 Porsi Pecel Rp 23.000, 1 Sop Duren', TIMESTAMP '2024-08-07 11:05:26.709', 91000.0, 3.16371E7, 7.6958467E7);
INSERT INTO O_306 VALUES('240331045058', '240331045000', '7004', 65000.0, '2 Porsi Rawon Rp50.000, 2 Es Teh Rp10.000, 1 Kerupuk Rp5.000', TIMESTAMP '2024-08-07 11:05:26.709', 65000.0, 3.17021E7, 7.6893467E7);
INSERT INTO O_306 VALUES('240331045059', '240331045000', '7006', 350000.0, 'Hotel Marantama 26 s/d 27 Maret 2024', TIMESTAMP '2024-08-07 11:05:26.709', 350000.0, 5.543483E7, 7.6543467E7);
INSERT INTO O_306 VALUES('240331045060', '240331045000', '7006', 580000.0, 'Penginapan Rumah Apollo 27 s/d 28 Maret 2024', TIMESTAMP '2024-08-07 11:05:26.709', 580000.0, 5.601483E7, 7.5963467E7);
INSERT INTO O_306 VALUES('240331045061', '240331045000', '7006', 280000.0, 'Penginapan Rumah Apollo 29 s/d 30 Maret 2024', TIMESTAMP '2024-08-07 11:05:26.709', 280000.0, 5.629483E7, 7.5683467E7);
INSERT INTO O_306 VALUES('240331045062', '240331045000', '7023', 350000.0, '23,490 Liter Dexlite (26 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 350000.0, 2631394.0, 7.5333467E7);
INSERT INTO O_306 VALUES('240331045063', '240331045000', '7023', 299937.0, '20,13 Liter Dexlite (27 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 299937.0, 2931331.0, 7.503353E7);
INSERT INTO O_306 VALUES('240331045064', '240331045000', '7023', 400065.0, '26,85 Liter Dexlite (28 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 400065.0, 3331396.0, 7.4633465E7);
INSERT INTO O_306 VALUES('240331045065', '240331045000', '7023', 250000.0, '16,779 Liter Dexlite (30 Maret 2024)', TIMESTAMP '2024-08-07 11:05:26.709', 250000.0, 3581396.0, 7.4383465E7);
INSERT INTO O_306 VALUES('240331045066', '240331045000', '7006', 88000.0, 'Bayar Tol L 8397 VB u/ Pengawalan Mobilisasi TR 72', TIMESTAMP '2024-08-07 11:05:26.709', 88000.0, 5.638283E7, 7.4295465E7);
INSERT INTO O_306 VALUES('240331045067', '240331045000', '7009', 65000.0, 'Bayar Cendana u/ Pengiriman Barang (Packing Kop u/ N 8993 AT)', TIMESTAMP '2024-08-07 11:05:26.709', 65000.0, 1499700.0, 7.4230465E7);
INSERT INTO O_306 VALUES('240331045068', '240331045000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB (26 Maret dan 30 Maret 2024) u/', TIMESTAMP '2024-08-07 11:05:26.709', 50000.0, 5.643283E7, 7.4180465E7);
INSERT INTO O_306 VALUES('240331045069', '240331045000', '7001', 400000.0, 'Tambahan Uang Makan Periode 18 Maret 2024 - 30 Maret 2024', TIMESTAMP '2024-08-07 11:05:26.709', 400000.0, 5.61376661E8, 7.3780465E7);
INSERT INTO O_306 VALUES('240331045070', '240331045000', '7001', 704000.0, 'Piket Genset Penerangan Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:05:26.709', 704000.0, 5.62080661E8, 7.3076465E7);
INSERT INTO O_306 VALUES('240331045071', '240331045000', '7004', 40000.0, '2 Kg Bendrat u/ Gudang KM 18 PR 2416 / H 665 (UD Mulia Jaya)', TIMESTAMP '2024-08-07 11:05:26.709', 40000.0, 3.17421E7, 7.3036465E7);
INSERT INTO O_306 VALUES('240331045072', '240331045000', '7004', 200000.0, '2 Pcs Sekop Besi u/ Proyek Gudang / Workshop @ Rp100.000', TIMESTAMP '2024-08-07 11:05:26.709', 200000.0, 3.19421E7, 7.2836465E7);
INSERT INTO O_306 VALUES('240331045073', '240331045000', '7004', 240000.0, '2 Pcs Sepatu Bot u/ Waker Tangki Solar @ Rp120.000', TIMESTAMP '2024-08-07 11:05:26.725', 240000.0, 3.21821E7, 7.2596465E7);
INSERT INTO O_306 VALUES('240331045074', '240331045000', '7004', 72000.0, '4 Pcs Lakban Putih + Coklat u/ Gudang @ Rp18.000 PR 2416 / H 665', TIMESTAMP '2024-08-07 11:05:26.725', 72000.0, 3.22541E7, 7.2524465E7);
INSERT INTO O_306 VALUES('240331045075', '240331045000', '7004', 25000.0, '1 Pcs Lakban Hitam u/ Gudang PR 2416 / H 665 (UD Maju Mandiri)', TIMESTAMP '2024-08-07 11:05:26.741', 25000.0, 3.22791E7, 7.2499465E7);
INSERT INTO O_306 VALUES('240331045076', '240331045000', '7004', 14000.0, '2 Bks Blaster Neapolitan 24 X 125G @ Rp7.000', TIMESTAMP '2024-08-07 11:05:26.741', 14000.0, 3.22931E7, 7.2485465E7);
INSERT INTO O_306 VALUES('240331045077', '240331045000', '7004', 10000.0, '1 Pcs Kopiko Cappucino', TIMESTAMP '2024-08-07 11:05:26.741', 10000.0, 3.23031E7, 7.2475465E7);
INSERT INTO O_306 VALUES('240331045078', '240331045000', '7004', 40000.0, '4 Bks Oreo 24 X 23 Gr Chocolate Cream @ Rp10.000', TIMESTAMP '2024-08-07 11:05:26.741', 40000.0, 3.23431E7, 7.2435465E7);
INSERT INTO O_306 VALUES('240331045079', '240331045000', '7004', 24000.0, '3 Bks Khong Guan Malkist Abon Sapi 135G @ Rp8.000', TIMESTAMP '2024-08-07 11:05:26.741', 24000.0, 3.23671E7, 7.2411465E7);
INSERT INTO O_306 VALUES('240331045080', '240331045000', '7004', 16000.0, '2 Pcs Roma Sandwich Cokelat 6 X 7 X 189 @ Rp8.000', TIMESTAMP '2024-08-07 11:05:26.741', 16000.0, 3.23831E7, 7.2395465E7);
INSERT INTO O_306 VALUES('240331045081', '240331045000', '7004', 32000.0, '2 Bks Ria Bangket 10 X 425G @ Rp16.000', TIMESTAMP '2024-08-07 11:05:26.741', 32000.0, 3.24151E7, 7.2363465E7);
INSERT INTO O_306 VALUES('240331045082', '240331045000', '7004', 27000.0, '3 Pcs Slai Olay Nanas 4 X 5 X 240Gr @ Rp9.000', TIMESTAMP '2024-08-07 11:05:26.741', 27000.0, 3.24421E7, 7.2336465E7);
INSERT INTO O_306 VALUES('240331045083', '240331045000', '7004', 24000.0, '2 Pak Nabati Coklat 150G S1 X 12 @ Rp12.000', TIMESTAMP '2024-08-07 11:05:26.741', 24000.0, 3.24661E7, 7.2312465E7);
INSERT INTO O_306 VALUES('240331045084', '240331045000', '7004', 100000.0, '5 Dus Air Gelas An Najwa u/ Minum Tukang Proyek Gudang', TIMESTAMP '2024-08-07 11:05:26.741', 100000.0, 3.25661E7, 7.2212465E7);
INSERT INTO O_306 VALUES('240331045085', '240331045000', '7004', 20000.0, '1 Pcs Refill Ink Black / Isi Ulang Spidol Boardmarker (Christo & Christy)', TIMESTAMP '2024-08-07 11:05:26.741', 20000.0, 3.25861E7, 7.2192465E7);
INSERT INTO O_306 VALUES('240331045086', '240331045000', '7004', 20000.0, '2 Pcs Spidol Snowman G-12 Permanent Black u/ Proyek Gudang', TIMESTAMP '2024-08-07 11:05:26.741', 20000.0, 3.26061E7, 7.2172465E7);
INSERT INTO O_306 VALUES('240331045087', '240331045000', '7004', 24000.0, '2 Pcs Spidol Snowman BG-12 Boardmarker Black u/ Proyek', TIMESTAMP '2024-08-07 11:05:26.741', 24000.0, 3.26301E7, 7.2148465E7);
INSERT INTO O_306 VALUES('240331045088', '240331045000', '7006', 900000.0, 'Kasbon Transport Darat Melak - Malang (Cuti Periodik)', TIMESTAMP '2024-08-07 11:05:26.741', 900000.0, 5.733283E7, 7.1248465E7);
INSERT INTO O_306 VALUES('240331045089', '240331045000', '7006', 1000000.0, 'Kasbon u/ Tambah Transport Darat Melak - Malang (Cuti Periodik)', TIMESTAMP '2024-08-07 11:05:26.741', 1000000.0, 5.833283E7, 7.0248465E7);
INSERT INTO O_306 VALUES('240331046001', '240331046000', '7006', 500000.0, 'Transport (Speed Boat) Melak - Samarinda (10 Maret 2024) u/', TIMESTAMP '2024-08-07 11:06:18.819', 500000.0, 5.883283E7, 6.9748465E7);
INSERT INTO O_306 VALUES('240331046002', '240331046000', '7006', 500000.0, 'Transport Darat Samarinda - Melak (24 Maret 2024) u/ Cuti', TIMESTAMP '2024-08-07 11:06:18.819', 500000.0, 5.933283E7, 6.9248465E7);
INSERT INTO O_306 VALUES('240331046003', '240331046000', '7001', 1400000.0, 'UM Sekhan Periode 21 Maret 2024 - 30 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1400000.0, 5.63480661E8, 6.7848465E7);
INSERT INTO O_306 VALUES('240331046004', '240331046000', '7001', 1170000.0, 'UM Andri S. Periode 21 Maret 2024 - 30 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1170000.0, 5.64650661E8, 6.6678465E7);
INSERT INTO O_306 VALUES('240331046005', '240331046000', '7001', 1500000.0, 'UM Rinaldhie G. Periode 21 Maret 2024 - 30 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1500000.0, 5.66150661E8, 6.5178465E7);
INSERT INTO O_306 VALUES('240331046006', '240331046000', '7001', 1500000.0, 'UM M. Hafizhni Periode 21 Maret 2024 - 30 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1500000.0, 5.67650661E8, 6.3678465E7);
INSERT INTO O_306 VALUES('240331046007', '240331046000', '7001', 1400000.0, 'UM Suradi Periode 21 Maret 2024 - 30 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1400000.0, 5.69050661E8, 6.2278465E7);
INSERT INTO O_306 VALUES('240331046008', '240331046000', '7001', 2090000.0, 'UM M. Agus Irwanto Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 2090000.0, 5.71140661E8, 6.0188465E7);
INSERT INTO O_306 VALUES('240331046009', '240331046000', '7001', 1540000.0, 'UM Slamet Subagyo Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1540000.0, 5.72680661E8, 5.8648465E7);
INSERT INTO O_306 VALUES('240331046010', '240331046000', '7001', 1540000.0, 'UM Syaifullah Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1540000.0, 5.74220661E8, 5.7108465E7);
INSERT INTO O_306 VALUES('240331046011', '240331046000', '7001', 1100000.0, 'UM Haqqul Istaflaha Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1100000.0, 5.75320661E8, 5.6008465E7);
INSERT INTO O_306 VALUES('240331046012', '240331046000', '7001', 1210000.0, 'UM Sarjito F. A. Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1210000.0, 5.76530661E8, 5.4798465E7);
INSERT INTO O_306 VALUES('240331046013', '240331046000', '7001', 675000.0, 'UM Jakaria Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 675000.0, 5.77205661E8, 5.4123465E7);
INSERT INTO O_306 VALUES('240331046014', '240331046000', '7001', 1287000.0, 'UM Didik Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1287000.0, 5.78492661E8, 5.2836465E7);
INSERT INTO O_306 VALUES('240331046015', '240331046000', '7001', 1540000.0, 'UM Go Oei Hap Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1540000.0, 5.80032661E8, 5.1296465E7);
INSERT INTO O_306 VALUES('240331046016', '240331046000', '7001', 1540000.0, 'UM Syamsudin Noor Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1540000.0, 5.81572661E8, 4.9756465E7);
INSERT INTO O_306 VALUES('240331046017', '240331046000', '7001', 1440000.0, 'UM Supriyanto 24 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1440000.0, 5.83012661E8, 4.8316465E7);
INSERT INTO O_306 VALUES('240331046018', '240331046000', '7001', 1540000.0, 'UM Handriadi Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1540000.0, 5.84552661E8, 4.6776465E7);
INSERT INTO O_306 VALUES('240331046019', '240331046000', '7001', 1540000.0, 'UM Wijanarko Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1540000.0, 5.86092661E8, 4.5236465E7);
INSERT INTO O_306 VALUES('240331046020', '240331046000', '7001', 945000.0, 'UM Mareteus Oji Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 945000.0, 5.87037661E8, 4.4291465E7);
INSERT INTO O_306 VALUES('240331046021', '240331046000', '7001', 1540000.0, 'UM Anna Qodri Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1540000.0, 5.88577661E8, 4.2751465E7);
INSERT INTO O_306 VALUES('240331046022', '240331046000', '7001', 840000.0, 'UM Raju Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 840000.0, 5.89417661E8, 4.1911465E7);
INSERT INTO O_306 VALUES('240331046023', '240331046000', '7001', 1540000.0, 'UM Yono Setyawan Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 1540000.0, 5.90957661E8, 4.0371465E7);
INSERT INTO O_306 VALUES('240331046024', '240331046000', '7001', 605000.0, 'UM Fajar N. Hidayat Periode 21 Maret 2024 - 31 Maret 2024', TIMESTAMP '2024-08-07 11:06:18.819', 605000.0, 5.91562661E8, 3.9766465E7);
INSERT INTO O_306 VALUES('240331046025', '240331046000', '7001', 500000.0, 'Kasbon Potong Gaji Periode April 2024', TIMESTAMP '2024-08-07 11:06:18.819', 500000.0, 5.92062661E8, 3.9266465E7);
INSERT INTO O_306 VALUES('240430002001', '240430002000', '7016', 450000.0, '1 Pcs Pack Head 11115 - 30031 u/ N 8993 AT  PR 2434 / H 443', TIMESTAMP '2024-08-14 10:58:41.598', 450000.0, 4.1721968E8, 1.83928737E8);
INSERT INTO O_306 VALUES('240430002002', '240430002000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Konsumsi dan Minuman', TIMESTAMP '2024-08-14 10:58:41.598', 50000.0, 5.938283E7, 1.83878737E8);
INSERT INTO O_306 VALUES('240430002003', '240430002000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Tarik Tunai di ATM BNI', TIMESTAMP '2024-08-14 10:58:41.598', 50000.0, 5.943283E7, 1.83828737E8);
INSERT INTO O_306 VALUES('240430002004', '240430002000', '7001', 309333.0, 'Tunjangan Hari Raya (THR) Idul Fitri 2024 a/n Fajar N. Hidayat', TIMESTAMP '2024-08-14 10:58:41.598', 309333.0, 6.73185364E8, 1.83519404E8);
INSERT INTO O_306 VALUES('240430002005', '240430002000', '7004', 10000.0, 'Biaya Admin Kartu', TIMESTAMP '2024-08-14 10:58:41.599', 10000.0, 3.26401E7, 1.83509404E8);
INSERT INTO O_306 VALUES('240430002006', '240430002000', '7004', 10000.0, 'Biaya Administrasi', TIMESTAMP '2024-08-14 10:58:41.599', 10000.0, 3.26501E7, 1.83499404E8);
INSERT INTO O_306 VALUES('240430002007', '240430002000', '7004', 0.0, 'Untuk Konsumsi dan Minuman Proyek Gudang (Cor Gudang)', TIMESTAMP '2024-08-14 10:58:41.599', 0.0, 3.26501E7, 1.83499404E8);
INSERT INTO O_306 VALUES('240430002008', '240430002000', '7004', 0.0, 'tgl 29 Maret 2024  PR 2434 / H 443', TIMESTAMP '2024-08-14 10:58:41.599', 0.0, 3.26501E7, 1.83499404E8);
INSERT INTO O_306 VALUES('240430002009', '240430002000', '7004', 224000.0, '   8 Porsi Nasi Ayam @ Rp28.000 (RM Takana Juo)', TIMESTAMP '2024-08-14 10:58:41.599', 224000.0, 3.28741E7, 1.83275404E8);
INSERT INTO O_306 VALUES('240430002010', '240430002000', '7004', 210000.0, '   7 Porsi Nasi Rendang @ Rp30.000 (RM Takana Juo)', TIMESTAMP '2024-08-14 10:58:41.599', 210000.0, 3.30841E7, 1.83065404E8);
INSERT INTO O_306 VALUES('240430002011', '240430002000', '7004', 50000.0, '   1 Plastik Gorengan ', TIMESTAMP '2024-08-14 10:58:41.6', 50000.0, 3.31341E7, 1.83015404E8);
INSERT INTO O_306 VALUES('240430002012', '240430002000', '7004', 40000.0, '   2 Pcs Gulavit 1 Kg @ Rp20.000 (UD Kurnia Jaya)', TIMESTAMP '2024-08-14 10:58:41.6', 40000.0, 3.31741E7, 1.82975404E8);
INSERT INTO O_306 VALUES('240430002013', '240430002000', '7004', 26000.0, '   1 Bks Kapal Api 9 X 380G (UD Kurnia Jaya)', TIMESTAMP '2024-08-14 10:58:41.6', 26000.0, 3.32001E7, 1.82949404E8);
INSERT INTO O_306 VALUES('240430002014', '240430002000', '7004', 5000.0, '   1 Botol Merak Pewarna Cair 12 ML X 12 (UD Kurnia Jaya)', TIMESTAMP '2024-08-14 10:58:41.6', 5000.0, 3.32051E7, 1.82944404E8);
INSERT INTO O_306 VALUES('240430002015', '240430002000', '7004', 6000.0, '   1 Botol Vanili Essence 20ML (UD Kurnia Jaya)', TIMESTAMP '2024-08-14 10:58:41.6', 6000.0, 3.32111E7, 1.82938404E8);
INSERT INTO O_306 VALUES('240430002016', '240430002000', '7004', 335000.0, '14 Porsi Ayam Bakar + Ayam Goreng (Warung Pecel Maknyus)', TIMESTAMP '2024-08-14 10:58:41.6', 335000.0, 3.35461E7, 1.82603404E8);
INSERT INTO O_306 VALUES('240430002017', '240430002000', '7004', 130000.0, '2 Buah Semangka ', TIMESTAMP '2024-08-14 10:58:41.601', 130000.0, 3.36761E7, 1.82473404E8);
INSERT INTO O_306 VALUES('240430002018', '240430002000', '7004', 406000.0, '14 Porsi Nasi Bungkus u/ Konsumsi Proyek Gudang (Cor Gudang)', TIMESTAMP '2024-08-14 10:58:41.601', 406000.0, 3.40821E7, 1.82067404E8);
INSERT INTO O_306 VALUES('240430002019', '240430002000', '7004', 265000.0, 'Snack dan Minuman u/ Konsumsi Proyek Gudang (Cor Gudang)', TIMESTAMP '2024-08-14 10:58:41.601', 265000.0, 3.43471E7, 1.81802404E8);
INSERT INTO O_306 VALUES('240430002020', '240430002000', '7004', 0.0, 'tgl 31 Maret 2024', TIMESTAMP '2024-08-14 10:58:41.601', 0.0, 3.43471E7, 1.81802404E8);
INSERT INTO O_306 VALUES('240430002021', '240430002000', '7001', 500000.0, 'Kasbon Potong Gaji Periode April 2024', TIMESTAMP '2024-08-14 10:58:41.601', 500000.0, 6.73685364E8, 1.81302404E8);
INSERT INTO O_306 VALUES('240430002022', '240430002000', '7016', 150000.0, '1 Pc Filter udara u/ L 8397 VB PR 2435/H.233 TK. Sumber Rejeki', TIMESTAMP '2024-08-14 10:58:41.601', 150000.0, 4.1736968E8, 1.81152404E8);
INSERT INTO O_306 VALUES('240430002023', '240430002000', '7017', 80000.0, '1 Set Lem Epoxy u/ W.Shop PR 2435/H. 233 Tk Maju Mandiri', TIMESTAMP '2024-08-14 10:58:41.601', 80000.0, 1.75028709E8, 1.81072404E8);
INSERT INTO O_306 VALUES('240430002024', '240430002000', '7017', 210000.0, '2 Pcs Van belt Bergerigi A 41 u/ Kacer WS, PR 2345/H.233 Tk Paraswana', TIMESTAMP '2024-08-14 10:58:41.602', 210000.0, 1.75238709E8, 1.80862404E8);
INSERT INTO O_306 VALUES('240430002025', '240430002000', '7017', 92000.0, '4 Pcs gembok u/ Gudang PR 2439/H.900', TIMESTAMP '2024-08-14 10:58:41.602', 92000.0, 1.75330709E8, 1.80770404E8);
INSERT INTO O_306 VALUES('240430002026', '240430002000', '7017', 265000.0, '1 set Kabel Jamper u/ Workshop PR 2439/H.900', TIMESTAMP '2024-08-14 10:58:41.602', 265000.0, 1.75595709E8, 1.80505404E8);
INSERT INTO O_306 VALUES('240430002027', '240430002000', '7017', 200000.0, '1 Pcs Terpal 4x6 u/ Tutup kayu PR.2437/h.554', TIMESTAMP '2024-08-14 10:58:41.602', 200000.0, 1.75795709E8, 1.80305404E8);
INSERT INTO O_306 VALUES('240430002028', '240430002000', '7017', 100000.0, '1Pcs Klakson Keong u/ Menhol 01 PR.2437/h.554', TIMESTAMP '2024-08-14 10:58:41.602', 100000.0, 1.75895709E8, 1.80205404E8);
INSERT INTO O_306 VALUES('240430002029', '240430002000', '7006', 50000.0, 'Penyebrangan PP u/ N8993AT PR.2437/h.554', TIMESTAMP '2024-08-14 10:58:41.602', 50000.0, 5.948283E7, 1.80155404E8);
INSERT INTO O_306 VALUES('240430002030', '240430002000', '7008', 350000.0, 'Kaca film u/ N 8993 AT PR.2437/h.554', TIMESTAMP '2024-08-14 10:58:41.603', 350000.0, 830000.0, 1.79805404E8);
INSERT INTO O_306 VALUES('240430002031', '240430002000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-08-14 10:58:41.603', 500000.0, 1.76395709E8, 1.79305404E8);
INSERT INTO O_306 VALUES('240430002032', '240430002000', '7009', 33700.0, 'Biaya kirim dokumen via J&T', TIMESTAMP '2024-08-14 10:58:41.603', 33700.0, 1533400.0, 1.79271704E8);
INSERT INTO O_306 VALUES('240430002033', '240430002000', '7006', 50000.0, 'Penyebrangan PP u/ L 9502 GH Antar Karyawan Cuti Lebaran', TIMESTAMP '2024-08-14 10:58:41.603', 50000.0, 5.953283E7, 1.79221704E8);
INSERT INTO O_306 VALUES('240430002034', '240430002000', '7001', 3000000.0, 'Tambahan Insentif a/n Munas (HRD PT. DBP) selama ', TIMESTAMP '2024-08-14 10:58:41.603', 3000000.0, 6.76685364E8, 1.76221704E8);
INSERT INTO O_306 VALUES('240430002035', '240430002000', '7004', 1500000.0, 'Pembayaran u/ Patroli PAM Brimob KM 18 dan Areal Tambang', TIMESTAMP '2024-08-14 10:58:41.603', 1500000.0, 3.58471E7, 1.74721704E8);
INSERT INTO O_306 VALUES('240430002036', '240430002000', '7001', 3125500.0, 'Prd 21 Feb-20 Maret 2024', TIMESTAMP '2024-08-14 10:58:41.603', 3125500.0, 6.79810864E8, 1.71596204E8);
INSERT INTO O_306 VALUES('240430002037', '240430002000', '7001', 618667.0, 'Pembayaran THR 2024 (Waker)', TIMESTAMP '2024-08-14 10:58:41.604', 618667.0, 6.80429531E8, 1.70977537E8);
INSERT INTO O_306 VALUES('240430002038', '240430002000', '7001', 150000.0, 'Jaga Workshop 24/03/24', TIMESTAMP '2024-08-14 10:58:41.604', 150000.0, 6.80579531E8, 1.70827537E8);
INSERT INTO O_306 VALUES('240430002039', '240430002000', '7001', 2835520.0, 'Gaji dan Insentif Helper Maintenance Prd 21 Feb sd 20 Maret 2024', TIMESTAMP '2024-08-14 10:58:41.604', 2835520.0, 6.83415051E8, 1.67992017E8);
INSERT INTO O_306 VALUES('240430002040', '240430002000', '7001', 3880640.0, 'Gaji dan Insentif Waker Prd 21 Feb sd 20 Maret 2024', TIMESTAMP '2024-08-14 10:58:41.604', 3880640.0, 6.87295691E8, 1.64111377E8);
INSERT INTO O_306 VALUES('240430002041', '240430002000', '7001', 128000.0, 'Piket Genset Penerangan Periode 1 April 2024 - 2 April 2024', TIMESTAMP '2024-08-14 10:58:41.604', 128000.0, 6.87423691E8, 1.63983377E8);
INSERT INTO O_306 VALUES('240430002042', '240430002000', '7001', 591867.0, 'Kompensasi ', TIMESTAMP '2024-08-14 10:58:41.604', 591867.0, 6.88015558E8, 1.6339151E8);
INSERT INTO O_306 VALUES('240430002043', '240430002000', '7001', 591867.0, 'THR 2024', TIMESTAMP '2024-08-14 10:58:41.605', 591867.0, 6.88607425E8, 1.62799643E8);
INSERT INTO O_306 VALUES('240430002044', '240430002000', '7001', 677000.0, 'Gaji & Insentif Periode 21/2 sd 20/3/2024', TIMESTAMP '2024-08-14 10:58:41.605', 677000.0, 6.89284425E8, 1.62122643E8);
INSERT INTO O_306 VALUES('240430002045', '240430002000', '7001', 119742.0, 'Gaji & Insentif Periode 21/3 sd 20/4/2024', TIMESTAMP '2024-08-14 10:58:41.605', 119742.0, 6.89404167E8, 1.62002901E8);
INSERT INTO O_306 VALUES('240430002046', '240430002000', '7001', 359226.0, 'Gaji & Insentif Periode 21/3 sd 20/4/2024', TIMESTAMP '2024-08-14 10:58:41.608', 359226.0, 6.89763393E8, 1.61643675E8);
INSERT INTO O_306 VALUES('240430002047', '240430002000', '7001', 359226.0, 'Gaji & Insentif Periode 21/3 sd 20/4/2024', TIMESTAMP '2024-08-14 10:58:41.609', 359226.0, 6.90122619E8, 1.61284449E8);
INSERT INTO O_306 VALUES('240430002048', '240430002000', '7022', 2500000.0, 'Bantuan sosial u/ Pengurus Muara Batuq Periode bulan April 2024', TIMESTAMP '2024-08-14 10:58:41.609', 2500000.0, 6500000.0, 1.58784449E8);
INSERT INTO O_306 VALUES('240430002049', '240430002000', '7001', 384000.0, 'Piket Genset Penerangan Periode 3 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.609', 384000.0, 6.90506619E8, 1.58400449E8);
INSERT INTO O_306 VALUES('240430002050', '240430002000', '7006', 50000.0, 'Penyebrangan PP u/ L 8504 AJ (Antar Karyawan Cuti Idul Fitri)', TIMESTAMP '2024-08-14 10:58:41.609', 50000.0, 5.958283E7, 1.58350449E8);
INSERT INTO O_306 VALUES('240430002051', '240430002000', '7005', 12000.0, '3 Pcs Nota kecil', TIMESTAMP '2024-08-14 10:58:41.609', 12000.0, 262500.0, 1.58338449E8);
INSERT INTO O_306 VALUES('240430002052', '240430002000', '7005', 25000.0, '5 Pcs kwitansi kecil', TIMESTAMP '2024-08-14 10:58:41.609', 25000.0, 287500.0, 1.58313449E8);
INSERT INTO O_306 VALUES('240430002053', '240430002000', '7005', 5500.0, '1 Pcs Gunting ', TIMESTAMP '2024-08-14 10:58:41.61', 5500.0, 293000.0, 1.58307949E8);
INSERT INTO O_306 VALUES('240430002054', '240430002000', '7008', 100000.0, '1 Cuci Mobil L 8504 AJ', TIMESTAMP '2024-08-14 10:58:41.61', 100000.0, 930000.0, 1.58207949E8);
INSERT INTO O_306 VALUES('240430002055', '240430002000', '7006', 50000.0, 'Penyebrangan PP u/ L 8504 AJ (Ambil paket di cendana Resi 400412)', TIMESTAMP '2024-08-14 10:58:41.61', 50000.0, 5.963283E7, 1.58157949E8);
INSERT INTO O_306 VALUES('240430002056', '240430002000', '7008', 50000.0, '1 Cuci mobil L 8397 VB', TIMESTAMP '2024-08-14 10:58:41.61', 50000.0, 980000.0, 1.58107949E8);
INSERT INTO O_306 VALUES('240430002057', '240430002000', '7008', 120000.0, '1 Cuci Mobil N 8993 AT', TIMESTAMP '2024-08-14 10:58:41.61', 120000.0, 1100000.0, 1.57987949E8);
INSERT INTO O_306 VALUES('240430002058', '240430002000', '7009', 41000.0, 'Kirim dokumen via J&T', TIMESTAMP '2024-08-14 10:58:41.61', 41000.0, 1574400.0, 1.57946949E8);
INSERT INTO O_306 VALUES('240430002059', '240430002000', '7006', 50000.0, 'Penyebrangan PP antar karyawan berobat ke RS HIS (Syamsudin)', TIMESTAMP '2024-08-14 10:58:41.611', 50000.0, 5.968283E7, 1.57896949E8);
INSERT INTO O_306 VALUES('240430002060', '240430002000', '7001', 4200000.0, 'Uang piket Idul Fitri Tgl 10/4/24 sd 11/4/24 Rp.700rb x 6 Orang', TIMESTAMP '2024-08-14 10:58:41.611', 4200000.0, 6.94706619E8, 1.53696949E8);
INSERT INTO O_306 VALUES('240430002061', '240430002000', '7001', 300000.0, 'Jaga Workshop tgl 10/4/24 & 11/4/24 2 harix150000', TIMESTAMP '2024-08-14 10:58:41.611', 300000.0, 6.95006619E8, 1.53396949E8);
INSERT INTO O_306 VALUES('240430002062', '240430002000', '7005', 14000.0, '2 Pcs Stipo u Logistik', TIMESTAMP '2024-08-14 10:58:41.611', 14000.0, 307000.0, 1.53382949E8);
INSERT INTO O_306 VALUES('240430002063', '240430002000', '7005', 10000.0, '1 Pcs Spidol Permanen u logistik', TIMESTAMP '2024-08-14 10:58:41.611', 10000.0, 317000.0, 1.53372949E8);
INSERT INTO O_306 VALUES('240430002064', '240430002000', '7005', 8000.0, '4 pcs spidol kecil u logistik', TIMESTAMP '2024-08-14 10:58:41.611', 8000.0, 325000.0, 1.53364949E8);
INSERT INTO O_306 VALUES('240430002065', '240430002000', '7006', 50000.0, 'Penyebrangan PP u/ L 8504 AJ (Ambil Uang di BNI Center)', TIMESTAMP '2024-08-14 10:58:41.611', 50000.0, 5.973283E7, 1.53314949E8);
INSERT INTO O_306 VALUES('240430002066', '240430002000', '7017', 125000.0, '1 Pcs Kunci Kontak u/ Genset Rino PR 2437/H.554 Toko Jaya Mobil', TIMESTAMP '2024-08-14 10:58:41.612', 125000.0, 1.76520709E8, 1.53189949E8);
INSERT INTO O_306 VALUES('240430002067', '240430002000', '7017', 75000.0, '1 Pcs Bikin Kunci Mobil u/ N 8993 AT PR 2437/H.554 Ahli Kunci Alief Kubar', TIMESTAMP '2024-08-14 10:58:41.612', 75000.0, 1.76595709E8, 1.53114949E8);
INSERT INTO O_306 VALUES('240430002068', '240430002000', '7010', 8000.0, 'Admin Bank BNI Periode 3-20 April 2024', TIMESTAMP '2024-08-14 10:58:41.612', 8000.0, 623000.0, 1.53106949E8);
INSERT INTO O_306 VALUES('240430002069', '240430002000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-08-14 10:58:41.612', 500000.0, 1.77095709E8, 1.52606949E8);
INSERT INTO O_306 VALUES('240430002070', '240430002000', '7001', 723710.0, 'Gaji dan Insentif periode 21 Maret sd 20 April 2024', TIMESTAMP '2024-08-14 10:58:41.612', 723710.0, 6.95730329E8, 1.51883239E8);
INSERT INTO O_306 VALUES('240430002071', '240430002000', '7022', 1500000.0, 'Bantuan Sosial u/ Petinggi (Pengurus) Muyub Ilir Periode April 2024', TIMESTAMP '2024-08-14 10:58:41.612', 1500000.0, 8000000.0, 1.50383239E8);
INSERT INTO O_306 VALUES('240430002072', '240430002000', '7001', 480000.0, 'Piket Genset Penerangan Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:58:41.612', 480000.0, 6.96210329E8, 1.49903239E8);
INSERT INTO O_306 VALUES('240430002073', '240430002000', '7006', 100000.0, 'Biaya Transport bensin (motor pribadi) dinas luar HRD ke kantor BPJS kesehatan', TIMESTAMP '2024-08-14 10:58:41.613', 100000.0, 5.983283E7, 1.49803239E8);
INSERT INTO O_306 VALUES('240430002074', '240430002000', '7017', 900000.0, 'Bayar sewa mesin Molen u/ Ngecor gudang Km18 Tgl 29-31 Maret 24', TIMESTAMP '2024-08-14 10:58:41.613', 900000.0, 1.77995709E8, 1.48903239E8);
INSERT INTO O_306 VALUES('240430002075', '240430002000', '7017', 2.36E7, 'Bayar 4Rit Batu split @950rb, 6Rit Pasir cor @350rb', TIMESTAMP '2024-08-14 10:58:41.613', 2.36E7, 2.01595709E8, 1.25303239E8);
INSERT INTO O_306 VALUES('240430002076', '240430002000', '7006', 1000000.0, 'Tiket Speed Boat PP. Cuti Periodik Melak-Samarinda 5/3/24 & Samarinda Melak 13/3/24', TIMESTAMP '2024-08-14 10:58:41.613', 1000000.0, 6.083283E7, 1.24303239E8);
INSERT INTO O_306 VALUES('240430002077', '240430002000', '7001', 910000.0, 'UM M. Agus Irwanto Periode 1 April 2024 - 4 April 2024', TIMESTAMP '2024-08-14 10:58:41.613', 910000.0, 6.97120329E8, 1.23393239E8);
INSERT INTO O_306 VALUES('240430002078', '240430002000', '7001', 440000.0, 'UM Sarjito F. A Periode 1 April 2024 - 4 April 2024', TIMESTAMP '2024-08-14 10:58:41.613', 440000.0, 6.97560329E8, 1.22953239E8);
INSERT INTO O_306 VALUES('240430002079', '240430002000', '7001', 468000.0, 'UM Didik Periode 1 April 2024 - 4 April 2024', TIMESTAMP '2024-08-14 10:58:41.614', 468000.0, 6.98028329E8, 1.22485239E8);
INSERT INTO O_306 VALUES('240430002080', '240430002000', '7001', 560000.0, 'UM Handriadi Periode 1 April 2024 - 4 April 2024', TIMESTAMP '2024-08-14 10:58:41.614', 560000.0, 6.98588329E8, 1.21925239E8);
INSERT INTO O_306 VALUES('240430002081', '240430002000', '7001', 560000.0, 'UM Wijanarko Periode 1 April 2024 - 4 April 2024', TIMESTAMP '2024-08-14 10:58:41.614', 560000.0, 6.99148329E8, 1.21365239E8);
INSERT INTO O_306 VALUES('240430002082', '240430002000', '7001', 560000.0, 'UM Yono Setyawan Periode 1 April 2024 - 4 April 2024', TIMESTAMP '2024-08-14 10:58:41.614', 560000.0, 6.99708329E8, 1.20805239E8);
INSERT INTO O_306 VALUES('240430002083', '240430002000', '7001', 1400000.0, 'UM Slamet Subagyo Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.614', 1400000.0, 7.01108329E8, 1.19405239E8);
INSERT INTO O_306 VALUES('240430002084', '240430002000', '7001', 1400000.0, 'UM Saifullah Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.614', 1400000.0, 7.02508329E8, 1.18005239E8);
INSERT INTO O_306 VALUES('240430002085', '240430002000', '7001', 930000.0, 'UM Haqqul Istaflaha Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.614', 930000.0, 7.03438329E8, 1.17075239E8);
INSERT INTO O_306 VALUES('240430002086', '240430002000', '7001', 675000.0, 'UM Jakaria Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.615', 675000.0, 7.04113329E8, 1.16400239E8);
INSERT INTO O_306 VALUES('240430002087', '240430002000', '7001', 1600000.0, 'UM+Pulsa Go Oei Hap Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.615', 1600000.0, 7.05713329E8, 1.14800239E8);
INSERT INTO O_306 VALUES('240430002088', '240430002000', '7001', 1400000.0, 'UM Syamsudin Noor Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.615', 1400000.0, 7.07113329E8, 1.13400239E8);
INSERT INTO O_306 VALUES('240430002089', '240430002000', '7001', 1800000.0, 'UM Supriyanto Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.615', 1800000.0, 7.08913329E8, 1.11600239E8);
INSERT INTO O_306 VALUES('240430002090', '240430002000', '7001', 1050000.0, 'UM Mareteus Oji Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.615', 1050000.0, 7.09963329E8, 1.10550239E8);
INSERT INTO O_306 VALUES('240430002091', '240430002000', '7001', 1400000.0, 'UM Anna Qodri Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.615', 1400000.0, 7.11363329E8, 1.09150239E8);
INSERT INTO O_306 VALUES('240430002092', '240430002000', '7001', 735000.0, 'UM Raju Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.615', 735000.0, 7.12098329E8, 1.08415239E8);
INSERT INTO O_306 VALUES('240430002093', '240430002000', '7001', 550000.0, 'UM Fajar N. Hidayat Periode 1 April 2024 - 10 April 2024', TIMESTAMP '2024-08-14 10:58:41.616', 550000.0, 7.12648329E8, 1.07865239E8);
INSERT INTO O_306 VALUES('240430002094', '240430002000', '7001', 1400000.0, 'UM Slamet Subagyo Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:58:41.616', 1400000.0, 7.14048329E8, 1.06465239E8);
INSERT INTO O_306 VALUES('240430003001', '240430003000', '7001', 1400000.0, 'UM Saifullah Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.377', 1400000.0, 7.15448329E8, 1.05065239E8);
INSERT INTO O_306 VALUES('240430003002', '240430003000', '7001', 990000.0, 'UM Haqqul Istaflaha Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.377', 990000.0, 7.16438329E8, 1.04075239E8);
INSERT INTO O_306 VALUES('240430003003', '240430003000', '7001', 600000.0, 'UM Jakaria Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.377', 600000.0, 7.17038329E8, 1.03475239E8);
INSERT INTO O_306 VALUES('240430003004', '240430003000', '7001', 1400000.0, 'UM Go Oei Hap Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.377', 1400000.0, 7.18438329E8, 1.02075239E8);
INSERT INTO O_306 VALUES('240430003005', '240430003000', '7001', 1500000.0, 'UM Syamsudin Noor Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.377', 1500000.0, 7.19938329E8, 1.00575239E8);
INSERT INTO O_306 VALUES('240430003006', '240430003000', '7001', 1800000.0, 'UM Supriyanto Noor Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.377', 1800000.0, 7.21738329E8, 9.8775239E7);
INSERT INTO O_306 VALUES('240430003007', '240430003000', '7001', 840000.0, 'UM Mareteus Oji Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.378', 840000.0, 7.22578329E8, 9.7935239E7);
INSERT INTO O_306 VALUES('240430003008', '240430003000', '7001', 1400000.0, 'UM Anna Qodri Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.378', 1400000.0, 7.23978329E8, 9.6535239E7);
INSERT INTO O_306 VALUES('240430003009', '240430003000', '7001', 630000.0, 'UM Raju Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.378', 630000.0, 7.24608329E8, 9.5905239E7);
INSERT INTO O_306 VALUES('240430003010', '240430003000', '7001', 550000.0, 'UM Fajar N. Hidayat Periode 11 April 2024 - 20 April 2024', TIMESTAMP '2024-08-14 10:59:34.378', 550000.0, 7.25158329E8, 9.5355239E7);
INSERT INTO O_306 VALUES('240430003011', '240430003000', '7001', 500000.0, 'Kasbon Potong Gaji Periode April 2024', TIMESTAMP '2024-08-14 10:59:34.378', 500000.0, 7.25658329E8, 9.4855239E7);
INSERT INTO O_306 VALUES('240430003012', '240430003000', '7016', 2000000.0, '1 Pcs Pompa Power Stering Hilux u/ N9811EE PR.2441/h.811 (Sumber Rejeki)', TIMESTAMP '2024-08-14 10:59:34.378', 2000000.0, 4.1936968E8, 9.2855239E7);
INSERT INTO O_306 VALUES('240430003013', '240430003000', '7016', 75000.0, '1 Pcs Karet pengaman Borem Stir Kanan u/ N9811EE PR.2441/h.811 (Sumber Rejeki)', TIMESTAMP '2024-08-14 10:59:34.378', 75000.0, 4.1944468E8, 9.2780239E7);
INSERT INTO O_306 VALUES('240430003014', '240430003000', '7016', 55000.0, '1 Pcs Stik Kacer 30cm(Pendek) u/W.shop PR.2441/h.811 (Maju Mandiri)', TIMESTAMP '2024-08-14 10:59:34.379', 55000.0, 4.1949968E8, 9.2725239E7);
INSERT INTO O_306 VALUES('240430003015', '240430003000', '7016', 75000.0, '1 Pcs Kunci Kontak Serep u/L8504AJ  PR.2441/h.811 (Ahli Kunci Alief)', TIMESTAMP '2024-08-14 10:59:34.379', 75000.0, 4.1957468E8, 9.2650239E7);
INSERT INTO O_306 VALUES('240430003016', '240430003000', '7023', 170000.0, '10 Liter Pertamax u/ Stok PR.2441/h.811', TIMESTAMP '2024-08-14 10:59:34.379', 170000.0, 3751396.0, 9.2480239E7);
INSERT INTO O_306 VALUES('240430003017', '240430003000', '7016', 300000.0, '10 pcs Lampu 15 Watt u/ Stok PR.2441/h.811 (Maju Mandiri)', TIMESTAMP '2024-08-14 10:59:34.379', 300000.0, 4.1987468E8, 9.2180239E7);
INSERT INTO O_306 VALUES('240430003018', '240430003000', '7016', 250000.0, '1 Pcs Kunci Piston u/ Wshop PR.2441/h.811 (Paraswana)', TIMESTAMP '2024-08-14 10:59:34.379', 250000.0, 4.2012468E8, 9.1930239E7);
INSERT INTO O_306 VALUES('240430003019', '240430003000', '7016', 30000.0, '1 Pcs Tambal ban Tubles u/ L8504AJ', TIMESTAMP '2024-08-14 10:59:34.379', 30000.0, 4.2015468E8, 9.1900239E7);
INSERT INTO O_306 VALUES('240430003020', '240430003000', '7006', 50000.0, 'Penyebrangan PP u/ L8504AJ', TIMESTAMP '2024-08-14 10:59:34.379', 50000.0, 6.088283E7, 9.1850239E7);
INSERT INTO O_306 VALUES('240430003021', '240430003000', '7016', 60000.0, '1 Pcs Stik Kacer 50cm (Panjang) PR.2441/h.811 ', TIMESTAMP '2024-08-14 10:59:34.379', 60000.0, 4.2021468E8, 9.1790239E7);
INSERT INTO O_306 VALUES('240430003022', '240430003000', '7006', 7000.0, 'Retribusi spead boat', TIMESTAMP '2024-08-14 10:59:34.38', 7000.0, 6.088983E7, 9.1783239E7);
INSERT INTO O_306 VALUES('240430003023', '240430003000', '7006', 500000.0, 'Tiket Speed Boat Melak Samarinda 30/03/24', TIMESTAMP '2024-08-14 10:59:34.38', 500000.0, 6.138983E7, 9.1283239E7);
INSERT INTO O_306 VALUES('240430003024', '240430003000', '7006', 7000.0, 'Retribusi Speed boat', TIMESTAMP '2024-08-14 10:59:34.38', 7000.0, 6.139683E7, 9.1276239E7);
INSERT INTO O_306 VALUES('240430003025', '240430003000', '7006', 500000.0, 'Tiket Speed Boat Samarinda-Melak 21/04/24', TIMESTAMP '2024-08-14 10:59:34.38', 500000.0, 6.189683E7, 9.0776239E7);
INSERT INTO O_306 VALUES('240430003026', '240430003000', '7016', 450000.0, '1 Pcs Center Bearing u/ L 8039 BX PR 2442 / H 665 (Sumber Rejeki II)', TIMESTAMP '2024-08-14 10:59:34.38', 450000.0, 4.2066468E8, 9.0326239E7);
INSERT INTO O_306 VALUES('240430003027', '240430003000', '7016', 135000.0, '2 Pcs Hose Tangki Solar u/ L 9502 GH  PR 2442 / H 665', TIMESTAMP '2024-08-14 10:59:34.38', 135000.0, 4.2079968E8, 9.0191239E7);
INSERT INTO O_306 VALUES('240430003028', '240430003000', '7016', 250000.0, '1 Set Kampas Rem Depan (Front Hilux) 04465 - OK 340 u/', TIMESTAMP '2024-08-14 10:59:34.381', 250000.0, 4.2104968E8, 8.9941239E7);
INSERT INTO O_306 VALUES('240430003029', '240430003000', '7016', 1350000.0, '2 Pcs (1 Set L/R) Piringan Cakram Depan Hilux u/ L 9502 GH', TIMESTAMP '2024-08-14 10:59:34.381', 1350000.0, 4.2239968E8, 8.8591239E7);
INSERT INTO O_306 VALUES('240430003030', '240430003000', '7016', 1500000.0, '1 Pcs Drive Shaft Hilux (Shaft Dobel Kiri) u/ N 8993 AT ', TIMESTAMP '2024-08-14 10:59:34.381', 1500000.0, 4.2389968E8, 8.7091239E7);
INSERT INTO O_306 VALUES('240430003031', '240430003000', '7016', 50000.0, '10 Pcs Karet Sock u/ N 8993 AT PR 2445 / H 330 (Sumber Rejeki II)', TIMESTAMP '2024-08-14 10:59:34.381', 50000.0, 4.2394968E8, 8.7041239E7);
INSERT INTO O_306 VALUES('240430003032', '240430003000', '7016', 600000.0, '1 Pcs Cable Hand Break RH (Kabel Hand Rem Kanan) u/ L 9502 GH', TIMESTAMP '2024-08-14 10:59:34.381', 600000.0, 4.2454968E8, 8.6441239E7);
INSERT INTO O_306 VALUES('240430003033', '240430003000', '7016', 210000.0, '2 Pcs Van Belt A-41 u/ TR 03 + Stok PR 2446 / H 180 (UD Paras Wana)', TIMESTAMP '2024-08-14 10:59:34.381', 210000.0, 4.2475968E8, 8.6231239E7);
INSERT INTO O_306 VALUES('240430003034', '240430003000', '7016', 50000.0, '1 Pcs Hose L u/ Dinamo Ampere L 8039 BX  PR 2446 / H 180', TIMESTAMP '2024-08-14 10:59:34.381', 50000.0, 4.2480968E8, 8.6181239E7);
INSERT INTO O_306 VALUES('240430003035', '240430003000', '7016', 150000.0, '2 Pcs Pulley AC u/ Stok  PR 2446 / H 180 (Busur Jaya Mobil)', TIMESTAMP '2024-08-14 10:59:34.381', 150000.0, 4.2495968E8, 8.6031239E7);
INSERT INTO O_306 VALUES('240430003036', '240430003000', '7017', 1275000.0, '15 Meter Pipa AC u/ Pasang AC Baru Mess KM 18  Rp85.000 / Meter', TIMESTAMP '2024-08-14 10:59:34.382', 1275000.0, 2.02870709E8, 8.4756239E7);
INSERT INTO O_306 VALUES('240430003037', '240430003000', '7017', 120000.0, '6 Pcs Stop Kontak u/ Pasang AC Baru Mess KM 18 @ Rp20.000', TIMESTAMP '2024-08-14 10:59:34.382', 120000.0, 2.02990709E8, 8.4636239E7);
INSERT INTO O_306 VALUES('240430003038', '240430003000', '7017', 90000.0, '6 Pcs Soket (Colokan / Jek) u/ Pasang AC Baru Mess KM 18', TIMESTAMP '2024-08-14 10:59:34.382', 90000.0, 2.03080709E8, 8.4546239E7);
INSERT INTO O_306 VALUES('240430003039', '240430003000', '7017', 570000.0, '1 Roll Kabel Serabut 2 X 1,5 u/ Pasang AC Baru Mess KM 18', TIMESTAMP '2024-08-14 10:59:34.382', 570000.0, 2.03650709E8, 8.3976239E7);
INSERT INTO O_306 VALUES('240430003040', '240430003000', '7017', 60000.0, '3 Kg Paku 3  u/ Workshop PR 2442 / H 665 (UD Mulia Jaya)', TIMESTAMP '2024-08-14 10:59:34.382', 60000.0, 2.03710709E8, 8.3916239E7);
INSERT INTO O_306 VALUES('240430003041', '240430003000', '7017', 20000.0, '4 Pcs Baut 3/8 X 5 + R2 (K14 x 12) u/ Workshop @ Rp5.000', TIMESTAMP '2024-08-14 10:59:34.382', 20000.0, 2.03730709E8, 8.3896239E7);
INSERT INTO O_306 VALUES('240430003042', '240430003000', '7017', 24000.0, '4 Pcs Baut 3/8 X 6 + R2 (K14 X 14) u/ Workshop @ Rp6.000', TIMESTAMP '2024-08-14 10:59:34.382', 24000.0, 2.03754709E8, 8.3872239E7);
INSERT INTO O_306 VALUES('240430003043', '240430003000', '7017', 300000.0, '1 Pcs Kipas Angin Miyako u/ Gudang Logistik PR 2442 / H 665', TIMESTAMP '2024-08-14 10:59:34.382', 300000.0, 2.04054709E8, 8.3572239E7);
INSERT INTO O_306 VALUES('240430003044', '240430003000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (Melak - Surabaya)', TIMESTAMP '2024-08-14 10:59:34.383', 47000.0, 1621400.0, 8.3525239E7);
INSERT INTO O_306 VALUES('240430003045', '240430003000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Belanja Sparepart dan Jemput', TIMESTAMP '2024-08-14 10:59:34.383', 50000.0, 6.194683E7, 8.3475239E7);
INSERT INTO O_306 VALUES('240430003046', '240430003000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Jemput Karyawan Kembali dari', TIMESTAMP '2024-08-14 10:59:34.383', 50000.0, 6.199683E7, 8.3425239E7);
INSERT INTO O_306 VALUES('240430003047', '240430003000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Jemput Karyawan Kembali dari', TIMESTAMP '2024-08-14 10:59:34.383', 50000.0, 6.204683E7, 8.3375239E7);
INSERT INTO O_306 VALUES('240430003048', '240430003000', '7017', 30000.0, '30 Pcs Klem Pipa 1/2  u/ Pipa AC Mess KM 18 PR 2445 / H 330', TIMESTAMP '2024-08-14 10:59:34.383', 30000.0, 2.04084709E8, 8.3345239E7);
INSERT INTO O_306 VALUES('240430003049', '240430003000', '7017', 32000.0, '4 Bks (4 Pak) Klem Kabel 10 mm u/ Kabel AC Mess KM 18', TIMESTAMP '2024-08-14 10:59:34.383', 32000.0, 2.04116709E8, 8.3313239E7);
INSERT INTO O_306 VALUES('240430003050', '240430003000', '7017', 10000.0, 'Paku Campur u/ Mess KM 18  PR 2445 / H 330 (UD Cahaya)', TIMESTAMP '2024-08-14 10:59:34.383', 10000.0, 2.04126709E8, 8.3303239E7);
INSERT INTO O_306 VALUES('240430003051', '240430003000', '7017', 189000.0, '3 Lembar Plywood (Triplek) u/ Mess KM 18 PR 2445 / H 330', TIMESTAMP '2024-08-14 10:59:34.383', 189000.0, 2.04315709E8, 8.3114239E7);
INSERT INTO O_306 VALUES('240430003052', '240430003000', '7017', 290000.0, '1 Tabung Oksigen u/ Workshop PR 2445 / H 330 (UD Maju Mandiri)', TIMESTAMP '2024-08-14 10:59:34.384', 290000.0, 2.04605709E8, 8.2824239E7);
INSERT INTO O_306 VALUES('240430003053', '240430003000', '7017', 35000.0, '1 Pcs Mata Bor 6 ml u/ Workshop PR 2445 / H 330 (UD Maju Mandiri)', TIMESTAMP '2024-08-14 10:59:34.384', 35000.0, 2.04640709E8, 8.2789239E7);
INSERT INTO O_306 VALUES('240430003054', '240430003000', '7017', 55000.0, '1 Pcs Mata Bor 8 ml u/ Workshop PR 2445 / H 330 (UD Maju Mandiri)', TIMESTAMP '2024-08-14 10:59:34.384', 55000.0, 2.04695709E8, 8.2734239E7);
INSERT INTO O_306 VALUES('240430003055', '240430003000', '7017', 170000.0, '2 Pcs Mata Bor 10 ml u/ Woorkshop @ Rp85.000 PR 2445 / H 330 ', TIMESTAMP '2024-08-14 10:59:34.384', 170000.0, 2.04865709E8, 8.2564239E7);
INSERT INTO O_306 VALUES('240430003056', '240430003000', '7017', 50000.0, '2 Roll Tali Rafia u/ Gudang @ Rp25.000 PR 2445 / H 330 (UD Maju Mandiri)', TIMESTAMP '2024-08-14 10:59:34.384', 50000.0, 2.04915709E8, 8.2514239E7);
INSERT INTO O_306 VALUES('240430003057', '240430003000', '7017', 40000.0, '4 Pcs Kapasitor Kipas Angin u/ Kamar Slamet, Supriyanto, dan', TIMESTAMP '2024-08-14 10:59:34.384', 40000.0, 2.04955709E8, 8.2474239E7);
INSERT INTO O_306 VALUES('240430003058', '240430003000', '7023', 160000.0, '10 Liter Pertamax u/ Stok @ Rp16.000 PR 2445 / H 330', TIMESTAMP '2024-08-14 10:59:34.384', 160000.0, 3911396.0, 8.2314239E7);
INSERT INTO O_306 VALUES('240430003059', '240430003000', '7006', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Belanja Sparepart dan Tarik', TIMESTAMP '2024-08-14 10:59:34.384', 50000.0, 6.209683E7, 8.2264239E7);
INSERT INTO O_306 VALUES('240430003060', '240430003000', '7009', 47000.0, 'Bayar Tiki u/ Kirim Contoh Sil Pump (SJ 010948) PR 2444 (Sby)', TIMESTAMP '2024-08-14 10:59:34.385', 47000.0, 1668400.0, 8.2217239E7);
INSERT INTO O_306 VALUES('240430003061', '240430003000', '7008', 50000.0, 'Cuci Mobil L 9502 GH', TIMESTAMP '2024-08-14 10:59:34.385', 50000.0, 1150000.0, 8.2167239E7);
INSERT INTO O_306 VALUES('240430003062', '240430003000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-08-14 10:59:34.385', 500000.0, 2.05455709E8, 8.1667239E7);
INSERT INTO O_306 VALUES('240430003063', '240430003000', '7017', 15000.0, '1 Pcs Double Tip u/ Gudang PR 2446 / H 180 (UD Maju Mandiri)', TIMESTAMP '2024-08-14 10:59:34.385', 15000.0, 2.05470709E8, 8.1652239E7);
INSERT INTO O_306 VALUES('240430003064', '240430003000', '7017', 165000.0, '1 Roll Plastik Wrapping u/ Workshop  PR 2446 / H 180 (UD Maju Mandiri)', TIMESTAMP '2024-08-14 10:59:34.385', 165000.0, 2.05635709E8, 8.1487239E7);
INSERT INTO O_306 VALUES('240430003065', '240430003000', '7017', 50000.0, 'Penyeberangan PP N 8993 AT u/ Belanja Sparepart dan Jemput', TIMESTAMP '2024-08-14 10:59:34.385', 50000.0, 2.05685709E8, 8.1437239E7);
INSERT INTO O_306 VALUES('240430003066', '240430003000', '7017', 100000.0, '5 Kg Paku Biasa 2  u/ Rak Gudang Mess KM 18 @ Rp20.000', TIMESTAMP '2024-08-14 10:59:34.385', 100000.0, 2.05785709E8, 8.1337239E7);
INSERT INTO O_306 VALUES('240430003067', '240430003000', '7017', 100000.0, '5 Kg Paku Biasa 3  u/ Rak Gudang Mess KM 18 @ Rp20.000', TIMESTAMP '2024-08-14 10:59:34.386', 100000.0, 2.05885709E8, 8.1237239E7);
INSERT INTO O_306 VALUES('240430003068', '240430003000', '7017', 670000.0, '1 Set Mesin Circular Saw 2600L u/ Gudang PR 2446 / H 180', TIMESTAMP '2024-08-14 10:59:34.386', 670000.0, 2.06555709E8, 8.0567239E7);
INSERT INTO O_306 VALUES('240430003069', '240430003000', '7017', 45000.0, '1 Pasang Sarung Tangan Las Kulit u/ Workshop PR 2446 / H 180', TIMESTAMP '2024-08-14 10:59:34.387', 45000.0, 2.06600709E8, 8.0522239E7);
INSERT INTO O_306 VALUES('240430003070', '240430003000', '7001', 480000.0, 'Piket Genset Penerangan Periode 21 April 2024 - 30 April 2024', TIMESTAMP '2024-08-14 10:59:34.387', 480000.0, 7.26138329E8, 8.0042239E7);
INSERT INTO O_306 VALUES('240430003071', '240430003000', '7006', 750000.0, 'Pengganti Bensin Perahu Penyeberangan Karyawan Periode', TIMESTAMP '2024-08-14 10:59:34.387', 750000.0, 6.284683E7, 7.9292239E7);
INSERT INTO O_306 VALUES('240430003072', '240430003000', '7017', 475000.0, '10 Meter Selang Asbes 25 JP (HX Slang Asbes Tahan Panas 25 mm)', TIMESTAMP '2024-08-14 10:59:34.388', 475000.0, 2.07075709E8, 7.8817239E7);
INSERT INTO O_306 VALUES('240430003073', '240430003000', '7017', 950000.0, '2 Pcs Isolasi Tahan Panas 2  (Coklat) @ Rp475.000 ', TIMESTAMP '2024-08-14 10:59:34.388', 950000.0, 2.08025709E8, 7.7867239E7);
INSERT INTO O_306 VALUES('240430003074', '240430003000', '7017', 156750.0, 'PPN 11%', TIMESTAMP '2024-08-14 10:59:34.388', 156750.0, 2.08182459E8, 7.7710489E7);
INSERT INTO O_306 VALUES('240430003075', '240430003000', '7017', 75000.0, '3 Pcs Kran Y (Pencabang Selang Kompresor) @ Rp25.000 u/', TIMESTAMP '2024-08-14 10:59:34.388', 75000.0, 2.08257459E8, 7.7635489E7);
INSERT INTO O_306 VALUES('240430003076', '240430003000', '7017', 15000.0, '1 Pcs Lem G u/ Kompresor Workshop PR 2447 / H 711 (Sumber Rejeki)', TIMESTAMP '2024-08-14 10:59:34.392', 15000.0, 2.08272459E8, 7.7620489E7);
INSERT INTO O_306 VALUES('240430003077', '240430003000', '7017', 94999.0, '1 Pcs Asbes Pita 2  u/ Pelindung Panas Alat Berat PR 2447 / H 711', TIMESTAMP '2024-08-14 10:59:34.393', 94999.0, 2.08367458E8, 7.752549E7);
INSERT INTO O_306 VALUES('240430003078', '240430003000', '7006', 3000000.0, 'Transport Darat Melak - Balikpapan tgl 3 April 2024 u/ Cuti', TIMESTAMP '2024-08-14 10:59:34.393', 3000000.0, 6.584683E7, 7.452549E7);
INSERT INTO O_306 VALUES('240430003079', '240430003000', '7006', 900000.0, 'Transport Darat Balikpapan - Melak tgl 23 April 2024 a/n ', TIMESTAMP '2024-08-14 10:59:34.393', 900000.0, 6.674683E7, 7.362549E7);
INSERT INTO O_306 VALUES('240430003080', '240430003000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan tgl 29 Maret 2024 u/ Cuti', TIMESTAMP '2024-08-14 10:59:34.394', 450000.0, 6.719683E7, 7.317549E7);
INSERT INTO O_306 VALUES('240430003081', '240430003000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak tgl 24 April 2024 u/ Cuti', TIMESTAMP '2024-08-14 10:59:34.394', 450000.0, 6.764683E7, 7.272549E7);
INSERT INTO O_306 VALUES('240430003082', '240430003000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan tgl 29 Maret 2024 u/ Cuti', TIMESTAMP '2024-08-14 10:59:34.394', 450000.0, 6.809683E7, 7.227549E7);
INSERT INTO O_306 VALUES('240430003083', '240430003000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak tgl 24 April 2024 u/ Cuti', TIMESTAMP '2024-08-14 10:59:34.394', 450000.0, 6.854683E7, 7.182549E7);
INSERT INTO O_306 VALUES('240430003084', '240430003000', '7006', 900000.0, 'Transport Darat Melak - Balikpapan tgl 29 Maret 2024 a/n Andri', TIMESTAMP '2024-08-14 10:59:34.394', 900000.0, 6.944683E7, 7.092549E7);
INSERT INTO O_306 VALUES('240430003085', '240430003000', '7006', 50000.0, 'Transport Darat Juanda - Bungurasih 30 Maret 2024 a/n Andri', TIMESTAMP '2024-08-14 10:59:34.394', 50000.0, 6.949683E7, 7.087549E7);
INSERT INTO O_306 VALUES('240430003086', '240430003000', '7006', 50000.0, 'Transport Darat Juanda - Bungurasih 30 Maret 2024 a/n Sekhan', TIMESTAMP '2024-08-14 10:59:34.395', 50000.0, 6.954683E7, 7.082549E7);
INSERT INTO O_306 VALUES('240430003087', '240430003000', '7006', 50000.0, 'Transport Darat Bungurasih - Juanda 24 April 2024 a/n Andri', TIMESTAMP '2024-08-14 10:59:34.395', 50000.0, 6.959683E7, 7.077549E7);
INSERT INTO O_306 VALUES('240430003088', '240430003000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak tgl 24 April 2024 u/ Cuti', TIMESTAMP '2024-08-14 10:59:34.395', 450000.0, 7.004683E7, 7.032549E7);
INSERT INTO O_306 VALUES('240430003089', '240430003000', '7006', 50000.0, 'Transport Darat Bungurasih - Juanda 24 April 2024 a/n Sekhan', TIMESTAMP '2024-08-14 10:59:34.395', 50000.0, 7.009683E7, 7.027549E7);
INSERT INTO O_306 VALUES('240430004001', '240430004000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak tgl 24 April 2024 u/ Cuti', TIMESTAMP '2024-08-14 11:00:23.327', 450000.0, 7.054683E7, 6.982549E7);
INSERT INTO O_306 VALUES('240430004002', '240430004000', '7006', 50000.0, 'Transport Darat Juanda - Bungurasih 4 April 2024 a/n Didik', TIMESTAMP '2024-08-14 11:00:23.327', 50000.0, 7.059683E7, 6.977549E7);
INSERT INTO O_306 VALUES('240430004003', '240430004000', '7006', 50000.0, 'Transport Darat Bungurasih - Juanda 24 April 2024 a/n Didik', TIMESTAMP '2024-08-14 11:00:23.327', 50000.0, 7.064683E7, 6.972549E7);
INSERT INTO O_306 VALUES('240430004004', '240430004000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak tgl 24 April 2024 u/ Cuti', TIMESTAMP '2024-08-14 11:00:23.327', 450000.0, 7.109683E7, 6.927549E7);
INSERT INTO O_306 VALUES('240430004005', '240430004000', '7006', 50000.0, 'Transport Darat Juanda - Bungurasih 4 April 2024 a/n Wijonarko', TIMESTAMP '2024-08-14 11:00:23.327', 50000.0, 7.114683E7, 6.922549E7);
INSERT INTO O_306 VALUES('240430004006', '240430004000', '7006', 50000.0, 'Transport Darat Bungurasih - Juanda 24 April 2024 a/n Wijonarko', TIMESTAMP '2024-08-14 11:00:23.327', 50000.0, 7.119683E7, 6.917549E7);
INSERT INTO O_306 VALUES('240430004007', '240430004000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak tgl 24 April 2024 u/ Cuti', TIMESTAMP '2024-08-14 11:00:23.327', 450000.0, 7.164683E7, 6.872549E7);
INSERT INTO O_306 VALUES('240430004008', '240430004000', '7006', 310000.0, 'Transport Darat (Travel Avanza) Juanda - Bungah, Gresik', TIMESTAMP '2024-08-14 11:00:23.327', 310000.0, 7.195683E7, 6.841549E7);
INSERT INTO O_306 VALUES('240430004009', '240430004000', '7006', 300000.0, 'Transport Darat Bungah, Gresik - Juanda tgl 28 April 2024', TIMESTAMP '2024-08-14 11:00:23.327', 300000.0, 7.225683E7, 6.811549E7);
INSERT INTO O_306 VALUES('240430004010', '240430004000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak tgl 28 April 2024 u/ Cuti', TIMESTAMP '2024-08-14 11:00:23.328', 450000.0, 7.270683E7, 6.766549E7);
INSERT INTO O_306 VALUES('240430004011', '240430004000', '7001', 840000.0, 'UM Slamet Subagyo Periode 21 April - 26 April 2024', TIMESTAMP '2024-08-14 11:00:23.328', 840000.0, 7.26978329E8, 6.682549E7);
INSERT INTO O_306 VALUES('240430004012', '240430004000', '7001', 890000.0, 'UM Syamsudin Noor Periode 21 April - 26 April 2024', TIMESTAMP '2024-08-14 11:00:23.328', 890000.0, 7.27868329E8, 6.593549E7);
INSERT INTO O_306 VALUES('240430004013', '240430004000', '7001', 560000.0, 'UM M. Agus Irwanto Periode 28 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.328', 560000.0, 7.28428329E8, 6.537549E7);
INSERT INTO O_306 VALUES('240430004014', '240430004000', '7001', 1400000.0, 'UM Syaifullah Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.328', 1400000.0, 7.29828329E8, 6.397549E7);
INSERT INTO O_306 VALUES('240430004015', '240430004000', '7001', 990000.0, 'UM Haqqul I. Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.328', 990000.0, 7.30818329E8, 6.298549E7);
INSERT INTO O_306 VALUES('240430004016', '240430004000', '7001', 870000.0, 'UM Sarjito F. A. Periode 23 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.328', 870000.0, 7.31688329E8, 6.211549E7);
INSERT INTO O_306 VALUES('240430004017', '240430004000', '7001', 675000.0, 'UM Jakaria Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.328', 675000.0, 7.32363329E8, 6.144049E7);
INSERT INTO O_306 VALUES('240430004018', '240430004000', '7001', 795000.0, 'UM Didik M. Periode 24 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.328', 795000.0, 7.33158329E8, 6.064549E7);
INSERT INTO O_306 VALUES('240430004019', '240430004000', '7001', 1400000.0, 'UM Go Oei Hap Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.329', 1400000.0, 7.34558329E8, 5.924549E7);
INSERT INTO O_306 VALUES('240430004020', '240430004000', '7001', 1800000.0, 'UM Supriyanto Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.329', 1800000.0, 7.36358329E8, 5.744549E7);
INSERT INTO O_306 VALUES('240430004021', '240430004000', '7001', 1190000.0, 'UM Handriyadi Periode 23 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.329', 1190000.0, 7.37548329E8, 5.625549E7);
INSERT INTO O_306 VALUES('240430004022', '240430004000', '7001', 980000.0, 'UM Wijonarko Periode 24 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.329', 980000.0, 7.38528329E8, 5.527549E7);
INSERT INTO O_306 VALUES('240430004023', '240430004000', '7001', 980000.0, 'UM Sekhan Periode 24 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.329', 980000.0, 7.39508329E8, 5.429549E7);
INSERT INTO O_306 VALUES('240430004024', '240430004000', '7001', 1050000.0, 'UM Maretius Oji Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.329', 1050000.0, 7.40558329E8, 5.324549E7);
INSERT INTO O_306 VALUES('240430004025', '240430004000', '7001', 1400000.0, 'UM Anna Qodri Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.329', 1400000.0, 7.41958329E8, 5.184549E7);
INSERT INTO O_306 VALUES('240430004026', '240430004000', '7001', 165000.0, 'UM Raju Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.329', 165000.0, 7.42123329E8, 5.168049E7);
INSERT INTO O_306 VALUES('240430004027', '240430004000', '7001', 795000.0, 'UM Andri S. Periode 24 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.329', 795000.0, 7.42918329E8, 5.088549E7);
INSERT INTO O_306 VALUES('240430004028', '240430004000', '7001', 1040000.0, 'UM Rinaldhie G. Periode 24 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.33', 1040000.0, 7.43958329E8, 4.984549E7);
INSERT INTO O_306 VALUES('240430004029', '240430004000', '7001', 1040000.0, 'UM M. Hafizhni Periode 24 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.33', 1040000.0, 7.44998329E8, 4.880549E7);
INSERT INTO O_306 VALUES('240430004030', '240430004000', '7001', 1400000.0, 'UM Suradi Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.33', 1400000.0, 7.46398329E8, 4.740549E7);
INSERT INTO O_306 VALUES('240430004031', '240430004000', '7001', 550000.0, 'UM Fajar N. Hidayat Periode 21 April - 30 April 2024', TIMESTAMP '2024-08-14 11:00:23.33', 550000.0, 7.46948329E8, 4.685549E7);
INSERT INTO O_306 VALUES('240430004032', '240430004000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Mei 2024', TIMESTAMP '2024-08-14 11:00:23.33', 500000.0, 7.47448329E8, 4.635549E7);
INSERT INTO O_306 VALUES('240430004033', '240430004000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Mei 2024', TIMESTAMP '2024-08-14 11:00:23.33', 500000.0, 7.47948329E8, 4.585549E7);
INSERT INTO O_306 VALUES('240531007001', '240531007000', '7016', 80000.0, 'Karbon', TIMESTAMP '2024-08-16 10:32:44.583', 80000.0, 4.85080749E8, 4.577549E7);
INSERT INTO O_306 VALUES('240531007002', '240531007000', '7016', 120000.0, 'Golden', TIMESTAMP '2024-08-16 10:32:44.583', 120000.0, 4.85200749E8, 4.565549E7);
INSERT INTO O_306 VALUES('240531007003', '240531007000', '7016', 170000.0, 'Selondofan', TIMESTAMP '2024-08-16 10:32:44.583', 170000.0, 4.85370749E8, 4.548549E7);
INSERT INTO O_306 VALUES('240531007004', '240531007000', '7016', 400000.0, 'Spull Otomatis', TIMESTAMP '2024-08-16 10:32:44.583', 400000.0, 4.85770749E8, 4.508549E7);
INSERT INTO O_306 VALUES('240531007005', '240531007000', '7016', 200000.0, 'Jasa', TIMESTAMP '2024-08-16 10:32:44.583', 200000.0, 4.85970749E8, 4.488549E7);
INSERT INTO O_306 VALUES('240531007006', '240531007000', '7016', 190000.0, '1 Set Hose Assy Hyd 1/4  X 0,5 m c/w Fitting Survel / Male / Neppel', TIMESTAMP '2024-08-16 10:32:44.583', 190000.0, 4.86160749E8, 4.469549E7);
INSERT INTO O_306 VALUES('240531007007', '240531007000', '7016', 252000.0, '4 Pcs O Ring P-105 DEM @ Rp63.000 u/ Doser 38 PR 3701 / H 334', TIMESTAMP '2024-08-16 10:32:44.583', 252000.0, 4.86412749E8, 4.444349E7);
INSERT INTO O_306 VALUES('240531007008', '240531007000', '7009', 50000.0, 'Ongkir Cendana ', TIMESTAMP '2024-08-16 10:32:44.583', 50000.0, 1718400.0, 4.439349E7);
INSERT INTO O_306 VALUES('240531007009', '240531007000', '7016', 50000.0, '1 Pcs Baut 88 16 X 200 (Baut Baja K24 X 20 cm) u/ SK 200 / 76', TIMESTAMP '2024-08-16 10:32:44.583', 50000.0, 4.86462749E8, 4.434349E7);
INSERT INTO O_306 VALUES('240531007010', '240531007000', '7016', 490000.0, '1 Pcs Hose Assy Hyd 2 Ply X 1/2  P = 185 cm Fitting Lurus (2 Pc) 1/2 ', TIMESTAMP '2024-08-16 10:32:44.583', 490000.0, 4.86952749E8, 4.385349E7);
INSERT INTO O_306 VALUES('240531007011', '240531007000', '7016', 2000000.0, '2 Pcs Bubut + Tambah Daging Pen Bucket (Pen Baket) untuk', TIMESTAMP '2024-08-16 10:32:44.583', 2000000.0, 4.88952749E8, 4.185349E7);
INSERT INTO O_306 VALUES('240531007012', '240531007000', '7016', 390000.0, '2 Pcs O/F Triton 045A (Filter Oli 1230A 45A) u/ Stok @ Rp195.000', TIMESTAMP '2024-08-16 10:32:44.583', 390000.0, 4.89342749E8, 4.146349E7);
INSERT INTO O_306 VALUES('240531007013', '240531007000', '7016', 160000.0, '4 Pcs Halogen H4 12V u/ Stok @ Rp40.000 PR 3704 / H 119', TIMESTAMP '2024-08-16 10:32:44.583', 160000.0, 4.89502749E8, 4.130349E7);
INSERT INTO O_306 VALUES('240531007014', '240531007000', '7016', 420000.0, '1 Pcs Per RR 122 no (Per Belakang Kiri No. 3) u/ Dutro FT 01', TIMESTAMP '2024-08-16 10:32:44.583', 420000.0, 4.89922749E8, 4.088349E7);
INSERT INTO O_306 VALUES('240531007015', '240531007000', '7016', 115000.0, '1 Pcs C.Per RR RS (Sunduk Per) u/ Dutro FT 01 PR 3704 / H 119', TIMESTAMP '2024-08-16 10:32:44.583', 115000.0, 4.90037749E8, 4.076849E7);
INSERT INTO O_306 VALUES('240531007016', '240531007000', '7016', 200000.0, 'Klam Per RR (Kawel Per) u/ Dutro FT 01 PR 3704 / H 119', TIMESTAMP '2024-08-16 10:32:44.583', 200000.0, 4.90237749E8, 4.056849E7);
INSERT INTO O_306 VALUES('240531007017', '240531007000', '7016', 450000.0, '10 Pcs Baut 88 M18 X 150 (Baut Baja K27 X 15) u/ SK 200 76 / 77', TIMESTAMP '2024-08-16 10:32:44.583', 450000.0, 4.90687749E8, 4.011849E7);
INSERT INTO O_306 VALUES('240531007018', '240531007000', '7016', 130000.0, '2 Pcs Contact Cleaner Rexco u/ Stok @ RP65.000  PR 3705 / H 118   ', TIMESTAMP '2024-08-16 10:32:44.583', 130000.0, 4.90817749E8, 3.998849E7);
INSERT INTO O_306 VALUES('240531007019', '240531007000', '7016', 110000.0, '2 Pcs Master MP 80 / WD u/ Stok @ Rp55.000  PR 3705 / H 118', TIMESTAMP '2024-08-16 10:32:44.583', 110000.0, 4.90927749E8, 3.987849E7);
INSERT INTO O_306 VALUES('240531007020', '240531007000', '7016', 30000.0, '1 Pcs Meteran (3 m) u/ Proyek Gudang KM 18 PR 3705 / H 118', TIMESTAMP '2024-08-16 10:32:44.583', 30000.0, 4.90957749E8, 3.984849E7);
INSERT INTO O_306 VALUES('240531007021', '240531007000', '7016', 3000.0, '1 Pcs Pensil Tukang u/ Proyek Gudang KM 18 PR 3705 / H 118', TIMESTAMP '2024-08-16 10:32:44.583', 3000.0, 4.90960749E8, 3.984549E7);
INSERT INTO O_306 VALUES('240531007022', '240531007000', '7016', 35000.0, '1 Pcs Siku Tukang u/ Proyek Gudang KM 18 PR 3705 / H 118', TIMESTAMP '2024-08-16 10:32:44.583', 35000.0, 4.90995749E8, 3.981049E7);
INSERT INTO O_306 VALUES('240531007023', '240531007000', '7016', 50000.0, '2 Pcs Cetok Semen u/ Proyek Gudang KM 18 @ Rp25.000 ', TIMESTAMP '2024-08-16 10:32:44.583', 50000.0, 4.91045749E8, 3.976049E7);
INSERT INTO O_306 VALUES('240531007024', '240531007000', '7016', 90000.0, '2 Pcs Sarung Tangan Bintik u/ Stok @ Rp45.000 PR 3705 / H 118', TIMESTAMP '2024-08-16 10:32:44.583', 90000.0, 4.91135749E8, 3.967049E7);
INSERT INTO O_306 VALUES('240531007025', '240531007000', '7016', 410000.0, '1 Pcs Spring RR Hi 03 (Per Belakang No. 3 Kanan) u/ Manhaul 01', TIMESTAMP '2024-08-16 10:32:44.583', 410000.0, 4.91545749E8, 3.926049E7);
INSERT INTO O_306 VALUES('240531007026', '240531007000', '7016', 340000.0, '1 Pcs Spring RR Hi 04 (Per Belakang No. 4 Kanan) u/ Manhaul 01', TIMESTAMP '2024-08-16 10:32:44.583', 340000.0, 4.91885749E8, 3.892049E7);
INSERT INTO O_306 VALUES('240531007027', '240531007000', '7016', 230000.0, '2 Pcs U-Bolt RR (Klem Per Belakang) u/ Manhaul 01 @ Rp115.000', TIMESTAMP '2024-08-16 10:32:44.583', 230000.0, 4.92115749E8, 3.869049E7);
INSERT INTO O_306 VALUES('240531007028', '240531007000', '7016', 100000.0, '1 Pcs Center Per Hi (Sunduk Per) u/ Manhaul 01 PR 3707 / H 118', TIMESTAMP '2024-08-16 10:32:44.583', 100000.0, 4.92215749E8, 3.859049E7);
INSERT INTO O_306 VALUES('240531007029', '240531007000', '7016', 215000.0, '1 Pcs Cross Joint 14B u/ FT 01 PR 3707 / H 118 (Sumber Rejeki II)', TIMESTAMP '2024-08-16 10:32:44.583', 215000.0, 4.92430749E8, 3.837549E7);
INSERT INTO O_306 VALUES('240531007030', '240531007000', '7016', 80000.0, '20 Pcs Skun Kabel u/ Stok PR 3707 / H 118 (Sumber Rejeki II)', TIMESTAMP '2024-08-16 10:32:44.583', 80000.0, 4.92510749E8, 3.829549E7);
INSERT INTO O_306 VALUES('240531007031', '240531007000', '7016', 625000.0, '1 Pcs Head Lamp RH (Lampu Depan Kanan) u/ Manhaul 01 ', TIMESTAMP '2024-08-16 10:32:44.583', 625000.0, 4.93135749E8, 3.767049E7);
INSERT INTO O_306 VALUES('240531007032', '240531007000', '7016', 550000.0, '1 Pcs Bearing Gantung 3450 A017 u/ L 8039 BX  PR 3708 / H 665', TIMESTAMP '2024-08-16 10:32:44.583', 550000.0, 4.93685749E8, 3.712049E7);
INSERT INTO O_306 VALUES('240531007033', '240531007000', '7016', 230000.0, '1 Pcs Spring Triton No. 4 / Per Belakang No. 4 (K - 0129 - 4) Kanan', TIMESTAMP '2024-08-16 10:32:44.583', 230000.0, 4.93915749E8, 3.689049E7);
INSERT INTO O_306 VALUES('240531007034', '240531007000', '7016', 290000.0, '2 Pcs Bushing Spring Triton / Bushing Per Belakang Kanan ', TIMESTAMP '2024-08-16 10:32:44.583', 290000.0, 4.94205749E8, 3.660049E7);
INSERT INTO O_306 VALUES('240531007035', '240531007000', '7016', 100000.0, '2 Pcs Klam Spring Triton / Klem Per Belakang (4150 A005)', TIMESTAMP '2024-08-16 10:32:44.583', 100000.0, 4.94305749E8, 3.650049E7);
INSERT INTO O_306 VALUES('240531007036', '240531007000', '7016', 100000.0, '2 Pcs Amril (Obat Skur) u/ Workshop PR 3708 / H 665', TIMESTAMP '2024-08-16 10:32:44.583', 100000.0, 4.94405749E8, 3.640049E7);
INSERT INTO O_306 VALUES('240531007037', '240531007000', '7016', 20000.0, '1 Pcs Center Per Triton (Sunduk Per) u/ L 8039 BX  PR 3708 / H 665', TIMESTAMP '2024-08-16 10:32:44.583', 20000.0, 4.94425749E8, 3.638049E7);
INSERT INTO O_306 VALUES('240531007038', '240531007000', '7016', 195000.0, '1 Pcs Kolor Kut u/ Sounding Solar PR 3709 / H 716 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:32:44.583', 195000.0, 4.94620749E8, 3.618549E7);
INSERT INTO O_306 VALUES('240531007039', '240531007000', '7017', 20000.0, '1 Pcs Nepel Grease u/ Workshop PR 2449 / H 766 (Sumber Rejeki II)', TIMESTAMP '2024-08-16 10:32:44.583', 20000.0, 2.08387458E8, 3.616549E7);
INSERT INTO O_306 VALUES('240531007040', '240531007000', '7023', 270000.0, '20 Liter Pertamax u/ Stok @ Rp13.500 PR 2449 / 766 (Pombensin Ngenyan)', TIMESTAMP '2024-08-16 10:32:44.583', 270000.0, 4181396.0, 3.589549E7);
INSERT INTO O_306 VALUES('240531007041', '240531007000', '7009', 94000.0, 'Bayar Tiki u/ Pengiriman Radio Rig (Melak - Surabaya) SJ 10949', TIMESTAMP '2024-08-16 10:32:44.583', 94000.0, 1812400.0, 3.580149E7);
INSERT INTO O_306 VALUES('240531007042', '240531007000', '7017', 70000.0, '1 Lembar Terpal A3 3 X 4 u/ Workshop PR 2449 / H 766 ', TIMESTAMP '2024-08-16 10:32:44.583', 70000.0, 2.08457458E8, 3.573149E7);
INSERT INTO O_306 VALUES('240531007043', '240531007000', '7017', 100000.0, '5 Kg Paku Biasa 4  u/ Gudang PR 2449 / H 766 (BLW - Barong Tongkok)', TIMESTAMP '2024-08-16 10:32:44.583', 100000.0, 2.08557458E8, 3.563149E7);
INSERT INTO O_306 VALUES('240531007044', '240531007000', '7017', 25000.0, '5 Lembar Amplas Lebar Fuji Star (Amplas Halus) u/ Stok @ Rp5.000', TIMESTAMP '2024-08-16 10:32:44.583', 25000.0, 2.08582458E8, 3.560649E7);
INSERT INTO O_306 VALUES('240531007045', '240531007000', '7017', 40000.0, '1 Pcs Pahat Kayu Strauss 11/2  u/ Gudang  PR 2449 / H 766', TIMESTAMP '2024-08-16 10:32:44.583', 40000.0, 2.08622458E8, 3.556649E7);
INSERT INTO O_306 VALUES('240531007046', '240531007000', '7017', 85000.0, '2 Pcs Ordner Bantex u/ Workshop / Pak Hani (CV Karya Teladan Jempol)', TIMESTAMP '2024-08-16 10:32:44.583', 85000.0, 2.08707458E8, 3.548149E7);
INSERT INTO O_306 VALUES('240531007047', '240531007000', '7017', 15000.0, '1 Pcs Post It 654 u/ Workshop / Pak Hani (CV Karya Teladan Jempol)', TIMESTAMP '2024-08-16 10:32:44.583', 15000.0, 2.08722458E8, 3.546649E7);
INSERT INTO O_306 VALUES('240531007048', '240531007000', '7017', 12500.0, '1 Pcs Post It 656 u/ Workshop / Pak Hani (CV Karya Teladan Jempol)', TIMESTAMP '2024-08-16 10:32:44.583', 12500.0, 2.08734958E8, 3.545399E7);
INSERT INTO O_306 VALUES('240531007049', '240531007000', '7009', 50000.0, 'Penyeberangan PP L 8504 AJ u/ Belanja Sparepart, Ambil ', TIMESTAMP '2024-08-16 10:32:44.583', 50000.0, 1862400.0, 3.540399E7);
INSERT INTO O_306 VALUES('240531007050', '240531007000', '7004', 10000.0, 'Biaya Admin Kartu', TIMESTAMP '2024-08-16 10:32:44.583', 10000.0, 4.08571E7, 3.539399E7);
INSERT INTO O_306 VALUES('240531007051', '240531007000', '7004', 10000.0, 'Biaya Administrasi', TIMESTAMP '2024-08-16 10:32:44.583', 10000.0, 4.08671E7, 3.538399E7);
INSERT INTO O_306 VALUES('240531007052', '240531007000', '7004', 1333.0, 'PPH', TIMESTAMP '2024-08-16 10:32:44.583', 1333.0, 4.0868433E7, 3.5382657E7);
INSERT INTO O_306 VALUES('240531007053', '240531007000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Jemput Karyawan (Yono S.) &', TIMESTAMP '2024-08-16 10:32:44.583', 50000.0, 7.275683E7, 3.5332657E7);
INSERT INTO O_306 VALUES('240531007054', '240531007000', '7008', 100000.0, 'Cuci Mobil L 9502 GH', TIMESTAMP '2024-08-16 10:32:44.583', 100000.0, 1250000.0, 3.5232657E7);
INSERT INTO O_306 VALUES('240531007055', '240531007000', '7001', 3000000.0, 'Tambahan Insentif a/n Bp. Munas (HRD PT DBP) Selama', TIMESTAMP '2024-08-16 10:32:44.583', 3000000.0, 1.069428444E9, 3.2232657E7);
INSERT INTO O_306 VALUES('240531007056', '240531007000', '7004', 1500000.0, 'Patroli Brimob u/ Pengamanan Tambang perd PAM BRIMOB', TIMESTAMP '2024-08-16 10:32:44.583', 1500000.0, 4.2368433E7, 3.0732657E7);
INSERT INTO O_306 VALUES('240531007057', '240531007000', '7004', 900000.0, 'Ongkos Borongan Pemasangan 6 Unit AC Mess KM 18 @ Rp150.000', TIMESTAMP '2024-08-16 10:32:44.583', 900000.0, 4.3268433E7, 2.9832657E7);
INSERT INTO O_306 VALUES('240531007058', '240531007000', '7004', 68000.0, '1 Dus Air Aqua 600 ml u/ Tamu', TIMESTAMP '2024-08-16 10:32:44.583', 68000.0, 4.3336433E7, 2.9764657E7);
INSERT INTO O_306 VALUES('240531007059', '240531007000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (LKH 14 dan LKH 15) Melak - Surabaya', TIMESTAMP '2024-08-16 10:32:44.583', 47000.0, 1909400.0, 2.9717657E7);
INSERT INTO O_306 VALUES('240531007060', '240531007000', '7005', 12000.0, '1 Pcs Stapler DB-10M Mini Debozz u/ Pak Hani (Christo & Christy)', TIMESTAMP '2024-08-16 10:32:44.583', 12000.0, 337000.0, 2.9705657E7);
INSERT INTO O_306 VALUES('240531007061', '240531007000', '7005', 20000.0, '1 Pcs Performator V-Tec No. 30 (Perforator / Pembolong Kertas)', TIMESTAMP '2024-08-16 10:32:44.583', 20000.0, 357000.0, 2.9685657E7);
INSERT INTO O_306 VALUES('240531007062', '240531007000', '7006', 50000.0, 'Penyeberangan PP N 8993AT u/ Belanja Sparepart dll.', TIMESTAMP '2024-08-16 10:32:44.583', 50000.0, 7.280683E7, 2.9635657E7);
INSERT INTO O_306 VALUES('240531007063', '240531007000', '7004', 150000.0, 'Service Laptop (Install Ulang) u/ HRD (Bp. Munas) PR 3704 / H 119', TIMESTAMP '2024-08-16 10:32:44.583', 150000.0, 4.3486433E7, 2.9485657E7);
INSERT INTO O_306 VALUES('240531007064', '240531007000', '7017', 185000.0, '1 Lembar Terpal A3 (Gajah) 5 X 7 u/ Workshop PR 3704 / H 119', TIMESTAMP '2024-08-16 10:32:44.583', 185000.0, 2.08919958E8, 2.9300657E7);
INSERT INTO O_306 VALUES('240531007065', '240531007000', '7017', 250000.0, '1 Roll (20 m) Selang Kompresor Tekiro u/ Workshop PR 3704 / H 119', TIMESTAMP '2024-08-16 10:32:44.583', 250000.0, 2.09169958E8, 2.9050657E7);
INSERT INTO O_306 VALUES('240531007066', '240531007000', '7017', 200000.0, '2 Batang Pipa PVC 2  AW u/ Saluran Air Mess KM 18 PR 3704 / H 119', TIMESTAMP '2024-08-16 10:32:44.583', 200000.0, 2.09369958E8, 2.8850657E7);
INSERT INTO O_306 VALUES('240531007067', '240531007000', '7017', 28000.0, '4 Pcs Elbow PVC 2  u/ Saluran Air Mess KM 18 PR 3704 / H 119', TIMESTAMP '2024-08-16 10:32:44.583', 28000.0, 2.09397958E8, 2.8822657E7);
INSERT INTO O_306 VALUES('240531007068', '240531007000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-08-16 10:32:44.583', 500000.0, 4.3986433E7, 2.8322657E7);
INSERT INTO O_306 VALUES('240531007069', '240531007000', '7017', 25000.0, '1 Pcs Matabor 5  u/ Workshop PR 3706 / H 117 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:32:44.583', 25000.0, 2.09422958E8, 2.8297657E7);
INSERT INTO O_306 VALUES('240531007070', '240531007000', '7017', 20000.0, '2 Pcs Elbow PVC 2  u/ Tangki Induk Solar PR 3706 / H 117 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:32:44.583', 20000.0, 2.09442958E8, 2.8277657E7);
INSERT INTO O_306 VALUES('240531007071', '240531007000', '7017', 800000.0, '2 Pcs Stop Kran Besi 2  u/ Tangki Induk Solar @ Rp400.000', TIMESTAMP '2024-08-16 10:32:44.583', 800000.0, 2.10242958E8, 2.7477657E7);
INSERT INTO O_306 VALUES('240531007072', '240531007000', '7017', 88000.0, '1 Pcs PVC 2  AW u/ Tangki Induk Solar PR 3706 / H 117 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:32:44.583', 88000.0, 2.10330958E8, 2.7389657E7);
INSERT INTO O_306 VALUES('240531007073', '240531007000', '7017', 290000.0, '1 Tabung Oksigen u/ Workshop PR 3706 / H 117 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:32:44.583', 290000.0, 2.10620958E8, 2.7099657E7);
INSERT INTO O_306 VALUES('240531007074', '240531007000', '7017', 180000.0, '3 Pcs Quick Coupler (Kopler) SH 20 u/ Kompresor Workshop', TIMESTAMP '2024-08-16 10:32:44.583', 180000.0, 2.10800958E8, 2.6919657E7);
INSERT INTO O_306 VALUES('240531007075', '240531007000', '7017', 25000.0, '1 Pcs Tee Galvanis / T 1/2  u/ Kompresor Workshop PR 3706 / H 117', TIMESTAMP '2024-08-16 10:32:44.583', 25000.0, 2.10825958E8, 2.6894657E7);
INSERT INTO O_306 VALUES('240531007076', '240531007000', '7017', 20000.0, '1 Pcs Double Nepel 1/2   u/ Kompresor Workshop PR 3706 / H 117', TIMESTAMP '2024-08-16 10:32:44.583', 20000.0, 2.10845958E8, 2.6874657E7);
INSERT INTO O_306 VALUES('240531007077', '240531007000', '7017', 60000.0, '20 Pcs Klem Kawat 3/4 u/ Stok PR 3706 / H 117 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:32:44.583', 60000.0, 2.10905958E8, 2.6814657E7);
INSERT INTO O_306 VALUES('240531007078', '240531007000', '7017', 50000.0, '2 Pcs Cutter (Kater) u/ Workshop PR 3706 / H 117 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:32:44.583', 50000.0, 2.10955958E8, 2.6764657E7);
INSERT INTO O_306 VALUES('240531007079', '240531007000', '7017', 30000.0, '3 Pcs Isi Cutter u/ Workshop PR 3706 / H 117 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:32:44.583', 30000.0, 2.10985958E8, 2.6734657E7);
INSERT INTO O_306 VALUES('240531007080', '240531007000', '7017', 30000.0, '3 Lembar Print Warna u/ HSE (Christo & Christy)', TIMESTAMP '2024-08-16 10:32:44.583', 30000.0, 2.11015958E8, 2.6704657E7);
INSERT INTO O_306 VALUES('240531007081', '240531007000', '7017', 30000.0, '3 Lembar Laminating A3 u/ HSE (Christo & Christy)', TIMESTAMP '2024-08-16 10:32:44.583', 30000.0, 2.11045958E8, 2.6674657E7);
INSERT INTO O_306 VALUES('240531007082', '240531007000', '7017', 21000.0, '3 Pcs Tipe X Pencet u/ Logistik (CV Karya Teladan Jempol)', TIMESTAMP '2024-08-16 10:32:44.583', 21000.0, 2.11066958E8, 2.6653657E7);
INSERT INTO O_306 VALUES('240531007083', '240531007000', '7017', 16000.0, '2 Pcs Tipe X Kertas u/ Logistik (CV Karya Teladan Jempol)', TIMESTAMP '2024-08-16 10:32:44.583', 16000.0, 2.11082958E8, 2.6637657E7);
INSERT INTO O_306 VALUES('240531007084', '240531007000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Belanja Sparepart dll', TIMESTAMP '2024-08-16 10:32:44.583', 50000.0, 7.285683E7, 2.6587657E7);
INSERT INTO O_306 VALUES('240531007085', '240531007000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Sparepart, Kirim', TIMESTAMP '2024-08-16 10:32:44.583', 50000.0, 7.290683E7, 2.6537657E7);
INSERT INTO O_306 VALUES('240531007086', '240531007000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (Melak - Surabaya)', TIMESTAMP '2024-08-16 10:32:44.583', 47000.0, 1956400.0, 2.6490657E7);
INSERT INTO O_306 VALUES('240531007087', '240531007000', '7005', 13000.0, '1 Pcs Snowman Permanent Marking Ink Hitam (Tinta Isi Ulang)', TIMESTAMP '2024-08-16 10:32:44.583', 13000.0, 370000.0, 2.6477657E7);
INSERT INTO O_306 VALUES('240531007088', '240531007000', '7005', 20000.0, '2 Kotak Binder Clip V-Tro 155 u/ Logistik (Christo & Christy)', TIMESTAMP '2024-08-16 10:32:44.583', 20000.0, 390000.0, 2.6457657E7);
INSERT INTO O_306 VALUES('240531007089', '240531007000', '7004', 60000.0, '4 Meter Karpet (Perlak Karpet) u/ Kamar Pak Agus (PJO)', TIMESTAMP '2024-08-16 10:32:44.583', 60000.0, 4.4046433E7, 2.6397657E7);
INSERT INTO O_306 VALUES('240531008001', '240531008000', '7009', 120000.0, 'Bayar Expedisi Cendana + Kurir u/ Ambilan Kobelco (PR 3703 No. 2)', TIMESTAMP '2024-08-16 10:33:50.831', 120000.0, 2076400.0, 2.6277657E7);
INSERT INTO O_306 VALUES('240531008002', '240531008000', '7009', 252000.0, 'Bayar Henicargo Express u/ Ambilan dari Sunway (Sprocket Kobelco -', TIMESTAMP '2024-08-16 10:33:50.831', 252000.0, 2328400.0, 2.6025657E7);
INSERT INTO O_306 VALUES('240531008003', '240531008000', '7022', 2500000.0, 'Dana Sosial u/ Petinggi Muara Batuq Periode Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 2500000.0, 1.05E7, 2.3525657E7);
INSERT INTO O_306 VALUES('240531008004', '240531008000', '7001', 512000.0, 'Piket Genset Penerangan Periode 3 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 512000.0, 1.069940444E9, 2.3013657E7);
INSERT INTO O_306 VALUES('240531008005', '240531008000', '7001', 96000.0, 'Piket Genset Penerangan Periode 1 Mei 2024 - 2 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 96000.0, 1.070036444E9, 2.2917657E7);
INSERT INTO O_306 VALUES('240531008006', '240531008000', '7017', 114000.0, '6 Dus Air Gelas An Najwa u/ Proyek Gudang / Workshop', TIMESTAMP '2024-08-16 10:33:50.831', 114000.0, 2.11196958E8, 2.2803657E7);
INSERT INTO O_306 VALUES('240531008007', '240531008000', '7017', 55000.0, '1 Pcs Pengayak (Ayakan Kecil) u/ Proyek Gudang KM 18 ', TIMESTAMP '2024-08-16 10:33:50.831', 55000.0, 2.11251958E8, 2.2748657E7);
INSERT INTO O_306 VALUES('240531008008', '240531008000', '7006', 150000.0, 'Transport Darat Bandara Juanda - Malang (4 April 2024)', TIMESTAMP '2024-08-16 10:33:50.831', 150000.0, 7.305683E7, 2.2598657E7);
INSERT INTO O_306 VALUES('240531008009', '240531008000', '7006', 170000.0, 'Transport Darat Malang - Kantor 07 - Bandara Juada (1 Mei 2024)', TIMESTAMP '2024-08-16 10:33:50.831', 170000.0, 7.322683E7, 2.2428657E7);
INSERT INTO O_306 VALUES('240531008010', '240531008000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak (1 Mei 2024) Cuti / Kedatangan', TIMESTAMP '2024-08-16 10:33:50.831', 450000.0, 7.367683E7, 2.1978657E7);
INSERT INTO O_306 VALUES('240531008011', '240531008000', '7001', 2050000.0, 'UM Agus Irwanto Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 2050000.0, 1.072086444E9, 1.9928657E7);
INSERT INTO O_306 VALUES('240531008012', '240531008000', '7001', 1260000.0, 'UM Syaifullah Periode 1 Mei 2024 - 9 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1260000.0, 1.073346444E9, 1.8668657E7);
INSERT INTO O_306 VALUES('240531008013', '240531008000', '7001', 1040000.0, 'UM Haqqul Istaflaha Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1040000.0, 1.074386444E9, 1.7628657E7);
INSERT INTO O_306 VALUES('240531008014', '240531008000', '7001', 1100000.0, 'UM Sarjito F. Adam Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1100000.0, 1.075486444E9, 1.6528657E7);
INSERT INTO O_306 VALUES('240531008015', '240531008000', '7001', 675000.0, 'UM Jakaria Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 675000.0, 1.076161444E9, 1.5853657E7);
INSERT INTO O_306 VALUES('240531008016', '240531008000', '7001', 1170000.0, 'UM Didik M. Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1170000.0, 1.077331444E9, 1.4683657E7);
INSERT INTO O_306 VALUES('240531008017', '240531008000', '7001', 1600000.0, 'UM Go Oei Hap Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1600000.0, 1.078931444E9, 1.3083657E7);
INSERT INTO O_306 VALUES('240531008018', '240531008000', '7001', 1800000.0, 'UM Supriyanto Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1800000.0, 1.080731444E9, 1.1283657E7);
INSERT INTO O_306 VALUES('240531008019', '240531008000', '7001', 1500000.0, 'UM Handriyadi Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1500000.0, 1.082231444E9, 9783657.0);
INSERT INTO O_306 VALUES('240531008020', '240531008000', '7001', 1400000.0, 'UM Wijanarko Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1400000.0, 1.083631444E9, 8383657.0);
INSERT INTO O_306 VALUES('240531008021', '240531008000', '7001', 1400000.0, 'UM Sekhan Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1400000.0, 1.085031444E9, 6983657.0);
INSERT INTO O_306 VALUES('240531008022', '240531008000', '7001', 1050000.0, 'UM Maretius Oji Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1050000.0, 1.086081444E9, 5933657.0);
INSERT INTO O_306 VALUES('240531008023', '240531008000', '7001', 1400000.0, 'UM Anna Qodri Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1400000.0, 1.087481444E9, 4533657.0);
INSERT INTO O_306 VALUES('240531008024', '240531008000', '7001', 165000.0, 'UM Raju Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 165000.0, 1.087646444E9, 4368657.0);
INSERT INTO O_306 VALUES('240531008025', '240531008000', '7001', 1390000.0, 'UM Yono S. Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1390000.0, 1.089036444E9, 2978657.0);
INSERT INTO O_306 VALUES('240531008026', '240531008000', '7001', 1170000.0, 'UM Andri Syamsul Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.831', 1170000.0, 1.090206444E9, 1808657.0);
INSERT INTO O_306 VALUES('240531008027', '240531008000', '7001', 1500000.0, 'UM Rinaldhie G. Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.847', 1500000.0, 1.091706444E9, 308657.0);
INSERT INTO O_306 VALUES('240531008028', '240531008000', '7001', 1500000.0, 'UM M. Hafizhni Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.847', 1500000.0, 1.093206444E9, -1191343.0);
INSERT INTO O_306 VALUES('240531008029', '240531008000', '7001', 1400000.0, 'UM Suradi Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.847', 1400000.0, 1.094606444E9, -2591343.0);
INSERT INTO O_306 VALUES('240531008030', '240531008000', '7001', 550000.0, 'UM Fajar N. Hidayat Periode 1 Mei 2024 - 10 Mei 2024', TIMESTAMP '2024-08-16 10:33:50.847', 550000.0, 1.095156444E9, -3141343.0);
INSERT INTO O_306 VALUES('240531008031', '240531008000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Mei 2024', TIMESTAMP '2024-08-16 10:33:50.847', 500000.0, 1.095656444E9, -3641343.0);
INSERT INTO O_306 VALUES('240531008032', '240531008000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Mei 2024', TIMESTAMP '2024-08-16 10:33:50.847', 500000.0, 1.096156444E9, -4141343.0);
INSERT INTO O_306 VALUES('240531008033', '240531008000', '7017', 75000.0, '3 Pcs Kaca Mata Putih (Safety) u/ Workshop @ Rp25.000 ', TIMESTAMP '2024-08-16 10:33:50.847', 75000.0, 2.11326958E8, -4216343.0);
INSERT INTO O_306 VALUES('240531008034', '240531008000', '7016', 30000.0, '2 Pcs Rumah Sekring Gepeng u/ L 8397 VB @ Rp15.000', TIMESTAMP '2024-08-16 10:33:50.847', 30000.0, 4.94650749E8, -4246343.0);
INSERT INTO O_306 VALUES('240531008035', '240531008000', '7016', 40000.0, '1 Pcs Kit Body u/ Manhaul 01 PR 3710 / H 765 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:33:50.847', 40000.0, 4.94690749E8, -4286343.0);
INSERT INTO O_306 VALUES('240531008036', '240531008000', '7016', 132000.0, '1 Dus Air Aki u/ Stok  PR 3710 / H 765 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:33:50.847', 132000.0, 4.94822749E8, -4418343.0);
INSERT INTO O_306 VALUES('240531008037', '240531008000', '7016', 60000.0, '20 Set Sekun Kabel Bulat u/ Stok @ Rp3.000  PR 3710 / H 765', TIMESTAMP '2024-08-16 10:33:50.847', 60000.0, 4.94882749E8, -4478343.0);
INSERT INTO O_306 VALUES('240531008038', '240531008000', '7016', 2000000.0, 'Bubut + Tambal Daging AS Trunion (Ex TR 09) Kanan - Kiri', TIMESTAMP '2024-08-16 10:33:50.847', 2000000.0, 4.96882749E8, -6478343.0);
INSERT INTO O_306 VALUES('240531008039', '240531008000', '7016', 190000.0, '2 Pcs O/F 14B (Filter Oli ARPI CDL00 - 17000) u/ Genset Rino', TIMESTAMP '2024-08-16 10:33:50.847', 190000.0, 4.97072749E8, -6668343.0);
INSERT INTO O_306 VALUES('240531008040', '240531008000', '7016', 20000.0, '1 Meter Selang Wiper u/ TR 01  PR 3712 / H 117 (Busur Jaya Mobil)', TIMESTAMP '2024-08-16 10:33:50.847', 20000.0, 4.97092749E8, -6688343.0);
INSERT INTO O_306 VALUES('240531008041', '240531008000', '7016', 600000.0, '1 Set Magnet Clutch AC u/ L 8397 VB  PR 3715 - H 771', TIMESTAMP '2024-08-16 10:33:50.847', 600000.0, 4.97692749E8, -7288343.0);
INSERT INTO O_306 VALUES('240531008042', '240531008000', '7009', 50000.0, 'Bayar Cendana u/ Pengiriman Magnet Clutch AC u/ L 8397 VB', TIMESTAMP '2024-08-16 10:33:50.847', 50000.0, 2378400.0, -7338343.0);
INSERT INTO O_306 VALUES('240531008043', '240531008000', '7016', 120000.0, '2 Pcs Van Belt AC A41 u/ Stok @ Rp60.000  PR 3715 / H 771 ', TIMESTAMP '2024-08-16 10:33:50.847', 120000.0, 4.97812749E8, -7458343.0);
INSERT INTO O_306 VALUES('240531008044', '240531008000', '7016', 40000.0, '20 Pcs Sekring Gepeng Kecil 10A u/ Stok @ Rp2.000  PR 3715 / H 771', TIMESTAMP '2024-08-16 10:33:50.847', 40000.0, 4.97852749E8, -7498343.0);
INSERT INTO O_306 VALUES('240531008045', '240531008000', '7016', 260000.0, '4 Pcs Lampu Halogen H4 24V u/ Stok @ Ro65.000  PR 3715 / H 771', TIMESTAMP '2024-08-16 10:33:50.847', 260000.0, 4.98112749E8, -7758343.0);
INSERT INTO O_306 VALUES('240531008046', '240531008000', '7016', 200000.0, '4 Pcs Relay 24V K5 u/ Stok @ Rp50.000  PR 3715 / H 771', TIMESTAMP '2024-08-16 10:33:50.847', 200000.0, 4.98312749E8, -7958343.0);
INSERT INTO O_306 VALUES('240531008047', '240531008000', '7016', 150000.0, '2 Pcs Pulley AC KF 88440 - OB050 u/ Stok PR 3715 / H 771', TIMESTAMP '2024-08-16 10:33:50.847', 150000.0, 4.98462749E8, -8108343.0);
INSERT INTO O_306 VALUES('240531008048', '240531008000', '7016', 550000.0, '1 Set Shock RR (Shock Belakang) KYB PS / HT u/ Manhaul 01', TIMESTAMP '2024-08-16 10:33:50.847', 550000.0, 4.99012749E8, -8658343.0);
INSERT INTO O_306 VALUES('240531008049', '240531008000', '7016', 80000.0, '1 Pcs Seal Crankshaft Depan u/ L 8039 BX  PR 3715 / H 771', TIMESTAMP '2024-08-16 10:33:50.847', 80000.0, 4.99092749E8, -8738343.0);
INSERT INTO O_306 VALUES('240531008050', '240531008000', '7016', 600000.0, '1 Set (2 Pcs) Shock FRT HT (Shock Depan) L/R u/ Manhaul 01', TIMESTAMP '2024-08-16 10:33:50.847', 600000.0, 4.99692749E8, -9338343.0);
INSERT INTO O_306 VALUES('240531008051', '240531008000', '7016', 120000.0, '1 Dus (12 Botol) Air Aki Tambah u/ Stok  PR 3717 / H 899', TIMESTAMP '2024-08-16 10:33:50.847', 120000.0, 4.99812749E8, -9458343.0);
INSERT INTO O_306 VALUES('240531008052', '240531008000', '7005', 50000.0, '5 Lembar Print Warna u/ K3 @ Rp10.000  (Christo & Christy)', TIMESTAMP '2024-08-16 10:33:50.847', 50000.0, 440000.0, -9508343.0);
INSERT INTO O_306 VALUES('240531008053', '240531008000', '7005', 50000.0, '5 Lembar Laminating A3 u/ K3 @ Rp10.000  (Christo & Christy)', TIMESTAMP '2024-08-16 10:33:50.847', 50000.0, 490000.0, -9558343.0);
INSERT INTO O_306 VALUES('240531008054', '240531008000', '7005', 315000.0, '3 Pcs Tinta Printer Epson 003 Black 70 ML u/ Logistik dan HRGA', TIMESTAMP '2024-08-16 10:33:50.847', 315000.0, 805000.0, -9873343.0);
INSERT INTO O_306 VALUES('240531008055', '240531008000', '7009', 63000.0, 'Bayar JNE u/ Pengiriman Dokumen (Laporan Logistik Maret 2024)', TIMESTAMP '2024-08-16 10:33:50.847', 63000.0, 2441400.0, -9936343.0);
INSERT INTO O_306 VALUES('240531008056', '240531008000', '7004', 75000.0, '3 Pcs Sikat Lantai u/ Kamar Mandi Mess KM 18 @ Rp25.000', TIMESTAMP '2024-08-16 10:33:50.847', 75000.0, 4.4121433E7, -1.0011343E7);
INSERT INTO O_306 VALUES('240531008057', '240531008000', '7004', 45000.0, '3 Pcs Sikat WC u/ Kamar Mandi Mess KM 18 @ Rp15.000', TIMESTAMP '2024-08-16 10:33:50.847', 45000.0, 4.4166433E7, -1.0056343E7);
INSERT INTO O_306 VALUES('240531008058', '240531008000', '7004', 50000.0, '2 Pcs Sapu Lidi u/ Mess KM 18 @ Rp25.000 (Toko Dewi Lancar)', TIMESTAMP '2024-08-16 10:33:50.847', 50000.0, 4.4216433E7, -1.0106343E7);
INSERT INTO O_306 VALUES('240531008059', '240531008000', '7009', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dll', TIMESTAMP '2024-08-16 10:33:50.847', 50000.0, 2491400.0, -1.0156343E7);
INSERT INTO O_306 VALUES('240531008060', '240531008000', '7004', 70000.0, '2 Botol Kecil Betadine u/ P3K @ Rp35.000  PR 3710 / H 765 ', TIMESTAMP '2024-08-16 10:33:50.847', 70000.0, 4.4286433E7, -1.0226343E7);
INSERT INTO O_306 VALUES('240531008061', '240531008000', '7004', 40000.0, '1 Botol Minyak Tawon u/ P3K PR 3710 / H 765 (Apotek Angel Farma)', TIMESTAMP '2024-08-16 10:33:50.847', 40000.0, 4.4326433E7, -1.0266343E7);
INSERT INTO O_306 VALUES('240531008062', '240531008000', '7004', 35000.0, '3 Strip (Tablet) Promag u/ P3K  PR 3710 / H 765 (Apotek Angel Farma)', TIMESTAMP '2024-08-16 10:33:50.847', 35000.0, 4.4361433E7, -1.0301343E7);
INSERT INTO O_306 VALUES('240531008063', '240531008000', '7004', 30000.0, '3 Strip (Tablet) Diapet u/ P3K @ Rp10.000  PR 3710 / H 765', TIMESTAMP '2024-08-16 10:33:50.847', 30000.0, 4.4391433E7, -1.0331343E7);
INSERT INTO O_306 VALUES('240531008064', '240531008000', '7004', 21000.0, '3 Strip (Tablet) Bodrex u/ P3K @ Rp7.000  PR 3710 / H 765', TIMESTAMP '2024-08-16 10:33:50.847', 21000.0, 4.4412433E7, -1.0352343E7);
INSERT INTO O_306 VALUES('240531008065', '240531008000', '7004', 12000.0, '3 Strip (Tablet) Mixagrip Flu & Batuk u/ P3K @ Rp4.000  PR 3710 / H 765', TIMESTAMP '2024-08-16 10:33:50.847', 12000.0, 4.4424433E7, -1.0364343E7);
INSERT INTO O_306 VALUES('240531008066', '240531008000', '7004', 9000.0, '3 Strip Sanmol u/ P3K @ Rp3.000 PR 3710 / H 765  (Apotek Angel Farma)', TIMESTAMP '2024-08-16 10:33:50.847', 9000.0, 4.4433433E7, -1.0373343E7);
INSERT INTO O_306 VALUES('240531008067', '240531008000', '7004', 15000.0, '3 Pcs Plester u/ P3K @ Rp5.000 PR 3710 / H 765 (Apotek Angel Farma)', TIMESTAMP '2024-08-16 10:33:50.847', 15000.0, 4.4448433E7, -1.0388343E7);
INSERT INTO O_306 VALUES('240531008068', '240531008000', '7004', 90000.0, '3 Pcs Plester Putih u/ P3K @ Rp30.000  PR 3710 / H 765', TIMESTAMP '2024-08-16 10:33:50.847', 90000.0, 4.4538433E7, -1.0478343E7);
INSERT INTO O_306 VALUES('240531008069', '240531008000', '7004', 12000.0, '1 Kotak Kassa Perban u/ P3K  PR 3710 / H 765 (Apotek Angel Farma)', TIMESTAMP '2024-08-16 10:33:50.847', 12000.0, 4.4550433E7, -1.0490343E7);
INSERT INTO O_306 VALUES('240531008070', '240531008000', '7004', 53000.0, '1 Box Antangin u/ P3K  PR 3710 / H 765 (Apotek Angel Farma)', TIMESTAMP '2024-08-16 10:33:50.847', 53000.0, 4.4603433E7, -1.0543343E7);
INSERT INTO O_306 VALUES('240531008071', '240531008000', '7017', 162000.0, '9 Pcs Lem Dextone (Lem Besi) u/ Stok @ Rp18.000  PR 3710 / H 765 ', TIMESTAMP '2024-08-16 10:33:50.847', 162000.0, 2.11488958E8, -1.0705343E7);
INSERT INTO O_306 VALUES('240531008072', '240531008000', '7017', 40000.0, '4 Pcs Lem Dextone Cair (Lem Korea) u/ Stok @ Rp10.000', TIMESTAMP '2024-08-16 10:33:50.847', 40000.0, 2.11528958E8, -1.0745343E7);
INSERT INTO O_306 VALUES('240531008073', '240531008000', '7017', 90000.0, '5 Pcs Kran 1/2  u/ Stok @ Rp18.000  PR 3710 / H 765 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:33:50.847', 90000.0, 2.11618958E8, -1.0835343E7);
INSERT INTO O_306 VALUES('240531008074', '240531008000', '7017', 30000.0, '6 Lembar Amplas Lbr FujiStar 2000cc u/ Stok @ Rp5.000  PR 3710 / H 765', TIMESTAMP '2024-08-16 10:33:50.847', 30000.0, 2.11648958E8, -1.0865343E7);
INSERT INTO O_306 VALUES('240531008075', '240531008000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart, Tarik Tunai', TIMESTAMP '2024-08-16 10:33:50.847', 50000.0, 7.372683E7, -1.0915343E7);
INSERT INTO O_306 VALUES('240531008076', '240531008000', '7004', 54000.0, '3 Es Jos Rp15.000 + 6 Roti Rp18.000 + Aqua Kecil Rp6.000 +', TIMESTAMP '2024-08-16 10:33:50.847', 54000.0, 4.4657433E7, -1.0969343E7);
INSERT INTO O_306 VALUES('240531008077', '240531008000', '7004', 60000.0, '1 Botol Minyak Kayu Putih Cap Lang u/ P3K (Apotek Angel Farma)', TIMESTAMP '2024-08-16 10:33:50.847', 60000.0, 4.4717433E7, -1.1029343E7);
INSERT INTO O_306 VALUES('240531008078', '240531008000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (LKH 16 + Dokumen dari PT. DBP ', TIMESTAMP '2024-08-16 10:33:50.847', 47000.0, 2538400.0, -1.1076343E7);
INSERT INTO O_306 VALUES('240531008079', '240531008000', '7017', 290000.0, '1 Tabung Oksigen u/ Workshop PR 3712 / H 117 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:33:50.847', 290000.0, 2.11938958E8, -1.1366343E7);
INSERT INTO O_306 VALUES('240531008080', '240531008000', '7017', 330000.0, '2 Pcs Alarm Mundur u/ Stok@ Rp165.000  PR 3712 / H 117', TIMESTAMP '2024-08-16 10:33:50.847', 330000.0, 2.12268958E8, -1.1696343E7);
INSERT INTO O_306 VALUES('240531008081', '240531008000', '7017', 170000.0, '2 Kaleng Cat Avian Hitam u/ Cat Rak Workshop @ Rp85.000 ', TIMESTAMP '2024-08-16 10:33:50.847', 170000.0, 2.12438958E8, -1.1866343E7);
INSERT INTO O_306 VALUES('240531008082', '240531008000', '7017', 35000.0, '1 Kaleng Thinner u/ Cat Rak Workshop PR 3712 / H 117 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:33:50.847', 35000.0, 2.12473958E8, -1.1901343E7);
INSERT INTO O_306 VALUES('240531008083', '240531008000', '7017', 10000.0, '1 Pcs Kuas 2  u/ Cat Rak Workshop PR 3712 / H 117 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:33:50.847', 10000.0, 2.12483958E8, -1.1911343E7);
INSERT INTO O_306 VALUES('240531008084', '240531008000', '7017', 85000.0, '1 Pcs Pompa Tangan u/ Workshop PR 3712 / H 117 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:33:50.847', 85000.0, 2.12568958E8, -1.1996343E7);
INSERT INTO O_306 VALUES('240531008085', '240531008000', '7017', 65000.0, '1 Pcs Ban Luar Artco u/ Angkong PR 3712 / H 117 (BLW - Barong Tongkok)', TIMESTAMP '2024-08-16 10:33:50.847', 65000.0, 2.12633958E8, -1.2061343E7);
INSERT INTO O_306 VALUES('240531008086', '240531008000', '7017', 35000.0, '1 Pcs Ban Dalam Swallow u/ Angkong  PR 3712 / H 117', TIMESTAMP '2024-08-16 10:33:50.847', 35000.0, 2.12668958E8, -1.2096343E7);
INSERT INTO O_306 VALUES('240531008087', '240531008000', '7017', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-08-16 10:33:50.847', 500000.0, 2.13168958E8, -1.2596343E7);
INSERT INTO O_306 VALUES('240531008088', '240531008000', '7017', 17000.0, '1 Lusin (7 Merah dan 5 Hitam) Spidol Kecil Standard Marker u/', TIMESTAMP '2024-08-16 10:33:50.847', 17000.0, 2.13185958E8, -1.2613343E7);
INSERT INTO O_306 VALUES('240531009001', '240531009000', '7017', 75000.0, '1 Lembar Spanduk 1 X 1,5 M u/ HSE (SANAD - Sablon & Percetakan)', TIMESTAMP '2024-08-16 10:34:47.339', 75000.0, 2.13260958E8, -1.2688343E7);
INSERT INTO O_306 VALUES('240531009002', '240531009000', '7008', 80000.0, 'Cuci Mobil N 8993 AT', TIMESTAMP '2024-08-16 10:34:47.339', 80000.0, 1330000.0, -1.2768343E7);
INSERT INTO O_306 VALUES('240531009003', '240531009000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Belanja Sparepart dan Jemput', TIMESTAMP '2024-08-16 10:34:47.339', 50000.0, 7.377683E7, -1.2818343E7);
INSERT INTO O_306 VALUES('240531009004', '240531009000', '7001', 240000.0, 'Tambahan Uang Makan (Belanja Sparepart) Per 1 Mei 2024  - 16 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 240000.0, 1.096396444E9, -1.3058343E7);
INSERT INTO O_306 VALUES('240531009005', '240531009000', '7017', 175000.0, '70 Pcs Sekring Gepeng Kecil (30 Pcs 10A, 20 Pcs 15A, 20 Pcs 20A)', TIMESTAMP '2024-08-16 10:34:47.339', 175000.0, 2.13435958E8, -1.3233343E7);
INSERT INTO O_306 VALUES('240531009006', '240531009000', '7017', 140000.0, '1 Set (4 Pcs) Ban Gerobak u/ Workshop  PR 3715 / H 771 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:34:47.339', 140000.0, 2.13575958E8, -1.3373343E7);
INSERT INTO O_306 VALUES('240531009007', '240531009000', '7017', 405000.0, '3 Pcs Lampu Sorot LED 50 Watt u/ Workshop Stockpile @ Rp135.000', TIMESTAMP '2024-08-16 10:34:47.339', 405000.0, 2.13980958E8, -1.3778343E7);
INSERT INTO O_306 VALUES('240531009008', '240531009000', '7017', 150000.0, '1 Pcs Stang Las 800A u/ Workshop PR 3717 / H 899 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:34:47.339', 150000.0, 2.14130958E8, -1.3928343E7);
INSERT INTO O_306 VALUES('240531009009', '240531009000', '7004', 12000.0, '2 Strip Obat - obatan (Mefenamic Acid) u/ P3K (Apotek Angel Farma)', TIMESTAMP '2024-08-16 10:34:47.339', 12000.0, 4.4729433E7, -1.3940343E7);
INSERT INTO O_306 VALUES('240531009010', '240531009000', '7006', 150000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Sparepart dan Tarik ', TIMESTAMP '2024-08-16 10:34:47.339', 150000.0, 7.392683E7, -1.4090343E7);
INSERT INTO O_306 VALUES('240531009011', '240531009000', '7022', 1500000.0, 'Dana Sosial u/ Petinggi / Pengurus Muyub Ilir Periode Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1500000.0, 1.2E7, -1.5590343E7);
INSERT INTO O_306 VALUES('240531009012', '240531009000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-08-16 10:34:47.339', 500000.0, 4.5229433E7, -1.6090343E7);
INSERT INTO O_306 VALUES('240531009013', '240531009000', '7001', 640000.0, 'Piket Genset Penerangan Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 640000.0, 1.097036444E9, -1.6730343E7);
INSERT INTO O_306 VALUES('240531009014', '240531009000', '7017', 50000.0, '10 Pcs Sealtip u/ Stok @ Rp5.000  PR 3710 / H 765 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:34:47.339', 50000.0, 2.14180958E8, -1.6780343E7);
INSERT INTO O_306 VALUES('240531009015', '240531009000', '7017', 420000.0, '3 Batang Besi Siku 3 X 3 X 6 M u/ Rak Workshop @ Rp140.000', TIMESTAMP '2024-08-16 10:34:47.339', 420000.0, 2.14600958E8, -1.7200343E7);
INSERT INTO O_306 VALUES('240531009016', '240531009000', '7017', 1875000.0, '5 Batang Besi Siku 5 X 5 X 6 M u/ Rak Workshop @ Rp375.000', TIMESTAMP '2024-08-16 10:34:47.339', 1875000.0, 2.16475958E8, -1.9075343E7);
INSERT INTO O_306 VALUES('240531009017', '240531009000', '7017', 15000.0, '1 Pcs Kikir u/ Workshop  PR 3710 / H 765 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:34:47.339', 15000.0, 2.16490958E8, -1.9090343E7);
INSERT INTO O_306 VALUES('240531009018', '240531009000', '7017', 200000.0, '10 Dus Air Gelas An Najwa u/ Proyek Gudang @ Rp20.000', TIMESTAMP '2024-08-16 10:34:47.339', 200000.0, 2.16690958E8, -1.9290343E7);
INSERT INTO O_306 VALUES('240531009019', '240531009000', '7017', 1700000.0, '20 Kaleng (15 Hijau / 2 Kuning / 3 Cokelat) Cat Avian u/ Cat Lantai', TIMESTAMP '2024-08-16 10:34:47.339', 1700000.0, 2.18390958E8, -2.0990343E7);
INSERT INTO O_306 VALUES('240531009020', '240531009000', '7017', 120000.0, '4 Pcs Kuas 5  u/ Cat Lantai Gudang KM 18  @ Rp30.000', TIMESTAMP '2024-08-16 10:34:47.339', 120000.0, 2.18510958E8, -2.1110343E7);
INSERT INTO O_306 VALUES('240531009021', '240531009000', '7017', 360000.0, '3 Kaleng Thinner (3 X 5 Liter) u/ Cat Lantai Gudang KM 18', TIMESTAMP '2024-08-16 10:34:47.339', 360000.0, 2.18870958E8, -2.1470343E7);
INSERT INTO O_306 VALUES('240531009022', '240531009000', '7017', 60000.0, '6 Bungkus Slai Olai u/ Konsumsi Tukang Proyek Gudang KM 18', TIMESTAMP '2024-08-16 10:34:47.339', 60000.0, 2.18930958E8, -2.1530343E7);
INSERT INTO O_306 VALUES('240531009023', '240531009000', '7017', 200000.0, '10 Kg Paku u/ Rak Gudang PR 3715 / H 771 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:34:47.339', 200000.0, 2.19130958E8, -2.1730343E7);
INSERT INTO O_306 VALUES('240531009024', '240531009000', '7017', 240000.0, '2 Pcs Lampu LED 30 Watt u/ Workshop Stockpile @ Rp120.000', TIMESTAMP '2024-08-16 10:34:47.339', 240000.0, 2.19370958E8, -2.1970343E7);
INSERT INTO O_306 VALUES('240531009025', '240531009000', '7006', 450000.0, 'Perjalanan Darat Melak - Balikpapan (25 April 2024) untuk', TIMESTAMP '2024-08-16 10:34:47.339', 450000.0, 7.437683E7, -2.2420343E7);
INSERT INTO O_306 VALUES('240531009026', '240531009000', '7006', 450000.0, 'Perjalanan Darat Balikpapan - Melak (15 Mei 2024) untuk', TIMESTAMP '2024-08-16 10:34:47.339', 450000.0, 7.482683E7, -2.2870343E7);
INSERT INTO O_306 VALUES('240531009027', '240531009000', '7001', 970000.0, 'UM, Tunj Keahlian, dan Laundry Periode 11 Mei - 17 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 970000.0, 1.098006444E9, -2.3840343E7);
INSERT INTO O_306 VALUES('240531009028', '240531009000', '7001', 1900000.0, 'UM a/n M. Agus Irwanto Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1900000.0, 1.099906444E9, -2.5740343E7);
INSERT INTO O_306 VALUES('240531009029', '240531009000', '7001', 990000.0, 'UM a/n Haqul Istaflakha Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 990000.0, 1.100896444E9, -2.6730343E7);
INSERT INTO O_306 VALUES('240531009030', '240531009000', '7001', 1100000.0, 'UM a/n Sarjito F. Adam Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1100000.0, 1.101996444E9, -2.7830343E7);
INSERT INTO O_306 VALUES('240531009031', '240531009000', '7001', 525000.0, 'UM a/n Jakaria Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 525000.0, 1.102521444E9, -2.8355343E7);
INSERT INTO O_306 VALUES('240531009032', '240531009000', '7001', 1170000.0, 'UM a/n Didik M. Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1170000.0, 1.103691444E9, -2.9525343E7);
INSERT INTO O_306 VALUES('240531009033', '240531009000', '7001', 1400000.0, 'UM a/n Go Oei Hap Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1400000.0, 1.105091444E9, -3.0925343E7);
INSERT INTO O_306 VALUES('240531009034', '240531009000', '7001', 890000.0, 'UM a/n Syamsudin N. Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 890000.0, 1.105981444E9, -3.1815343E7);
INSERT INTO O_306 VALUES('240531009035', '240531009000', '7001', 1800000.0, 'UM a/n Supriyanto Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1800000.0, 1.107781444E9, -3.3615343E7);
INSERT INTO O_306 VALUES('240531009036', '240531009000', '7001', 1500000.0, 'UM a/n Handriyadi Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1500000.0, 1.109281444E9, -3.5115343E7);
INSERT INTO O_306 VALUES('240531009037', '240531009000', '7001', 1400000.0, 'UM a/n Wijanarko Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1400000.0, 1.110681444E9, -3.6515343E7);
INSERT INTO O_306 VALUES('240531009038', '240531009000', '7001', 1400000.0, 'UM a/n Sekhan Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1400000.0, 1.112081444E9, -3.7915343E7);
INSERT INTO O_306 VALUES('240531009039', '240531009000', '7001', 525000.0, 'UM a/n Maretius Oji Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 525000.0, 1.112606444E9, -3.8440343E7);
INSERT INTO O_306 VALUES('240531009040', '240531009000', '7001', 1400000.0, 'UM a/n Yono Setyawan Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1400000.0, 1.114006444E9, -3.9840343E7);
INSERT INTO O_306 VALUES('240531009041', '240531009000', '7001', 1170000.0, 'UM a/n Andri Syamsul Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1170000.0, 1.115176444E9, -4.1010343E7);
INSERT INTO O_306 VALUES('240531009042', '240531009000', '7001', 1500000.0, 'UM a/n Rinaldhie G. Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1500000.0, 1.116676444E9, -4.2510343E7);
INSERT INTO O_306 VALUES('240531009043', '240531009000', '7001', 1500000.0, 'UM a/n M. Hafizhni Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1500000.0, 1.118176444E9, -4.4010343E7);
INSERT INTO O_306 VALUES('240531009044', '240531009000', '7001', 1400000.0, 'UM a/n Suradi Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1400000.0, 1.119576444E9, -4.5410343E7);
INSERT INTO O_306 VALUES('240531009045', '240531009000', '7001', 550000.0, 'UM a/n Fajar N. Hidayat Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 550000.0, 1.120126444E9, -4.5960343E7);
INSERT INTO O_306 VALUES('240531009046', '240531009000', '7001', 1500000.0, 'Kasbon Potong UM Periode 11 Mei 2024 - 20 Mei 2024', TIMESTAMP '2024-08-16 10:34:47.339', 1500000.0, 1.121626444E9, -4.7460343E7);
INSERT INTO O_306 VALUES('240531009047', '240531009000', '7016', 3750000.0, 'Cabut Baut Sprocket (30 Pcs) dan Tap Buat Drat Baru u/ SK 200 - 77', TIMESTAMP '2024-08-16 10:34:47.339', 3750000.0, 5.03562749E8, -5.1210343E7);
INSERT INTO O_306 VALUES('240531009048', '240531009000', '7016', 40000.0, '2 Pcs Switch Starter (Tombol Klakson) u/ L 8039 BX dan Stok', TIMESTAMP '2024-08-16 10:34:47.339', 40000.0, 5.03602749E8, -5.1250343E7);
INSERT INTO O_306 VALUES('240531009049', '240531009000', '7016', 90000.0, '2 Pcs Baut + Mur Roda Hilux u/ Stok PR 3726 / H 877 (CV Eka Jaya Motor)', TIMESTAMP '2024-08-16 10:34:47.339', 90000.0, 5.03692749E8, -5.1340343E7);
INSERT INTO O_306 VALUES('240531009050', '240531009000', '7016', 40000.0, '2 Pcs Socket Lampu u/ N 8993 AT dan Stok  PR 3726 / H 877', TIMESTAMP '2024-08-16 10:34:47.354', 40000.0, 5.03732749E8, -5.1380343E7);
INSERT INTO O_306 VALUES('240531009051', '240531009000', '7016', 75000.0, '1 Pcs Clm Assy Hilux (Repair Kit Kopling Atas Hilux) u/ Stok', TIMESTAMP '2024-08-16 10:34:47.354', 75000.0, 5.03807749E8, -5.1455343E7);
INSERT INTO O_306 VALUES('240531009052', '240531009000', '7016', 250000.0, '1 Set Kampas Rem Hilux Fr (Kampas Rem Depan) 04465 - OK020', TIMESTAMP '2024-08-16 10:34:47.354', 250000.0, 5.04057749E8, -5.1705343E7);
INSERT INTO O_306 VALUES('240531009053', '240531009000', '7016', 135000.0, '3 Set Baut + Mur Roda Hilux u/ Stok PR 3727 / H 811 (Busur Jaya Mobil)', TIMESTAMP '2024-08-16 10:34:47.354', 135000.0, 5.04192749E8, -5.1840343E7);
INSERT INTO O_306 VALUES('240531009054', '240531009000', '7016', 100000.0, '2 Pcs C/O Kit 5K (Repair Kit Piston Kopling Bawah) 104313 - 22020', TIMESTAMP '2024-08-16 10:34:47.354', 100000.0, 5.04292749E8, -5.1940343E7);
INSERT INTO O_306 VALUES('240531009055', '240531009000', '7016', 100000.0, '10 Pcs Nepel Grease Lurus K12 u/ Stok  PR 3727 / H 811', TIMESTAMP '2024-08-16 10:34:47.354', 100000.0, 5.04392749E8, -5.2040343E7);
INSERT INTO O_306 VALUES('240531009056', '240531009000', '7016', 150000.0, '1 Set Sil Caliper Bawah u/ N 9811 EE PR 3727 / H 811 (Busur Jaya Mobil)', TIMESTAMP '2024-08-16 10:34:47.354', 150000.0, 5.04542749E8, -5.2190343E7);
INSERT INTO O_306 VALUES('240531009057', '240531009000', '7016', 150000.0, '3 Pcs Timah Batangan u/ Stok  PR 3727 / H 811 (Busur Jaya Mobil)', TIMESTAMP '2024-08-16 10:34:47.354', 150000.0, 5.04692749E8, -5.2340343E7);
INSERT INTO O_306 VALUES('240531009058', '240531009000', '7016', 185000.0, '1 Set Lever Kit Kanan (09435 - OK143) u/ N 9811 EE ', TIMESTAMP '2024-08-16 10:34:47.354', 185000.0, 5.04877749E8, -5.2525343E7);
INSERT INTO O_306 VALUES('240531009059', '240531009000', '7016', 120000.0, '1 Set (2 Pcs) Karet Wiper 20  u/ L 8397 VB  PR 3728 / H 199', TIMESTAMP '2024-08-16 10:34:47.354', 120000.0, 5.04997749E8, -5.2645343E7);
INSERT INTO O_306 VALUES('240531009060', '240531009000', '7016', 50000.0, '1 Pcs C/O Kit (Repair Kopling Bawah MD997786) u/ Stok (Triton) ', TIMESTAMP '2024-08-16 10:34:47.354', 50000.0, 5.05047749E8, -5.2695343E7);
INSERT INTO O_306 VALUES('240531009061', '240531009000', '7016', 75000.0, '1 Pcs C/N Kit (Repair Kit Kopling Atas 2346 A018) u/ Stok (Triton)', TIMESTAMP '2024-08-16 10:34:47.354', 75000.0, 5.05122749E8, -5.2770343E7);
INSERT INTO O_306 VALUES('240531009062', '240531009000', '7016', 60000.0, '2 Set Pin Kit Shoe (Paku Kampas) u/ N 9811 EE  PR 3728 / H 199', TIMESTAMP '2024-08-16 10:34:47.354', 60000.0, 5.05182749E8, -5.2830343E7);
INSERT INTO O_306 VALUES('240531009063', '240531009000', '7016', 60000.0, '4 Pcs Nepel Oli Rem (Nepel Minyak Rem) u/ Stok + N 9811 EE', TIMESTAMP '2024-08-16 10:34:47.354', 60000.0, 5.05242749E8, -5.2890343E7);
INSERT INTO O_306 VALUES('240531009064', '240531009000', '7016', 208500.0, '1 Pcs Kabel Spiral Klakson u/ L 9502 GH  ', TIMESTAMP '2024-08-16 10:34:47.354', 208500.0, 5.05451249E8, -5.3098843E7);
INSERT INTO O_306 VALUES('240531009065', '240531009000', '7016', 57000.0, '5,8 Meter Selang Kabel (Pengaman Kabel Kecil) u/ TR Hauling', TIMESTAMP '2024-08-16 10:34:47.354', 57000.0, 5.05508249E8, -5.3155843E7);
INSERT INTO O_306 VALUES('240531009066', '240531009000', '7016', 100000.0, '5 Meter Pembungkus Kabel (Pengaman Kabel Besar) u/ TR Hauling', TIMESTAMP '2024-08-16 10:34:47.354', 100000.0, 5.05608249E8, -5.3255843E7);
INSERT INTO O_306 VALUES('240531009067', '240531009000', '7016', 75000.0, '1 Pcs Buat Kunci Serep Hino (Duplikat Kunci) u/ WT 01', TIMESTAMP '2024-08-16 10:34:47.354', 75000.0, 5.05683249E8, -5.3330843E7);
INSERT INTO O_306 VALUES('240531009068', '240531009000', '7016', 75000.0, '1 Pcs Seal Alkon (Seal Impeller) u/ Alkon Mess KM 18', TIMESTAMP '2024-08-16 10:34:47.354', 75000.0, 5.05758249E8, -5.3405843E7);
INSERT INTO O_306 VALUES('240531009069', '240531009000', '7016', 150000.0, '2 Pcs C/M (Seal) Hilux 17K (Repairkit Kopling Atas) u/ Stok Hilux', TIMESTAMP '2024-08-16 10:34:47.354', 150000.0, 5.05908249E8, -5.3555843E7);
INSERT INTO O_306 VALUES('240531009070', '240531009000', '7016', 100000.0, '2 Pcs C/O Kit Kijang 7K 7/8 (Repairkit Kopling Bawah) u/ Stok Hilux', TIMESTAMP '2024-08-16 10:34:47.354', 100000.0, 5.06008249E8, -5.3655843E7);
INSERT INTO O_306 VALUES('240531009071', '240531009000', '7016', 50000.0, '2 Bks (100 Pcs) Paku Kampas u/ TR 07  PR 3735 / 718', TIMESTAMP '2024-08-16 10:34:47.354', 50000.0, 5.06058249E8, -5.3705843E7);
INSERT INTO O_306 VALUES('240531009072', '240531009000', '7016', 60000.0, '1 Pcs Tutup Tangki Solar u/ Manhaul 01 PR 3735 / H 718', TIMESTAMP '2024-08-16 10:34:47.354', 60000.0, 5.06118249E8, -5.3765843E7);
INSERT INTO O_306 VALUES('240531009073', '240531009000', '7016', 250000.0, '5 Pcs Relay K4 24V u/ Stok @ Rp50.000 PR 3725 / H 718', TIMESTAMP '2024-08-16 10:34:47.354', 250000.0, 5.06368249E8, -5.4015843E7);
INSERT INTO O_306 VALUES('240531009074', '240531009000', '7016', 25000.0, '5 Pcs Bohlam T5 (Lampu Kabut 12V) u/ Stok @ Rp5.000 PR 3735 / H 718', TIMESTAMP '2024-08-16 10:34:47.354', 25000.0, 5.06393249E8, -5.4040843E7);
INSERT INTO O_306 VALUES('240531009075', '240531009000', '7016', 200000.0, '1 Pcs Seal Roda Hino u/ TR 07 PR 3734 / H 718 (UD Paras Wana)', TIMESTAMP '2024-08-16 10:34:47.354', 200000.0, 5.06593249E8, -5.4240843E7);
INSERT INTO O_306 VALUES('240531009076', '240531009000', '7016', 15000.0, '1 Pcs Bearing Belakang (Pelor / Gotri) u/ Workshop PR 3735 / H 718', TIMESTAMP '2024-08-16 10:34:47.354', 15000.0, 5.06608249E8, -5.4255843E7);
INSERT INTO O_306 VALUES('240531009077', '240531009000', '7016', 10000.0, '1 Pcs Bearing Depan (Pelor / Gotri) u/ Workshop PR 3735 / H 718', TIMESTAMP '2024-08-16 10:34:47.354', 10000.0, 5.06618249E8, -5.4265843E7);
INSERT INTO O_306 VALUES('240531009078', '240531009000', '7016', 500000.0, '1 Roll (100 M) Selongsong Cable M7 PR 3740 / H 666', TIMESTAMP '2024-08-16 10:34:47.354', 500000.0, 5.07118249E8, -5.4765843E7);
INSERT INTO O_306 VALUES('240531009079', '240531009000', '7016', 1462500.0, '15 Roll Cable Auto 1,25mm PR 3740 / H 666 @ Rp97.500', TIMESTAMP '2024-08-16 10:34:47.354', 1462500.0, 5.08580749E8, -5.6228343E7);
INSERT INTO O_306 VALUES('240531010001', '240531010000', '7016', 62500.0, '5 Meter Isolasi Bakar M7  PR 3740 / H 666 @ Rp12.500', TIMESTAMP '2024-08-16 10:39:29.026', 62500.0, 5.08643249E8, -5.6290843E7);
INSERT INTO O_306 VALUES('240531010002', '240531010000', '7016', 75000.0, '5 Meter Isolasi Bakar M10  PR 3740 / H 666 @ Rp15.000', TIMESTAMP '2024-08-16 10:39:29.026', 75000.0, 5.08718249E8, -5.6365843E7);
INSERT INTO O_306 VALUES('240531010003', '240531010000', '7016', 312500.0, '25 Pcs Rumahan Fuse PR 3740 / H 666 @ Rp12.500', TIMESTAMP '2024-08-16 10:39:29.026', 312500.0, 5.09030749E8, -5.6678343E7);
INSERT INTO O_306 VALUES('240531010004', '240531010000', '7016', 375000.0, '15 Pasang Kepala Accu Kuningan  PR 3740 / H 666 @ Rp25.000', TIMESTAMP '2024-08-16 10:39:29.026', 375000.0, 5.09405749E8, -5.7053343E7);
INSERT INTO O_306 VALUES('240531010005', '240531010000', '7009', 120000.0, 'Bayar Kurir Rp70.000 dan Ekspedisi Cendana (Kirim Kabel &', TIMESTAMP '2024-08-16 10:39:29.026', 120000.0, 2658400.0, -5.7173343E7);
INSERT INTO O_306 VALUES('240531010006', '240531010000', '7008', 50000.0, 'Cuci Mobil L 8397 VB', TIMESTAMP '2024-08-16 10:39:29.026', 50000.0, 1380000.0, -5.7223343E7);
INSERT INTO O_306 VALUES('240531010007', '240531010000', '7017', 300000.0, '10 Pcs Lampu LED 15 Watt u/ Stok @ Rp30.000  PR 3726 / H 877', TIMESTAMP '2024-08-16 10:39:29.026', 300000.0, 2.19670958E8, -5.7523343E7);
INSERT INTO O_306 VALUES('240531010008', '240531010000', '7017', 200000.0, '10 Pcs Fitting Lampu (Pitingan Lampu) u/ Gudang + Stok @ Rp20.000', TIMESTAMP '2024-08-16 10:39:29.026', 200000.0, 2.19870958E8, -5.7723343E7);
INSERT INTO O_306 VALUES('240531010009', '240531010000', '7017', 25000.0, '10 Pcs Lampu Tusuk 24V (Lampu Kabut 24V) u/ Stok @ Rp2.500', TIMESTAMP '2024-08-16 10:39:29.026', 25000.0, 2.19895958E8, -5.7748343E7);
INSERT INTO O_306 VALUES('240531010010', '240531010000', '7017', 450000.0, '5 Pcs Lampu LED 30 Watt (Eco King) u/ Gudang + Stok @ Rp90.000', TIMESTAMP '2024-08-16 10:39:29.026', 450000.0, 2.20345958E8, -5.8198343E7);
INSERT INTO O_306 VALUES('240531010011', '240531010000', '7017', 20000.0, '1 Pcs Overpal (Rumah Gembok) u/ Mess KM 18 PR 3726 / H 877', TIMESTAMP '2024-08-16 10:39:29.026', 20000.0, 2.20365958E8, -5.8218343E7);
INSERT INTO O_306 VALUES('240531010012', '240531010000', '7017', 290000.0, '1 Tabung Oksigen u/ Workshop PR 3726 / H 877 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:39:29.026', 290000.0, 2.20655958E8, -5.8508343E7);
INSERT INTO O_306 VALUES('240531010013', '240531010000', '7023', 320000.0, '20 Liter Pertamax u/ Stok @ Rp16.000 PR 3726 / H 877', TIMESTAMP '2024-08-16 10:39:29.026', 320000.0, 4501396.0, -5.8828343E7);
INSERT INTO O_306 VALUES('240531010014', '240531010000', '7017', 270000.0, '1 Tabung Elpiji (LPG) 12 Kg u/ Gudang PR 3724 / H 155', TIMESTAMP '2024-08-16 10:39:29.026', 270000.0, 2.20925958E8, -5.9098343E7);
INSERT INTO O_306 VALUES('240531010015', '240531010000', '7017', 270000.0, '1 Tabung Elpiji (LPG) 12 Kg u/ Workshop PR 3724 / H 155', TIMESTAMP '2024-08-16 10:39:29.032', 270000.0, 2.21195958E8, -5.9368343E7);
INSERT INTO O_306 VALUES('240531010016', '240531010000', '7006', 50000.0, 'Penyeberangan PP  L 8397 VB u/ Belanja Sparepart dll', TIMESTAMP '2024-08-16 10:39:29.032', 50000.0, 7.487683E7, -5.9418343E7);
INSERT INTO O_306 VALUES('240531010017', '240531010000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (LKH 17) Melak - Surabaya', TIMESTAMP '2024-08-16 10:39:29.032', 47000.0, 2705400.0, -5.9465343E7);
INSERT INTO O_306 VALUES('240531010018', '240531010000', '7005', 10000.0, '1 Lembar Print Warna A3 Desain Pintu Pagar Gudang (Christo & Christy)', TIMESTAMP '2024-08-16 10:39:29.032', 10000.0, 815000.0, -5.9475343E7);
INSERT INTO O_306 VALUES('240531010019', '240531010000', '7004', 25000.0, 'Konsumsi (Makan Siang) u/ BRIMOB', TIMESTAMP '2024-08-16 10:39:29.032', 25000.0, 4.5254433E7, -5.9500343E7);
INSERT INTO O_306 VALUES('240531010020', '240531010000', '7006', 100000.0, 'Uang Transport u/ Menghadiri Undangan Terkait Pengawasan dan ', TIMESTAMP '2024-08-16 10:39:29.032', 100000.0, 7.497683E7, -5.9600343E7);
INSERT INTO O_306 VALUES('240531010021', '240531010000', '7017', 100000.0, '10 Meter Selang Spiral (Selang Pengaman Kabel) u/ Stok ', TIMESTAMP '2024-08-16 10:39:29.032', 100000.0, 2.21295958E8, -5.9700343E7);
INSERT INTO O_306 VALUES('240531010022', '240531010000', '7017', 260000.0, '20 Meter Kabel (Eterna) 2 X 1,5 u/ Mess KM 18 (Belakang)', TIMESTAMP '2024-08-16 10:39:29.032', 260000.0, 2.21555958E8, -5.9960343E7);
INSERT INTO O_306 VALUES('240531010023', '240531010000', '7017', 195000.0, '1 Batang Pipa Besi 3/4  u/ Manhaul 01 PR 3728 / H 199 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:39:29.032', 195000.0, 2.21750958E8, -6.0155343E7);
INSERT INTO O_306 VALUES('240531010024', '240531010000', '7017', 750000.0, '1 Pcs Tangga Lipat 2,5 M u/ Gudang  PR 3728 / H 199 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 10:39:29.032', 750000.0, 2.22500958E8, -6.0905343E7);
INSERT INTO O_306 VALUES('240531010025', '240531010000', '7017', 40000.0, '2 Pcs Karbon Brush CB.549 u/ Gerinda PR 3728 / H 199 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:39:29.032', 40000.0, 2.22540958E8, -6.0945343E7);
INSERT INTO O_306 VALUES('240531010026', '240531010000', '7017', 270000.0, '2 Pcs Lampu Sorot 100 Watt u/ Gudang @ Rp135.000  PR 3728 / H 199 ', TIMESTAMP '2024-08-16 10:39:29.032', 270000.0, 2.22810958E8, -6.1215343E7);
INSERT INTO O_306 VALUES('240531010027', '240531010000', '7017', 42000.0, '3 Bks Sunlight (12 X 650ML) u/ Workshop @ Rp14.000', TIMESTAMP '2024-08-16 10:39:29.032', 42000.0, 2.22852958E8, -6.1257343E7);
INSERT INTO O_306 VALUES('240531010028', '240531010000', '7004', 100000.0, '5 Dus Air Gelas An Najwa u/ Proyek Gudang @ Rp20.000', TIMESTAMP '2024-08-16 10:39:29.032', 100000.0, 4.5354433E7, -6.1357343E7);
INSERT INTO O_306 VALUES('240531010029', '240531010000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja 15 Batang Besi Kotak', TIMESTAMP '2024-08-16 10:39:29.032', 50000.0, 7.502683E7, -6.1407343E7);
INSERT INTO O_306 VALUES('240531010030', '240531010000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-08-16 10:39:29.032', 500000.0, 4.5854433E7, -6.1907343E7);
INSERT INTO O_306 VALUES('240531010031', '240531010000', '7009', 120000.0, 'Bayar Kurir u/ Ambil Barang (PR 3719 / PO 0983 u/ SK 200 - 77) ', TIMESTAMP '2024-08-16 10:39:29.032', 120000.0, 2825400.0, -6.2027343E7);
INSERT INTO O_306 VALUES('240531010032', '240531010000', '7006', 750000.0, 'Pengganti Bensin Perahu Penyeberangan Karyawan Periode', TIMESTAMP '2024-08-16 10:39:29.032', 750000.0, 7.577683E7, -6.2777343E7);
INSERT INTO O_306 VALUES('240531010033', '240531010000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dan Tarik ', TIMESTAMP '2024-08-16 10:39:29.032', 50000.0, 7.582683E7, -6.2827343E7);
INSERT INTO O_306 VALUES('240531010034', '240531010000', '7001', 704000.0, 'Piket Genset Penerangan Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 704000.0, 1.122330444E9, -6.3531343E7);
INSERT INTO O_306 VALUES('240531010035', '240531010000', '7016', 85000.0, '1 Pcs Senter Mitsuyama u/ Genset PR 3735 / H 718 (Zakiah Elektronik)', TIMESTAMP '2024-08-16 10:39:29.032', 85000.0, 5.09490749E8, -6.3616343E7);
INSERT INTO O_306 VALUES('240531010036', '240531010000', '7016', 150000.0, '3 Pcs Voltmeter 220V u/ Panel Listrik Gudang PR 3735 / H 718', TIMESTAMP '2024-08-16 10:39:29.032', 150000.0, 5.09640749E8, -6.3766343E7);
INSERT INTO O_306 VALUES('240531010037', '240531010000', '7016', 75000.0, '5 Pcs Baut 88 M16 X 70 u/ SK 200 - 77 @ Rp15.000  PR 3736 / H 711 ', TIMESTAMP '2024-08-16 10:39:29.032', 75000.0, 5.09715749E8, -6.3841343E7);
INSERT INTO O_306 VALUES('240531010038', '240531010000', '7016', 140000.0, '2 Pak Tali Ties Tanggung u/ Stok @ Rp70.000  PR 3736 / H 711', TIMESTAMP '2024-08-16 10:39:29.032', 140000.0, 5.09855749E8, -6.3981343E7);
INSERT INTO O_306 VALUES('240531010039', '240531010000', '7016', 90000.0, '2 Pak Sarung Tangan Bintik u/ Stok @ Rp45.000  PR 3736 / H 711', TIMESTAMP '2024-08-16 10:39:29.032', 90000.0, 5.09945749E8, -6.4071343E7);
INSERT INTO O_306 VALUES('240531010040', '240531010000', '7016', 45000.0, '3 Pcs Klam 5  (Klem Selang 5 ) u/ Manhaul 01 + Stok @ Rp15.000', TIMESTAMP '2024-08-16 10:39:29.032', 45000.0, 5.09990749E8, -6.4116343E7);
INSERT INTO O_306 VALUES('240531010041', '240531010000', '7016', 220000.0, '4 Pcs Master MP 80 (WD) u/ Stok @ Rp55.000 PR 3736 / H 711', TIMESTAMP '2024-08-16 10:39:29.032', 220000.0, 5.10210749E8, -6.4336343E7);
INSERT INTO O_306 VALUES('240531010042', '240531010000', '7016', 250000.0, '1 Pcs Pompa Grease u/ Workshop PR 3736 / H 711 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 10:39:29.032', 250000.0, 5.10460749E8, -6.4586343E7);
INSERT INTO O_306 VALUES('240531010043', '240531010000', '7016', 330000.0, '2 Pcs Alarm Mundur u/ L 9502 GH dan L 8504 AJ  @ Rp165.000', TIMESTAMP '2024-08-16 10:39:29.032', 330000.0, 5.10790749E8, -6.4916343E7);
INSERT INTO O_306 VALUES('240531010044', '240531010000', '7016', 195000.0, '15 Pcs IsolasiKabel (Nasional) u/ Stok @ Rp13.000 PR 3736 / H 711', TIMESTAMP '2024-08-16 10:39:29.032', 195000.0, 5.10985749E8, -6.5111343E7);
INSERT INTO O_306 VALUES('240531010045', '240531010000', '7016', 740000.0, '1 Roll (150 M) Kabel Nym 2 X 2,5 (Eterna) u/ Gudang KM 18', TIMESTAMP '2024-08-16 10:39:29.032', 740000.0, 5.11725749E8, -6.5851343E7);
INSERT INTO O_306 VALUES('240531010046', '240531010000', '7016', 100000.0, '5 Pcs Stop Kontak Isi 1 Lubang u/ Gudang KM 18 @ Rp20.000', TIMESTAMP '2024-08-16 10:39:29.032', 100000.0, 5.11825749E8, -6.5951343E7);
INSERT INTO O_306 VALUES('240531010047', '240531010000', '7016', 126000.0, '2 Pcs Stop Kontak Isi 5 Lubang u/ Gudang KM 18 @ Rp63.000', TIMESTAMP '2024-08-16 10:39:29.032', 126000.0, 5.11951749E8, -6.6077343E7);
INSERT INTO O_306 VALUES('240531010048', '240531010000', '7016', 30000.0, '2 Pcs Steker u/ Gudang KM 18 @ Rp15.000  PR 3737 / H 766', TIMESTAMP '2024-08-16 10:39:29.032', 30000.0, 5.11981749E8, -6.6107343E7);
INSERT INTO O_306 VALUES('240531010049', '240531010000', '7016', 50000.0, '2 Kg Kawat BWG u/ Las Gudang KM 18 @ Rp25.000 PR 3737 / H 766', TIMESTAMP '2024-08-16 10:39:29.032', 50000.0, 5.12031749E8, -6.6157343E7);
INSERT INTO O_306 VALUES('240531010050', '240531010000', '7016', 12000.0, '3 Pcs L PVC 1/2  u/ Mess KM 18 @ Rp4.000  PR 3737 / H 766', TIMESTAMP '2024-08-16 10:39:29.032', 12000.0, 5.12043749E8, -6.6169343E7);
INSERT INTO O_306 VALUES('240531010051', '240531010000', '7016', 12000.0, '3 PCS Sock Drat Dalam 1/2   u/ Mess KM 18 @ Rp4.000', TIMESTAMP '2024-08-16 10:39:29.032', 12000.0, 5.12055749E8, -6.6181343E7);
INSERT INTO O_306 VALUES('240531010052', '240531010000', '7016', 140000.0, '1 Set (4 Pcs) Roda Gerobak u/ Gudang KM 18  PR 3737 / H 766', TIMESTAMP '2024-08-16 10:39:29.032', 140000.0, 5.12195749E8, -6.6321343E7);
INSERT INTO O_306 VALUES('240531010053', '240531010000', '7016', 150000.0, '10 Pcs Mata Gosok (Mata Gerinda Asah) u/ Stok @ Rp15.000', TIMESTAMP '2024-08-16 10:39:29.032', 150000.0, 5.12345749E8, -6.6471343E7);
INSERT INTO O_306 VALUES('240531010054', '240531010000', '7016', 440000.0, '8 Kaleng Pilok Flinkote u/ TR Hauling @ Rp55.000 PR 3737 / H 766', TIMESTAMP '2024-08-16 10:39:29.032', 440000.0, 5.12785749E8, -6.6911343E7);
INSERT INTO O_306 VALUES('240531010055', '240531010000', '7016', 32900.0, '1 Pcs Baterai ABC Spr Power UM1 / 2S (Besar) u/ Workshop', TIMESTAMP '2024-08-16 10:39:29.032', 32900.0, 5.12818649E8, -6.6944243E7);
INSERT INTO O_306 VALUES('240531010056', '240531010000', '7016', 125000.0, '5 Set Cetak ID Card (Simper) + Tempat (Card Holder) u/ Karyawan ', TIMESTAMP '2024-08-16 10:39:29.032', 125000.0, 5.12943649E8, -6.7069243E7);
INSERT INTO O_306 VALUES('240531010057', '240531010000', '7016', 50000.0, '10 Pcs Lakban (Isolasi) Kertas 1/2  u/ Gudang KM 18 @ Rp5.000', TIMESTAMP '2024-08-16 10:39:29.032', 50000.0, 5.12993649E8, -6.7119243E7);
INSERT INTO O_306 VALUES('240531010058', '240531010000', '7016', 75000.0, '5 Pcs Isolasi u/ Gudang KM 18 @ Rp15.000 (Christo & Christy)', TIMESTAMP '2024-08-16 10:39:29.032', 75000.0, 5.13068649E8, -6.7194243E7);
INSERT INTO O_306 VALUES('240531010059', '240531010000', '7017', 500000.0, '5 Batang Besi Kotak 4 X 4 u/ Pintu Pagar Depan Gudang KM 18', TIMESTAMP '2024-08-16 10:39:29.032', 500000.0, 2.23352958E8, -6.7694243E7);
INSERT INTO O_306 VALUES('240531010060', '240531010000', '7017', 780000.0, '10 Batang Besi Kotak 2 X 4 u/ Pintu Pagar Depan Gudang KM 18', TIMESTAMP '2024-08-16 10:39:29.032', 780000.0, 2.24132958E8, -6.8474243E7);
INSERT INTO O_306 VALUES('240531010061', '240531010000', '7017', 90000.0, '2 Pcs Roda Bawah u/ Pintu Pagar Depan Gudang KM 18', TIMESTAMP '2024-08-16 10:39:29.032', 90000.0, 2.24222958E8, -6.8564243E7);
INSERT INTO O_306 VALUES('240531010062', '240531010000', '7017', 102500.0, '5 Dus Air Gelas An Najwa u/ Proyek Gudang KM 18', TIMESTAMP '2024-08-16 10:39:29.032', 102500.0, 2.24325458E8, -6.8666743E7);
INSERT INTO O_306 VALUES('240531010063', '240531010000', '7017', 36000.0, '  4 Pcs Slai O lai Nanas 4X5X192G @ Rp9.000', TIMESTAMP '2024-08-16 10:39:29.032', 36000.0, 2.24361458E8, -6.8702743E7);
INSERT INTO O_306 VALUES('240531010064', '240531010000', '7017', 24000.0, '  3 Pcs Marindo Black 4X6 White Cofee @ Rp8.000', TIMESTAMP '2024-08-16 10:39:29.032', 24000.0, 2.24385458E8, -6.8726743E7);
INSERT INTO O_306 VALUES('240531010065', '240531010000', '7017', 27000.0, '  3 Pcs Kukis 218Gr 4X6 Kelapa @ Rp9.000', TIMESTAMP '2024-08-16 10:39:29.032', 27000.0, 2.24412458E8, -6.8753743E7);
INSERT INTO O_306 VALUES('240531010066', '240531010000', '7017', 54000.0, '  2 Bks Gabin Super 12X350Gr @ Rp27.000', TIMESTAMP '2024-08-16 10:39:29.032', 54000.0, 2.24466458E8, -6.8807743E7);
INSERT INTO O_306 VALUES('240531010067', '240531010000', '7017', 16000.0, '  2 Bks Roma Malkis Abon 4X250Gr @ Rp8.000', TIMESTAMP '2024-08-16 10:39:29.032', 16000.0, 2.24482458E8, -6.8823743E7);
INSERT INTO O_306 VALUES('240531010068', '240531010000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan tgl 25 April 2024 u/ Cuti Periodik', TIMESTAMP '2024-08-16 10:39:29.032', 450000.0, 7.627683E7, -6.9273743E7);
INSERT INTO O_306 VALUES('240531010069', '240531010000', '7006', 150000.0, 'Transport Darat Bandara Syamsudin Noor, Banjarmasin - Kintap', TIMESTAMP '2024-08-16 10:39:29.032', 150000.0, 7.642683E7, -6.9423743E7);
INSERT INTO O_306 VALUES('240531010070', '240531010000', '7001', 2090000.0, 'UM a/n M. Agus Irwanto Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 2090000.0, 1.124420444E9, -7.1513743E7);
INSERT INTO O_306 VALUES('240531010071', '240531010000', '7001', 700000.0, 'UM a/n Syaifullah Periode 27 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 700000.0, 1.125120444E9, -7.2213743E7);
INSERT INTO O_306 VALUES('240531010072', '240531010000', '7001', 990000.0, 'UM a/n Haqul Istaflakha Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 990000.0, 1.126110444E9, -7.3203743E7);
INSERT INTO O_306 VALUES('240531010073', '240531010000', '7001', 1210000.0, 'UM a/n Sarjito F. Adam Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1210000.0, 1.127320444E9, -7.4413743E7);
INSERT INTO O_306 VALUES('240531010074', '240531010000', '7001', 825000.0, 'UM a/n Jakaria Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 825000.0, 1.128145444E9, -7.5238743E7);
INSERT INTO O_306 VALUES('240531010075', '240531010000', '7001', 1287000.0, 'UM a/n Didik M. Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1287000.0, 1.129432444E9, -7.6525743E7);
INSERT INTO O_306 VALUES('240531010076', '240531010000', '7001', 1540000.0, 'UM a/n Go Oei Hap Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1540000.0, 1.130972444E9, -7.8065743E7);
INSERT INTO O_306 VALUES('240531010077', '240531010000', '7001', 1650000.0, 'UM a/n Syamsudin Noor Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1650000.0, 1.132622444E9, -7.9715743E7);
INSERT INTO O_306 VALUES('240531010078', '240531010000', '7001', 1980000.0, 'UM a/n Supriyanto Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1980000.0, 1.134602444E9, -8.1695743E7);
INSERT INTO O_306 VALUES('240531010079', '240531010000', '7001', 1650000.0, 'UM a/n Handriyadi Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1650000.0, 1.136252444E9, -8.3345743E7);
INSERT INTO O_306 VALUES('240531010080', '240531010000', '7001', 1540000.0, 'UM a/n Wijanarko Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1540000.0, 1.137792444E9, -8.4885743E7);
INSERT INTO O_306 VALUES('240531010081', '240531010000', '7001', 1540000.0, 'UM a/n Sekhan Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1540000.0, 1.139332444E9, -8.6425743E7);
INSERT INTO O_306 VALUES('240531010082', '240531010000', '7001', 1155000.0, 'UM a/n Maretius Oji Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1155000.0, 1.140487444E9, -8.7580743E7);
INSERT INTO O_306 VALUES('240531010083', '240531010000', '7001', 1540000.0, 'UM a/n Yono Setyawan Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1540000.0, 1.142027444E9, -8.9120743E7);
INSERT INTO O_306 VALUES('240531010084', '240531010000', '7001', 1287000.0, 'UM a/n Andri Syamsul Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1287000.0, 1.143314444E9, -9.0407743E7);
INSERT INTO O_306 VALUES('240531010085', '240531010000', '7001', 1650000.0, 'UM a/n Rinaldhie G. Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1650000.0, 1.144964444E9, -9.2057743E7);
INSERT INTO O_306 VALUES('240531010086', '240531010000', '7001', 1650000.0, 'UM a/n M. Hafizhni Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1650000.0, 1.146614444E9, -9.3707743E7);
INSERT INTO O_306 VALUES('240531010087', '240531010000', '7001', 1540000.0, 'UM a/n Suradi Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 1540000.0, 1.148154444E9, -9.5247743E7);
INSERT INTO O_306 VALUES('240531010088', '240531010000', '7001', 605000.0, 'UM a/n Fajar N. Hidayat Periode 21 Mei 2024 - 31 Mei 2024', TIMESTAMP '2024-08-16 10:39:29.032', 605000.0, 1.148759444E9, -9.5852743E7);
INSERT INTO O_306 VALUES('240531010089', '240531010000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Juni 2024', TIMESTAMP '2024-08-16 10:39:29.032', 500000.0, 1.149259444E9, -9.6352743E7);
INSERT INTO O_306 VALUES('240531010090', '240531010000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Juni 2024', TIMESTAMP '2024-08-16 10:39:29.032', 500000.0, 1.149759444E9, -9.6852743E7);
INSERT INTO O_306 VALUES('240630001001', '240630001000', '7016', 260000.0, '4 Pcs Bearing 6303 u/ Roda Pagar Gudang KM 18 @ Rp65.000', TIMESTAMP '2024-08-16 13:36:08.65', 260000.0, 8.19492338E8, 3.0893922E7);
INSERT INTO O_306 VALUES('240630001002', '240630001000', '7016', 84000.0, '2 Pcs Van Belt A 42 u/ TR 07 @ Rp42.000  PR 3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.65', 84000.0, 8.19576338E8, 3.0809922E7);
INSERT INTO O_306 VALUES('240630001003', '240630001000', '7016', 10000.0, '1 Pcs Baut Lubang (Baut Solar) u/ TR 09  PR 3744 / 433 (Sumber Rejeki)', TIMESTAMP '2024-08-16 13:36:08.65', 10000.0, 8.19586338E8, 3.0799922E7);
INSERT INTO O_306 VALUES('240630001004', '240630001000', '7016', 8000.0, '1 Pcs Ring Tembaga u/ TR 09  PR 3744 / H 433 (Sumber Rejeki)', TIMESTAMP '2024-08-16 13:36:08.65', 8000.0, 8.19594338E8, 3.0791922E7);
INSERT INTO O_306 VALUES('240630001005', '240630001000', '7016', 750000.0, '1 Set (8 Pcs) Kampas Rem Hino 500 RR (Kampas Rem Belakang)', TIMESTAMP '2024-08-16 13:36:08.65', 750000.0, 8.20344338E8, 3.0041922E7);
INSERT INTO O_306 VALUES('240630001006', '240630001000', '7016', 50000.0, '2 Pak (100 Pcs) Paku Kampas 10 X 12 u/ TR 03  PR 3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.666', 50000.0, 8.20394338E8, 2.9991922E7);
INSERT INTO O_306 VALUES('240630001007', '240630001000', '7016', 250000.0, '2 Pcs Filter Solar MB 220900 u/ L 8504 AJ + Stok  PR 3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.666', 250000.0, 8.20644338E8, 2.9741922E7);
INSERT INTO O_306 VALUES('240630001008', '240630001000', '7016', 175000.0, '1 Pcs Wheel Cylinder Hilux (Repair Kit Rem Atas) u/ N 8993 AT', TIMESTAMP '2024-08-16 13:36:08.666', 175000.0, 8.20819338E8, 2.9566922E7);
INSERT INTO O_306 VALUES('240630001009', '240630001000', '7016', 175000.0, '1 Pcs B/M Hilux Kit (Kas Rem Belakang) u/ N 8993 AT  PR 3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.666', 175000.0, 8.20994338E8, 2.9391922E7);
INSERT INTO O_306 VALUES('240630001010', '240630001000', '7016', 40000.0, '1 Pcs Baut + Waser (Baut Solar + Ring) u/ TR 09  PR 3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.666', 40000.0, 8.21034338E8, 2.9351922E7);
INSERT INTO O_306 VALUES('240630001011', '240630001000', '7016', 150000.0, '  1 Pcs Mangkok Transfer', TIMESTAMP '2024-08-16 13:36:08.666', 150000.0, 8.21184338E8, 2.9201922E7);
INSERT INTO O_306 VALUES('240630001012', '240630001000', '7016', 50000.0, '  1 Pcs Garpu', TIMESTAMP '2024-08-16 13:36:08.666', 50000.0, 8.21234338E8, 2.9151922E7);
INSERT INTO O_306 VALUES('240630001013', '240630001000', '7016', 50000.0, '  1 Pcs Karet', TIMESTAMP '2024-08-16 13:36:08.666', 50000.0, 8.21284338E8, 2.9101922E7);
INSERT INTO O_306 VALUES('240630001014', '240630001000', '7016', 50000.0, '  1 Set Karbon Brush', TIMESTAMP '2024-08-16 13:36:08.681', 50000.0, 8.21334338E8, 2.9051922E7);
INSERT INTO O_306 VALUES('240630001015', '240630001000', '7009', 100000.0, '  Ongkos', TIMESTAMP '2024-08-16 13:36:08.681', 100000.0, 2925400.0, 2.8951922E7);
INSERT INTO O_306 VALUES('240630001016', '240630001000', '7016', 1950000.0, '1 Pcs Chain Block Kondo (2 Ton X 3 Meter) PR 3741 / H 223', TIMESTAMP '2024-08-16 13:36:08.681', 1950000.0, 8.23284338E8, 2.7001922E7);
INSERT INTO O_306 VALUES('240630001017', '240630001000', '7009', 150000.0, 'Bayar Henicargo u/ Pengiriman Chain Block dari Samarinda -', TIMESTAMP '2024-08-16 13:36:08.681', 150000.0, 3075400.0, 2.6851922E7);
INSERT INTO O_306 VALUES('240630001018', '240630001000', '7016', 170000.0, '17 Meter Spiral (Pembungkus Kabel) u/ TR Hauling @ Rp10.000', TIMESTAMP '2024-08-16 13:36:08.681', 170000.0, 8.23454338E8, 2.6681922E7);
INSERT INTO O_306 VALUES('240630001019', '240630001000', '7016', 1000000.0, '2 Meter Hose 1 1/2  - 1 Ply u/ TR 01 + TR 03 @ Rp500.000', TIMESTAMP '2024-08-16 13:36:08.681', 1000000.0, 8.24454338E8, 2.5681922E7);
INSERT INTO O_306 VALUES('240630001020', '240630001000', '7016', 200000.0, '4 Pcs Clamp (Klem Hose) 1 1/2  u/ TR 01 + TR 03 @ Rp50.000', TIMESTAMP '2024-08-16 13:36:08.681', 200000.0, 8.24654338E8, 2.5481922E7);
INSERT INTO O_306 VALUES('240630001021', '240630001000', '7016', 70000.0, '7 Meter Spiral (Pembungkus Kabel) u/ TR Hauling PR 3749 / H 811', TIMESTAMP '2024-08-16 13:36:08.681', 70000.0, 8.24724338E8, 2.5411922E7);
INSERT INTO O_306 VALUES('240630001022', '240630001000', '7016', 750000.0, '5 Pcs Baut Dingdong 18 mm X 300 mm u/ TR 04 + Stok @ Rp150.000', TIMESTAMP '2024-08-16 13:36:08.681', 750000.0, 8.25474338E8, 2.4661922E7);
INSERT INTO O_306 VALUES('240630001023', '240630001000', '7016', 500000.0, '5 Pcs Baut Dingdong 18 mm X 100 mm u/ TR 04 + Stok @ Rp100.000', TIMESTAMP '2024-08-16 13:36:08.681', 500000.0, 8.25974338E8, 2.4161922E7);
INSERT INTO O_306 VALUES('240630001024', '240630001000', '7016', 275000.0, '1 Pcs Valve Pembagi Minyak Rem u/ N 8993 AT  PR 3749 / H 811', TIMESTAMP '2024-08-16 13:36:08.681', 275000.0, 8.26249338E8, 2.3886922E7);
INSERT INTO O_306 VALUES('240630001025', '240630001000', '7016', 900000.0, '60 Pcs Baut Pisau 3/4 X 70 u/ Doser 03 @ Rp15.000 PR 3749 / H 811', TIMESTAMP '2024-08-16 13:36:08.681', 900000.0, 8.27149338E8, 2.2986922E7);
INSERT INTO O_306 VALUES('240630001026', '240630001000', '7016', 99000.0, 'Pajak', TIMESTAMP '2024-08-16 13:36:08.681', 99000.0, 8.27248338E8, 2.2887922E7);
INSERT INTO O_306 VALUES('240630001027', '240630001000', '7009', 100000.0, 'Ongkos Kurir Ambil Barang (Valve Pembagi Minyak dan Baut Pisau) ', TIMESTAMP '2024-08-16 13:36:08.681', 100000.0, 3175400.0, 2.2787922E7);
INSERT INTO O_306 VALUES('240630001028', '240630001000', '7009', 70000.0, 'Bayar Cendana', TIMESTAMP '2024-08-16 13:36:08.681', 70000.0, 3245400.0, 2.2717922E7);
INSERT INTO O_306 VALUES('240630001029', '240630001000', '7016', 600000.0, '1 Pcs Parking Brake (Kabel Hand Rem) u/ N 8993 AT ', TIMESTAMP '2024-08-16 13:36:08.681', 600000.0, 8.27848338E8, 2.2117922E7);
INSERT INTO O_306 VALUES('240630001030', '240630001000', '7016', 150000.0, '1 Pcs Colter Compress u/ Kompresor Workshop PR 3455 / H 551', TIMESTAMP '2024-08-16 13:36:08.681', 150000.0, 8.27998338E8, 2.1967922E7);
INSERT INTO O_306 VALUES('240630001031', '240630001000', '7016', 700000.0, '1 Pcs Kompresor Rakit (Vakum) u/ Workshop PR 3455 / H 551', TIMESTAMP '2024-08-16 13:36:08.681', 700000.0, 8.28698338E8, 2.1267922E7);
INSERT INTO O_306 VALUES('240630001032', '240630001000', '7016', 160000.0, '20 Pcs Baut 88m 10 X 40 u/ D85 - 36 @ Rp8.000 PR 3455 / H 551 ', TIMESTAMP '2024-08-16 13:36:08.681', 160000.0, 8.28858338E8, 2.1107922E7);
INSERT INTO O_306 VALUES('240630001033', '240630001000', '7016', 210000.0, '1 Pcs Kunci Ring Pas 27 mm u/ Workshop PR 3455 / H 551 ', TIMESTAMP '2024-08-16 13:36:08.681', 210000.0, 8.29068338E8, 2.0897922E7);
INSERT INTO O_306 VALUES('240630001034', '240630001000', '7016', 55000.0, '1 Pcs Kunci Ring Pas 18 mm u/ Workshop PR 3455 / H 551 ', TIMESTAMP '2024-08-16 13:36:08.681', 55000.0, 8.29123338E8, 2.0842922E7);
INSERT INTO O_306 VALUES('240630001035', '240630001000', '7016', 30000.0, '1 Pcs Kunci Ring Pas 8 mm u/ Workshop PR 3455 / H 551 ', TIMESTAMP '2024-08-16 13:36:08.681', 30000.0, 8.29153338E8, 2.0812922E7);
INSERT INTO O_306 VALUES('240630001036', '240630001000', '7016', 55000.0, '1 Pcs Tang Kombi Beluci u/ Workshop PR 3455 / H 551 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:08.681', 55000.0, 8.29208338E8, 2.0757922E7);
INSERT INTO O_306 VALUES('240630001037', '240630001000', '7016', 165000.0, '1 Pcs Mata Sok 3/4 28 mm u/ Workshop PR 3455 / H 551 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:08.681', 165000.0, 8.29373338E8, 2.0592922E7);
INSERT INTO O_306 VALUES('240630001038', '240630001000', '7017', 290000.0, '1 Tabung Oksigen u/ Workshop PR 3739 / H 180 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:08.681', 290000.0, 2.24772458E8, 2.0302922E7);
INSERT INTO O_306 VALUES('240630001039', '240630001000', '7017', 55000.0, '1 Pcs Tang u/ Pak Rinto PR 3739 / H 180 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:08.681', 55000.0, 2.24827458E8, 2.0247922E7);
INSERT INTO O_306 VALUES('240630001040', '240630001000', '7017', 255000.0, '1 Tabung LPG 12 Kg u/ Workshop PR 3739 / H 180 (Toko Afriza Ananda)', TIMESTAMP '2024-08-16 13:36:08.681', 255000.0, 2.25082458E8, 1.9992922E7);
INSERT INTO O_306 VALUES('240630001041', '240630001000', '7017', 135000.0, '1 Pcs Lampu Sorot LED 100 Watt u/ Mess KM 18 PR 3739 / H 180', TIMESTAMP '2024-08-16 13:36:08.681', 135000.0, 2.25217458E8, 1.9857922E7);
INSERT INTO O_306 VALUES('240630001042', '240630001000', '7005', 60000.0, '2 Pcs Deli Ordner A5 No. B215 23 A5-3  Black (Ordner Kecil) u/', TIMESTAMP '2024-08-16 13:36:08.681', 60000.0, 875000.0, 1.9797922E7);
INSERT INTO O_306 VALUES('240630001043', '240630001000', '7005', 84000.0, '2 Pcs Ordner Bantex 1465-11 Cobalt Blue u/ Logistik + Stok', TIMESTAMP '2024-08-16 13:36:08.681', 84000.0, 959000.0, 1.9713922E7);
INSERT INTO O_306 VALUES('240630001044', '240630001000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Ambil Barang dr Henicargo', TIMESTAMP '2024-08-16 13:36:08.681', 50000.0, 8.094683E7, 1.9663922E7);
INSERT INTO O_306 VALUES('240630001045', '240630001000', '7004', 10000.0, 'Biaya Administrasi Kartu', TIMESTAMP '2024-08-16 13:36:08.697', 10000.0, 1.67864433E8, 1.9653922E7);
INSERT INTO O_306 VALUES('240630001046', '240630001000', '7004', 10000.0, 'Biaya Administrasi  ', TIMESTAMP '2024-08-16 13:36:08.697', 10000.0, 1.67874433E8, 1.9643922E7);
INSERT INTO O_306 VALUES('240630001047', '240630001000', '7004', 473.0, 'PPH', TIMESTAMP '2024-08-16 13:36:08.697', 473.0, 1.67874906E8, 1.9643449E7);
INSERT INTO O_306 VALUES('240630001048', '240630001000', '7004', 1500000.0, 'Patroli Brimob u/ Pengamanan Tambang perd PAM BRIMOB', TIMESTAMP '2024-08-16 13:36:08.697', 1500000.0, 1.69374906E8, 1.8143449E7);
INSERT INTO O_306 VALUES('240630001049', '240630001000', '7001', 3000000.0, 'Tambahan Insentif a/n Munas (HRD PT. DBP) Selama Diperbantukan', TIMESTAMP '2024-08-16 13:36:08.697', 3000000.0, 1.290519157E9, 1.5143449E7);
INSERT INTO O_306 VALUES('240630001050', '240630001000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-08-16 13:36:08.697', 500000.0, 1.69874906E8, 1.4643449E7);
INSERT INTO O_306 VALUES('240630001051', '240630001000', '7004', 1.4E7, 'Pelunasan Pembayaran u/ Mobilisasi Kontainer dari Kintap ke', TIMESTAMP '2024-08-16 13:36:08.697', 1.4E7, 1.83874906E8, 643449.0);
INSERT INTO O_306 VALUES('240630001052', '240630001000', '7004', 110000.0, '2 Box Antangin @ Rp55.000', TIMESTAMP '2024-08-16 13:36:08.697', 110000.0, 1.83984906E8, 533449.0);
INSERT INTO O_306 VALUES('240630001053', '240630001000', '7004', 35000.0, '1 Strip Promag', TIMESTAMP '2024-08-16 13:36:08.697', 35000.0, 1.84019906E8, 498449.0);
INSERT INTO O_306 VALUES('240630001054', '240630001000', '7004', 12000.0, '2 Strip (Tablet) Paracetamol @ Rp6.000', TIMESTAMP '2024-08-16 13:36:08.697', 12000.0, 1.84031906E8, 486449.0);
INSERT INTO O_306 VALUES('240630001055', '240630001000', '7004', 40000.0, '2 Buah Instro @  Rp20.000', TIMESTAMP '2024-08-16 13:36:08.697', 40000.0, 1.84071906E8, 446449.0);
INSERT INTO O_306 VALUES('240630001056', '240630001000', '7004', 45000.0, '1 Strip (Tablet) Plantacid Forte ', TIMESTAMP '2024-08-16 13:36:08.697', 45000.0, 1.84116906E8, 401449.0);
INSERT INTO O_306 VALUES('240630001057', '240630001000', '7004', 12000.0, '1 Strip (Tablet) Vitamin / Ester C', TIMESTAMP '2024-08-16 13:36:08.697', 12000.0, 1.84128906E8, 389449.0);
INSERT INTO O_306 VALUES('240630001058', '240630001000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (LKH 18) Melak - Surabaya', TIMESTAMP '2024-08-16 13:36:08.697', 47000.0, 3292400.0, 342449.0);
INSERT INTO O_306 VALUES('240630001059', '240630001000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Belanja Sparepart dan Tarik', TIMESTAMP '2024-08-16 13:36:08.697', 50000.0, 8.099683E7, 292449.0);
INSERT INTO O_306 VALUES('240630001060', '240630001000', '7017', 85000.0, '10 Pcs Oktovo Kiki 100 (Buku Kecil) u/ Workshop @ Rp8.500', TIMESTAMP '2024-08-16 13:36:08.697', 85000.0, 2.25302458E8, 207449.0);
INSERT INTO O_306 VALUES('240630001061', '240630001000', '7017', 48000.0, '2 Pcs Folio Kiki 100 (Buku Besar) u/ Workshop @ Rp24.000', TIMESTAMP '2024-08-16 13:36:08.697', 48000.0, 2.25350458E8, 159449.0);
INSERT INTO O_306 VALUES('240630001062', '240630001000', '7001', 120000.0, 'Tambahan Uang Makan (Belanja Sparepart dll) Periode ', TIMESTAMP '2024-08-16 13:36:08.697', 120000.0, 1.290639157E9, 39449.0);
INSERT INTO O_306 VALUES('240630001063', '240630001000', '7017', 90000.0, '2 Pak Tali Ties Sedang u/ TR Hauling @ Rp45.000 PR 3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.697', 90000.0, 2.25440458E8, -50551.0);
INSERT INTO O_306 VALUES('240630001064', '240630001000', '7017', 50000.0, '20 Pcs Sekring Tusuk (Gepeng) Besar 10A u/ TR Hauling @ Rp2.500', TIMESTAMP '2024-08-16 13:36:08.697', 50000.0, 2.25490458E8, -100551.0);
INSERT INTO O_306 VALUES('240630001065', '240630001000', '7017', 100000.0, '5 Kg Paku Biasa 2  u/ Mess KM 18 @ Rp20.000 PR3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.697', 100000.0, 2.25590458E8, -200551.0);
INSERT INTO O_306 VALUES('240630001066', '240630001000', '7017', 100000.0, '5 Kg Paku Biasa 4  u/ Mess KM 18 @ Rp20.000 PR3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.697', 100000.0, 2.25690458E8, -300551.0);
INSERT INTO O_306 VALUES('240630001067', '240630001000', '7017', 760000.0, '4 Pak (20 Kg) Kawat Las RB 26 - 4mm u/ Stok @ Rp190.000', TIMESTAMP '2024-08-16 13:36:08.697', 760000.0, 2.26450458E8, -1060551.0);
INSERT INTO O_306 VALUES('240630001068', '240630001000', '7017', 160000.0, '1 Roll (30 meter) Tali 12 ml u/ Portal Mess KM 18 PR 3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.697', 160000.0, 2.26610458E8, -1220551.0);
INSERT INTO O_306 VALUES('240630001069', '240630001000', '7017', 60000.0, '2 Pcs Sikat Gerinda u/ Workshop @ Rp30.000  PR 3744 / H 433', TIMESTAMP '2024-08-16 13:36:08.697', 60000.0, 2.26670458E8, -1280551.0);
INSERT INTO O_306 VALUES('240630001070', '240630001000', '7017', 75000.0, '30 Pcs Baut M8 X 30 (K12 X 3) u/ Stok @ Rp2.500  PR 3745 / H 172 ', TIMESTAMP '2024-08-16 13:36:08.697', 75000.0, 2.26745458E8, -1355551.0);
INSERT INTO O_306 VALUES('240630001071', '240630001000', '7017', 150000.0, '10 Pcs Batu Gerinda (Mata Gerinda Asah) 4  u/ Stok @ Rp15.000', TIMESTAMP '2024-08-16 13:36:08.697', 150000.0, 2.26895458E8, -1505551.0);
INSERT INTO O_306 VALUES('240630001072', '240630001000', '7017', 90000.0, '2 Bks Paku Seng u/ Mess KM 18 @ Rp45.000  PR 3745 / H 172 ', TIMESTAMP '2024-08-16 13:36:08.697', 90000.0, 2.26985458E8, -1595551.0);
INSERT INTO O_306 VALUES('240630001073', '240630001000', '7017', 30000.0, '10 Lbr Karet Seng (Karet Paku) u/ Mess KM 18 @ Rp3.000', TIMESTAMP '2024-08-16 13:36:08.697', 30000.0, 2.27015458E8, -1625551.0);
INSERT INTO O_306 VALUES('240630001074', '240630001000', '7017', 250000.0, '1 Pcs (1 Galon) Grease Cobra Tanggung u/ Workshop', TIMESTAMP '2024-08-16 13:36:08.697', 250000.0, 2.27265458E8, -1875551.0);
INSERT INTO O_306 VALUES('240630001075', '240630001000', '7017', 90000.0, '2 Pcs (2 Kaleng) Grease Cobra Kecil u/ Workshop @ Rp45.000', TIMESTAMP '2024-08-16 13:36:08.712', 90000.0, 2.27355458E8, -1965551.0);
INSERT INTO O_306 VALUES('240630001076', '240630001000', '7017', 48000.0, '2 Batang Pipa PVC 1/2  u/ Mess KM 18 @ Rp24.000  PR 3747 / H 665', TIMESTAMP '2024-08-16 13:36:08.712', 48000.0, 2.27403458E8, -2013551.0);
INSERT INTO O_306 VALUES('240630001077', '240630001000', '7017', 20000.0, '5 Pcs L 1/2  u/ Mess KM 18 PR 3747 / H 665 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:36:08.712', 20000.0, 2.27423458E8, -2033551.0);
INSERT INTO O_306 VALUES('240630001078', '240630001000', '7017', 10000.0, '2 Pcs T 1/2  u/ Mess KM 18 PR 3747 / H 665 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:36:08.712', 10000.0, 2.27433458E8, -2043551.0);
INSERT INTO O_306 VALUES('240630001079', '240630001000', '7017', 60000.0, '1 Lembar Terpal 3 X 4 u/ Tutup Kayu  PR 3747 / H 665 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:36:08.712', 60000.0, 2.27493458E8, -2103551.0);
INSERT INTO O_306 VALUES('240630001080', '240630001000', '7017', 180000.0, '1 Roll Karpet Lantai u/ Mess KM 18 PR 3747 / H 665 (Toko Dewi Lancar)', TIMESTAMP '2024-08-16 13:36:08.712', 180000.0, 2.27673458E8, -2283551.0);
INSERT INTO O_306 VALUES('240630001081', '240630001000', '7017', 1400000.0, '20 Lembar Plywood (Triplek) 3 mm u/ Mess KM 18 @ Rp70.000', TIMESTAMP '2024-08-16 13:36:08.712', 1400000.0, 2.29073458E8, -3683551.0);
INSERT INTO O_306 VALUES('240630001082', '240630001000', '7017', 15000.0, '1 Pcs Grendel Gembok u/ Mess KM 18 PR 3747 / H 665 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:36:08.712', 15000.0, 2.29088458E8, -3698551.0);
INSERT INTO O_306 VALUES('240630001083', '240630001000', '7017', 60000.0, '2 Pcs Engsel Pintu Gomeo u/ Mess KM 18 @ Rp30.000 ', TIMESTAMP '2024-08-16 13:36:08.712', 60000.0, 2.29148458E8, -3758551.0);
INSERT INTO O_306 VALUES('240630001084', '240630001000', '7017', 30000.0, '1 Pcs Engsel Jendela Gerber u/ Mess KM 18 PR 3747 / H 665 (UD Cahaya)', TIMESTAMP '2024-08-16 13:36:08.712', 30000.0, 2.29178458E8, -3788551.0);
INSERT INTO O_306 VALUES('240630001085', '240630001000', '7017', 39000.0, '3 Pcs Grendel u/ Mess KM 18 @ Rp13.000  PR 3747 / H 665 (UD Cahaya)', TIMESTAMP '2024-08-16 13:36:08.712', 39000.0, 2.29217458E8, -3827551.0);
INSERT INTO O_306 VALUES('240630001086', '240630001000', '7017', 13000.0, '1/2 Kg Paku Plywood (Paku Triplek) u/ Mess KM 18 PR 3747 / H 665', TIMESTAMP '2024-08-16 13:36:08.712', 13000.0, 2.29230458E8, -3840551.0);
INSERT INTO O_306 VALUES('240630001087', '240630001000', '7017', 175000.0, '5 Pcs Timah Batangan u/ Stok PR 3747 / H 665 (Sumber Rejeki)', TIMESTAMP '2024-08-16 13:36:08.712', 175000.0, 2.29405458E8, -4015551.0);
INSERT INTO O_306 VALUES('240630001088', '240630001000', '7017', 110000.0, '1 Pcs Senter Kepala u/ Waker Solar Jeti PR 3747 / H 665 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:08.712', 110000.0, 2.29515458E8, -4125551.0);
INSERT INTO O_306 VALUES('240630001089', '240630001000', '7017', 80000.0, '2 Pak Tali Ties Kecil 4 X 200 u/ TR Hauling @ Rp40.000  PR 3748 / H 777 ', TIMESTAMP '2024-08-16 13:36:08.712', 80000.0, 2.29595458E8, -4205551.0);
INSERT INTO O_306 VALUES('240630002001', '240630002000', '7017', 75000.0, '1 Pcs Kikir 1/2 Bulat 8  u/ Workshop PR 3748 / H 777 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:56.619', 75000.0, 2.29670458E8, -4280551.0);
INSERT INTO O_306 VALUES('240630002002', '240630002000', '7017', 24000.0, '3 Meter Isolasi Bakar u/ TR Hauling @ Rp8.000  PR 3748 / H 777', TIMESTAMP '2024-08-16 13:36:56.619', 24000.0, 2.29694458E8, -4304551.0);
INSERT INTO O_306 VALUES('240630002003', '240630002000', '7017', 170000.0, '1 Pcs Multi Tester u/ Workshop PR 3748 / H 777 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:56.619', 170000.0, 2.29864458E8, -4474551.0);
INSERT INTO O_306 VALUES('240630002004', '240630002000', '7017', 5000.0, '1 Pcs Baut 88 M10 X 25 u/ TR 09  PR 3748 / H 777 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:56.619', 5000.0, 2.29869458E8, -4479551.0);
INSERT INTO O_306 VALUES('240630002005', '240630002000', '7017', 750000.0, '1 Pail (20 Kg) Grease Cobra u/ Workshop  PR 3748 / H 777', TIMESTAMP '2024-08-16 13:36:56.619', 750000.0, 2.30619458E8, -5229551.0);
INSERT INTO O_306 VALUES('240630002006', '240630002000', '7017', 20000.0, '1 Kotak Merpati Envelope 160 X 114 mm (Amplop) u/ Logistik', TIMESTAMP '2024-08-16 13:36:56.619', 20000.0, 2.30639458E8, -5249551.0);
INSERT INTO O_306 VALUES('240630002007', '240630002000', '7017', 25000.0, '1 Kotak Merpati Envelope No. 90 SLK (Amplop) u/ Logistik', TIMESTAMP '2024-08-16 13:36:56.619', 25000.0, 2.30664458E8, -5274551.0);
INSERT INTO O_306 VALUES('240630002008', '240630002000', '7008', 70000.0, 'Cuci Mobil L 8397 VB (Car Wash Virgo)', TIMESTAMP '2024-08-16 13:36:56.619', 70000.0, 1450000.0, -5344551.0);
INSERT INTO O_306 VALUES('240630002009', '240630002000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dan Jemput', TIMESTAMP '2024-08-16 13:36:56.619', 50000.0, 8.104683E7, -5394551.0);
INSERT INTO O_306 VALUES('240630002010', '240630002000', '7001', 160000.0, 'Tambahan Uang Makan (Belanja Sparepart dll) Periode 1 Juni', TIMESTAMP '2024-08-16 13:36:56.619', 160000.0, 1.290799157E9, -5554551.0);
INSERT INTO O_306 VALUES('240630002011', '240630002000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Tarik Tunai dan Transfer Belanja', TIMESTAMP '2024-08-16 13:36:56.619', 50000.0, 8.109683E7, -5604551.0);
INSERT INTO O_306 VALUES('240630002012', '240630002000', '7017', 1100000.0, '110 Kg Plat Besi Bekas 3 mm u/ Workshop @ Rp10.000', TIMESTAMP '2024-08-16 13:36:56.619', 1100000.0, 2.31764458E8, -6704551.0);
INSERT INTO O_306 VALUES('240630002013', '240630002000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Sparepart dan Antar', TIMESTAMP '2024-08-16 13:36:56.619', 50000.0, 8.114683E7, -6754551.0);
INSERT INTO O_306 VALUES('240630002014', '240630002000', '7004', 45000.0, '3 Meter Paranet (Penyemaian Bibit Rumput Jepang) u/ Kantor', TIMESTAMP '2024-08-16 13:36:56.619', 45000.0, 1.84173906E8, -6799551.0);
INSERT INTO O_306 VALUES('240630002015', '240630002000', '7023', 320000.0, '20 Liter Pertamax u/ Gudang @ Rp16.000  PR 3455 / H 551 ', TIMESTAMP '2024-08-16 13:36:56.619', 320000.0, 4821396.0, -7119551.0);
INSERT INTO O_306 VALUES('240630002016', '240630002000', '7017', 600000.0, '1 Tabung Acetilin u/ Gudang KM 18 PR 3455 / H 551 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:56.619', 600000.0, 2.32364458E8, -7719551.0);
INSERT INTO O_306 VALUES('240630002017', '240630002000', '7017', 500000.0, '10 Meter Selang Solar 3/8 u/ Genset @ Rp50.000 PR 3455 / H 551', TIMESTAMP '2024-08-16 13:36:56.619', 500000.0, 2.32864458E8, -8219551.0);
INSERT INTO O_306 VALUES('240630002018', '240630002000', '7017', 700000.0, '1 Pail Grease Cobra u/ Workshop PR 3455 / H 551 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:36:56.619', 700000.0, 2.33564458E8, -8919551.0);
INSERT INTO O_306 VALUES('240630002019', '240630002000', '7009', 50000.0, 'Penyeberangan PP N 8993 AT u/ Belanja Sparepart dan Antar', TIMESTAMP '2024-08-16 13:36:56.619', 50000.0, 3342400.0, -8969551.0);
INSERT INTO O_306 VALUES('240630002020', '240630002000', '7001', 640000.0, 'Piket Genset Penerangan Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.619', 640000.0, 1.291439157E9, -9609551.0);
INSERT INTO O_306 VALUES('240630002021', '240630002000', '7017', 120000.0, '1 Kaleng (5 Liter) Thiner u/ Gudang KM 18  PR 3739 / H 180', TIMESTAMP '2024-08-16 13:36:56.619', 120000.0, 2.33684458E8, -9729551.0);
INSERT INTO O_306 VALUES('240630002022', '240630002000', '7017', 100000.0, '1 Pcs Bearing 6306 u/ Roda Pagar Gudang KM 18 PR 3739 / H 180', TIMESTAMP '2024-08-16 13:36:56.619', 100000.0, 2.33784458E8, -9829551.0);
INSERT INTO O_306 VALUES('240630002023', '240630002000', '7017', 87000.0, '25 Pcs Baut Dinabol K12 X 8 u/ Pagar Gudang KM 18 PR 3739 / H 180', TIMESTAMP '2024-08-16 13:36:56.619', 87000.0, 2.33871458E8, -9916551.0);
INSERT INTO O_306 VALUES('240630002024', '240630002000', '7017', 70000.0, '2 Pcs Mata Bor u/ Pagar Gudang KM 18 @ Rp35.000  PR 3739 / H 180', TIMESTAMP '2024-08-16 13:36:56.619', 70000.0, 2.33941458E8, -9986551.0);
INSERT INTO O_306 VALUES('240630002025', '240630002000', '7017', 65000.0, '13 Lembar Laminating A4 F4 u/ Kode / Nomor Barang di Gudang', TIMESTAMP '2024-08-16 13:36:56.619', 65000.0, 2.34006458E8, -1.0051551E7);
INSERT INTO O_306 VALUES('240630002026', '240630002000', '7017', 275000.0, '5 Meter Selang Spiral 2  u/ Gudang KM 18 @ Rp55.000', TIMESTAMP '2024-08-16 13:36:56.619', 275000.0, 2.34281458E8, -1.0326551E7);
INSERT INTO O_306 VALUES('240630002027', '240630002000', '7017', 105000.0, '3 Kaleng Lem Rajawali u/ Gudang KM 18 @ Rp35.000 PR 3454 / H 144 ', TIMESTAMP '2024-08-16 13:36:56.619', 105000.0, 2.34386458E8, -1.0431551E7);
INSERT INTO O_306 VALUES('240630002028', '240630002000', '7017', 85000.0, '1 Kaleng Cat Hitam u/ Gudang KM 18 PR 3454 / H 144 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:36:56.619', 85000.0, 2.34471458E8, -1.0516551E7);
INSERT INTO O_306 VALUES('240630002029', '240630002000', '7017', 90000.0, '2 Kaleng Thiner u/ Gudang KM 18 @ Rp45.000  PR 3454 / H 144', TIMESTAMP '2024-08-16 13:36:56.619', 90000.0, 2.34561458E8, -1.0606551E7);
INSERT INTO O_306 VALUES('240630002030', '240630002000', '7017', 15000.0, '1 Pcs Lot (Bandul Lot / Unting - unting) u/ Gudang KM 18 ', TIMESTAMP '2024-08-16 13:36:56.619', 15000.0, 2.34576458E8, -1.0621551E7);
INSERT INTO O_306 VALUES('240630002031', '240630002000', '7017', 45000.0, '1 Pcs Roda Pagar u/ Gudang KM 18 PR 3454 / H 144 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:36:56.619', 45000.0, 2.34621458E8, -1.0666551E7);
INSERT INTO O_306 VALUES('240630002032', '240630002000', '7017', 8000.0, '1/4 Kg Paku Triplek u/ Gudang KM 18 PR 3454 / H 144 (UD Mulia Jya)', TIMESTAMP '2024-08-16 13:36:56.619', 8000.0, 2.34629458E8, -1.0674551E7);
INSERT INTO O_306 VALUES('240630002033', '240630002000', '7017', 26000.0, '2 Pcs Kuas 2,5  u/ Gudang KM 18 @ Rp13.000 PR 3454 / H 144', TIMESTAMP '2024-08-16 13:36:56.619', 26000.0, 2.34655458E8, -1.0700551E7);
INSERT INTO O_306 VALUES('240630002034', '240630002000', '7017', 60000.0, '2 Pcs Engsel 5  u/ Gudang KM 18 @ Rp30.000 PR 3454 / H 144', TIMESTAMP '2024-08-16 13:36:56.619', 60000.0, 2.34715458E8, -1.0760551E7);
INSERT INTO O_306 VALUES('240630002035', '240630002000', '7017', 50000.0, '2 Pcs Overpal (Rumah Gembok) u/ Gudang KM 18 @ Rp25.000', TIMESTAMP '2024-08-16 13:36:56.619', 50000.0, 2.34765458E8, -1.0810551E7);
INSERT INTO O_306 VALUES('240630002036', '240630002000', '7017', 30000.0, '2 Pcs Grendel 3  u/ Gudang KM 18 @ Rp15.000 PR 3454 / H 144 ', TIMESTAMP '2024-08-16 13:36:56.619', 30000.0, 2.34795458E8, -1.0840551E7);
INSERT INTO O_306 VALUES('240630002037', '240630002000', '7017', 8000.0, '1 Pcs Grendel 4  u/ Gudang KM 18 PR 3454 / H 144 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:36:56.619', 8000.0, 2.34803458E8, -1.0848551E7);
INSERT INTO O_306 VALUES('240630002038', '240630002000', '7017', 10000.0, '2 Pcs Grendel 2  u/ Gudang KM 18 @ Rp5.000  PR 3454 / H 144 ', TIMESTAMP '2024-08-16 13:36:56.619', 10000.0, 2.34813458E8, -1.0858551E7);
INSERT INTO O_306 VALUES('240630002039', '240630002000', '7017', 12000.0, '2 Pcs Tarikan Pintu (Besar) u/ Gudang KM 18 @ Rp6.000 PR 3454 / H 144', TIMESTAMP '2024-08-16 13:36:56.619', 12000.0, 2.34825458E8, -1.0870551E7);
INSERT INTO O_306 VALUES('240630002040', '240630002000', '7017', 12000.0, '4 Pcs Tarikan Pintu (Sedang) u/ Gudang KM 18 @ Rp3.000', TIMESTAMP '2024-08-16 13:36:56.619', 12000.0, 2.34837458E8, -1.0882551E7);
INSERT INTO O_306 VALUES('240630002041', '240630002000', '7017', 190000.0, '10 Dus Air Gelas An Najwa u/ Tukang Proyek Gudang @ Rp19.000', TIMESTAMP '2024-08-16 13:36:56.619', 190000.0, 2.35027458E8, -1.1072551E7);
INSERT INTO O_306 VALUES('240630002042', '240630002000', '7017', 11000.0, '1 Bungkus Wafer Tango 163 Gr', TIMESTAMP '2024-08-16 13:36:56.619', 11000.0, 2.35038458E8, -1.1083551E7);
INSERT INTO O_306 VALUES('240630002043', '240630002000', '7017', 10000.0, '1 Bungkus Kue Hatari 12', TIMESTAMP '2024-08-16 13:36:56.619', 10000.0, 2.35048458E8, -1.1093551E7);
INSERT INTO O_306 VALUES('240630002044', '240630002000', '7017', 22000.0, '1 Bungkus Wafer Classic Khong Guan', TIMESTAMP '2024-08-16 13:36:56.619', 22000.0, 2.35070458E8, -1.1115551E7);
INSERT INTO O_306 VALUES('240630002045', '240630002000', '7017', 105000.0, '4 Lembar Kaca Loker 5mm (35 cm X 35 cm) u/ Gudang KM 18', TIMESTAMP '2024-08-16 13:36:56.619', 105000.0, 2.35175458E8, -1.1220551E7);
INSERT INTO O_306 VALUES('240630002046', '240630002000', '7006', 500000.0, 'Transport Speed Boat Melak - Samarinda (15 Mei 2024) u/', TIMESTAMP '2024-08-16 13:36:56.634', 500000.0, 8.164683E7, -1.1720551E7);
INSERT INTO O_306 VALUES('240630002047', '240630002000', '7006', 500000.0, 'Transport Speed Boat Samarinda - Melak (22 Mei 2024) u/ ', TIMESTAMP '2024-08-16 13:36:56.634', 500000.0, 8.214683E7, -1.2220551E7);
INSERT INTO O_306 VALUES('240630002048', '240630002000', '7001', 130000.0, 'UM a/n Go Oei Hap Periode 11 Juni 2024 (Cuti Periodik)', TIMESTAMP '2024-08-16 13:36:56.634', 130000.0, 1.291569157E9, -1.2350551E7);
INSERT INTO O_306 VALUES('240630002049', '240630002000', '7001', 140000.0, 'UM a/n Sekhan Periode 11 Juni 2024 (Cuti Periodik)', TIMESTAMP '2024-08-16 13:36:56.634', 140000.0, 1.291709157E9, -1.2490551E7);
INSERT INTO O_306 VALUES('240630002050', '240630002000', '7001', 2050000.0, 'UM a/n M. Agus Irwanto Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 2050000.0, 1.293759157E9, -1.4540551E7);
INSERT INTO O_306 VALUES('240630002051', '240630002000', '7001', 1260000.0, 'UM a/n Syaifullah Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1260000.0, 1.295019157E9, -1.5800551E7);
INSERT INTO O_306 VALUES('240630002052', '240630002000', '7001', 1040000.0, 'UM a/n Haqul Istaflakha Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1040000.0, 1.296059157E9, -1.6840551E7);
INSERT INTO O_306 VALUES('240630002053', '240630002000', '7001', 1100000.0, 'UM a/n Sarjito F. Adam Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1100000.0, 1.297159157E9, -1.7940551E7);
INSERT INTO O_306 VALUES('240630002054', '240630002000', '7001', 750000.0, 'UM a/n Jakaria Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 750000.0, 1.297909157E9, -1.8690551E7);
INSERT INTO O_306 VALUES('240630002055', '240630002000', '7001', 1170000.0, 'UM a/n Didik M. Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1170000.0, 1.299079157E9, -1.9860551E7);
INSERT INTO O_306 VALUES('240630002056', '240630002000', '7001', 1600000.0, 'UM a/n Go Oei Hap Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1600000.0, 1.300679157E9, -2.1460551E7);
INSERT INTO O_306 VALUES('240630002057', '240630002000', '7001', 1500000.0, 'UM a/n Syamsudin Noor Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1500000.0, 1.302179157E9, -2.2960551E7);
INSERT INTO O_306 VALUES('240630002058', '240630002000', '7001', 1800000.0, 'UM a/n Supriyanto Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1800000.0, 1.303979157E9, -2.4760551E7);
INSERT INTO O_306 VALUES('240630002059', '240630002000', '7001', 1500000.0, 'UM a/n Handriyadi Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1500000.0, 1.305479157E9, -2.6260551E7);
INSERT INTO O_306 VALUES('240630002060', '240630002000', '7001', 1400000.0, 'UM a/n Wijanarko Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1400000.0, 1.306879157E9, -2.7660551E7);
INSERT INTO O_306 VALUES('240630002061', '240630002000', '7001', 1400000.0, 'UM a/n Sekhan Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1400000.0, 1.308279157E9, -2.9060551E7);
INSERT INTO O_306 VALUES('240630002062', '240630002000', '7001', 945000.0, 'UM a/n Maretius Oji Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 945000.0, 1.309224157E9, -3.0005551E7);
INSERT INTO O_306 VALUES('240630002063', '240630002000', '7001', 830000.0, 'UM a/n Anna Qodri Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 830000.0, 1.310054157E9, -3.0835551E7);
INSERT INTO O_306 VALUES('240630002064', '240630002000', '7001', 1400000.0, 'UM a/n Yono Setyawan Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1400000.0, 1.311454157E9, -3.2235551E7);
INSERT INTO O_306 VALUES('240630002065', '240630002000', '7001', 1170000.0, 'UM a/n Andri Syamsul Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1170000.0, 1.312624157E9, -3.3405551E7);
INSERT INTO O_306 VALUES('240630002066', '240630002000', '7001', 1500000.0, 'UM a/n Rinaldhie Guntur Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1500000.0, 1.314124157E9, -3.4905551E7);
INSERT INTO O_306 VALUES('240630002067', '240630002000', '7001', 1500000.0, 'UM a/n M. Hafizhni Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1500000.0, 1.315624157E9, -3.6405551E7);
INSERT INTO O_306 VALUES('240630002068', '240630002000', '7001', 1400000.0, 'UM a/n Suradi Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1400000.0, 1.317024157E9, -3.7805551E7);
INSERT INTO O_306 VALUES('240630002069', '240630002000', '7001', 550000.0, 'UM a/n Fajar N. Hidayat  Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 550000.0, 1.317574157E9, -3.8355551E7);
INSERT INTO O_306 VALUES('240630002070', '240630002000', '7001', 1500000.0, 'Kasbon Potong UM Periode 1 Juni 2024 - 10 Juni 2024', TIMESTAMP '2024-08-16 13:36:56.634', 1500000.0, 1.319074157E9, -3.9855551E7);
INSERT INTO O_306 VALUES('240630002071', '240630002000', '7016', 400000.0, '10 Pcs Relay K4 - 24V u/ Stok @ Rp40.000 PR 3464 / H 998', TIMESTAMP '2024-08-16 13:36:56.634', 400000.0, 8.29773338E8, -4.0255551E7);
INSERT INTO O_306 VALUES('240630002072', '240630002000', '7016', 150000.0, '10 Pcs Rumah Relai K4 u/ Stok @ Rp15.000 PR 3464 / H 998', TIMESTAMP '2024-08-16 13:36:56.634', 150000.0, 8.29923338E8, -4.0405551E7);
INSERT INTO O_306 VALUES('240630002073', '240630002000', '7016', 303000.0, '1 Pcs Chamber T30 TBC Belakang Kiri u/ TR 02 PR 3456 / H 166', TIMESTAMP '2024-08-16 13:36:56.634', 303000.0, 8.30226338E8, -4.0708551E7);
INSERT INTO O_306 VALUES('240630002074', '240630002000', '7016', 3580600.0, '5 Set Tie Rod End JD u/ TR 01, TR 02, TR 03, TR 05, dan TR 07', TIMESTAMP '2024-08-16 13:36:56.634', 3580600.0, 8.33806938E8, -4.4289151E7);
INSERT INTO O_306 VALUES('240630002075', '240630002000', '7016', 300000.0, '1 Set (2 Pcs) Tie Rod Trail T30 u/ L 8504 AJ  PR 3463 / H 881', TIMESTAMP '2024-08-16 13:36:56.634', 300000.0, 8.34106938E8, -4.4589151E7);
INSERT INTO O_306 VALUES('240630002076', '240630002000', '7016', 450000.0, '2 Pcs Ball Joint Up u/ L 8504 AJ @ Rp225.000 PR 3463 / H 881', TIMESTAMP '2024-08-16 13:36:56.634', 450000.0, 8.34556938E8, -4.5039151E7);
INSERT INTO O_306 VALUES('240630002077', '240630002000', '7016', 550000.0, '2 Pcs Ball Joint Low u/ L 8504 AJ @ Rp275.000 PR 3463 / H 881', TIMESTAMP '2024-08-16 13:36:56.634', 550000.0, 8.35106938E8, -4.5589151E7);
INSERT INTO O_306 VALUES('240630002078', '240630002000', '7016', 300000.0, '1 Set (2 Pcs) Tie Rod u/ L 8504 AJ  PR 3463 / H 881', TIMESTAMP '2024-08-16 13:36:56.634', 300000.0, 8.35406938E8, -4.5889151E7);
INSERT INTO O_306 VALUES('240630002079', '240630002000', '7016', 342800.0, '40 Pcs B/N Baja 88 16 X 75 FT (Baut Sprocket) u/ SK 200 - 77', TIMESTAMP '2024-08-16 13:36:56.634', 342800.0, 8.35749738E8, -4.6231951E7);
INSERT INTO O_306 VALUES('240630002080', '240630002000', '7016', 250000.0, 'Kaca Film Hitam Kaca Depan u/ L 9502 GH  PR 3467 / H 167', TIMESTAMP '2024-08-16 13:36:56.634', 250000.0, 8.35999738E8, -4.6481951E7);
INSERT INTO O_306 VALUES('240630002081', '240630002000', '7016', 35000.0, 'Ganti Pentil (Roda Depan Kiri) + Pasang u/ L 9502 GH', TIMESTAMP '2024-08-16 13:36:56.634', 35000.0, 8.36034738E8, -4.6516951E7);
INSERT INTO O_306 VALUES('240630002082', '240630002000', '7016', 825000.0, '3 Klg Oil Emkarate R-134a 1 Liter @ Rp275.000', TIMESTAMP '2024-08-16 13:36:56.634', 825000.0, 8.36859738E8, -4.7341951E7);
INSERT INTO O_306 VALUES('240630002083', '240630002000', '7016', 675000.0, '3 Pcs Dryer 0 3/8 Pdk R134 Alm @ Rp225.000', TIMESTAMP '2024-08-16 13:36:56.634', 675000.0, 8.37534738E8, -4.8016951E7);
INSERT INTO O_306 VALUES('240630002084', '240630002000', '7016', 260000.0, '1 Set Oring Set *8 Items = 240 Pcs / Box', TIMESTAMP '2024-08-16 13:36:56.634', 260000.0, 8.37794738E8, -4.8276951E7);
INSERT INTO O_306 VALUES('240630002085', '240630002000', '7016', 825000.0, '3 Pcs Expansion Block for PC 400 @ Rp275.000', TIMESTAMP '2024-08-16 13:36:56.634', 825000.0, 8.38619738E8, -4.9101951E7);
INSERT INTO O_306 VALUES('240630002086', '240630002000', '7016', 210000.0, '3 Pcs Male Binary Switches With 2 Blade Terminals @ Rp70.000', TIMESTAMP '2024-08-16 13:36:56.634', 210000.0, 8.38829738E8, -4.9311951E7);
INSERT INTO O_306 VALUES('240630002087', '240630002000', '7016', 750000.0, '5 Pcs Thermostat PFN 12V @ Rp150.000', TIMESTAMP '2024-08-16 13:36:56.634', 750000.0, 8.39579738E8, -5.0061951E7);
INSERT INTO O_306 VALUES('240630002088', '240630002000', '7016', 1250000.0, '1 Pcs Extrafan 24V 12  7 Daun Celurit', TIMESTAMP '2024-08-16 13:36:56.634', 1250000.0, 8.40829738E8, -5.1311951E7);
INSERT INTO O_306 VALUES('240630002089', '240630002000', '7016', 125000.0, '10 Pcs Valve Core R-134a @ Rp12.500', TIMESTAMP '2024-08-16 13:36:56.634', 125000.0, 8.40954738E8, -5.1436951E7);
INSERT INTO O_306 VALUES('240630003001', '240630003000', '7016', 375000.0, '5 Pcs Vanbelt A41 @ Rp75.000', TIMESTAMP '2024-08-16 13:37:50.947', 375000.0, 8.41329738E8, -5.1811951E7);
INSERT INTO O_306 VALUES('240630003002', '240630003000', '7016', 600000.0, '4 Meter Hose 5/8 Goodyear No. 10 @ Rp150.000', TIMESTAMP '2024-08-16 13:37:50.947', 600000.0, 8.41929738E8, -5.2411951E7);
INSERT INTO O_306 VALUES('240630003003', '240630003000', '7016', 600000.0, '4 Meter Hose 1/2 Goodyear No. 8 @ Rp150.000', TIMESTAMP '2024-08-16 13:37:50.947', 600000.0, 8.42529738E8, -5.3011951E7);
INSERT INTO O_306 VALUES('240630003004', '240630003000', '7016', 600000.0, '4 Meter Hose 3/8 Goodyear No. 6 @ Rp150.000', TIMESTAMP '2024-08-16 13:37:50.963', 600000.0, 8.43129738E8, -5.3611951E7);
INSERT INTO O_306 VALUES('240630003005', '240630003000', '7016', 70000.0, '2 Pcs Fitting Alm 5/8 90 DEG R134 @ Rp35.000', TIMESTAMP '2024-08-16 13:37:50.963', 70000.0, 8.43199738E8, -5.3681951E7);
INSERT INTO O_306 VALUES('240630003006', '240630003000', '7016', 70000.0, '2 Pcs Fitting Alm 1/2 90 DEG R134 @ Rp35.000', TIMESTAMP '2024-08-16 13:37:50.963', 70000.0, 8.43269738E8, -5.3751951E7);
INSERT INTO O_306 VALUES('240630003007', '240630003000', '7016', 70000.0, '2 Pcs Fitting Alm 3/8 90 DEG R134 @ Rp35.000', TIMESTAMP '2024-08-16 13:37:50.963', 70000.0, 8.43339738E8, -5.3821951E7);
INSERT INTO O_306 VALUES('240630003008', '240630003000', '7016', 40000.0, '4 Pcs Ferulle 5/8 R134a @ Rp10.000', TIMESTAMP '2024-08-16 13:37:50.963', 40000.0, 8.43379738E8, -5.3861951E7);
INSERT INTO O_306 VALUES('240630003009', '240630003000', '7016', 40000.0, '4 Pcs Ferulle 1/2 R134a @ Rp10.000', TIMESTAMP '2024-08-16 13:37:50.963', 40000.0, 8.43419738E8, -5.3901951E7);
INSERT INTO O_306 VALUES('240630003010', '240630003000', '7016', 40000.0, '4 Pcs Ferulle 3/8 R134a @ Rp10.000', TIMESTAMP '2024-08-16 13:37:50.963', 40000.0, 8.43459738E8, -5.3941951E7);
INSERT INTO O_306 VALUES('240630003011', '240630003000', '7016', 1900000.0, '2 Pcs Clutch Assembly For KF (24V)  Bensin @ Rp950.000', TIMESTAMP '2024-08-16 13:37:50.963', 1900000.0, 8.45359738E8, -5.5841951E7);
INSERT INTO O_306 VALUES('240630003012', '240630003000', '7016', 90000.0, '2 Pcs Clam Hino @ Rp45.000', TIMESTAMP '2024-08-16 13:37:50.963', 90000.0, 8.45449738E8, -5.5931951E7);
INSERT INTO O_306 VALUES('240630003013', '240630003000', '7016', 70000.0, '2 Pcs Fitting Alm 5/8 Straight R134 @ Rp35.000', TIMESTAMP '2024-08-16 13:37:50.963', 70000.0, 8.45519738E8, -5.6001951E7);
INSERT INTO O_306 VALUES('240630003014', '240630003000', '7016', 70000.0, '2 Pcs Fitting Alm 1/2 Straight R134 @ Rp35.000', TIMESTAMP '2024-08-16 13:37:50.963', 70000.0, 8.45589738E8, -5.6071951E7);
INSERT INTO O_306 VALUES('240630003015', '240630003000', '7016', 70000.0, '2 Pcs Fitting Alm 3/8 Straight R134 @ Rp35.000', TIMESTAMP '2024-08-16 13:37:50.963', 70000.0, 8.45659738E8, -5.6141951E7);
INSERT INTO O_306 VALUES('240630003016', '240630003000', '7009', 100000.0, 'Ongkos Kirim Cendana', TIMESTAMP '2024-08-16 13:37:50.963', 100000.0, 3442400.0, -5.6241951E7);
INSERT INTO O_306 VALUES('240630003017', '240630003000', '7016', 420000.0, '30 Pcs Baut SHOE 20 X 57 20Y-32-05000 u/ SK 200 @ Rp14.000', TIMESTAMP '2024-08-16 13:37:50.963', 420000.0, 8.46079738E8, -5.6661951E7);
INSERT INTO O_306 VALUES('240630003018', '240630003000', '7016', 1500000.0, '50 Pcs Baut SHOE 24 X 65  208-32-05030 u/ PC 400 - 01 @ Rp30.000', TIMESTAMP '2024-08-16 13:37:50.963', 1500000.0, 8.47579738E8, -5.8161951E7);
INSERT INTO O_306 VALUES('240630003019', '240630003000', '7016', 211200.0, 'Pajak', TIMESTAMP '2024-08-16 13:37:50.963', 211200.0, 8.47790938E8, -5.8373151E7);
INSERT INTO O_306 VALUES('240630003020', '240630003000', '7017', 750000.0, '1 Pail (1 Galon) Grease Cobra u/ Workshop PR 3481 / H 271', TIMESTAMP '2024-08-16 13:37:50.963', 750000.0, 2.35925458E8, -5.9123151E7);
INSERT INTO O_306 VALUES('240630003021', '240630003000', '7017', 270000.0, '3 Botol WD 40 u/ Stok @ Rp90.000 u/ Workshop PR 3481 / H 271', TIMESTAMP '2024-08-16 13:37:50.963', 270000.0, 2.36195458E8, -5.9393151E7);
INSERT INTO O_306 VALUES('240630003022', '240630003000', '7017', 50000.0, '1 Pcs Hose TKN 1225A 012 u/ L 8039 BX PR 3481 / H 271', TIMESTAMP '2024-08-16 13:37:50.963', 50000.0, 2.36245458E8, -5.9443151E7);
INSERT INTO O_306 VALUES('240630003023', '240630003000', '7017', 100000.0, '1 Pcs Tie Rod TRN RH KO - 48820 - OK 030 u/ L 8039 BX', TIMESTAMP '2024-08-16 13:37:50.963', 100000.0, 2.36345458E8, -5.9543151E7);
INSERT INTO O_306 VALUES('240630003024', '240630003000', '7007', 350000.0, 'Service Radiator Triton (Buntu / Bocor) u/ L 8039 BX', TIMESTAMP '2024-08-16 13:37:50.963', 350000.0, 1.15E7, -5.9893151E7);
INSERT INTO O_306 VALUES('240630003025', '240630003000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-08-16 13:37:50.963', 500000.0, 1.84673906E8, -6.0393151E7);
INSERT INTO O_306 VALUES('240630003026', '240630003000', '7004', 1359000.0, ' - Ambilan dari Sunway PR 3738 No. 4/5 - 416 Kg', TIMESTAMP '2024-08-16 13:37:50.963', 1359000.0, 1.86032906E8, -6.1752151E7);
INSERT INTO O_306 VALUES('240630003027', '240630003000', '7004', 140000.0, ' - Ambilan dari Metalindo PR 3743 No. 1/2 - 37 K9', TIMESTAMP '2024-08-16 13:37:50.963', 140000.0, 1.86172906E8, -6.1892151E7);
INSERT INTO O_306 VALUES('240630003028', '240630003000', '7004', 185000.0, ' 1 Pcs Ceret', TIMESTAMP '2024-08-16 13:37:50.963', 185000.0, 1.86357906E8, -6.2077151E7);
INSERT INTO O_306 VALUES('240630003029', '240630003000', '7004', 15000.0, ' 1 Pcs Jepitan Plastik ', TIMESTAMP '2024-08-16 13:37:50.963', 15000.0, 1.86372906E8, -6.2092151E7);
INSERT INTO O_306 VALUES('240630003030', '240630003000', '7004', 40000.0, ' 3 Pcs Sutil ', TIMESTAMP '2024-08-16 13:37:50.963', 40000.0, 1.86412906E8, -6.2132151E7);
INSERT INTO O_306 VALUES('240630003031', '240630003000', '7004', 15000.0, ' 1 Pcs Irus Kecil', TIMESTAMP '2024-08-16 13:37:50.963', 15000.0, 1.86427906E8, -6.2147151E7);
INSERT INTO O_306 VALUES('240630003032', '240630003000', '7004', 25000.0, ' 1 Pcs Irus Tanggung (Sedang)', TIMESTAMP '2024-08-16 13:37:50.963', 25000.0, 1.86452906E8, -6.2172151E7);
INSERT INTO O_306 VALUES('240630003033', '240630003000', '7004', 60000.0, ' 1 Pcs Irus Besar', TIMESTAMP '2024-08-16 13:37:50.963', 60000.0, 1.86512906E8, -6.2232151E7);
INSERT INTO O_306 VALUES('240630003034', '240630003000', '7004', 75000.0, ' 1 Pcs Talenan', TIMESTAMP '2024-08-16 13:37:50.963', 75000.0, 1.86587906E8, -6.2307151E7);
INSERT INTO O_306 VALUES('240630003035', '240630003000', '7004', 150000.0, ' 2 Pcs Wajan Beruang @ Rp75.000', TIMESTAMP '2024-08-16 13:37:50.963', 150000.0, 1.86737906E8, -6.2457151E7);
INSERT INTO O_306 VALUES('240630003036', '240630003000', '7004', 220000.0, ' 1 Pcs Wajan Stainless', TIMESTAMP '2024-08-16 13:37:50.963', 220000.0, 1.86957906E8, -6.2677151E7);
INSERT INTO O_306 VALUES('240630003037', '240630003000', '7004', 20000.0, ' 1 Pcs Pisau Stainless', TIMESTAMP '2024-08-16 13:37:50.963', 20000.0, 1.86977906E8, -6.2697151E7);
INSERT INTO O_306 VALUES('240630003038', '240630003000', '7004', 30000.0, ' 1 Pcs Pisau Besi Kayu', TIMESTAMP '2024-08-16 13:37:50.963', 30000.0, 1.87007906E8, -6.2727151E7);
INSERT INTO O_306 VALUES('240630003039', '240630003000', '7004', 30000.0, ' 1 Pcs Baki Stainless Tanggung', TIMESTAMP '2024-08-16 13:37:50.963', 30000.0, 1.87037906E8, -6.2757151E7);
INSERT INTO O_306 VALUES('240630003040', '240630003000', '7004', 70000.0, ' 2 Pcs Baki Stainless Besar @ Rp35.000', TIMESTAMP '2024-08-16 13:37:50.963', 70000.0, 1.87107906E8, -6.2827151E7);
INSERT INTO O_306 VALUES('240630003041', '240630003000', '7004', 850000.0, ' 1 Tabung Gas + Isi ', TIMESTAMP '2024-08-16 13:37:50.963', 850000.0, 1.87957906E8, -6.3677151E7);
INSERT INTO O_306 VALUES('240630003042', '240630003000', '7004', 450000.0, ' 1 Pcs Dandang', TIMESTAMP '2024-08-16 13:37:50.963', 450000.0, 1.88407906E8, -6.4127151E7);
INSERT INTO O_306 VALUES('240630003043', '240630003000', '7004', 210000.0, ' 1 Pcs Panci', TIMESTAMP '2024-08-16 13:37:50.963', 210000.0, 1.88617906E8, -6.4337151E7);
INSERT INTO O_306 VALUES('240630003044', '240630003000', '7004', 200000.0, ' 2 Lusin Gelas Royalex Kecil @ Rp100.000/Lusin', TIMESTAMP '2024-08-16 13:37:50.963', 200000.0, 1.88817906E8, -6.4537151E7);
INSERT INTO O_306 VALUES('240630003045', '240630003000', '7004', 375000.0, ' 2 1/2 Lusin Gelas Royalex Besar @ Rp150.000/Lusin', TIMESTAMP '2024-08-16 13:37:50.963', 375000.0, 1.89192906E8, -6.4912151E7);
INSERT INTO O_306 VALUES('240630003046', '240630003000', '7004', 200000.0, ' 2 Pcs Termos Air @ Rp100.000', TIMESTAMP '2024-08-16 13:37:50.963', 200000.0, 1.89392906E8, -6.5112151E7);
INSERT INTO O_306 VALUES('240630003047', '240630003000', '7004', 50000.0, ' 1 Pcs Teko Plastik', TIMESTAMP '2024-08-16 13:37:50.963', 50000.0, 1.89442906E8, -6.5162151E7);
INSERT INTO O_306 VALUES('240630003048', '240630003000', '7004', 810000.0, ' 27 Pcs Piring Melamin @ Rp30.000', TIMESTAMP '2024-08-16 13:37:50.963', 810000.0, 1.90252906E8, -6.5972151E7);
INSERT INTO O_306 VALUES('240630003049', '240630003000', '7004', 20000.0, ' 2 Lusin Tutup Gelas @ Rp10.000/ Lusin', TIMESTAMP '2024-08-16 13:37:50.963', 20000.0, 1.90272906E8, -6.5992151E7);
INSERT INTO O_306 VALUES('240630003050', '240630003000', '7004', 5000.0, ' 6 Pcs Tutup Gelas ', TIMESTAMP '2024-08-16 13:37:50.963', 5000.0, 1.90277906E8, -6.5997151E7);
INSERT INTO O_306 VALUES('240630003051', '240630003000', '7004', 10000.0, ' 3 Pcs Centong', TIMESTAMP '2024-08-16 13:37:50.978', 10000.0, 1.90287906E8, -6.6007151E7);
INSERT INTO O_306 VALUES('240630003052', '240630003000', '7004', 20000.0, ' 1 Pcs Jepitan  ', TIMESTAMP '2024-08-16 13:37:50.978', 20000.0, 1.90307906E8, -6.6027151E7);
INSERT INTO O_306 VALUES('240630003053', '240630003000', '7004', 40000.0, ' 2 Pcs Baskom Plastik @ Rp20.000', TIMESTAMP '2024-08-16 13:37:50.978', 40000.0, 1.90347906E8, -6.6067151E7);
INSERT INTO O_306 VALUES('240630003054', '240630003000', '7004', 125000.0, ' 1 Pcs Baskom Stainless', TIMESTAMP '2024-08-16 13:37:50.978', 125000.0, 1.90472906E8, -6.6192151E7);
INSERT INTO O_306 VALUES('240630003055', '240630003000', '7004', 340000.0, ' 1 Pcs Kompor', TIMESTAMP '2024-08-16 13:37:50.978', 340000.0, 1.90812906E8, -6.6532151E7);
INSERT INTO O_306 VALUES('240630003056', '240630003000', '7004', 65000.0, ' 1 Pcs Saringan Besar', TIMESTAMP '2024-08-16 13:37:50.978', 65000.0, 1.90877906E8, -6.6597151E7);
INSERT INTO O_306 VALUES('240630003057', '240630003000', '7004', 20000.0, ' 1 Pcs Saringan Kecil', TIMESTAMP '2024-08-16 13:37:50.978', 20000.0, 1.90897906E8, -6.6617151E7);
INSERT INTO O_306 VALUES('240630003058', '240630003000', '7004', 45000.0, ' 3 Lusin Sendok @ Rp15.000/Lusin', TIMESTAMP '2024-08-16 13:37:50.978', 45000.0, 1.90942906E8, -6.6662151E7);
INSERT INTO O_306 VALUES('240630003059', '240630003000', '7004', 45000.0, ' 1 Pcs Cobek Kayu', TIMESTAMP '2024-08-16 13:37:50.978', 45000.0, 1.90987906E8, -6.6707151E7);
INSERT INTO O_306 VALUES('240630003060', '240630003000', '7004', 70000.0, ' 1 Pcs Cobek Batu', TIMESTAMP '2024-08-16 13:37:50.978', 70000.0, 1.91057906E8, -6.6777151E7);
INSERT INTO O_306 VALUES('240630003061', '240630003000', '7004', 27000.0, ' 1 Pcs Wakul', TIMESTAMP '2024-08-16 13:37:50.978', 27000.0, 1.91084906E8, -6.6804151E7);
INSERT INTO O_306 VALUES('240630003062', '240630003000', '7004', 200000.0, ' 1 Pcs Selang Regulator', TIMESTAMP '2024-08-16 13:37:50.978', 200000.0, 1.91284906E8, -6.7004151E7);
INSERT INTO O_306 VALUES('240630003063', '240630003000', '7004', 20000.0, ' 1 Pcs Sutil Kayu', TIMESTAMP '2024-08-16 13:37:50.978', 20000.0, 1.91304906E8, -6.7024151E7);
INSERT INTO O_306 VALUES('240630003064', '240630003000', '7017', 413000.0, ' 1 Pcs Deep Socket Impact Square 3/4  27 MM Genius Rp590.000 Disc 30%', TIMESTAMP '2024-08-16 13:37:50.978', 413000.0, 2.36758458E8, -6.7437151E7);
INSERT INTO O_306 VALUES('240630003065', '240630003000', '7017', 434000.0, ' 1 Pcs Deep Socket Impact Square 3/4  30 MM Genius Rp620.000 Disc 30%', TIMESTAMP '2024-08-16 13:37:50.978', 434000.0, 2.37192458E8, -6.7871151E7);
INSERT INTO O_306 VALUES('240630003066', '240630003000', '7017', 903000.0, ' 2 Pcs Deep Socket Impact Square 3/4  32 MM Genius @ Rp645.000 Disc 30%', TIMESTAMP '2024-08-16 13:37:50.978', 903000.0, 2.38095458E8, -6.8774151E7);
INSERT INTO O_306 VALUES('240630003067', '240630003000', '7017', 144000.0, ' 4 Pcs Kunci Ring Pas CVS  Mata  10 MM @ Rp45.000 Disc 20%', TIMESTAMP '2024-08-16 13:37:50.978', 144000.0, 2.38239458E8, -6.8918151E7);
INSERT INTO O_306 VALUES('240630003068', '240630003000', '7017', 169600.0, ' 4 Pcs Kunci Ring Pas CVS  Mata  12 MM @ Rp53.000 Disc 20%', TIMESTAMP '2024-08-16 13:37:50.978', 169600.0, 2.38409058E8, -6.9087751E7);
INSERT INTO O_306 VALUES('240630003069', '240630003000', '7017', 195200.0, ' 4 Pcs Kunci Ring Pas CVS  Mata  14 MM @ Rp61.000 Disc 20%', TIMESTAMP '2024-08-16 13:37:50.978', 195200.0, 2.38604258E8, -6.9282951E7);
INSERT INTO O_306 VALUES('240630003070', '240630003000', '7017', 116000.0, ' 1 Pcs Adaptor Socket  Mata  3/4  F X 1  M Rp145.000 Disc 20%', TIMESTAMP '2024-08-16 13:37:50.978', 116000.0, 2.38720258E8, -6.9398951E7);
INSERT INTO O_306 VALUES('240630003071', '240630003000', '7017', 735000.0, ' 1 Pcs Kunci Inggris 24  Haston Rp1.050.000 Disc 30%', TIMESTAMP '2024-08-16 13:37:50.978', 735000.0, 2.39455258E8, -7.0133951E7);
INSERT INTO O_306 VALUES('240630003072', '240630003000', '7017', 290000.0, '1 Tabung Isi Oksigen u/ Workshop PR 3464 / H 998 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:37:50.978', 290000.0, 2.39745258E8, -7.0423951E7);
INSERT INTO O_306 VALUES('240630003073', '240630003000', '7017', 90000.0, '2 Pak Sarung Tangan Bintik u/ Stok @ Rp45.000 PR 3464 / H 998 ', TIMESTAMP '2024-08-16 13:37:50.978', 90000.0, 2.39835258E8, -7.0513951E7);
INSERT INTO O_306 VALUES('240630003074', '240630003000', '7017', 325000.0, '5 Pcs Cleaner Rexco u/ Gudang @ Rp65.000 PR 3464 / H 998', TIMESTAMP '2024-08-16 13:37:50.978', 325000.0, 2.40160258E8, -7.0838951E7);
INSERT INTO O_306 VALUES('240630003075', '240630003000', '7017', 10000.0, '5 Pcs Baut M 8 X 50 u/ TR 10 @ Rp2.000  PR 3464 / H 998', TIMESTAMP '2024-08-16 13:37:50.978', 10000.0, 2.40170258E8, -7.0848951E7);
INSERT INTO O_306 VALUES('240630003076', '240630003000', '7017', 20000.0, '5 Pcs Baut 88 M 8 X 50 u/ TR 10 @ Rp4.000  PR 3464 / H 998', TIMESTAMP '2024-08-16 13:37:51.01', 20000.0, 2.40190258E8, -7.0868951E7);
INSERT INTO O_306 VALUES('240630003077', '240630003000', '7017', 750000.0, '3 Tabung Isi Oksigen u/ Workshop @ Rp250.000 PR 3464 / H 998', TIMESTAMP '2024-08-16 13:37:51.01', 750000.0, 2.40940258E8, -7.1618951E7);
INSERT INTO O_306 VALUES('240630003078', '240630003000', '7017', 68000.0, '1 Batang (6 M) Plat Strip u/ Workshop PR 3464 / H 998 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:37:51.01', 68000.0, 2.41008258E8, -7.1686951E7);
INSERT INTO O_306 VALUES('240630003079', '240630003000', '7017', 26000.0, '2 Pcs Saklar Tanggung u/ Mess KM 18 @ Rp13.000 PR 3464 / H 998', TIMESTAMP '2024-08-16 13:37:51.01', 26000.0, 2.41034258E8, -7.1712951E7);
INSERT INTO O_306 VALUES('240630003080', '240630003000', '7017', 80000.0, '2 Kotak Skrup GIP u/ Gudang Baru KM 18 @ Rp40.000', TIMESTAMP '2024-08-16 13:37:51.01', 80000.0, 2.41114258E8, -7.1792951E7);
INSERT INTO O_306 VALUES('240630003081', '240630003000', '7017', 10000.0, '2 Pcs Grendel u/ Gudang Baru KM 18 @ Rp5.000 PR 3464 / H 998', TIMESTAMP '2024-08-16 13:37:51.01', 10000.0, 2.41124258E8, -7.1802951E7);
INSERT INTO O_306 VALUES('240630003082', '240630003000', '7017', 85000.0, '1 Kaleng Cat Hitam Avian u/ Gudang Baru KM 18  PR 3464 / H 998 ', TIMESTAMP '2024-08-16 13:37:51.01', 85000.0, 2.41209258E8, -7.1887951E7);
INSERT INTO O_306 VALUES('240630003083', '240630003000', '7017', 25000.0, '1 Pcs Literan (Gelas Ukur) u/ Workshop PR 3464 / H 998 ', TIMESTAMP '2024-08-16 13:37:51.01', 25000.0, 2.41234258E8, -7.1912951E7);
INSERT INTO O_306 VALUES('240630003084', '240630003000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Sparepart dan Antar', TIMESTAMP '2024-08-16 13:37:51.01', 50000.0, 8.219683E7, -7.1962951E7);
INSERT INTO O_306 VALUES('240630003085', '240630003000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokuman (LKH 19 dan Dokumen Rekap', TIMESTAMP '2024-08-16 13:37:51.01', 47000.0, 3489400.0, -7.2009951E7);
INSERT INTO O_306 VALUES('240630003086', '240630003000', '7009', 100000.0, ' - Ambilan Barang dari Balikpapan - Samarinda  PR 3723', TIMESTAMP '2024-08-16 13:37:51.01', 100000.0, 3589400.0, -7.2109951E7);
INSERT INTO O_306 VALUES('240630003087', '240630003000', '7009', 200000.0, ' - Ambilan dari Surabaya - Samarinda PR 3723 (Kabel Masa u/ TR Hauling)', TIMESTAMP '2024-08-16 13:37:51.01', 200000.0, 3789400.0, -7.2309951E7);
INSERT INTO O_306 VALUES('240630003088', '240630003000', '7009', 225000.0, ' - Ongkos Cendana Samarinda - Melak', TIMESTAMP '2024-08-16 13:37:51.01', 225000.0, 4014400.0, -7.2534951E7);
INSERT INTO O_306 VALUES('240630003089', '240630003000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Antar Karyawan Cuti Alasan', TIMESTAMP '2024-08-16 13:37:51.01', 50000.0, 8.224683E7, -7.2584951E7);
INSERT INTO O_306 VALUES('240630004001', '240630004000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-08-16 13:38:31.843', 500000.0, 1.91804906E8, -7.3084951E7);
INSERT INTO O_306 VALUES('240630004002', '240630004000', '7001', 640000.0, 'Piket Genset Penerangan Periode 11 Juni 2024 - 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 640000.0, 1.319714157E9, -7.3724951E7);
INSERT INTO O_306 VALUES('240630004003', '240630004000', '7017', 213500.0, '1 Pcs Impact Socket Square 3/4  24mm Genius Rp305.000 Disc 30%', TIMESTAMP '2024-08-16 13:38:31.843', 213500.0, 2.41447758E8, -7.3938451E7);
INSERT INTO O_306 VALUES('240630004004', '240630004000', '7017', 423500.0, '1 Pcs Impact Socket Square 3/4  36mm Genius Rp605.000 Disc 30%', TIMESTAMP '2024-08-16 13:38:31.843', 423500.0, 2.41871258E8, -7.4361951E7);
INSERT INTO O_306 VALUES('240630004005', '240630004000', '7017', 504000.0, '1 Pcs Impact Socket Square 1  36mm 6PT Genius Rp720.000 Disc 30%', TIMESTAMP '2024-08-16 13:38:31.843', 504000.0, 2.42375258E8, -7.4865951E7);
INSERT INTO O_306 VALUES('240630004006', '240630004000', '7017', 424000.0, '1 Pcs Kunci Ring Pas CVS  Mata  36mm Rp530.000 Disc 20%', TIMESTAMP '2024-08-16 13:38:31.843', 424000.0, 2.42799258E8, -7.5289951E7);
INSERT INTO O_306 VALUES('240630004007', '240630004000', '7017', 568000.0, '1 Pcs Kunci Ring Pas CVS  Mata  38mm Rp710.000 Disc 20%', TIMESTAMP '2024-08-16 13:38:31.843', 568000.0, 2.43367258E8, -7.5857951E7);
INSERT INTO O_306 VALUES('240630004008', '240630004000', '7017', 848000.0, '1 Pcs Kunci Ring Pas CVS  Mata  46mm Rp1.060.000 Disc 20%', TIMESTAMP '2024-08-16 13:38:31.843', 848000.0, 2.44215258E8, -7.6705951E7);
INSERT INTO O_306 VALUES('240630004009', '240630004000', '7017', 35000.0, '1 Pcs Kunci T Tora 8mm RP50.000 Disc 30%', TIMESTAMP '2024-08-16 13:38:31.843', 35000.0, 2.44250258E8, -7.6740951E7);
INSERT INTO O_306 VALUES('240630004010', '240630004000', '7017', 35000.0, '1 Pcs Kunci T Tora 10mm RP50.000 Disc 30%', TIMESTAMP '2024-08-16 13:38:31.843', 35000.0, 2.44285258E8, -7.6775951E7);
INSERT INTO O_306 VALUES('240630004011', '240630004000', '7017', 25200.0, '1 Pcs Obeng Tester  Haston  Rp36.000 Disc 30%', TIMESTAMP '2024-08-16 13:38:31.843', 25200.0, 2.44310458E8, -7.6801151E7);
INSERT INTO O_306 VALUES('240630004012', '240630004000', '7017', 308000.0, '1 Pcs Impact Socket Square 1  32mm 6PT Gestar Rp440.000 Disc 30%', TIMESTAMP '2024-08-16 13:38:31.843', 308000.0, 2.44618458E8, -7.7109151E7);
INSERT INTO O_306 VALUES('240630004013', '240630004000', '7017', 156000.0, '1 Pcs Kunci Ring Pas CVS  Mata  27mm Rp195.000 Disc 20%', TIMESTAMP '2024-08-16 13:38:31.843', 156000.0, 2.44774458E8, -7.7265151E7);
INSERT INTO O_306 VALUES('240630004014', '240630004000', '7017', 176000.0, '1 Pcs Kunci Ring Pas CVS  Mata  29mm Rp220.000 Disc 20%', TIMESTAMP '2024-08-16 13:38:31.843', 176000.0, 2.44950458E8, -7.7441151E7);
INSERT INTO O_306 VALUES('240630004015', '240630004000', '7017', 100000.0, '1 Pcs L Handle CVS  Mata  1/2  SQ X 300mm Rp125.000 Disc 20%', TIMESTAMP '2024-08-16 13:38:31.843', 100000.0, 2.45050458E8, -7.7541151E7);
INSERT INTO O_306 VALUES('240630004016', '240630004000', '7017', 29750.0, '1 Pcs Thread Pitch Gauge Matric Grip On Rp35.000 Disc 15%', TIMESTAMP '2024-08-16 13:38:31.843', 29750.0, 2.45080208E8, -7.7570901E7);
INSERT INTO O_306 VALUES('240630004017', '240630004000', '7017', 165000.0, '1 Roll Plastik Wrap u/ Workshop PR 3479 / H 122 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:38:31.843', 165000.0, 2.45245208E8, -7.7735901E7);
INSERT INTO O_306 VALUES('240630004018', '240630004000', '7017', 250000.0, '10 Pcs Lem Besi Dextone u/ Stok @ Rp25.000 PR 3479 / H 122', TIMESTAMP '2024-08-16 13:38:31.843', 250000.0, 2.45495208E8, -7.7985901E7);
INSERT INTO O_306 VALUES('240630004019', '240630004000', '7017', 45000.0, '1 Pcs (1 Roll) Tali Nylon u/ Manhaul 01 PR 3479 / H 122 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:38:31.843', 45000.0, 2.45540208E8, -7.8030901E7);
INSERT INTO O_306 VALUES('240630004020', '240630004000', '7017', 50000.0, '25 Pcs Fuse (Sekring) Tabung 20A u/ Stok @ Rp2.000 ', TIMESTAMP '2024-08-16 13:38:31.843', 50000.0, 2.45590208E8, -7.8080901E7);
INSERT INTO O_306 VALUES('240630004021', '240630004000', '7017', 26000.0, '2 Pcs Kuas 2  u/ Gudang KM 18 @ Rp13.000  PR 3479 / H 122', TIMESTAMP '2024-08-16 13:38:31.843', 26000.0, 2.45616208E8, -7.8106901E7);
INSERT INTO O_306 VALUES('240630004022', '240630004000', '7017', 10000.0, '1 Pak Refil Cutter (Isi Cutter) u/ Gudang KM 18 PR 3479 / H 122', TIMESTAMP '2024-08-16 13:38:31.843', 10000.0, 2.45626208E8, -7.8116901E7);
INSERT INTO O_306 VALUES('240630004023', '240630004000', '7017', 20000.0, '1 Pcs Mata Bor Besi cm 4 u/ Workshop PR 3479 / H 122 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:38:31.843', 20000.0, 2.45646208E8, -7.8136901E7);
INSERT INTO O_306 VALUES('240630004024', '240630004000', '7017', 55000.0, '1 Pcs Mata Bor Besi cm 8 u/ Workshop PR 3479 / H 122 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:38:31.843', 55000.0, 2.45701208E8, -7.8191901E7);
INSERT INTO O_306 VALUES('240630004025', '240630004000', '7017', 20000.0, '1 Pcs Mur Tandon 1  u/ Workshop PR 3479 / H 122 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:38:31.843', 20000.0, 2.45721208E8, -7.8211901E7);
INSERT INTO O_306 VALUES('240630004026', '240630004000', '7017', 30000.0, '1 Pcs Kunci Ring Pas 6 u/ Workshop PR 3479 / H 122 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:38:31.843', 30000.0, 2.45751208E8, -7.8241901E7);
INSERT INTO O_306 VALUES('240630004027', '240630004000', '7017', 30000.0, '1 Pcs Kunci Ring Pas 7 u/ Workshop PR 3479 / H 122 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:38:31.843', 30000.0, 2.45781208E8, -7.8271901E7);
INSERT INTO O_306 VALUES('240630004028', '240630004000', '7017', 30000.0, '1 Pcs Kunci Ring Pas 8 u/ Workshop PR 3479 / H 122 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:38:31.843', 30000.0, 2.45811208E8, -7.8301901E7);
INSERT INTO O_306 VALUES('240630004029', '240630004000', '7017', 750000.0, '3 Pcs Sarung Jok u/ Manhaul 01 @ Rp250.000 PR 3479 / H 122', TIMESTAMP '2024-08-16 13:38:31.843', 750000.0, 2.46561208E8, -7.9051901E7);
INSERT INTO O_306 VALUES('240630004030', '240630004000', '7017', 40000.0, '2 Pcs Saklar Isi 2 u/ Workshop @ Rp20.000 PR 3480 / H 665', TIMESTAMP '2024-08-16 13:38:31.843', 40000.0, 2.46601208E8, -7.9091901E7);
INSERT INTO O_306 VALUES('240630004031', '240630004000', '7017', 106000.0, '2 Pcs Terminal Broco Isi 4 u/ Workshop @ Rp53.000 PR 3480 / H 665', TIMESTAMP '2024-08-16 13:38:31.843', 106000.0, 2.46707208E8, -7.9197901E7);
INSERT INTO O_306 VALUES('240630004032', '240630004000', '7017', 60000.0, '1 Pcs Solder 60W Tekiro u/ Workshop PR 3480 / H 665 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:38:31.843', 60000.0, 2.46767208E8, -7.9257901E7);
INSERT INTO O_306 VALUES('240630004033', '240630004000', '7017', 40000.0, '2 Kg Paku u/ Workshop @ Rp20.000 PR 3480 / H 665 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:38:31.843', 40000.0, 2.46807208E8, -7.9297901E7);
INSERT INTO O_306 VALUES('240630004034', '240630004000', '7017', 136000.0, '2 Batang Plat Strip u/ Manhaul 01 @ Rp68.000  PR 3480 / H 665', TIMESTAMP '2024-08-16 13:38:31.843', 136000.0, 2.46943208E8, -7.9433901E7);
INSERT INTO O_306 VALUES('240630004035', '240630004000', '7017', 8000.0, '2 Pcs Baut L Stain M5 X 40 u/ Workshop @ Rp4.000 PR 3480 / H 665', TIMESTAMP '2024-08-16 13:38:31.843', 8000.0, 2.46951208E8, -7.9441901E7);
INSERT INTO O_306 VALUES('240630004036', '240630004000', '7017', 30000.0, '1 Pcs Baut 14 X 80 u/ Workshop  PR 3480 / H 665 (Busur Jaya Mobil)', TIMESTAMP '2024-08-16 13:38:31.843', 30000.0, 2.46981208E8, -7.9471901E7);
INSERT INTO O_306 VALUES('240630004037', '240630004000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Contoh Sparepart (Melak - Surabaya)', TIMESTAMP '2024-08-16 13:38:31.843', 47000.0, 4061400.0, -7.9518901E7);
INSERT INTO O_306 VALUES('240630004038', '240630004000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Ambil Barang di Cendana dan', TIMESTAMP '2024-08-16 13:38:31.843', 50000.0, 8.229683E7, -7.9568901E7);
INSERT INTO O_306 VALUES('240630004039', '240630004000', '7005', 80000.0, '8 Lembar Print Warna A3 u/ Design Workshop Baru KM 18', TIMESTAMP '2024-08-16 13:38:31.843', 80000.0, 1039000.0, -7.9648901E7);
INSERT INTO O_306 VALUES('240630004040', '240630004000', '7001', 530000.0, 'UM a/n Supriyanto Periode 11 Juni 2024 s/d 13 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 530000.0, 1.320244157E9, -8.0178901E7);
INSERT INTO O_306 VALUES('240630004041', '240630004000', '7001', 700000.0, 'UM a/n Syamsudin Noor Periode 11 Juni 2024 s/d 15 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 700000.0, 1.320944157E9, -8.0878901E7);
INSERT INTO O_306 VALUES('240630004042', '240630004000', '7001', 1900000.0, 'UM a/n M. Agus Irwanto Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1900000.0, 1.322844157E9, -8.2778901E7);
INSERT INTO O_306 VALUES('240630004043', '240630004000', '7001', 1260000.0, 'UM a/n Syaifullah Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1260000.0, 1.324104157E9, -8.4038901E7);
INSERT INTO O_306 VALUES('240630004044', '240630004000', '7001', 880000.0, 'UM a/n Haqul Istaflakha Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 880000.0, 1.324984157E9, -8.4918901E7);
INSERT INTO O_306 VALUES('240630004045', '240630004000', '7001', 1100000.0, 'UM a/n Sarjito F. Adam Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1100000.0, 1.326084157E9, -8.6018901E7);
INSERT INTO O_306 VALUES('240630004046', '240630004000', '7001', 600000.0, 'UM a/n Jakaria Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 600000.0, 1.326684157E9, -8.6618901E7);
INSERT INTO O_306 VALUES('240630004047', '240630004000', '7001', 1170000.0, 'UM a/n Didik M. Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1170000.0, 1.327854157E9, -8.7788901E7);
INSERT INTO O_306 VALUES('240630004048', '240630004000', '7001', 1500000.0, 'UM a/n Handriyadi Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1500000.0, 1.329354157E9, -8.9288901E7);
INSERT INTO O_306 VALUES('240630004049', '240630004000', '7001', 1400000.0, 'UM a/n Wijanarko Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1400000.0, 1.330754157E9, -9.0688901E7);
INSERT INTO O_306 VALUES('240630004050', '240630004000', '7001', 1400000.0, 'UM a/n Anna Qodri Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1400000.0, 1.332154157E9, -9.2088901E7);
INSERT INTO O_306 VALUES('240630004051', '240630004000', '7001', 1400000.0, 'UM a/n Yono Setyawan Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1400000.0, 1.333554157E9, -9.3488901E7);
INSERT INTO O_306 VALUES('240630004052', '240630004000', '7001', 1170000.0, 'UM a/n Andri Syamsul Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1170000.0, 1.334724157E9, -9.4658901E7);
INSERT INTO O_306 VALUES('240630004053', '240630004000', '7001', 1500000.0, 'UM a/n Rinaldhie G. Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1500000.0, 1.336224157E9, -9.6158901E7);
INSERT INTO O_306 VALUES('240630004054', '240630004000', '7001', 1500000.0, 'UM a/n M. Hafizhni Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1500000.0, 1.337724157E9, -9.7658901E7);
INSERT INTO O_306 VALUES('240630004055', '240630004000', '7001', 1400000.0, 'UM a/n Suradi Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1400000.0, 1.339124157E9, -9.9058901E7);
INSERT INTO O_306 VALUES('240630004056', '240630004000', '7001', 550000.0, 'UM a/n Fajar N. Hidayat Periode 11 Juni 2024 s/d 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 550000.0, 1.339674157E9, -9.9608901E7);
INSERT INTO O_306 VALUES('240630004057', '240630004000', '7001', 1500000.0, 'Kasbon Potong UM Periode 11 Juni 2024 - 20 Juni 2024', TIMESTAMP '2024-08-16 13:38:31.843', 1500000.0, 1.341174157E9, -1.01108901E8);
INSERT INTO O_306 VALUES('240630004058', '240630004000', '7016', 540000.0, '3 Pcs Joint D85SS-2 04256-40817 u/ D85-38 + Stok @ Rp180.000', TIMESTAMP '2024-08-16 13:38:31.843', 540000.0, 8.48330938E8, -1.01648901E8);
INSERT INTO O_306 VALUES('240630004059', '240630004000', '7016', 1500000.0, '50 Pcs Baut SHOE 24 X 65 208-32-05030 u/ PC 400 - 02 @ Rp30.000', TIMESTAMP '2024-08-16 13:38:31.843', 1500000.0, 8.49830938E8, -1.03148901E8);
INSERT INTO O_306 VALUES('240630004060', '240630004000', '7016', 950000.0, '1 Set Seal Bucket PC400-8 SKF u/ PC 400 - 02  PR 3470 / H 655', TIMESTAMP '2024-08-16 13:38:31.843', 950000.0, 8.50780938E8, -1.04098901E8);
INSERT INTO O_306 VALUES('240630004061', '240630004000', '7016', 370000.0, '20 Pcs Baut Roller 18 X 90 20Y-30-11340 / 01010-51890 u/ PC 400', TIMESTAMP '2024-08-16 13:38:31.843', 370000.0, 8.51150938E8, -1.04468901E8);
INSERT INTO O_306 VALUES('240630004062', '240630004000', '7016', 600000.0, '20 Pcs Baut Kuku 24 X 130 u/ SK 200 @ Rp30.000 ', TIMESTAMP '2024-08-16 13:38:31.843', 600000.0, 8.51750938E8, -1.05068901E8);
INSERT INTO O_306 VALUES('240630004063', '240630004000', '7016', 435600.0, 'Pajak ', TIMESTAMP '2024-08-16 13:38:31.843', 435600.0, 8.52186538E8, -1.05504501E8);
INSERT INTO O_306 VALUES('240630004064', '240630004000', '7016', 1500251.0, ' - Subtotal Produk', TIMESTAMP '2024-08-16 13:38:31.843', 1500251.0, 8.53686789E8, -1.07004752E8);
INSERT INTO O_306 VALUES('240630004065', '240630004000', '7016', 98800.0, ' - Subtotal Pengiriman', TIMESTAMP '2024-08-16 13:38:31.843', 98800.0, 8.53785589E8, -1.07103552E8);
INSERT INTO O_306 VALUES('240630004066', '240630004000', '7016', 1000.0, ' - Biaya Penanganan ', TIMESTAMP '2024-08-16 13:38:31.859', 1000.0, 8.53786589E8, -1.07104552E8);
INSERT INTO O_306 VALUES('240630004067', '240630004000', '7016', 1000.0, ' - Biaya Layanan', TIMESTAMP '2024-08-16 13:38:31.859', 1000.0, 8.53787589E8, -1.07105552E8);
INSERT INTO O_306 VALUES('240630004068', '240630004000', '7016', 986020.0, '1 Pcs Pressure Gauge 4 Mata - Hydraulic Pressure u/ Workshop', TIMESTAMP '2024-08-16 13:38:31.859', 986020.0, 8.54773609E8, -1.08091572E8);
INSERT INTO O_306 VALUES('240630004069', '240630004000', '7016', 300000.0, '3 Pcs Bushing (Bubut) R Baut u/ L 8039 BX  PR 3489 / H 189', TIMESTAMP '2024-08-16 13:38:31.859', 300000.0, 8.55073609E8, -1.08391572E8);
INSERT INTO O_306 VALUES('240630004070', '240630004000', '7016', 600000.0, '1 Pcs Perbaikan Radiator dan Ganti Cover Atas Radiator Hilux', TIMESTAMP '2024-08-16 13:38:31.859', 600000.0, 8.55673609E8, -1.08991572E8);
INSERT INTO O_306 VALUES('240630004071', '240630004000', '7016', 650000.0, '1 Pcs Handle L (Stang Sok L) 3/4  X 20 u/ Workshop PR 3489 / H 189', TIMESTAMP '2024-08-16 13:38:31.859', 650000.0, 8.56323609E8, -1.09641572E8);
INSERT INTO O_306 VALUES('240630004072', '240630004000', '7016', 275000.0, '1 Pcs Handle Ratchet (Handle Stang Sok) 1/2  X 10 u/ Workshop', TIMESTAMP '2024-08-16 13:38:31.859', 275000.0, 8.56598609E8, -1.09916572E8);
INSERT INTO O_306 VALUES('240630004073', '240630004000', '7016', 160000.0, '4 Pcs Kuku Macan (Klem Seling) M 22 u/ Workshop @ Rp40.000', TIMESTAMP '2024-08-16 13:38:31.859', 160000.0, 8.56758609E8, -1.10076572E8);
INSERT INTO O_306 VALUES('240630004074', '240630004000', '7016', 55000.0, '10 Pcs Baut L Stainless M5 X 50 u/ AC Unit @ Rp5.5000', TIMESTAMP '2024-08-16 13:38:31.859', 55000.0, 8.56813609E8, -1.10131572E8);
INSERT INTO O_306 VALUES('240630004075', '240630004000', '7016', 5000.0, '1 Pcs Baut 88 M6 X 100 u/ N 9811 EE  PR 3489 / H 189', TIMESTAMP '2024-08-16 13:38:31.859', 5000.0, 8.56818609E8, -1.10136572E8);
INSERT INTO O_306 VALUES('240630004076', '240630004000', '7016', 240000.0, '6 Pcs Bohlam H3 24V 70W u/ Stok @ Rp40.000  PR 3490 / H 188 ', TIMESTAMP '2024-08-16 13:38:31.859', 240000.0, 8.57058609E8, -1.10376572E8);
INSERT INTO O_306 VALUES('240630004077', '240630004000', '7016', 180000.0, '6 Pcs Baut Baja 12 X 35 u/ Doser 03  PR 3489 / H 189', TIMESTAMP '2024-08-16 13:38:31.859', 180000.0, 8.57238609E8, -1.10556572E8);
INSERT INTO O_306 VALUES('240630004078', '240630004000', '7016', 12000.0, '6 Pcs WP Tebal (Ring Tebal) 12 mm u/ Doser 03 PR 3489 / H 189', TIMESTAMP '2024-08-16 13:38:31.859', 12000.0, 8.57250609E8, -1.10568572E8);
INSERT INTO O_306 VALUES('240630004079', '240630004000', '7016', 825000.0, '3 Pcs Idle Pully ND u/ Stok @ Rp275.000  PR 3492 / H 430', TIMESTAMP '2024-08-16 13:38:31.859', 825000.0, 8.58075609E8, -1.11393572E8);
INSERT INTO O_306 VALUES('240630004080', '240630004000', '7016', 600000.0, '4 Pcs Thermostat Pen 12V u/ Stok @ Rp150.000 PR 3492 / H 430 ', TIMESTAMP '2024-08-16 13:38:31.859', 600000.0, 8.58675609E8, -1.11993572E8);
INSERT INTO O_306 VALUES('240630004081', '240630004000', '7016', 675000.0, '3 Pcs Dryer O 3/8 PDK R134 Alm u/ Stok @ Rp225.000', TIMESTAMP '2024-08-16 13:38:31.859', 675000.0, 8.59350609E8, -1.12668572E8);
INSERT INTO O_306 VALUES('240630004082', '240630004000', '7016', 825000.0, '3 Pcs Expansion Block For PC 400 u/ Stok @ Rp275.000', TIMESTAMP '2024-08-16 13:38:31.859', 825000.0, 8.60175609E8, -1.13493572E8);
INSERT INTO O_306 VALUES('240630004083', '240630004000', '7016', 3750000.0, '3 Pcs Extrafan 24V 12  5 Daun u/ Stok @ Rp1.250.000', TIMESTAMP '2024-08-16 13:38:31.859', 3750000.0, 8.63925609E8, -1.17243572E8);
INSERT INTO O_306 VALUES('240630004084', '240630004000', '7016', 240000.0, '2 Kaleng Oil Emkarate R-134a 1 Liter u/ Stok @ Rp120.000', TIMESTAMP '2024-08-16 13:38:31.859', 240000.0, 8.64165609E8, -1.17483572E8);
INSERT INTO O_306 VALUES('240630004085', '240630004000', '7016', 950000.0, '1 Pcs Clutch Assembly For KF (24V) Bensin u/ Stok', TIMESTAMP '2024-08-16 13:38:31.859', 950000.0, 8.65115609E8, -1.18433572E8);
INSERT INTO O_306 VALUES('240630004086', '240630004000', '7016', 85000.0, 'Ongkos Kirim Cendana (Sparepart AC) Samarinda - Melak', TIMESTAMP '2024-08-16 13:38:31.859', 85000.0, 8.65200609E8, -1.18518572E8);
INSERT INTO O_306 VALUES('240630004087', '240630004000', '7016', 2100000.0, '70 Pcs Baut SHOE 24 X 65 u/ PC 400 - 02 + Stok @ Rp30.000', TIMESTAMP '2024-08-16 13:38:31.859', 2100000.0, 8.67300609E8, -1.20618572E8);
INSERT INTO O_306 VALUES('240630004088', '240630004000', '7016', 231000.0, 'Pajak ', TIMESTAMP '2024-08-16 13:38:31.859', 231000.0, 8.67531609E8, -1.20849572E8);
INSERT INTO O_306 VALUES('240630004089', '240630004000', '7016', 105000.0, '1 Pcs Seal R/W 90310 - T0008 u/ N 8993 AT PR 3494 / H 190', TIMESTAMP '2024-08-16 13:38:31.859', 105000.0, 8.67636609E8, -1.20954572E8);
INSERT INTO O_306 VALUES('240630005001', '240630005000', '7016', 275000.0, '1 Pcs Bearing Roda RR NSK 02 42KWD10 u/ N 8993 AT', TIMESTAMP '2024-08-16 13:39:21.17', 275000.0, 8.67911609E8, -1.21229572E8);
INSERT INTO O_306 VALUES('240630005002', '240630005000', '7016', 70000.0, '2 Pcs Cones Bearing Koyo-02 42423 - OK020 / C02112', TIMESTAMP '2024-08-16 13:39:21.17', 70000.0, 8.67981609E8, -1.21299572E8);
INSERT INTO O_306 VALUES('240630005003', '240630005000', '7016', 160000.0, '2 Pcs Jet Oil PIP E Slide Specia BW - 2656 / MD319537', TIMESTAMP '2024-08-16 13:39:21.17', 160000.0, 8.68141609E8, -1.21459572E8);
INSERT INTO O_306 VALUES('240630005004', '240630005000', '7016', 85000.0, '1 Pcs Jet Oil PIP E Slide Specia BW - 2655 / MD319535', TIMESTAMP '2024-08-16 13:39:21.17', 85000.0, 8.68226609E8, -1.21544572E8);
INSERT INTO O_306 VALUES('240630005005', '240630005000', '7016', 190000.0, '2 Pcs Handle Out RH (Handle Luar Kanan) GI 69110 - 1260 ', TIMESTAMP '2024-08-16 13:39:21.17', 190000.0, 8.68416609E8, -1.21734572E8);
INSERT INTO O_306 VALUES('240630005006', '240630005000', '7016', 242000.0, '2 Pcs Seal R/W Out G 90313 - T0002 u/ N 8993 AT', TIMESTAMP '2024-08-16 13:39:21.17', 242000.0, 8.68658609E8, -1.21976572E8);
INSERT INTO O_306 VALUES('240630005007', '240630005000', '7016', 850000.0, ' - Subtotal Produk', TIMESTAMP '2024-08-16 13:39:21.17', 850000.0, 8.69508609E8, -1.22826572E8);
INSERT INTO O_306 VALUES('240630005008', '240630005000', '7016', 108200.0, ' - Subtotal Pengiriman', TIMESTAMP '2024-08-16 13:39:21.17', 108200.0, 8.69616809E8, -1.22934772E8);
INSERT INTO O_306 VALUES('240630005009', '240630005000', '7016', 1000.0, ' - Biaya Penanganan ', TIMESTAMP '2024-08-16 13:39:21.17', 1000.0, 8.69617809E8, -1.22935772E8);
INSERT INTO O_306 VALUES('240630005010', '240630005000', '7016', 1000.0, ' - Biaya Layanan', TIMESTAMP '2024-08-16 13:39:21.17', 1000.0, 8.69618809E8, -1.22936772E8);
INSERT INTO O_306 VALUES('240630005011', '240630005000', '7016', 10000.0, '1 Pcs Tutup Radiator u/ Genset Rhino  PR 3497 / H 188', TIMESTAMP '2024-08-16 13:39:21.17', 10000.0, 8.69628809E8, -1.22946772E8);
INSERT INTO O_306 VALUES('240630005012', '240630005000', '7016', 105000.0, '30 Pcs Baut M8 X 40 + Ring u/ Stok @ Rp3.500 PR 3497 / H 188', TIMESTAMP '2024-08-16 13:39:21.17', 105000.0, 8.69733809E8, -1.23051772E8);
INSERT INTO O_306 VALUES('240630005013', '240630005000', '7016', 75000.0, '30 Pcs Fuse (Sekring Gepeng) Kecil 10A u/ Stok @ Rp2.500', TIMESTAMP '2024-08-16 13:39:21.17', 75000.0, 8.69808809E8, -1.23126772E8);
INSERT INTO O_306 VALUES('240630005014', '240630005000', '7022', 2500000.0, 'Dana Sosial u/ Petinggi Muara Batuq Periode Juni 2024', TIMESTAMP '2024-08-16 13:39:21.17', 2500000.0, 1.45E7, -1.25626772E8);
INSERT INTO O_306 VALUES('240630005015', '240630005000', '7017', 350000.0, '10 Set Kepala Aki Kuningan / Klem Aki u/ Stok @ Rp35.000', TIMESTAMP '2024-08-16 13:39:21.17', 350000.0, 2.47331208E8, -1.25976772E8);
INSERT INTO O_306 VALUES('240630005016', '240630005000', '7017', 20000.0, '1 Pcs Kikir Segitiga Makita u/ Tukang PR 3485 / H 551 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:39:21.17', 20000.0, 2.47351208E8, -1.25996772E8);
INSERT INTO O_306 VALUES('240630005017', '240630005000', '7017', 10000.0, '1 Pcs Mur Lock M14 u/ Workshop PR 3485 / H 551 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:39:21.17', 10000.0, 2.47361208E8, -1.26006772E8);
INSERT INTO O_306 VALUES('240630005018', '240630005000', '7017', 3000.0, '1 Pcs Mur M14 u/ Workshop PR 3485 / H 551 (UD Maju Mandiri)', TIMESTAMP '2024-08-16 13:39:21.17', 3000.0, 2.47364208E8, -1.26009772E8);
INSERT INTO O_306 VALUES('240630005019', '240630005000', '7017', 90000.0, '1 Pcs Regulator Gas Kenmaster u/ Workshop PR 3485 / H 551', TIMESTAMP '2024-08-16 13:39:21.17', 90000.0, 2.47454208E8, -1.26099772E8);
INSERT INTO O_306 VALUES('240630005020', '240630005000', '7017', 800000.0, '8 Pcs Sprei u/ Karyawan (Hani, Hamid, Rifai, Mukhlis, Safii, ', TIMESTAMP '2024-08-16 13:39:21.17', 800000.0, 2.48254208E8, -1.26899772E8);
INSERT INTO O_306 VALUES('240630005021', '240630005000', '7017', 400000.0, '8 Pcs Bantal u/ Karyawan (Hani, Hamid, Rifai, Mukhlis, Safii, ', TIMESTAMP '2024-08-16 13:39:21.17', 400000.0, 2.48654208E8, -1.27299772E8);
INSERT INTO O_306 VALUES('240630005022', '240630005000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Ambil Barang dr Henicargo', TIMESTAMP '2024-08-16 13:39:21.17', 50000.0, 8.234683E7, -1.27349772E8);
INSERT INTO O_306 VALUES('240630005023', '240630005000', '7023', 130000.0, '10 Liter Solar u/ L 8397 VB @ Rp13.000  PR 3489 / H 189', TIMESTAMP '2024-08-16 13:39:21.17', 130000.0, 4951396.0, -1.27479772E8);
INSERT INTO O_306 VALUES('240630005024', '240630005000', '7017', 650000.0, '10 Meter Seling u/ Workshop PR 3489 / H 189 (Sumber Rejeki)', TIMESTAMP '2024-08-16 13:39:21.17', 650000.0, 2.49304208E8, -1.28129772E8);
INSERT INTO O_306 VALUES('240630005025', '240630005000', '7023', 160000.0, '10 Liter Pertamax u/ Stok @ Rp16.000  PR 3490 / H 188', TIMESTAMP '2024-08-16 13:39:21.17', 160000.0, 5111396.0, -1.28289772E8);
INSERT INTO O_306 VALUES('240630005026', '240630005000', '7017', 100000.0, '5 Kg Paku u/ Mess KM 18 @ Rp20.000 PR 3490 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:39:21.17', 100000.0, 2.49404208E8, -1.28389772E8);
INSERT INTO O_306 VALUES('240630005027', '240630005000', '7017', 6000.0, '2 Pcs Dop Tutup Pipa 3/4  u/ Mess KM 18 PR 3490 / H 188', TIMESTAMP '2024-08-16 13:39:21.17', 6000.0, 2.49410208E8, -1.28395772E8);
INSERT INTO O_306 VALUES('240630005028', '240630005000', '7017', 8000.0, '2 Pcs Dop Tutup Pipa 1  u/ Mess KM 18 PR 3490 / H 188', TIMESTAMP '2024-08-16 13:39:21.17', 8000.0, 2.49418208E8, -1.28403772E8);
INSERT INTO O_306 VALUES('240630005029', '240630005000', '7017', 20000.0, '2 Pcs Engsel 3  u/ Mess KM 18 PR 3490 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:39:21.17', 20000.0, 2.49438208E8, -1.28423772E8);
INSERT INTO O_306 VALUES('240630005030', '240630005000', '7017', 30000.0, '2 Pcs Engsel 5  u/ Mess KM 18 PR 3490 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:39:21.17', 30000.0, 2.49468208E8, -1.28453772E8);
INSERT INTO O_306 VALUES('240630005031', '240630005000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (LKH 20 dan Laporan ', TIMESTAMP '2024-08-16 13:39:21.17', 47000.0, 4108400.0, -1.28500772E8);
INSERT INTO O_306 VALUES('240630005032', '240630005000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dll', TIMESTAMP '2024-08-16 13:39:21.17', 50000.0, 8.239683E7, -1.28550772E8);
INSERT INTO O_306 VALUES('240630005033', '240630005000', '7006', 15000.0, '2 Pcs Tipe X Pencet Kenko u/ Logistik (CV Karya Teladan Jempol)', TIMESTAMP '2024-08-16 13:39:21.17', 15000.0, 8.241183E7, -1.28565772E8);
INSERT INTO O_306 VALUES('240630005034', '240630005000', '7004', 28500.0, '3 Bungkus Roma Cream Kelapa Cokelat u/ Tukang @ Rp9.500', TIMESTAMP '2024-08-16 13:39:21.17', 28500.0, 1.91833406E8, -1.28594272E8);
INSERT INTO O_306 VALUES('240630005035', '240630005000', '7004', 28500.0, '3 Bungkus Roma Biskuit Kelapa u/ Tukang @ Rp9.5000', TIMESTAMP '2024-08-16 13:39:21.17', 28500.0, 1.91861906E8, -1.28622772E8);
INSERT INTO O_306 VALUES('240630005036', '240630005000', '7006', 50000.0, 'Penyeberangan L 9502 GH u/ Cek Harga Material Pembangunan', TIMESTAMP '2024-08-16 13:39:21.17', 50000.0, 8.246183E7, -1.28672772E8);
INSERT INTO O_306 VALUES('240630005037', '240630005000', '7006', 750000.0, 'Pengganti Bensin Perahu Penyeberangan Karyawan Periode', TIMESTAMP '2024-08-16 13:39:21.17', 750000.0, 8.321183E7, -1.29422772E8);
INSERT INTO O_306 VALUES('240630005038', '240630005000', '7017', 130000.0, '1 Pcs Tang Buaya Tekiro u/ Workshop PR 3497 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:39:21.17', 130000.0, 2.49598208E8, -1.29552772E8);
INSERT INTO O_306 VALUES('240630005039', '240630005000', '7017', 740000.0, '1 Roll (50 M) Kabel NYM 2 X 2,5mm u/ Dapur Baru  PR 3497 / H 188', TIMESTAMP '2024-08-16 13:39:21.17', 740000.0, 2.50338208E8, -1.30292772E8);
INSERT INTO O_306 VALUES('240630005040', '240630005000', '7017', 54000.0, '3 Pcs Stop Kontak Isi 1 Broco u/ Dapur Baru @ Rp18.000 PR 3497 / H 188', TIMESTAMP '2024-08-16 13:39:21.17', 54000.0, 2.50392208E8, -1.30346772E8);
INSERT INTO O_306 VALUES('240630005041', '240630005000', '7017', 36000.0, '2 Pcs Saklar Tempel Isi 1 Broco / u/ Dapur Baru @ Rp18.000', TIMESTAMP '2024-08-16 13:39:21.17', 36000.0, 2.50428208E8, -1.30382772E8);
INSERT INTO O_306 VALUES('240630005042', '240630005000', '7017', 40000.0, '2 Pcs Saklar Tempel Isi 2 Broco / u/ Dapur Baru @ Rp20.000', TIMESTAMP '2024-08-16 13:39:21.17', 40000.0, 2.50468208E8, -1.30422772E8);
INSERT INTO O_306 VALUES('240630005043', '240630005000', '7017', 30000.0, '1 Pcs MCB 16A u/ Dapur Baru PR 3497 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-16 13:39:21.17', 30000.0, 2.50498208E8, -1.30452772E8);
INSERT INTO O_306 VALUES('240630005044', '240630005000', '7017', 90000.0, '5 Pcs Fitting Tempel u/ Dapur Baru @ Rp18.000 PR 3497 / H 188', TIMESTAMP '2024-08-16 13:39:21.186', 90000.0, 2.50588208E8, -1.30542772E8);
INSERT INTO O_306 VALUES('240630005045', '240630005000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Antar Karyawan Cuti (M. Hafizhni,', TIMESTAMP '2024-08-16 13:39:21.186', 50000.0, 8.326183E7, -1.30592772E8);
INSERT INTO O_306 VALUES('240630005046', '240630005000', '7022', 1500000.0, 'Dana Sosial u/ Petinggi Muyub Ilir Periode Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1500000.0, 1.6E7, -1.32092772E8);
INSERT INTO O_306 VALUES('240630005047', '240630005000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-08-16 13:39:21.186', 500000.0, 1.92361906E8, -1.32592772E8);
INSERT INTO O_306 VALUES('240630005048', '240630005000', '7001', 640000.0, 'Piket Genset Penerangan Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 640000.0, 1.341814157E9, -1.33232772E8);
INSERT INTO O_306 VALUES('240630005049', '240630005000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan u/ Cuti Periodik (10 Juni 2024)', TIMESTAMP '2024-08-16 13:39:21.186', 450000.0, 8.371183E7, -1.33682772E8);
INSERT INTO O_306 VALUES('240630005050', '240630005000', '7006', 100000.0, 'Transport Darat dari Bandara Juanda - PT Etika Dharma Konserens -', TIMESTAMP '2024-08-16 13:39:21.186', 100000.0, 8.381183E7, -1.33782772E8);
INSERT INTO O_306 VALUES('240630005051', '240630005000', '7006', 50000.0, 'Transport Darat Bungurasih - Bandara Juanda (Kedatangan / 26 Juni 2024)', TIMESTAMP '2024-08-16 13:39:21.186', 50000.0, 8.386183E7, -1.33832772E8);
INSERT INTO O_306 VALUES('240630005052', '240630005000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak (Kedatangan / 26 Juni 2024)', TIMESTAMP '2024-08-16 13:39:21.186', 450000.0, 8.431183E7, -1.34282772E8);
INSERT INTO O_306 VALUES('240630005053', '240630005000', '7006', 500000.0, 'Transport Speed Boat Melak - Samarinda (Cuti Periodik / 13 Juni 2024)', TIMESTAMP '2024-08-16 13:39:21.186', 500000.0, 8.481183E7, -1.34782772E8);
INSERT INTO O_306 VALUES('240630005054', '240630005000', '7006', 500000.0, 'Transport Darat Samarinda - Melak Rp400.000 + Makan Rp50.000 +', TIMESTAMP '2024-08-16 13:39:21.186', 500000.0, 8.531183E7, -1.35282772E8);
INSERT INTO O_306 VALUES('240630005055', '240630005000', '7001', 1750000.0, 'UM 5 Orang Karyawan dari PT Bekal Putra yang Pindah ke PT Dhako', TIMESTAMP '2024-08-16 13:39:21.186', 1750000.0, 1.343564157E9, -1.37032772E8);
INSERT INTO O_306 VALUES('240630005056', '240630005000', '7001', 1750000.0, 'UM 5 Orang Karyawan dari PT Bekal Putra yang Pindah ke PT Dhako', TIMESTAMP '2024-08-16 13:39:21.186', 1750000.0, 1.345314157E9, -1.38782772E8);
INSERT INTO O_306 VALUES('240630005057', '240630005000', '7001', 1120000.0, 'UM a/n Wijanarko Periode 21 Juni 2024 - 28 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1120000.0, 1.346434157E9, -1.39902772E8);
INSERT INTO O_306 VALUES('240630005058', '240630005000', '7001', 912000.0, 'UM a/n Andri Syamsul Periode 21 Juni 2024 - 28 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 912000.0, 1.347346157E9, -1.40814772E8);
INSERT INTO O_306 VALUES('240630005059', '240630005000', '7001', 1190000.0, 'UM a/n M. Hafizhni Periode 21 Juni 2024 - 28 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1190000.0, 1.348536157E9, -1.42004772E8);
INSERT INTO O_306 VALUES('240630005060', '240630005000', '7001', 1900000.0, 'UM a/n M. Agus Irwanto Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1900000.0, 1.350436157E9, -1.43904772E8);
INSERT INTO O_306 VALUES('240630005061', '240630005000', '7001', 1400000.0, 'UM a/n Syaifullah Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1400000.0, 1.351836157E9, -1.45304772E8);
INSERT INTO O_306 VALUES('240630005062', '240630005000', '7001', 1100000.0, 'UM a/n Haqul Istaflakha Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1100000.0, 1.352936157E9, -1.46404772E8);
INSERT INTO O_306 VALUES('240630005063', '240630005000', '7001', 1100000.0, 'UM a/n Sarjito F. Adam Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1100000.0, 1.354036157E9, -1.47504772E8);
INSERT INTO O_306 VALUES('240630005064', '240630005000', '7001', 750000.0, 'UM a/n Jakaria Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 750000.0, 1.354786157E9, -1.48254772E8);
INSERT INTO O_306 VALUES('240630005065', '240630005000', '7001', 1170000.0, 'UM a/n Didik M. Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1170000.0, 1.355956157E9, -1.49424772E8);
INSERT INTO O_306 VALUES('240630005066', '240630005000', '7001', 350000.0, 'UM a/n Supriyanto Periode 29 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 350000.0, 1.356306157E9, -1.49774772E8);
INSERT INTO O_306 VALUES('240630005067', '240630005000', '7001', 1500000.0, 'UM a/n Handriyadi Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1500000.0, 1.357806157E9, -1.51274772E8);
INSERT INTO O_306 VALUES('240630005068', '240630005000', '7001', 700000.0, 'UM a/n Sekhan Periode 26 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 700000.0, 1.358506157E9, -1.51974772E8);
INSERT INTO O_306 VALUES('240630005069', '240630005000', '7001', 1050000.0, 'UM a/n Maretius Oji Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1050000.0, 1.359556157E9, -1.53024772E8);
INSERT INTO O_306 VALUES('240630005070', '240630005000', '7001', 1400000.0, 'UM a/n Anna Qodri Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1400000.0, 1.360956157E9, -1.54424772E8);
INSERT INTO O_306 VALUES('240630005071', '240630005000', '7001', 1400000.0, 'UM a/n Yono Setyawan Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1400000.0, 1.362356157E9, -1.55824772E8);
INSERT INTO O_306 VALUES('240630005072', '240630005000', '7001', 1400000.0, 'UM a/n Suradi Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1400000.0, 1.363756157E9, -1.57224772E8);
INSERT INTO O_306 VALUES('240630005073', '240630005000', '7001', 1500000.0, 'UM a/n Rinaldhie G. Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 1500000.0, 1.365256157E9, -1.58724772E8);
INSERT INTO O_306 VALUES('240630005074', '240630005000', '7001', 550000.0, 'UM a/n Fajar N. Hidayat Periode 21 Juni 2024 - 30 Juni 2024', TIMESTAMP '2024-08-16 13:39:21.186', 550000.0, 1.365806157E9, -1.59274772E8);
INSERT INTO O_306 VALUES('240731001001', '240731001000', '7016', 850000.0, '1 Set (4 Pcs) Kampas Rem Belakang Hilux 04495 - OK 120', TIMESTAMP '2024-08-27 14:08:59.631', 850000.0, 850000.0, 7.2342592E7);
INSERT INTO O_306 VALUES('240731001002', '240731001000', '7016', 250000.0, '1 Set Lever Kit Brake 04935 - OK 143 RH u/ L 9502 GH PR 3508 / H 180', TIMESTAMP '2024-08-27 14:08:59.632', 250000.0, 1100000.0, 9.7092592E7);
INSERT INTO O_306 VALUES('240731001003', '240731001000', '7016', 525000.0, '3 Pcs Master Rem Belakang Hilux 47550 - 27020 u/ L 9502 GH + Stok', TIMESTAMP '2024-08-27 14:08:59.632', 525000.0, 1625000.0, 1.27567592E8);
INSERT INTO O_306 VALUES('240731001004', '240731001000', '7016', 600000.0, '1 Pcs Hose 4 Ply P. 87 cm u/ Arm Cylinder SK 200 - 77 PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.632', 600000.0, 2225000.0, 1.26968405E8);
INSERT INTO O_306 VALUES('240731001005', '240731001000', '7016', 2100000.0, '2 Pcs Hose 4 Ply 3/4  P. 160 cm u/ Bucket Cylinder SK 200 - 77 ', TIMESTAMP '2024-08-27 14:08:59.633', 2100000.0, 4325000.0, 1.44868405E8);
INSERT INTO O_306 VALUES('240731001006', '240731001000', '7016', 1400000.0, '1 Pcs Hose 4 Ply 1,25  P. 88 cm u/ Arm Cylinder SK 200 - 77', TIMESTAMP '2024-08-27 14:08:59.633', 1400000.0, 5725000.0, 1.63468405E8);
INSERT INTO O_306 VALUES('240731001007', '240731001000', '7016', 600000.0, '1 Pcs Hose Benang 17 Bar P.220 u/ DT 01  PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.633', 600000.0, 6325000.0, 1.95868405E8);
INSERT INTO O_306 VALUES('240731001008', '240731001000', '7016', 660000.0, '4 Pcs BushIng Up Arm Hilux 48632 - OK040 u/ N 9811 EE @ Rp165.000', TIMESTAMP '2024-08-27 14:08:59.633', 660000.0, 6985000.0, 1.95208405E8);
INSERT INTO O_306 VALUES('240731001009', '240731001000', '7016', 1480000.0, '1 Set (4 Pcs) Cylinder Liner MB168963/0503S/097089 u/ L 8039 BX', TIMESTAMP '2024-08-27 14:08:59.633', 1480000.0, 8465000.0, 1.93728405E8);
INSERT INTO O_306 VALUES('240731001010', '240731001000', '7016', 300000.0, '2 Pcs Ball Joint Lower (Bawah) 43330 - 09295 u/ N 9811 EE + Stok', TIMESTAMP '2024-08-27 14:08:59.633', 300000.0, 8765000.0, 1.93428405E8);
INSERT INTO O_306 VALUES('240731001011', '240731001000', '7016', 170000.0, '2 Pcs Ball Joint Upper (Atas) 43310-09015 u/ N 9811 EE + Stok', TIMESTAMP '2024-08-27 14:08:59.633', 170000.0, 8935000.0, 1.93258405E8);
INSERT INTO O_306 VALUES('240731001012', '240731001000', '7016', 1800000.0, '1 Set Piston dan Pin Assy 1110C313 u/ L 8039 BX PR 3514 / H 188', TIMESTAMP '2024-08-27 14:08:59.641', 1800000.0, 1.0735E7, 1.91458405E8);
INSERT INTO O_306 VALUES('240731001013', '240731001000', '7017', 45000.0, '1 Pcs Nepel Drat 2  u/ Tangki Solar Induk  PR 3500 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.641', 45000.0, -7.9955E7, 1.91413405E8);
INSERT INTO O_306 VALUES('240731001014', '240731001000', '7017', 90000.0, '2 Pcs Sok Drat Dalam 2  u/ Tangki Solar Induk @ Rp45.000 PR 3500 / H 188', TIMESTAMP '2024-08-27 14:08:59.641', 90000.0, -7.9865E7, 1.91323405E8);
INSERT INTO O_306 VALUES('240731001015', '240731001000', '7017', 46000.0, '2 Pcs Mata Sock Segi 12 Ukuran 10, 12 u/ Workshop @ Rp23.000 ', TIMESTAMP '2024-08-27 14:08:59.643', 46000.0, -7.9819E7, 1.91277405E8);
INSERT INTO O_306 VALUES('240731001016', '240731001000', '7017', 25000.0, '1 Pcs Mata Sock Segi 12 Ukuran 14 u/ Workshop PR 3500 / H 188 ', TIMESTAMP '2024-08-27 14:08:59.643', 25000.0, -7.9794E7, 1.91252405E8);
INSERT INTO O_306 VALUES('240731001017', '240731001000', '7017', 90000.0, '2 Pak Sarung Tangan @ Rp45.000  PR 3500 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.643', 90000.0, -7.9704E7, 1.91162405E8);
INSERT INTO O_306 VALUES('240731001018', '240731001000', '7017', 65000.0, '1 Kaleng Lem Pipa u/ Mess KM 18 PR 3500 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.644', 65000.0, -7.9639E7, 1.91097405E8);
INSERT INTO O_306 VALUES('240731001019', '240731001000', '7017', 70000.0, '1 Pcs Tang Potong Tekiro u/ Workshop PR 3500 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.644', 70000.0, -7.9569E7, 1.91027405E8);
INSERT INTO O_306 VALUES('240731001020', '240731001000', '7017', 270000.0, '6 Pcs Selang Grease Tekiro u/ Stok @ Rp45.000 PR 3500 / H 188 ', TIMESTAMP '2024-08-27 14:08:59.645', 270000.0, -7.9299E7, 1.90757405E8);
INSERT INTO O_306 VALUES('240731001021', '240731001000', '7017', 40000.0, '2 Kg Paku u/ Mess KM 18 @ Rp20.000  PR 3500 / H 188 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.645', 40000.0, -7.9259E7, 1.90717405E8);
INSERT INTO O_306 VALUES('240731001022', '240731001000', '7017', 35000.0, '5 Pcs Reducer 1  - 3/4  u/ Mess KM 18 @ Rp7.000  PR 3500 / H 188 ', TIMESTAMP '2024-08-27 14:08:59.645', 35000.0, -7.9224E7, 1.90682405E8);
INSERT INTO O_306 VALUES('240731001023', '240731001000', '7017', 35000.0, '5 Pcs Sock Pipa 1  u/ Mess KM 18 @ Rp7.000 PR3500 / H 188 ', TIMESTAMP '2024-08-27 14:08:59.645', 35000.0, -7.9189E7, 1.90647405E8);
INSERT INTO O_306 VALUES('240731001024', '240731001000', '7017', 12000.0, '2 Pcs T Pipa 3/4  u/ Mess KM 18 @ Rp6.000 PR 3500 / H 188 ', TIMESTAMP '2024-08-27 14:08:59.647', 12000.0, -7.9177E7, 1.90635405E8);
INSERT INTO O_306 VALUES('240731001025', '240731001000', '7017', 25000.0, '5 Pcs Sock Pipa 3/4  u/ Mess KM 18 @ Rp5.000  PR 3500 / H 188 ', TIMESTAMP '2024-08-27 14:08:59.648', 25000.0, -7.9152E7, 1.90610405E8);
INSERT INTO O_306 VALUES('240731001026', '240731001000', '7017', 300000.0, '4 Lembar Plywood Meranti 4mm u/ Dapur Baru Mess 18 @ Rp75.000 ', TIMESTAMP '2024-08-27 14:08:59.648', 300000.0, -7.8852E7, 1.90310405E8);
INSERT INTO O_306 VALUES('240731001027', '240731001000', '7017', 175000.0, '1 Set Bak Cuci Piring (Wastafel) 1 Lubang u/ Dapur Baru Mess 18', TIMESTAMP '2024-08-27 14:08:59.648', 175000.0, -7.8677E7, 1.90135405E8);
INSERT INTO O_306 VALUES('240731001028', '240731001000', '7017', 175000.0, '1 Set Bak Cuci Piring (Wastafel) 1 Lubang u/ Dapur Baru Mess 18', TIMESTAMP '2024-08-27 14:08:59.649', 175000.0, -7.8502E7, 1.89960405E8);
INSERT INTO O_306 VALUES('240731001029', '240731001000', '7017', 26000.0, '2 Pcs Sock Drat Dalam 1,5  u/ Dapur Baru Mess 18 @ Rp13.000    ', TIMESTAMP '2024-08-27 14:08:59.649', 26000.0, -7.8476E7, 1.89934405E8);
INSERT INTO O_306 VALUES('240731001030', '240731001000', '7017', 20000.0, '2 Pcs Reducer 1,5  - 1  u/ Dapur Baru Mess 18 @ Rp10.000 ', TIMESTAMP '2024-08-27 14:08:59.649', 20000.0, -7.8456E7, 1.89914405E8);
INSERT INTO O_306 VALUES('240731001031', '240731001000', '7017', 200000.0, '10 Kg Paku Biasa u/ Dapur Baru Mess 18 @ Rp20.000  PR 3501 / H 189 ', TIMESTAMP '2024-08-27 14:08:59.65', 200000.0, -7.8256E7, 1.89714405E8);
INSERT INTO O_306 VALUES('240731001032', '240731001000', '7017', 250000.0, '5 Kaleng WD Besar MP 80 u/ Workshop @ Rp 50.000 ', TIMESTAMP '2024-08-27 14:08:59.65', 250000.0, -7.8006E7, 1.89464405E8);
INSERT INTO O_306 VALUES('240731001033', '240731001000', '7017', 28500.0, '3 Bungkus Roma Kelapa Cream Coklat u/ Tukang @ Rp9.500', TIMESTAMP '2024-08-27 14:08:59.65', 28500.0, -7.79775E7, 1.89435905E8);
INSERT INTO O_306 VALUES('240731001034', '240731001000', '7017', 20400.0, '3 Bungkus Hatari Bon-bon Choco u/ Tukang @ Rp6.800', TIMESTAMP '2024-08-27 14:08:59.65', 20400.0, -7.79571E7, 1.89415505E8);
INSERT INTO O_306 VALUES('240731001035', '240731001000', '7017', 28500.0, '3 BungkusRoma Biskuit Kelapa u/ Tukang @ Rp9.500', TIMESTAMP '2024-08-27 14:08:59.65', 28500.0, -7.79286E7, 1.89387005E8);
INSERT INTO O_306 VALUES('240731001036', '240731001000', '7017', 40000.0, '2 Dus Air Gelas An Najwa u/ Tukang @ Rp20.000', TIMESTAMP '2024-08-27 14:08:59.65', 40000.0, -7.78886E7, 1.89347005E8);
INSERT INTO O_306 VALUES('240731001037', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Antar Karyawan Cuti (Suradi),', TIMESTAMP '2024-08-27 14:08:59.65', 50000.0, 50000.0, 1.89297005E8);
INSERT INTO O_306 VALUES('240731001038', '240731001000', '7017', 296000.0, '   4 Lembar Plywood Meranti 4 mm @ Rp74.000 (UD Cahaya)', TIMESTAMP '2024-08-27 14:08:59.65', 296000.0, -7.75926E7, 1.89001005E8);
INSERT INTO O_306 VALUES('240731001039', '240731001000', '7017', 30000.0, '   3 Meter Amplas @ Rp10.000 (UD Cahaya)', TIMESTAMP '2024-08-27 14:08:59.651', 30000.0, -7.75626E7, 1.88971005E8);
INSERT INTO O_306 VALUES('240731001040', '240731001000', '7017', 10000.0, '   2 Pcs Kapi Plastik @ Rp5.000 (UD Cahaya)', TIMESTAMP '2024-08-27 14:08:59.651', 10000.0, -7.75526E7, 1.88961005E8);
INSERT INTO O_306 VALUES('240731001041', '240731001000', '7017', 15000.0, '   1 Pcs Drawer Lock (UD Cahaya)', TIMESTAMP '2024-08-27 14:08:59.651', 15000.0, -7.75376E7, 1.88946005E8);
INSERT INTO O_306 VALUES('240731001042', '240731001000', '7017', 5000.0, '    1 Pcs Kavi (UD Cahaya)', TIMESTAMP '2024-08-27 14:08:59.651', 5000.0, -7.75326E7, 1.88941005E8);
INSERT INTO O_306 VALUES('240731001043', '240731001000', '7017', 60000.0, '   2 Kg Paku Biasa @ Rp30.000 (Sumber Rejeki)', TIMESTAMP '2024-08-27 14:08:59.651', 60000.0, -7.74726E7, 1.88881005E8);
INSERT INTO O_306 VALUES('240731001044', '240731001000', '7017', 280000.0, '   4,5 Meter Aluminium (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.651', 280000.0, -7.71926E7, 1.88601005E8);
INSERT INTO O_306 VALUES('240731001045', '240731001000', '7017', 58000.0, '   1 Pcs Altex (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.651', 58000.0, -7.71346E7, 1.88543005E8);
INSERT INTO O_306 VALUES('240731001046', '240731001000', '7017', 20000.0, '   2 Pcs Kunci Laci (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.651', 20000.0, -7.71146E7, 1.88523005E8);
INSERT INTO O_306 VALUES('240731001047', '240731001000', '7017', 255000.0, '   3 Kaleng Cat Avian @ Rp85.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.651', 255000.0, -7.68596E7, 1.88268005E8);
INSERT INTO O_306 VALUES('240731001048', '240731001000', '7017', 105000.0, '   1 Kaleng Thiner (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.651', 105000.0, -7.67546E7, 1.88163005E8);
INSERT INTO O_306 VALUES('240731001049', '240731001000', '7017', 20000.0, '   2 Meter Amplas @ Rp10.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.652', 20000.0, -7.67346E7, 1.88143005E8);
INSERT INTO O_306 VALUES('240731001050', '240731001000', '7017', 95000.0, '   1 Set Mata Bor (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.652', 95000.0, -7.66396E7, 1.88048005E8);
INSERT INTO O_306 VALUES('240731001051', '240731001000', '7017', 5000.0, '   2 Buah Tali Rek (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.652', 5000.0, -7.66346E7, 1.88043005E8);
INSERT INTO O_306 VALUES('240731001052', '240731001000', '7017', 40000.0, '   2 Kg Paku 2,5  @ Rp20.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.652', 40000.0, -7.65946E7, 1.88003005E8);
INSERT INTO O_306 VALUES('240731001053', '240731001000', '7017', 40000.0, '   2 Kg Paku 3,5  @ Rp2.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.652', 40000.0, -7.65546E7, 1.87963005E8);
INSERT INTO O_306 VALUES('240731001054', '240731001000', '7017', 26000.0, '   2 Pcs Kuas 2,5  @ Rp13.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.652', 26000.0, -7.65286E7, 1.87937005E8);
INSERT INTO O_306 VALUES('240731001055', '240731001000', '7017', 20000.0, '   2 Pcs Kuas 2  @ Rp10.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.652', 20000.0, -7.65086E7, 1.87917005E8);
INSERT INTO O_306 VALUES('240731001056', '240731001000', '7017', 340000.0, '   4 Kaleng Cat Avian @ Rp85.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.652', 340000.0, -7.61686E7, 1.87577005E8);
INSERT INTO O_306 VALUES('240731001057', '240731001000', '7017', 60000.0, '   2 Kaleng Thiner A @ Rp30.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.652', 60000.0, -7.61086E7, 1.87517005E8);
INSERT INTO O_306 VALUES('240731001058', '240731001000', '7017', 116000.0, '   2 Kaleng Many Kayu @ Rp58.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.653', 116000.0, -7.59926E7, 1.87401005E8);
INSERT INTO O_306 VALUES('240731001059', '240731001000', '7017', 20000.0, '   4 Pcs Engsel @ Rp5.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.653', 20000.0, -7.59726E7, 1.87381005E8);
INSERT INTO O_306 VALUES('240731001060', '240731001000', '7017', 9000.0, '   48 Pcs Skrup (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.653', 9000.0, -7.59636E7, 1.87372005E8);
INSERT INTO O_306 VALUES('240731001061', '240731001000', '7017', 30000.0, '   2 Pcs Tarikan Jendela @ Rp15.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.653', 30000.0, -7.59336E7, 1.87342005E8);
INSERT INTO O_306 VALUES('240731001062', '240731001000', '7017', 9000.0, '   3 Pcs Jepitan @ Rp3.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.653', 9000.0, -7.59246E7, 1.87333005E8);
INSERT INTO O_306 VALUES('240731001063', '240731001000', '7017', 4000000.0, '   1 Pcs Kulkas Polytron (Toko Dewi Lancar)', TIMESTAMP '2024-08-27 14:08:59.653', 4000000.0, -7.19246E7, 1.83333005E8);
INSERT INTO O_306 VALUES('240731001064', '240731001000', '7017', 740000.0, '   4 Lembar Keramik Teranosa 60 X 60 @ Rp185.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.653', 740000.0, -7.11846E7, 1.82593005E8);
INSERT INTO O_306 VALUES('240731001065', '240731001000', '7017', 150000.0, '   6 Pcs Lem Rajawali @ Rp25.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.653', 150000.0, -7.10346E7, 1.82443005E8);
INSERT INTO O_306 VALUES('240731001066', '240731001000', '7017', 120000.0, '   4 Meter Kawat Nyamuk @ Rp30.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.653', 120000.0, -7.09146E7, 1.82323005E8);
INSERT INTO O_306 VALUES('240731001067', '240731001000', '7017', 390000.0, '   6 Meter Aluminium 1mm @ Rp65.000 (UD Mulia Jaya) ', TIMESTAMP '2024-08-27 14:08:59.653', 390000.0, -7.05246E7, 1.81933005E8);
INSERT INTO O_306 VALUES('240731001068', '240731001000', '7017', 40000.0, '   2 Kg Paku 2  @ Rp20.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.654', 40000.0, -7.04846E7, 1.81893005E8);
INSERT INTO O_306 VALUES('240731001069', '240731001000', '7017', 40000.0, '   2 Kg Paku 2,5  @ Rp20.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.654', 40000.0, -7.04446E7, 1.81853005E8);
INSERT INTO O_306 VALUES('240731001070', '240731001000', '7017', 40000.0, '   2 Kg Paku 3  @ Rp20.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.654', 40000.0, -7.04046E7, 1.81813005E8);
INSERT INTO O_306 VALUES('240731001071', '240731001000', '7017', 40000.0, '   2 Kg Paku 4  @ Rp20.000 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.654', 40000.0, -7.03646E7, 1.81773005E8);
INSERT INTO O_306 VALUES('240731001072', '240731001000', '7017', 90000.0, '   1 Sak Semen Tonasa (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.654', 90000.0, -7.02746E7, 1.81683005E8);
INSERT INTO O_306 VALUES('240731001073', '240731001000', '7010', 10000.0, 'Biaya Administrasi Kartu', TIMESTAMP '2024-08-27 14:08:59.654', 10000.0, 370000.0, 1.81673005E8);
INSERT INTO O_306 VALUES('240731001074', '240731001000', '7010', 10000.0, 'Biaya Administrasi ', TIMESTAMP '2024-08-27 14:08:59.654', 10000.0, 380000.0, 1.81663005E8);
INSERT INTO O_306 VALUES('240731001075', '240731001000', '7004', 1500000.0, 'Patroli Brimob u/ Pengamanan Tambang perd PAM BRIMOB', TIMESTAMP '2024-08-27 14:08:59.654', 1500000.0, 1500000.0, 1.80163005E8);
INSERT INTO O_306 VALUES('240731001076', '240731001000', '7001', 3000000.0, 'Tambahan Insentif a/n Munas (HRD PT. DBP) Selama Diperbantukan', TIMESTAMP '2024-08-27 14:08:59.654', 3000000.0, 3000000.0, 1.77163005E8);
INSERT INTO O_306 VALUES('240731001077', '240731001000', '7004', 24500.0, '7 Pcs Cetak ID Card (Simper) a/n Agus Mukhlis, Fajar N. Hidayat,', TIMESTAMP '2024-08-27 14:08:59.655', 24500.0, 1524500.0, 1.77138505E8);
INSERT INTO O_306 VALUES('240731001078', '240731001000', '7004', 30100.0, '7 Pcs ID Card Name Tag Holder u/ Agus Mukhlis, Fajar N. Hidayat,', TIMESTAMP '2024-08-27 14:08:59.655', 30100.0, 1554600.0, 1.77108405E8);
INSERT INTO O_306 VALUES('240731001079', '240731001000', '7009', 27540.0, 'Subtotal Pengiriman - Reguler', TIMESTAMP '2024-08-27 14:08:59.655', 27540.0, 27540.0, 1.77080865E8);
INSERT INTO O_306 VALUES('240731001080', '240731001000', '7010', 1000.0, 'Biaya Layanan', TIMESTAMP '2024-08-27 14:08:59.655', 1000.0, 381000.0, 1.77079865E8);
INSERT INTO O_306 VALUES('240731001081', '240731001000', '7010', 1000.0, 'Biaya Penanganan', TIMESTAMP '2024-08-27 14:08:59.655', 1000.0, 382000.0, 1.77078865E8);
INSERT INTO O_306 VALUES('240731001082', '240731001000', '7017', 300000.0, '1 Tabung Oksigen u/ Workshop PR 3508 / H 180 (Makmur Jaya)', TIMESTAMP '2024-08-27 14:08:59.655', 300000.0, -6.99746E7, 1.76778865E8);
INSERT INTO O_306 VALUES('240731001083', '240731001000', '7017', 70000.0, '  10 Pcs L Bow PVC 1  @ Rp7.000', TIMESTAMP '2024-08-27 14:08:59.655', 70000.0, -6.99046E7, 1.76708865E8);
INSERT INTO O_306 VALUES('240731001084', '240731001000', '7017', 60000.0, '  10 Pcs Reducer 1  - 1/2  @ Rp6.000', TIMESTAMP '2024-08-27 14:08:59.655', 60000.0, -6.98446E7, 1.76648865E8);
INSERT INTO O_306 VALUES('240731001085', '240731001000', '7017', 50000.0, '  10 Pcs L Bow PVC 3/4  @ Rp5.000', TIMESTAMP '2024-08-27 14:08:59.655', 50000.0, -6.97946E7, 1.76598865E8);
INSERT INTO O_306 VALUES('240731001086', '240731001000', '7017', 50000.0, '  5 Pcs T PVC 1  @ Rp10.000', TIMESTAMP '2024-08-27 14:08:59.656', 50000.0, -6.97446E7, 1.76548865E8);
INSERT INTO O_306 VALUES('240731001087', '240731001000', '7017', 6000.0, '  2 Pcs DOP 1/2  @ Rp3.000', TIMESTAMP '2024-08-27 14:08:59.656', 6000.0, -6.97386E7, 1.76542865E8);
INSERT INTO O_306 VALUES('240731001088', '240731001000', '7017', 6000.0, '  2 Pcs DOP 3/4  @ Rp3.000', TIMESTAMP '2024-08-27 14:08:59.656', 6000.0, -6.97326E7, 1.76536865E8);
INSERT INTO O_306 VALUES('240731001089', '240731001000', '7017', 8000.0, '  2 Pcs DOP 1  @ Rp4.000', TIMESTAMP '2024-08-27 14:08:59.656', 8000.0, -6.97246E7, 1.76528865E8);
INSERT INTO O_306 VALUES('240731001090', '240731001000', '7017', 30000.0, '  5 Pcs Grendel @ Rp6.000', TIMESTAMP '2024-08-27 14:08:59.656', 30000.0, -6.96946E7, 1.76498865E8);
INSERT INTO O_306 VALUES('240731001091', '240731001000', '7017', 10000.0, '  2 Pcs L Bow PVC 1,5  @ Rp5.000', TIMESTAMP '2024-08-27 14:08:59.656', 10000.0, -6.96846E7, 1.76488865E8);
INSERT INTO O_306 VALUES('240731001092', '240731001000', '7017', 90000.0, '  5 Pcs Kran Omika Plastik 1/2  @ Rp18.000', TIMESTAMP '2024-08-27 14:08:59.656', 90000.0, -6.95946E7, 1.76398865E8);
INSERT INTO O_306 VALUES('240731001093', '240731001000', '7017', 40000.0, '  10 Pcs L Bow Drat Dalam PVC 1/2  @ Rp4.000', TIMESTAMP '2024-08-27 14:08:59.657', 40000.0, -6.95546E7, 1.76358865E8);
INSERT INTO O_306 VALUES('240731001094', '240731001000', '7017', 40000.0, '  10 Pcs L Bow PVC 1/2  @ Rp4.000', TIMESTAMP '2024-08-27 14:08:59.657', 40000.0, -6.95146E7, 1.76318865E8);
INSERT INTO O_306 VALUES('240731001095', '240731001000', '7017', 80000.0, '  2 Pcs Stop Kran PVC 1  @ Rp40.000', TIMESTAMP '2024-08-27 14:08:59.657', 80000.0, -6.94346E7, 1.76238865E8);
INSERT INTO O_306 VALUES('240731001096', '240731001000', '7017', 60000.0, '10 Pcs Amplas 1000 u/ Gudang @ Rp6.000 PR 3509 / H 988 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.657', 60000.0, -6.93746E7, 1.76178865E8);
INSERT INTO O_306 VALUES('240731001097', '240731001000', '7017', 60000.0, '8 Pcs Baut 1/2 P23 u/ Pangkon Mesin D38 @ Rp7.500', TIMESTAMP '2024-08-27 14:08:59.657', 60000.0, -6.93146E7, 1.76118865E8);
INSERT INTO O_306 VALUES('240731001098', '240731001000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Belanja Sparepart dan Tarik', TIMESTAMP '2024-08-27 14:08:59.657', 50000.0, 100000.0, 1.76068865E8);
INSERT INTO O_306 VALUES('240731001099', '240731001000', '7017', 60000.0, '20 Bungkus Sabun Cream Ekonomi u/ Workshop @ Rp3.000', TIMESTAMP '2024-08-27 14:08:59.658', 60000.0, -6.92546E7, 1.76008865E8);
INSERT INTO O_306 VALUES('240731001100', '240731001000', '7017', 160000.0, '10 Liter Pertamax u/ Stok @ Rp16.000  PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.658', 160000.0, -6.90946E7, 1.75848865E8);
INSERT INTO O_306 VALUES('240731001101', '240731001000', '7017', 130000.0, '2 Pcs Filter Oli Rino u/ Genset Rino + Stok PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.658', 130000.0, -6.89646E7, 1.75718865E8);
INSERT INTO O_306 VALUES('240731001102', '240731001000', '7017', 150000.0, '1 Pcs Kunci Inggris 12  Tekiro u/ Workshop PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.658', 150000.0, -6.88146E7, 1.75568865E8);
INSERT INTO O_306 VALUES('240731001103', '240731001000', '7017', 120000.0, '20 Lembar Amplas Kasar u/ Workshop @ Rp6.000 PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.658', 120000.0, -6.86946E7, 1.75448865E8);
INSERT INTO O_306 VALUES('240731001104', '240731001000', '7017', 100000.0, '2 Pcs Engsel Belluci 3  u/ Pintu Dapur @ Rp50.000 PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.658', 100000.0, -6.85946E7, 1.75348865E8);
INSERT INTO O_306 VALUES('240731001105', '240731001000', '7017', 135000.0, '3 Pcs Gembok Sol u/ Mess KM 18 @ Rp45.000 PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.658', 135000.0, -6.84596E7, 1.75213865E8);
INSERT INTO O_306 VALUES('240731001106', '240731001000', '7017', 25000.0, '10 Pcs Baut K10 X 7 u/ Workshop @ Rp2.5000 PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.659', 25000.0, -6.84346E7, 1.75188865E8);
INSERT INTO O_306 VALUES('240731001107', '240731001000', '7017', 75000.0, '5 Pcs Isolasi Kertas u/ Workshop @ Rp15.000 PR 3513 / H 122', TIMESTAMP '2024-08-27 14:08:59.659', 75000.0, -6.83596E7, 1.75113865E8);
INSERT INTO O_306 VALUES('240731001108', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Antar Karyawan Cuti Periodik', TIMESTAMP '2024-08-27 14:08:59.659', 50000.0, 150000.0, 1.75063865E8);
INSERT INTO O_306 VALUES('240731001109', '240731001000', '7009', 47000.0, 'Bayar Tiki u/ Pengiriman Dokumen (LKH 21 dan Slip Gaji Karyawan', TIMESTAMP '2024-08-27 14:08:59.659', 47000.0, 74540.0, 1.75016865E8);
INSERT INTO O_306 VALUES('240731001110', '240731001000', '7005', 18000.0, '1 Pcs Punch 30X (Pembolong Kertas) u/ Kasir', TIMESTAMP '2024-08-27 14:08:59.659', 18000.0, 18000.0, 1.74998865E8);
INSERT INTO O_306 VALUES('240731001111', '240731001000', '7017', 150000.0, '3 Pcs Bearing 6203 u/ Pintu Mess KM 18 @ Rp50.000 PR 3515 / H 281 ', TIMESTAMP '2024-08-27 14:08:59.659', 150000.0, -6.82096E7, 1.74848865E8);
INSERT INTO O_306 VALUES('240731001112', '240731001000', '7017', 30000.0, '1 Pcs Bearing 6203 u/ Pintu Mess KM 18 PR 3515 / H 281 (UD Paras Wana)', TIMESTAMP '2024-08-27 14:08:59.659', 30000.0, -6.81796E7, 1.74818865E8);
INSERT INTO O_306 VALUES('240731001113', '240731001000', '7017', 50000.0, '1 Pcs Saklar On / Off u/ N 8993 AT PR 3515 / H 281 (UD Paras Wana)', TIMESTAMP '2024-08-27 14:08:59.659', 50000.0, -6.81296E7, 1.74768865E8);
INSERT INTO O_306 VALUES('240731001114', '240731001000', '7017', 160000.0, '1 Roll Karpet u/ Kamar Mess KM 18 PR 3515 / H 281 (Toko Dewi Lancar)', TIMESTAMP '2024-08-27 14:08:59.659', 160000.0, -6.79696E7, 1.74608865E8);
INSERT INTO O_306 VALUES('240731001115', '240731001000', '7017', 490000.0, '7 Lembar Plywood (Triplek) 3 mm u/ Kamar Mess KM 18 @ Rp70.000', TIMESTAMP '2024-08-27 14:08:59.66', 490000.0, -6.74796E7, 1.74118865E8);
INSERT INTO O_306 VALUES('240731001116', '240731001000', '7017', 10000.0, '3 Ons Paku Plywood u/ Kamar Mess KM 18 PR 3515 / H 281 ', TIMESTAMP '2024-08-27 14:08:59.66', 10000.0, -6.74696E7, 1.74108865E8);
INSERT INTO O_306 VALUES('240731001117', '240731001000', '7017', 75000.0, '1 Pcs Palu u/ Mess KM 18  PR 3515 / H 281 (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.66', 75000.0, -6.73946E7, 1.74033865E8);
INSERT INTO O_306 VALUES('240731001118', '240731001000', '7017', 6000.0, '2 Pcs Tarikan (Handle Pintu) u/ Kamar Mess KM 18 @ Rp3.000', TIMESTAMP '2024-08-27 14:08:59.66', 6000.0, -6.73886E7, 1.74027865E8);
INSERT INTO O_306 VALUES('240731001119', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Antar Karyawan Cuti Periodik', TIMESTAMP '2024-08-27 14:08:59.66', 50000.0, 200000.0, 1.73977865E8);
INSERT INTO O_306 VALUES('240731001120', '240731001000', '7017', 40000.0, '2 Pak Key Ring (Gantungan Kunci) u/ Sarana @ Rp20.000', TIMESTAMP '2024-08-27 14:08:59.66', 40000.0, -6.73486E7, 1.73937865E8);
INSERT INTO O_306 VALUES('240731001121', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Antar Karyawan (M. Agus Irwanto)', TIMESTAMP '2024-08-27 14:08:59.66', 50000.0, 250000.0, 1.73887865E8);
INSERT INTO O_306 VALUES('240731001122', '240731001000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Ambil Barang (Sparepart) di Cendana,', TIMESTAMP '2024-08-27 14:08:59.66', 50000.0, 300000.0, 1.73837865E8);
INSERT INTO O_306 VALUES('240731001123', '240731001000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Mess KM 18', TIMESTAMP '2024-08-27 14:08:59.661', 500000.0, 2054600.0, 1.73337865E8);
INSERT INTO O_306 VALUES('240731001124', '240731001000', '7001', 640000.0, 'Peket Genset Penerangan Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.661', 640000.0, 3640000.0, 1.72697865E8);
INSERT INTO O_306 VALUES('240731001125', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Antar Karyawan Cuti (Hani) ', TIMESTAMP '2024-08-27 14:08:59.661', 50000.0, 350000.0, 1.72647865E8);
INSERT INTO O_306 VALUES('240731001126', '240731001000', '7008', 80000.0, 'Cuci Mobil Luar Dalam L 8397 VB (745Wan - Pencucian Mobil & Motor)', TIMESTAMP '2024-08-27 14:08:59.661', 80000.0, 80000.0, 1.72567865E8);
INSERT INTO O_306 VALUES('240731001127', '240731001000', '7001', 1126133.0, 'Pembayaran Gaji a/n Jaminius (Waker) Periode 21 Juni 2024 sd', TIMESTAMP '2024-08-27 14:08:59.661', 1126133.0, 4766133.0, 1.71441732E8);
INSERT INTO O_306 VALUES('240731001128', '240731001000', '7001', 4800000.0, 'Insentif dan Laundry a/n Shaiful Hani Per 1 Juni - 30 Juni  24', TIMESTAMP '2024-08-27 14:08:59.661', 4800000.0, 9566133.0, 1.66641732E8);
INSERT INTO O_306 VALUES('240731001129', '240731001000', '7001', 4800000.0, 'Insentif dan Laundry a/n Rifa i Per 1 Juni - 30 Juni  24', TIMESTAMP '2024-08-27 14:08:59.661', 4800000.0, 1.4366133E7, 1.61841732E8);
INSERT INTO O_306 VALUES('240731001130', '240731001000', '7001', 3090000.0, 'Insentif dan Laundry a/n Agus Mukhlis Per 1 Juni - 30 Juni  24', TIMESTAMP '2024-08-27 14:08:59.661', 3090000.0, 1.7456133E7, 1.58751732E8);
INSERT INTO O_306 VALUES('240731001131', '240731001000', '7001', 3090000.0, 'Insentif dan Laundry a/n Hamid Jawanto Per 1 Juni - 30 Juni  24', TIMESTAMP '2024-08-27 14:08:59.661', 3090000.0, 2.0546133E7, 1.55661732E8);
INSERT INTO O_306 VALUES('240731001132', '240731001000', '7001', 3090000.0, 'Insentif dan Laundry a/n M. Safi i Per 1 Juni - 30 Juni  24', TIMESTAMP '2024-08-27 14:08:59.662', 3090000.0, 2.3636133E7, 1.52571732E8);
INSERT INTO O_306 VALUES('240731001133', '240731001000', '7001', 890000.0, 'UM a/n Handriyadi Periode 1 Juli 2024 - 6 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.662', 890000.0, 2.4526133E7, 1.51681732E8);
INSERT INTO O_306 VALUES('240731001134', '240731001000', '7001', 795000.0, 'UM a/n Didik M. Periode 1 Juli 2024 - 7 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.662', 795000.0, 2.5321133E7, 1.50886732E8);
INSERT INTO O_306 VALUES('240731001135', '240731001000', '7001', 1600000.0, 'Insentif dan Laundry a/n Shaiful Hani Periode 1 Juli - 10 Juli  24', TIMESTAMP '2024-08-27 14:08:59.662', 1600000.0, 2.6921133E7, 1.49286732E8);
INSERT INTO O_306 VALUES('240731001136', '240731001000', '7001', 1600000.0, 'Insentif dan Laundry a/n Rifa i Periode 1 Juli - 10 Juli  24', TIMESTAMP '2024-08-27 14:08:59.662', 1600000.0, 2.8521133E7, 1.47686732E8);
INSERT INTO O_306 VALUES('240731001137', '240731001000', '7001', 1030000.0, 'Insentif dan Laundry a/n Agus Mukhlis Periode 1 Juli - 10 Juli  24', TIMESTAMP '2024-08-27 14:08:59.662', 1030000.0, 2.9551133E7, 1.46656732E8);
INSERT INTO O_306 VALUES('240731001138', '240731001000', '7001', 1030000.0, 'Insentif dan Laundry a/n Hamid Jawanto Periode 1 Juli - 10 Juli  24', TIMESTAMP '2024-08-27 14:08:59.662', 1030000.0, 3.0581133E7, 1.45626732E8);
INSERT INTO O_306 VALUES('240731001139', '240731001000', '7001', 1030000.0, 'Insentif dan Laundry a/n M. Safi i Periode 1 Juli - 10 Juli  24', TIMESTAMP '2024-08-27 14:08:59.662', 1030000.0, 3.1611133E7, 1.44596732E8);
INSERT INTO O_306 VALUES('240731001140', '240731001000', '7001', 2050000.0, 'UM a/n M. Agus Irwanto Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.662', 2050000.0, 3.3661133E7, 1.42546732E8);
INSERT INTO O_306 VALUES('240731001141', '240731001000', '7001', 1400000.0, 'UM a/n Syaifullah Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.662', 1400000.0, 3.5061133E7, 1.41146732E8);
INSERT INTO O_306 VALUES('240731001142', '240731001000', '7001', 1040000.0, 'UM a/n Haqul Istaflakha Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.662', 1040000.0, 3.6101133E7, 1.40106732E8);
INSERT INTO O_306 VALUES('240731001143', '240731001000', '7001', 1100000.0, 'UM a/n Sarjito F. Adam Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.663', 1100000.0, 3.7201133E7, 1.39006732E8);
INSERT INTO O_306 VALUES('240731001144', '240731001000', '7001', 600000.0, 'UM a/n Jakaria Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.663', 600000.0, 3.7801133E7, 1.38406732E8);
INSERT INTO O_306 VALUES('240731001145', '240731001000', '7001', 1800000.0, 'UM a/n Supriyanto Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.663', 1800000.0, 3.9601133E7, 1.36606732E8);
INSERT INTO O_306 VALUES('240731001146', '240731001000', '7001', 1400000.0, 'UM a/n Sekhan Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.663', 1400000.0, 4.1001133E7, 1.35206732E8);
INSERT INTO O_306 VALUES('240731001147', '240731001000', '7001', 840000.0, 'UM a/n Maretius Oji Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.663', 840000.0, 4.1841133E7, 1.34366732E8);
INSERT INTO O_306 VALUES('240731001148', '240731001000', '7001', 1400000.0, 'UM a/n Anna Qodri Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.663', 1400000.0, 4.3241133E7, 1.32966732E8);
INSERT INTO O_306 VALUES('240731001149', '240731001000', '7001', 1400000.0, 'UM a/n Yono Setyawan Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.663', 1400000.0, 4.4641133E7, 1.31566732E8);
INSERT INTO O_306 VALUES('240731001150', '240731001000', '7001', 1500000.0, 'UM a/n Rinaldhie G. Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.663', 1500000.0, 4.6141133E7, 1.30066732E8);
INSERT INTO O_306 VALUES('240731001151', '240731001000', '7001', 550000.0, 'UM a/n Fajar N. Hidayat Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.663', 550000.0, 4.6691133E7, 1.29516732E8);
INSERT INTO O_306 VALUES('240731001152', '240731001000', '1301', 1500000.0, 'Kasbon Potong UM Periode 1 Juli 2024 - 10 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.664', 1500000.0, 3000000.0, 1.28016732E8);
INSERT INTO O_306 VALUES('240731001153', '240731001000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Juli 2024', TIMESTAMP '2024-08-27 14:08:59.664', 500000.0, 4.7191133E7, 1.27516732E8);
INSERT INTO O_306 VALUES('240731001154', '240731001000', '7016', 6324324.0, '10 Pcs Accu Yuasa N50 u/ TR OB, TR Hauling, dan Stok @ Rp632.432,43', TIMESTAMP '2024-08-27 14:08:59.664', 6324324.0, 1.7059324E7, 1.21192408E8);
INSERT INTO O_306 VALUES('240731001155', '240731001000', '7016', 270270.0, '2 Jerigen Air Zuur 30L u/ TR OB, TR Hauling, dan Stok @ Rp135.135,13', TIMESTAMP '2024-08-27 14:08:59.664', 270270.0, 1.7329594E7, 1.20922138E8);
INSERT INTO O_306 VALUES('240731001156', '240731001000', '7016', 725406.0, 'PPN (11% X Rp6.594.594)', TIMESTAMP '2024-08-27 14:08:59.664', 725406.0, 1.8055E7, 1.20196732E8);
INSERT INTO O_306 VALUES('240731001157', '240731001000', '7016', 250000.0, '1 Pcs Bushing Arm u/ N 9811 EE  PR 3517 / H 182 (UD Paras Wana)', TIMESTAMP '2024-08-27 14:08:59.664', 250000.0, 1.8305E7, 1.19946732E8);
INSERT INTO O_306 VALUES('240731001158', '240731001000', '7016', 1400000.0, '4 Pcs Colter Blok Mesin dan Ganti Liner u/ Triton L 8039 BX', TIMESTAMP '2024-08-27 14:08:59.664', 1400000.0, 1.9705E7, 1.18546732E8);
INSERT INTO O_306 VALUES('240731001159', '240731001000', '7016', 220000.0, '1 Set Ganti Fitting Hose Assy 1212NM+3N02-12 u/ Doser 03', TIMESTAMP '2024-08-27 14:08:59.664', 220000.0, 1.9925E7, 1.18326732E8);
INSERT INTO O_306 VALUES('240731001160', '240731001000', '7016', 70000.0, '20 Pcs Baut M8 X 40 u/ Stok @ Rp3.500 PR 3526 / H 332 (UD Maju Mandiri)', TIMESTAMP '2024-08-27 14:08:59.664', 70000.0, 1.9995E7, 1.18256732E8);
INSERT INTO O_306 VALUES('240731001161', '240731001000', '7016', 50000.0, '1 Pcs Kopler 3/4 u/ Manhaul 02 PR 3526 / H 332 (CV Putra Mandiri)', TIMESTAMP '2024-08-27 14:08:59.665', 50000.0, 2.0045E7, 1.18206732E8);
INSERT INTO O_306 VALUES('240731001162', '240731001000', '7016', 100000.0, '2 Set Fitting L 8 mm u/ AC TR 06 @ Rp50.000 PR 3526 / H 332', TIMESTAMP '2024-08-27 14:08:59.665', 100000.0, 2.0145E7, 1.18106732E8);
INSERT INTO O_306 VALUES('240731001163', '240731001000', '7017', 80000.0, '1 Pcs Hand Tap 10 X 1,25 u/ Workshop PR 3517 / H 182 (UD Maju Mandiri)', TIMESTAMP '2024-08-27 14:08:59.665', 80000.0, -6.72686E7, 1.18026732E8);
INSERT INTO O_306 VALUES('240731001164', '240731001000', '7017', 70000.0, '1 Pcs Mata Bor Besi 9 mm u/ Workshop PR 2517 / H 182 (UD Maju Mandiri)', TIMESTAMP '2024-08-27 14:08:59.665', 70000.0, -6.71986E7, 1.17956732E8);
INSERT INTO O_306 VALUES('240731001165', '240731001000', '7017', 300000.0, '10 Pcs Lampu 15 Watt Arius u/ Stok @ Rp30.000 PR 3517 / H 182', TIMESTAMP '2024-08-27 14:08:59.665', 300000.0, -6.68986E7, 1.17656732E8);
INSERT INTO O_306 VALUES('240731001166', '240731001000', '7017', 475000.0, '5 Pcs Lampu 30 Watt Ecoking u/ Stok @ Rp95.000 PR 3517 / H 182', TIMESTAMP '2024-08-27 14:08:59.665', 475000.0, -6.64236E7, 1.17181732E8);
INSERT INTO O_306 VALUES('240731001167', '240731001000', '7017', 190000.0, '2 Botol Round Up 1L u/ Workshop TR Hauling @ Rp95.000 ', TIMESTAMP '2024-08-27 14:08:59.665', 190000.0, -6.62336E7, 1.16991732E8);
INSERT INTO O_306 VALUES('240731001168', '240731001000', '7017', 15000.0, '1 Pcs Keset u/ Gudang PR 3517 / H 182 (Toko Dewi Lancar)', TIMESTAMP '2024-08-27 14:08:59.665', 15000.0, -6.62186E7, 1.16976732E8);
INSERT INTO O_306 VALUES('240731001169', '240731001000', '7017', 95000.0, '5 Dus Air Gelas An Najwa u/ Tukang @ Rp19.000 (Toko Amalia)', TIMESTAMP '2024-08-27 14:08:59.665', 95000.0, -6.61236E7, 1.16881732E8);
INSERT INTO O_306 VALUES('240731001170', '240731001000', '7008', 150000.0, 'Cuci Mobil Hidrolik Luar Dalam u/ N 8993 AT (AA Carwash)', TIMESTAMP '2024-08-27 14:08:59.666', 150000.0, 230000.0, 1.16731732E8);
INSERT INTO O_306 VALUES('240731001171', '240731001000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Belanja Sparepart dan Ambil ', TIMESTAMP '2024-08-27 14:08:59.666', 50000.0, 400000.0, 1.16681732E8);
INSERT INTO O_306 VALUES('240731001172', '240731001000', '7009', 50000.0, 'Bayar Cendana (Kirim Contoh Seal Dump) Melak - Samarinda', TIMESTAMP '2024-08-27 14:08:59.666', 50000.0, 124540.0, 1.16631732E8);
INSERT INTO O_306 VALUES('240731001173', '240731001000', '7009', 50000.0, 'Bayar Cendana (Kirim 5 Set Seal Dump dan Seal Pompa Grease) ', TIMESTAMP '2024-08-27 14:08:59.666', 50000.0, 174540.0, 1.16581732E8);
INSERT INTO O_306 VALUES('240731001174', '240731001000', '7009', 700000.0, 'Bayar Expedisi kirim Sparepart (Blok Mesin, Liner, Piston) dari', TIMESTAMP '2024-08-27 14:08:59.666', 700000.0, 874540.0, 1.15881732E8);
INSERT INTO O_306 VALUES('240731001175', '240731001000', '7004', 75000.0, '5 Pcs Engsel @ Rp15.000  (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.666', 75000.0, 2129600.0, 1.15806732E8);
INSERT INTO O_306 VALUES('240731001176', '240731001000', '7004', 85000.0, '1 Kaleng Cat Avian (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.666', 85000.0, 2214600.0, 1.15721732E8);
INSERT INTO O_306 VALUES('240731001177', '240731001000', '7004', 105000.0, '1 Kaleng Thiner (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.666', 105000.0, 2319600.0, 1.15616732E8);
INSERT INTO O_306 VALUES('240731001178', '240731001000', '7004', 10000.0, '2 Kg Semen Putih (UD Mulia Jaya)', TIMESTAMP '2024-08-27 14:08:59.666', 10000.0, 2329600.0, 1.15606732E8);
INSERT INTO O_306 VALUES('240731001179', '240731001000', '7017', 550000.0, '2 Tabung Oksigen u/ Workshop + Stok @ Rp275.000  PR 3523 / H 911', TIMESTAMP '2024-08-27 14:08:59.667', 550000.0, -6.55736E7, 1.15056732E8);
INSERT INTO O_306 VALUES('240731001180', '240731001000', '7017', 10000.0, '2 Pcs Overpal 2  (Rumah Gembok) u/ Mess KM 18 @ Rp5.000', TIMESTAMP '2024-08-27 14:08:59.667', 10000.0, -6.55636E7, 1.15046732E8);
INSERT INTO O_306 VALUES('240731001181', '240731001000', '7004', 15000.0, '1 Strip Holisticare (Vitamin C) ', TIMESTAMP '2024-08-27 14:08:59.667', 15000.0, 2344600.0, 1.15031732E8);
INSERT INTO O_306 VALUES('240731001182', '240731001000', '7004', 5000.0, '1 Strip Bodrex Flu Batuk Berdahak', TIMESTAMP '2024-08-27 14:08:59.667', 5000.0, 2349600.0, 1.15026732E8);
INSERT INTO O_306 VALUES('240731001183', '240731001000', '7004', 5000.0, '1 Strip Mixagrip Flu', TIMESTAMP '2024-08-27 14:08:59.667', 5000.0, 2354600.0, 1.15021732E8);
INSERT INTO O_306 VALUES('240731001184', '240731001000', '7004', 5000.0, '1 Strip Sanmol Forte Tab (Paracetamol)', TIMESTAMP '2024-08-27 14:08:59.667', 5000.0, 2359600.0, 1.15016732E8);
INSERT INTO O_306 VALUES('240731001185', '240731001000', '7004', 70000.0, '1 Box Antangin JRG', TIMESTAMP '2024-08-27 14:08:59.667', 70000.0, 2429600.0, 1.14946732E8);
INSERT INTO O_306 VALUES('240731001186', '240731001000', '7004', 110000.0, '1 Botol Minyak Tawon FF', TIMESTAMP '2024-08-27 14:08:59.667', 110000.0, 2539600.0, 1.14836732E8);
INSERT INTO O_306 VALUES('240731001187', '240731001000', '7004', 60000.0, '1 Botol Minyak Kayu Putih Cap Lang Ecalyptus', TIMESTAMP '2024-08-27 14:08:59.667', 60000.0, 2599600.0, 1.14776732E8);
INSERT INTO O_306 VALUES('240731001188', '240731001000', '7004', 30000.0, '3 Bungkus Hatari Biskuit Nanas @ Rp10.000', TIMESTAMP '2024-08-27 14:08:59.668', 30000.0, 2629600.0, 1.14746732E8);
INSERT INTO O_306 VALUES('240731001189', '240731001000', '7004', 28500.0, '3 Bungkus Roma Biskuit Kelapa @ Rp9.500', TIMESTAMP '2024-08-27 14:08:59.668', 28500.0, 2658100.0, 1.14718232E8);
INSERT INTO O_306 VALUES('240731001190', '240731001000', '7004', 38000.0, '4 Bungkus Roma Kelapa Cream Coklat @ Rp9.500', TIMESTAMP '2024-08-27 14:08:59.668', 38000.0, 2696100.0, 1.14680232E8);
INSERT INTO O_306 VALUES('240731001191', '240731001000', '7005', 32000.0, '2 Pcs Lakban Kenko Besar (Lakban Bening) u/ Logistik @ Rp16.000', TIMESTAMP '2024-08-27 14:08:59.668', 32000.0, 50000.0, 1.14648232E8);
INSERT INTO O_306 VALUES('240731001192', '240731001000', '7005', 37500.0, '1 Pcs Lem Kertas UHU Stick u/ Logistik (CV Karya Teladan Jempol)', TIMESTAMP '2024-08-27 14:08:59.668', 37500.0, 87500.0, 1.14610732E8);
INSERT INTO O_306 VALUES('240731001193', '240731001000', '7008', 150000.0, 'Cuci Mobil Hidrolik Luar Dalam u/ L 9502 GH (AA Carwash)', TIMESTAMP '2024-08-27 14:08:59.668', 150000.0, 380000.0, 1.14460732E8);
INSERT INTO O_306 VALUES('240731001194', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Antar Karyawan Cuti Periodik', TIMESTAMP '2024-08-27 14:08:59.668', 50000.0, 450000.0, 1.14410732E8);
INSERT INTO O_306 VALUES('240731001195', '240731001000', '7004', 241000.0, '1 Pcs Xiaomi Mi WiFi Range Extender AC1200 u/ Penguat Sinyal', TIMESTAMP '2024-08-27 14:08:59.668', 241000.0, 2937100.0, 1.14169732E8);
INSERT INTO O_306 VALUES('240731001196', '240731001000', '7017', 285000.0, '1 Tabung LPG u/ Workshop PR 3526 / H 332 (Toko Sembako Muara Batuq)', TIMESTAMP '2024-08-27 14:08:59.668', 285000.0, -6.52786E7, 1.13884732E8);
INSERT INTO O_306 VALUES('240731001197', '240731001000', '7004', 200000.0, 'Biaya u/ Berobat Karyawan a/n Sekhan di UPT Puskesmas Marimun', TIMESTAMP '2024-08-27 14:08:59.668', 200000.0, 3137100.0, 1.13684732E8);
INSERT INTO O_306 VALUES('240731001198', '240731001000', '7004', 125000.0, '1 Pcs Parang u/ Mess KM 18 PR 3526 / H 332 (UD Maju Mandiri)', TIMESTAMP '2024-08-27 14:08:59.669', 125000.0, 3262100.0, 1.13559732E8);
INSERT INTO O_306 VALUES('240731001199', '240731001000', '7017', 275000.0, '1 Tabung Oksigen u/ Workshop PR 3526 / H 332 (CV Nanda Putra Pratama)', TIMESTAMP '2024-08-27 14:08:59.669', 275000.0, -6.50036E7, 1.13284732E8);
INSERT INTO O_306 VALUES('240731001200', '240731001000', '7017', 80000.0, '2 Pak Sarung Tangan Bintik u/ Workshop @ Rp40.000 PR 3526 / H 332', TIMESTAMP '2024-08-27 14:08:59.669', 80000.0, -6.49236E7, 1.13204732E8);
INSERT INTO O_306 VALUES('240731001201', '240731001000', '7017', 100000.0, '5 Kg Paku Biasa 2  u/ Mess KM 18 @ Rp20.000  PR 3526 / H 332', TIMESTAMP '2024-08-27 14:08:59.669', 100000.0, -6.48236E7, 1.13104732E8);
INSERT INTO O_306 VALUES('240731001202', '240731001000', '7017', 130000.0, '2 Lembar Seng Plastik Bening u/ Mess KM 18 @ Rp65.000', TIMESTAMP '2024-08-27 14:08:59.669', 130000.0, -6.46936E7, 1.12974732E8);
INSERT INTO O_306 VALUES('240731001203', '240731001000', '7017', 8000.0, '2 Pcs Standard Marker CM2 (Spidol Kecil) u/ Logistik @ Rp4.000', TIMESTAMP '2024-08-27 14:08:59.669', 8000.0, -6.46856E7, 1.12966732E8);
INSERT INTO O_306 VALUES('240731001204', '240731001000', '7017', 7000.0, '1 Pcs Correction Tape ACT51971 (Tipe X) u/ Logistik (Christo & Christy)', TIMESTAMP '2024-08-27 14:08:59.669', 7000.0, -6.46786E7, 1.12959732E8);
INSERT INTO O_306 VALUES('240731001205', '240731001000', '7009', 47000.0, 'Bayar Tiki u/ Kirim Dokumen (Laporan Logistik Per Juni 2024)', TIMESTAMP '2024-08-27 14:08:59.669', 47000.0, 921540.0, 1.12912732E8);
INSERT INTO O_306 VALUES('240731001206', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ Belanja Sparepart dan Tarik', TIMESTAMP '2024-08-27 14:08:59.67', 50000.0, 500000.0, 1.12862732E8);
INSERT INTO O_306 VALUES('240731001207', '240731001000', '7006', 640000.0, 'Peket Genset Penerangan Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.67', 640000.0, 1140000.0, 1.12222732E8);
INSERT INTO O_306 VALUES('240731001208', '240731001000', '7004', 500000.0, 'Bayar 50 Jerigen Air Isi Ulang u/ Karyawan Mess KM 18', TIMESTAMP '2024-08-27 14:08:59.67', 500000.0, 3762100.0, 1.11722732E8);
INSERT INTO O_306 VALUES('240731001209', '240731001000', '7006', 1000000.0, 'Penyeberangan PP (LCT) u/ KT 8899 WD Bawa Wire Mesh Besi', TIMESTAMP '2024-08-27 14:08:59.67', 1000000.0, 2140000.0, 1.10722732E8);
INSERT INTO O_306 VALUES('240731001210', '240731001000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan (27 Juni 2024)', TIMESTAMP '2024-08-27 14:08:59.67', 450000.0, 2590000.0, 1.10272732E8);
INSERT INTO O_306 VALUES('240731001211', '240731001000', '7006', 50000.0, 'Transport Darat Bandara Juanda - Bungurasih (28 Juni 2024)', TIMESTAMP '2024-08-27 14:08:59.67', 50000.0, 2640000.0, 1.10222732E8);
INSERT INTO O_306 VALUES('240731001212', '240731001000', '7006', 50000.0, 'Transport Darat Bungurasih - Bandara Juanda (13 Juli 2024)', TIMESTAMP '2024-08-27 14:08:59.67', 50000.0, 2690000.0, 1.10172732E8);
INSERT INTO O_306 VALUES('240731001213', '240731001000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak (13 Juli 2024)', TIMESTAMP '2024-08-27 14:08:59.67', 450000.0, 3140000.0, 1.09722732E8);
INSERT INTO O_306 VALUES('240731001214', '240731001000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan (27 Juni 2024)', TIMESTAMP '2024-08-27 14:08:59.67', 450000.0, 3590000.0, 1.09272732E8);
INSERT INTO O_306 VALUES('240731001215', '240731001000', '7006', 50000.0, 'Transport Darat Bandara Juanda - Bungurasih (28 Juni 2024)', TIMESTAMP '2024-08-27 14:08:59.67', 50000.0, 3640000.0, 1.09222732E8);
INSERT INTO O_306 VALUES('240731001216', '240731001000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan (27 Juni 2024)', TIMESTAMP '2024-08-27 14:08:59.671', 450000.0, 4090000.0, 1.08772732E8);
INSERT INTO O_306 VALUES('240731001217', '240731001000', '7006', 450000.0, 'Transport Darat Balikpapan - Melak (13 Juli 2024)', TIMESTAMP '2024-08-27 14:08:59.671', 450000.0, 4540000.0, 1.08322732E8);
INSERT INTO O_306 VALUES('240731001218', '240731001000', '7006', 500000.0, 'Transport Speed Boat Melak - Samarinda (30 Juni 2024)', TIMESTAMP '2024-08-27 14:08:59.671', 500000.0, 5040000.0, 1.07822732E8);
INSERT INTO O_306 VALUES('240731001219', '240731001000', '7006', 7000.0, 'Retribusi Speed Boat tgl 30 Juni 2024', TIMESTAMP '2024-08-27 14:08:59.671', 7000.0, 5047000.0, 1.07815732E8);
INSERT INTO O_306 VALUES('240731001220', '240731001000', '7006', 450000.0, 'Transport Darat Samarinda - Melak (13 Juli 2024)', TIMESTAMP '2024-08-27 14:08:59.671', 450000.0, 5497000.0, 1.07365732E8);
INSERT INTO O_306 VALUES('240731001221', '240731001000', '7006', 450000.0, 'Transport Darat Melak - Balikpapan (14 Juni 2024)', TIMESTAMP '2024-08-27 14:08:59.671', 450000.0, 5947000.0, 1.06915732E8);
INSERT INTO O_306 VALUES('240731001222', '240731001000', '7006', 50000.0, 'Transport Darat Bandara Syamsudin Noor - Rumah (15 Juni 2024)', TIMESTAMP '2024-08-27 14:08:59.671', 50000.0, 5997000.0, 1.06865732E8);
INSERT INTO O_306 VALUES('240731001223', '240731001000', '7001', 1750000.0, 'UM 5 Orang Karyawan dari PT Bekal Putra yang Pindah ke PT Dhako', TIMESTAMP '2024-08-27 14:08:59.671', 1750000.0, 4.8941133E7, 1.05115732E8);
INSERT INTO O_306 VALUES('240731001224', '240731001000', '7001', 1750000.0, 'UM 5 Orang Karyawan dari PT Bekal Putra yang Pindah ke PT Dhako', TIMESTAMP '2024-08-27 14:08:59.671', 1750000.0, 5.0691133E7, 1.03365732E8);
INSERT INTO O_306 VALUES('240731001225', '240731001000', '7001', 740000.0, 'UM Periode 11 Juli 2024 sd 15 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.671', 740000.0, 5.1431133E7, 1.02625732E8);
INSERT INTO O_306 VALUES('240731001226', '240731001000', '7001', 1900000.0, 'M Agus Irwanto Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 1900000.0, 5.3331133E7, 1.00725732E8);
INSERT INTO O_306 VALUES('240731001227', '240731001000', '7001', 1260000.0, 'Syaifullah Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 1260000.0, 5.4591133E7, 9.9465732E7);
INSERT INTO O_306 VALUES('240731001228', '240731001000', '7001', 990000.0, 'Haqul Istaflakha Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 990000.0, 5.5581133E7, 9.8475732E7);
INSERT INTO O_306 VALUES('240731001229', '240731001000', '7001', 1100000.0, 'Sarjito F. Adam Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 1100000.0, 5.6681133E7, 9.7375732E7);
INSERT INTO O_306 VALUES('240731001230', '240731001000', '7001', 600000.0, 'Jakaria Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 600000.0, 5.7281133E7, 9.6775732E7);
INSERT INTO O_306 VALUES('240731001231', '240731001000', '7001', 1800000.0, 'Supriyanto Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 1800000.0, 5.9081133E7, 9.4975732E7);
INSERT INTO O_306 VALUES('240731001232', '240731001000', '7001', 1120000.0, 'Wijanarko Periode 13 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 1120000.0, 6.0201133E7, 9.3855732E7);
INSERT INTO O_306 VALUES('240731001233', '240731001000', '7001', 1400000.0, 'Sekhan Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 1400000.0, 6.1601133E7, 9.2455732E7);
INSERT INTO O_306 VALUES('240731001234', '240731001000', '7001', 840000.0, 'Maretius Oji Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 840000.0, 6.2441133E7, 9.1615732E7);
INSERT INTO O_306 VALUES('240731001235', '240731001000', '7001', 1400000.0, 'Anna Qodri Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 1400000.0, 6.3841133E7, 9.0215732E7);
INSERT INTO O_306 VALUES('240731001236', '240731001000', '7001', 1400000.0, 'Yono Setyawan Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.672', 1400000.0, 6.5241133E7, 8.8815732E7);
INSERT INTO O_306 VALUES('240731001237', '240731001000', '7001', 1190000.0, 'M. Hafizhni Periode 13 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.673', 1190000.0, 6.6431133E7, 8.7625732E7);
INSERT INTO O_306 VALUES('240731001238', '240731001000', '7001', 1120000.0, 'Suradi Periode 13 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.673', 1120000.0, 6.7551133E7, 8.6505732E7);
INSERT INTO O_306 VALUES('240731001239', '240731001000', '7001', 550000.0, 'Fajar N. Hidayat Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.673', 550000.0, 6.8101133E7, 8.5955732E7);
INSERT INTO O_306 VALUES('240731001240', '240731001000', '7001', 1600000.0, 'Rifa i Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.673', 1600000.0, 6.9701133E7, 8.4355732E7);
INSERT INTO O_306 VALUES('240731001241', '240731001000', '7001', 1030000.0, 'Agus Mukhlis Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.673', 1030000.0, 7.0731133E7, 8.3325732E7);
INSERT INTO O_306 VALUES('240731001242', '240731001000', '7001', 1030000.0, 'Hamid Jawanto Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.673', 1030000.0, 7.1761133E7, 8.2295732E7);
INSERT INTO O_306 VALUES('240731001243', '240731001000', '7001', 1030000.0, 'M. Safi I Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.68', 1030000.0, 7.2791133E7, 8.1265732E7);
INSERT INTO O_306 VALUES('240731001244', '240731001000', '7001', 2340000.0, 'Darman Periode 8 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.68', 2340000.0, 7.5131133E7, 7.8925732E7);
INSERT INTO O_306 VALUES('240731001245', '240731001000', '1301', 1500000.0, 'Kasbon Potong Uang Makan Periode 11 Juli 2024 - 20 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.68', 1500000.0, 4500000.0, 7.7425732E7);
INSERT INTO O_306 VALUES('240731001246', '240731001000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Juli 2024', TIMESTAMP '2024-08-27 14:08:59.68', 500000.0, 7.5631133E7, 7.6925732E7);
INSERT INTO O_306 VALUES('240731001247', '240731001000', '7016', 84000.0, '2 Pcs Vanbelt A-42 u/ TR 06 + Stok @ Rp42.000  PR 3531 / H 165', TIMESTAMP '2024-08-27 14:08:59.68', 84000.0, 2.0229E7, 7.6841732E7);
INSERT INTO O_306 VALUES('240731001248', '240731001000', '7016', 150000.0, '1 Pcs Bearing 57414 u/ Roda Depan Kiri L 8504 AJ PR 3531 / H 165', TIMESTAMP '2024-08-27 14:08:59.68', 150000.0, 2.0379E7, 7.6691732E7);
INSERT INTO O_306 VALUES('240731001249', '240731001000', '7016', 500000.0, 'U/ Pack Cylinder Cop Triton L 8039 BX PR 3531 / H 165 (CV Abdi Jaya) :', TIMESTAMP '2024-08-27 14:08:59.68', 500000.0, 2.0879E7, 7.6191732E7);
INSERT INTO O_306 VALUES('240731001250', '240731001000', '7016', 100000.0, '2 Pcs Relay 24V K5 u/ TR 06 @ Rp50.000  PR 3531 / H 165', TIMESTAMP '2024-08-27 14:08:59.681', 100000.0, 2.0979E7, 7.6091732E7);
INSERT INTO O_306 VALUES('240731001251', '240731001000', '7016', 30000.0, '2 Pcs Rumah Relay u/ TR 06 @ Rp15.000  PR 3531 / H 165', TIMESTAMP '2024-08-27 14:08:59.681', 30000.0, 2.1009E7, 7.6061732E7);
INSERT INTO O_306 VALUES('240731001252', '240731001000', '7016', 150000.0, '2 Pcs Jointer Expansi Hino (Klam Hose AC) U/ TR 06 @ Rp75.000', TIMESTAMP '2024-08-27 14:08:59.681', 150000.0, 2.1159E7, 7.5911732E7);
INSERT INTO O_306 VALUES('240731001253', '240731001000', '7016', 60000.0, '1 Pcs Selang Bypass HT ( Hose L) Pompa Oil Engine U/ L 8039 BX', TIMESTAMP '2024-08-27 14:08:59.681', 60000.0, 2.1219E7, 7.5851732E7);
INSERT INTO O_306 VALUES('240731001254', '240731001000', '7016', 160000.0, '4 Galon Air Coolant u/ Stok PR 3533 / H 766 (Sumber Rejeki II)', TIMESTAMP '2024-08-27 14:08:59.681', 160000.0, 2.1379E7, 7.5691732E7);
INSERT INTO O_306 VALUES('240731001255', '240731001000', '7016', 50000.0, '10 Pcs Sealtip u/ Stok @ Rp5.000 PR 3533 / H 766 (UD Paras Wana)', TIMESTAMP '2024-08-27 14:08:59.681', 50000.0, 2.1429E7, 7.5641732E7);
INSERT INTO O_306 VALUES('240731001256', '240731001000', '7016', 20000.0, '2 Pcs Klem Kecil u/ L 8039 BX PR 3533 / H 766 (UD Paras Wana)', TIMESTAMP '2024-08-27 14:08:59.681', 20000.0, 2.1449E7, 7.5621732E7);
INSERT INTO O_306 VALUES('240731001257', '240731001000', '7016', 30000.0, '2 Pcs Klem Besar u/ L 8039 BX PR 3533 / H 766 (UD Paras Wana)', TIMESTAMP '2024-08-27 14:08:59.681', 30000.0, 2.1479E7, 7.5591732E7);
INSERT INTO O_306 VALUES('240731001258', '240731001000', '7016', 125000.0, '1 Pcs Hose Radiator u/ Triton L 8039 BX (Pengganti PR 3476)', TIMESTAMP '2024-08-27 14:08:59.681', 125000.0, 2.1604E7, 7.5466732E7);
INSERT INTO O_306 VALUES('240731001259', '240731001000', '7023', 160000.0, '10 Liter Pertamax u/ Stok PR 3531 / H 165 (Pom Mini - Toko Asry)', TIMESTAMP '2024-08-27 14:08:59.681', 160000.0, 160000.0, 7.5306732E7);
INSERT INTO O_306 VALUES('240731001260', '240731001000', '7004', 14500.0, '2 Pcs Baterai ABC Alkaline AA u/ Bp. Munas HRD (Utk Mouse) (Undipore)', TIMESTAMP '2024-08-27 14:08:59.681', 14500.0, 3776600.0, 7.5292232E7);
INSERT INTO O_306 VALUES('240731001261', '240731001000', '7005', 8000.0, '1 Pcs Kenko Double Tape u/ HSE (Christo & Christy)', TIMESTAMP '2024-08-27 14:08:59.681', 8000.0, 95500.0, 7.5284232E7);
INSERT INTO O_306 VALUES('240731001262', '240731001000', '7005', 30000.0, '2 Pcs Cloth T Sanwe / Kuro same 46 mm HT (Lakban Hitam) u/', TIMESTAMP '2024-08-27 14:08:59.682', 30000.0, 125500.0, 7.5254232E7);
INSERT INTO O_306 VALUES('240731001263', '240731001000', '7005', 30000.0, '5 Pcs Standard Marker Permanent (Spidol Hitam Permanen) u/', TIMESTAMP '2024-08-27 14:08:59.682', 30000.0, 155500.0, 7.5224232E7);
INSERT INTO O_306 VALUES('240731001264', '240731001000', '7005', 17000.0, '12 Pcs Standard Marker CM2 (Spidol Kecil Warna Merah dan Hitam)', TIMESTAMP '2024-08-27 14:08:59.682', 17000.0, 172500.0, 7.5207232E7);
INSERT INTO O_306 VALUES('240731001265', '240731001000', '7006', 50000.0, 'Penyeberangan PP N 8993 AT u/ Belanja Sparepart, Tarik Tunai', TIMESTAMP '2024-08-27 14:08:59.685', 50000.0, 6047000.0, 7.5157232E7);
INSERT INTO O_306 VALUES('240731001266', '240731001000', '7004', 490000.0, '7 Lembar Plywood 3 mm (Triplek) u/ Mess KM 18 @ Rp70.000', TIMESTAMP '2024-08-27 14:08:59.686', 490000.0, 4266600.0, 7.4667232E7);
INSERT INTO O_306 VALUES('240731001267', '240731001000', '7004', 120000.0, '1 Pcs Penyiram Tanaman u/ Mess KM 18 PR 3531 / H 165 (Toko Dewi Lancar)', TIMESTAMP '2024-08-27 14:08:59.686', 120000.0, 4386600.0, 7.4547232E7);
INSERT INTO O_306 VALUES('240731001268', '240731001000', '7017', 275000.0, '1 Tabung Oksigen u/ Workshop PR 3531 / H 165 (CV Nanda Putra Pratama)', TIMESTAMP '2024-08-27 14:08:59.686', 275000.0, -6.44036E7, 7.4272232E7);
INSERT INTO O_306 VALUES('240731001269', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dan Antar', TIMESTAMP '2024-08-27 14:08:59.686', 50000.0, 6097000.0, 7.4222232E7);
INSERT INTO O_306 VALUES('240731001270', '240731001000', '7017', 40000.0, '20 Meter Selang Tukang 1/4  u/ Workshop PR 3533 / H 766', TIMESTAMP '2024-08-27 14:08:59.686', 40000.0, -6.43636E7, 7.4182232E7);
INSERT INTO O_306 VALUES('240731001271', '240731001000', '7004', 40000.0, '1 Pcs Saringan Footklep 2  u/ Alkon Pengambilan Air PR 3533 / H 766', TIMESTAMP '2024-08-27 14:08:59.686', 40000.0, 4426600.0, 7.4142232E7);
INSERT INTO O_306 VALUES('240731001272', '240731001000', '7001', 384000.0, 'Piket Genset Penerangan Periode 21 Juli 2024 - 26 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.686', 384000.0, 7.6015133E7, 7.3758232E7);
INSERT INTO O_306 VALUES('240731001273', '240731001000', '7017', 500000.0, 'Penyeberangan (LCT) R 8165 CM u/ Angkut 180 Sak Semen', TIMESTAMP '2024-08-27 14:08:59.686', 500000.0, -6.38636E7, 7.3258232E7);
INSERT INTO O_306 VALUES('240731001274', '240731001000', '7006', 1500000.0, 'Biaya Transport PS R 8165 CM u/ Angkut Semen dari Melak ke', TIMESTAMP '2024-08-27 14:08:59.687', 1500000.0, 7597000.0, 7.1758232E7);
INSERT INTO O_306 VALUES('240731001275', '240731001000', '7004', 100000.0, 'Biaya Borongan Bongkar Semen (Menurunkan 180 Sak Semen) ', TIMESTAMP '2024-08-27 14:08:59.687', 100000.0, 4526600.0, 7.1658232E7);
INSERT INTO O_306 VALUES('240731001276', '240731001000', '7006', 150000.0, 'Penyeberangan R 8165 CM ke Melak tgl 23 Juli 2024 PR 3530 / H 822', TIMESTAMP '2024-08-27 14:08:59.687', 150000.0, 7747000.0, 7.1508232E7);
INSERT INTO O_306 VALUES('240731001277', '240731001000', '7006', 500000.0, 'Penyeberangan (LCT) R 9415 M u/ Angkut 160 Sak Semen', TIMESTAMP '2024-08-27 14:08:59.687', 500000.0, 8247000.0, 7.1008232E7);
INSERT INTO O_306 VALUES('240731001278', '240731001000', '7006', 1500000.0, 'Biaya Transport PS R 9415 M u/ Angkut Semen dari Melak ke', TIMESTAMP '2024-08-27 14:08:59.687', 1500000.0, 9747000.0, 6.9508232E7);
INSERT INTO O_306 VALUES('240731001279', '240731001000', '7004', 100000.0, 'Biaya Borongan Bongkar Semen (Menurunkan 160 Sak Semen) ', TIMESTAMP '2024-08-27 14:08:59.687', 100000.0, 4626600.0, 6.9408232E7);
INSERT INTO O_306 VALUES('240731001280', '240731001000', '7006', 150000.0, 'Penyeberangan R 9415 M ke Melak tgl 26 Juli 2024 PR 3530 / H 822', TIMESTAMP '2024-08-27 14:08:59.687', 150000.0, 9897000.0, 6.9258232E7);
INSERT INTO O_306 VALUES('240731001281', '240731001000', '7006', 450000.0, 'Transport Elkana Melak - Balikpapan tgl 6 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.687', 450000.0, 1.0347E7, 6.8808232E7);
INSERT INTO O_306 VALUES('240731001282', '240731001000', '7006', 100000.0, 'Transport Darat Bandara Juanda - PT Etika 07 - Bungurasih', TIMESTAMP '2024-08-27 14:08:59.687', 100000.0, 1.0447E7, 6.8708232E7);
INSERT INTO O_306 VALUES('240731001283', '240731001000', '7006', 100000.0, 'Transport Darat Bungurasih - PT Etika 07 - Bandara Juanda', TIMESTAMP '2024-08-27 14:08:59.687', 100000.0, 1.0547E7, 6.8608232E7);
INSERT INTO O_306 VALUES('240731001284', '240731001000', '7006', 450000.0, 'Transport Elkana Balikpapan - Melak tgl 21 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.687', 450000.0, 1.0997E7, 6.8158232E7);
INSERT INTO O_306 VALUES('240731001285', '240731001000', '7006', 450000.0, 'Transport Elkana Melak - Balikpapan tgl 5 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.687', 450000.0, 1.1447E7, 6.7708232E7);
INSERT INTO O_306 VALUES('240731001286', '240731001000', '7006', 450000.0, 'Transport Elkana Balikpapan - Melak tgl 24 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.693', 450000.0, 1.1897E7, 6.7258232E7);
INSERT INTO O_306 VALUES('240731001287', '240731001000', '7001', 750000.0, 'Uang Makan Periode 21 Juli 2024 - 24 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.693', 750000.0, 7.6765133E7, 6.6508232E7);
INSERT INTO O_306 VALUES('240731001288', '240731001000', '7001', 870000.0, 'UM an Sarjito F. Adam Periode 21 Juli 2024 - 28 Juli 2024 ', TIMESTAMP '2024-08-27 14:08:59.693', 870000.0, 7.7635133E7, 6.5638232E7);
INSERT INTO O_306 VALUES('240731001289', '240731001000', '7001', 1110000.0, 'UM an Yono Setyawan Periode 21 Juli 2024 - 28 Juli 2024 ', TIMESTAMP '2024-08-27 14:08:59.694', 1110000.0, 7.8745133E7, 6.4528232E7);
INSERT INTO O_306 VALUES('240731001290', '240731001000', '7022', 2500000.0, 'Dana Sosial u/ Petinggi Muara Batuq Periode Juli 2024', TIMESTAMP '2024-08-27 14:08:59.696', 2500000.0, 2500000.0, 6.2028232E7);
INSERT INTO O_306 VALUES('240731001291', '240731001000', '7023', 750000.0, 'Pengganti Bensin Perahu Penyeberangan Karyawan Periode Agustus', TIMESTAMP '2024-08-27 14:08:59.7', 750000.0, 910000.0, 6.1278232E7);
INSERT INTO O_306 VALUES('240731001292', '240731001000', '7004', 60000.0, '1 set hand tap M8x1,25, ', TIMESTAMP '2024-08-27 14:08:59.7', 60000.0, 4686600.0, 6.1218232E7);
INSERT INTO O_306 VALUES('240731001293', '240731001000', '7017', 90000.0, '2pak sarung tangan,', TIMESTAMP '2024-08-27 14:08:59.7', 90000.0, -6.37736E7, 6.1128232E7);
INSERT INTO O_306 VALUES('240731001294', '240731001000', '7016', 18000.0, ' 6pc baut u/L8039BX (Maju Mandiri)', TIMESTAMP '2024-08-27 14:08:59.7', 18000.0, 2.1622E7, 6.1110232E7);
INSERT INTO O_306 VALUES('240731001295', '240731001000', '7017', 300000.0, '1 Tbg oksigen (Makmur Jaya)', TIMESTAMP '2024-08-27 14:08:59.7', 300000.0, -6.34736E7, 6.0810232E7);
INSERT INTO O_306 VALUES('240731001296', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 8397 VB u/ Belanja Sparepart dan Antar Yono Sarjito', TIMESTAMP '2024-08-27 14:08:59.701', 50000.0, 1.1947E7, 6.0760232E7);
INSERT INTO O_306 VALUES('240731001297', '240731001000', '7006', 50000.0, 'Penyeberangan PP L 9502 GH u/ menjemput ', TIMESTAMP '2024-08-27 14:08:59.701', 50000.0, 1.1997E7, 6.0710232E7);
INSERT INTO O_306 VALUES('240731001298', '240731001000', '7004', 500000.0, '50 Jerigen Air Isi Ulang Ivana u/ Mess KM 18', TIMESTAMP '2024-08-27 14:08:59.701', 500000.0, 5186600.0, 6.0210232E7);
INSERT INTO O_306 VALUES('240731001299', '240731001000', '7001', 320000.0, 'Piket Genset Penerangan Periode 27 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.701', 320000.0, 7.9065133E7, 5.9890232E7);
INSERT INTO O_306 VALUES('240731001300', '240731001000', '7010', 0.0, 'Admin bank BNI periode 27/7 sd 31/7/24 (553.290 - 549.290)', TIMESTAMP '2024-08-27 14:08:59.701', 0.0, 382000.0, 5.9890232E7);
INSERT INTO O_306 VALUES('240731001301', '240731001000', '7022', 1500000.0, 'Dana Sosial u/ Petinggi Muyub Ilir Periode Juli 2024', TIMESTAMP '2024-08-27 14:08:59.701', 1500000.0, 4000000.0, 5.8390232E7);
INSERT INTO O_306 VALUES('240731001302', '240731001000', '7004', 20000.0, '1 dus air gelasan Annajwa (Undipure) u/ Proyek W.Shop', TIMESTAMP '2024-08-27 14:08:59.701', 20000.0, 5206600.0, 5.8370232E7);
INSERT INTO O_306 VALUES('240731001303', '240731001000', '7004', 20000.0, '1 dus air gelasan Annajwa (Undipure) u/ Proyek W.Shop', TIMESTAMP '2024-08-27 14:08:59.701', 20000.0, 5226600.0, 5.8350232E7);
INSERT INTO O_306 VALUES('240731001304', '240731001000', '7001', 1100000.0, 'Haqul Istaflakha Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.701', 1100000.0, 8.0165133E7, 5.7250232E7);
INSERT INTO O_306 VALUES('240731001305', '240731001000', '7001', 1190000.0, 'Handriyadi Periode 24 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.701', 1190000.0, 8.1355133E7, 5.6060232E7);
INSERT INTO O_306 VALUES('240731001306', '240731001000', '7001', 825000.0, 'Jakaria Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.701', 825000.0, 8.2180133E7, 5.5235232E7);
INSERT INTO O_306 VALUES('240731001307', '240731001000', '7001', 1980000.0, 'Supriyanto Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.701', 1980000.0, 8.4160133E7, 5.3255232E7);
INSERT INTO O_306 VALUES('240731001308', '240731001000', '7001', 1540000.0, 'Wijanarko Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.701', 1540000.0, 8.5700133E7, 5.1715232E7);
INSERT INTO O_306 VALUES('240731001309', '240731001000', '7001', 1540000.0, 'Sekhan Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.701', 1540000.0, 8.7240133E7, 5.0175232E7);
INSERT INTO O_306 VALUES('240731001310', '240731001000', '7001', 1155000.0, 'Maretius Oji Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.702', 1155000.0, 8.8395133E7, 4.9020232E7);
INSERT INTO O_306 VALUES('240731001311', '240731001000', '7001', 1540000.0, 'Anna Qodri Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.702', 1540000.0, 8.9935133E7, 4.7480232E7);
INSERT INTO O_306 VALUES('240731001312', '240731001000', '7001', 1287000.0, 'Didik M. Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.702', 1287000.0, 9.1222133E7, 4.6193232E7);
INSERT INTO O_306 VALUES('240731001313', '240731001000', '7001', 1650000.0, 'M. Hafizhni Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.702', 1650000.0, 9.2872133E7, 4.4543232E7);
INSERT INTO O_306 VALUES('240731001314', '240731001000', '7001', 1540000.0, 'Suradi Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.702', 1540000.0, 9.4412133E7, 4.3003232E7);
INSERT INTO O_306 VALUES('240731001315', '240731001000', '7001', 605000.0, 'Fajar N. Hidayat Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.702', 605000.0, 9.5017133E7, 4.2398232E7);
INSERT INTO O_306 VALUES('240731001316', '240731001000', '7001', 1760000.0, 'Rifa i Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.703', 1760000.0, 9.6777133E7, 4.0638232E7);
INSERT INTO O_306 VALUES('240731001317', '240731001000', '7001', 1133000.0, 'Agus Mukhlis Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.705', 1133000.0, 9.7910133E7, 3.9505232E7);
INSERT INTO O_306 VALUES('240731001318', '240731001000', '7001', 1133000.0, 'Hamid Jawanto Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.706', 1133000.0, 9.9043133E7, 3.8372232E7);
INSERT INTO O_306 VALUES('240731001319', '240731001000', '7001', 1133000.0, 'M. Safi I Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.706', 1133000.0, 1.00176133E8, 3.7239232E7);
INSERT INTO O_306 VALUES('240731001320', '240731001000', '7001', 1980000.0, 'Darman Periode 21 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.707', 1980000.0, 1.02156133E8, 3.5259232E7);
INSERT INTO O_306 VALUES('240731001321', '240731001000', '7001', 790000.0, 'M. Shaiful Hani Periode 27 Juli 2024 - 31 Juli 2024', TIMESTAMP '2024-08-27 14:08:59.707', 790000.0, 1.02946133E8, 3.4469232E7);
INSERT INTO O_306 VALUES('240731001322', '240731001000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Agustus 2024 (Acc. Pak Agus)', TIMESTAMP '2024-08-27 14:08:59.707', 500000.0, 1.03446133E8, 3.3969232E7);
INSERT INTO O_306 VALUES('240731001323', '240731001000', '7001', 500000.0, 'Kasbon Potong Gaji Periode Agustus 2024 (U/ Biaya Berobat)', TIMESTAMP '2024-08-27 14:08:59.708', 500000.0, 1.03946133E8, 3.3469232E7);
---- Schema ----
CREATE USER IF NOT EXISTS "SYSDBA" SALT '49aa1db95860271b' HASH 'cac03b0d7be4b02c0a636b2575d6a835e9673ac58d1d3e9a607a4833b28dae7c' ADMIN;
CREATE CACHED TABLE "PUBLIC"."TB_INFO"(
    "ID" SMALLINT,
    "COMPANY_NAME" CHARACTER(100),
    "COMPANY_ADDRESS" CHARACTER(200),
    "COMPANY_CITY" CHARACTER(50),
    "COMPANY_COUNTRY" CHARACTER(50),
    "COMPANY_TELEPHONE" CHARACTER(20),
    "COMPANY_HANDPHONE" CHARACTER(20)
);
CREATE CACHED TABLE "PUBLIC"."TB_USER"(
    "U_USERNAME" CHARACTER(20),
    "U_PASSWORD" CHARACTER(100),
    "U_TYPE" INTEGER
);
CREATE CACHED TABLE "PUBLIC"."TB_JOURNAL_DETAIL"(
    "JD_ID" CHARACTER VARYING(15) SELECTIVITY 100,
    "JD_JM_MASTER" CHARACTER VARYING(15) SELECTIVITY 29,
    "JD_ACC" CHARACTER VARYING(10) SELECTIVITY 8,
    "JD_AMOUNT_KREDIT" DOUBLE PRECISION SELECTIVITY 39,
    "JD_DESC" CHARACTER VARYING(300) SELECTIVITY 39,
    "JD_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP SELECTIVITY 36,
    "JD_AMOUNT_DEBIT" DOUBLE PRECISION SELECTIVITY 38 NOT NULL,
    "JD_SALDO" DOUBLE PRECISION SELECTIVITY 82,
    "JD_NO_REF" CHARACTER VARYING(50) SELECTIVITY 28
);
CREATE FORCE VIEW "PUBLIC"."ALLTRANS"("ID", "DATE_CREATED", "DOC_TYPE", "DATE_TRANS", "DOC_NO", "REF_NO", "DOC_NO_2", "CREDIT", "DEBIT", "SALDO", "SALDO_MASTER", "DESCRIPTION", "ACC_CODE", "ACC_CODE_MASTER") AS
((((SELECT
    "CPD_ID" AS "ID",
    "CPD_DATE_CREATED" AS "DATE_CREATED",
    'CP' AS "DOC_TYPE",
    "CPM_DATE_TRANS" AS "DATE_TRANS",
    "CRP_DOC_NO" AS "DOC_NO",
    "CPM_REF_NO" AS "REF_NO",
    "CPD_CPM_MASTER" AS "DOC_NO_2",
    COALESCE("CPD_AMOUNT", 0) AS "CREDIT",
    COALESCE("CPD_AMOUNT_DEBIT", 0) AS "DEBIT",
    "CPD_SALDO" AS "SALDO",
    "CPD_SALDO_MASTER" AS "SALDO_MASTER",
    "CPD_DESC" AS "DESCRIPTION",
    "CPD_ACC" AS "ACC_CODE",
    "TB_CP_MASTER"."CPM_ACC" AS "ACC_CODE_MASTER"
FROM "PUBLIC"."TB_CP_DETAIL"
INNER JOIN "PUBLIC"."TB_CP_MASTER"
    ON 1=1
WHERE "TB_CP_DETAIL"."CPD_CPM_MASTER" = "TB_CP_MASTER"."CRP_DOC_NO")
UNION
(SELECT
    "CRD_ID",
    "CRD_DATE_CREATED",
    'CR' AS "DOC_TYPE",
    "CRM_DATE_TRANS",
    "CRM_DOC_NO",
    "CRM_REF_NO",
    "CRD_CRM_MASTER",
    COALESCE("CRD_AMOUNT_KREDIT", 0) AS "CREDIT",
    COALESCE("CRD_AMOUNT", 0) AS "DEBIT",
    "CRD_SALDO",
    "CRD_SALDO_MASTER",
    "CRD_DESC",
    "CRD_ACC",
    "TB_CR_MASTER"."CRM_ACC"
FROM "PUBLIC"."TB_CR_DETAIL"
INNER JOIN "PUBLIC"."TB_CR_MASTER"
    ON 1=1
WHERE "TB_CR_DETAIL"."CRD_CRM_MASTER" = "TB_CR_MASTER"."CRM_DOC_NO"))
UNION
(SELECT
    "BPD_ID",
    "BPD_DATE_CREATED",
    'BP' AS "DOC_TYPE",
    "BPM_DATE_TRANS",
    "BPM_DOC_NO",
    "BPM_REF_NO",
    "BPD_BPM_MASTER",
    COALESCE("BPD_AMOUNT", 0) AS "CREDIT",
    COALESCE("BPD_AMOUNT_DEBIT", 0) AS "DEBIT",
    "BPD_SALDO",
    "BPD_SALDO_MASTER",
    "BPD_DESC",
    "BPD_ACC",
    "TB_BP_MASTER"."BPM_ACC"
FROM "PUBLIC"."TB_BP_DETAIL"
INNER JOIN "PUBLIC"."TB_BP_MASTER"
    ON 1=1
WHERE "TB_BP_DETAIL"."BPD_BPM_MASTER" = "TB_BP_MASTER"."BPM_DOC_NO"))
UNION
(SELECT
    "BRD_ID",
    "BRD_DATE_CREATED",
    'BR' AS "DOC_TYPE",
    "BRM_DATE_TRANS",
    "BRM_DOC_NO",
    "BRM_REF_NO",
    "BRD_BRM_MASTER",
    COALESCE("BRD_AMOUNT_KREDIT", 0) AS "CREDIT",
    COALESCE("BRD_AMOUNT", 0) AS "DEBIT",
    "BRD_SALDO",
    "BRD_SALDO_MASTER",
    "BRD_DESC",
    "BRD_ACC",
    "TB_BR_MASTER"."BRM_ACC"
FROM "PUBLIC"."TB_BR_DETAIL"
INNER JOIN "PUBLIC"."TB_BR_MASTER"
    ON 1=1
WHERE "TB_BR_DETAIL"."BRD_BRM_MASTER" = "TB_BR_MASTER"."BRM_DOC_NO"))
UNION
(SELECT
    "JD_ID",
    "JD_DATE_CREATED",
    CASE "JM_TYPE" WHEN 0 THEN 'GJ' WHEN 1 THEN 'PJ' ELSE 'SJ' END AS "DOC_TYPE",
    "JM_DATE_TRANS",
    "JM_DOC_NO",
    "JM_REF_NO",
    "JD_JM_MASTER",
    COALESCE("JD_AMOUNT_KREDIT", 0) AS "CREDIT",
    COALESCE("JD_AMOUNT_DEBIT", 0) AS "DEBIT",
    "JD_SALDO",
    "JD_SALDO",
    "JD_DESC",
    "JD_ACC",
    "JD_ACC"
FROM "PUBLIC"."TB_JOURNAL_DETAIL"
INNER JOIN "PUBLIC"."TB_JOURNAL_MASTER"
    ON 1=1
WHERE "TB_JOURNAL_DETAIL"."JD_JM_MASTER" = "TB_JOURNAL_MASTER"."JM_DOC_NO");
CREATE FORCE VIEW "PUBLIC"."BALANCESET"("ID", "DATE_TRANS", "ACC_CODE", "ACC_CODE_MASTER", "SALDO", "SALDO_MASTER", "ISBOOKPRINT") AS
((((SELECT
    "CPD_ID" AS "ID",
    "CPM_DATE_TRANS" AS "DATE_TRANS",
    "CPD_ACC" AS "ACC_CODE",
    "CPM_ACC" AS "ACC_CODE_MASTER",
    "CPD_SALDO" AS "SALDO",
    "CPD_SALDO_MASTER" AS "SALDO_MASTER",
    (SELECT
        "ISBOOKPRINT"
    FROM "PUBLIC"."TB_ACC"
    WHERE "ACC_CODE" = "CPM_ACC"
    FETCH FIRST ROW ONLY) AS "ISBOOKPRINT"
FROM "PUBLIC"."TB_CP_DETAIL"
INNER JOIN "PUBLIC"."TB_CP_MASTER"
    ON 1=1
WHERE "TB_CP_DETAIL"."CPD_CPM_MASTER" = "TB_CP_MASTER"."CRP_DOC_NO")
UNION
(SELECT
    "BPD_ID" AS "ID",
    "BPM_DATE_TRANS" AS "DATE_TRANS",
    "BPD_ACC",
    "BPM_ACC",
    "BPD_SALDO",
    "BPD_SALDO_MASTER",
    (SELECT
        "ISBOOKPRINT"
    FROM "PUBLIC"."TB_ACC"
    WHERE "ACC_CODE" = "BPM_ACC"
    FETCH FIRST ROW ONLY)
FROM "PUBLIC"."TB_BP_DETAIL"
INNER JOIN "PUBLIC"."TB_BP_MASTER"
    ON 1=1
WHERE "TB_BP_DETAIL"."BPD_BPM_MASTER" = "TB_BP_MASTER"."BPM_DOC_NO"))
UNION
(SELECT
    "CRD_ID" AS "ID",
    "CRM_DATE_TRANS" AS "DATE_TRANS",
    "CRD_ACC",
    "CRM_ACC",
    "CRD_SALDO",
    "CRD_SALDO_MASTER",
    (SELECT
        "ISBOOKPRINT"
    FROM "PUBLIC"."TB_ACC"
    WHERE "ACC_CODE" = "CRM_ACC"
    FETCH FIRST ROW ONLY)
FROM "PUBLIC"."TB_CR_DETAIL"
INNER JOIN "PUBLIC"."TB_CR_MASTER"
    ON 1=1
WHERE "TB_CR_DETAIL"."CRD_CRM_MASTER" = "TB_CR_MASTER"."CRM_DOC_NO"))
UNION
(SELECT
    "BRD_ID" AS "ID",
    "BRM_DATE_TRANS" AS "DATE_TRANS",
    "BRD_ACC",
    "BRM_ACC",
    "BRD_SALDO",
    "BRD_SALDO_MASTER",
    (SELECT
        "ISBOOKPRINT"
    FROM "PUBLIC"."TB_ACC"
    WHERE "ACC_CODE" = "BRM_ACC"
    FETCH FIRST ROW ONLY)
FROM "PUBLIC"."TB_BR_DETAIL"
INNER JOIN "PUBLIC"."TB_BR_MASTER"
    ON 1=1
WHERE "TB_BR_DETAIL"."BRD_BRM_MASTER" = "TB_BR_MASTER"."BRM_DOC_NO"))
UNION
(SELECT
    "JD_ID" AS "ID",
    "JM_DATE_TRANS" AS "DATE_TRANS",
    "JD_ACC",
    "JD_ACC",
    "JD_SALDO",
    "JD_SALDO",
    (SELECT
        "ISBOOKPRINT"
    FROM "PUBLIC"."TB_ACC"
    WHERE "ACC_CODE" = "JD_ACC"
    FETCH FIRST ROW ONLY)
FROM "PUBLIC"."TB_JOURNAL_DETAIL"
INNER JOIN "PUBLIC"."TB_JOURNAL_MASTER"
    ON 1=1
WHERE "TB_JOURNAL_DETAIL"."JD_JM_MASTER" = "TB_JOURNAL_MASTER"."JM_DOC_NO");
CREATE FORCE VIEW "PUBLIC"."BOOKPRINT"("ID", "DATE_CREATED", "DOC_TYPE", "DATE_TRANS", "DOC_NO", "REF_NO", "DOC_NO_2", "CREDIT", "DEBIT", "SALDO", "SALDO_MASTER", "DESCRIPTION", "ACC_CODE", "ACC_CODE_MASTER") AS
((((SELECT
    "CPD_ID" AS "ID",
    "CPD_DATE_CREATED" AS "DATE_CREATED",
    'CP' AS "DOC_TYPE",
    "CPM_DATE_TRANS" AS "DATE_TRANS",
    "CRP_DOC_NO" AS "DOC_NO",
    "CPM_REF_NO" AS "REF_NO",
    "CPD_CPM_MASTER" AS "DOC_NO_2",
    COALESCE("CPD_AMOUNT", 0) AS "CREDIT",
    0 AS "DEBIT",
    "CPD_SALDO" AS "SALDO",
    "CPD_SALDO_MASTER" AS "SALDO_MASTER",
    "CPD_DESC" AS "DESCRIPTION",
    "CPD_ACC" AS "ACC_CODE",
    "TB_CP_MASTER"."CPM_ACC" AS "ACC_CODE_MASTER"
FROM "PUBLIC"."TB_CP_DETAIL"
INNER JOIN "PUBLIC"."TB_CP_MASTER"
    ON 1=1
WHERE "TB_CP_DETAIL"."CPD_CPM_MASTER" = "TB_CP_MASTER"."CRP_DOC_NO")
UNION
(SELECT
    "CRD_ID",
    "CRD_DATE_CREATED",
    'CR' AS "DOC_TYPE",
    "CRM_DATE_TRANS",
    "CRM_DOC_NO",
    "CRM_REF_NO",
    "CRD_CRM_MASTER",
    0 AS "CREDIT",
    COALESCE("CRD_AMOUNT", 0) AS "DEBIT",
    "CRD_SALDO",
    "CRD_SALDO_MASTER",
    "CRD_DESC",
    "CRD_ACC",
    "TB_CR_MASTER"."CRM_ACC"
FROM "PUBLIC"."TB_CR_DETAIL"
INNER JOIN "PUBLIC"."TB_CR_MASTER"
    ON 1=1
WHERE "TB_CR_DETAIL"."CRD_CRM_MASTER" = "TB_CR_MASTER"."CRM_DOC_NO"))
UNION
(SELECT
    "BPD_ID",
    "BPD_DATE_CREATED",
    'BP' AS "DOC_TYPE",
    "BPM_DATE_TRANS",
    "BPM_DOC_NO",
    "BPM_REF_NO",
    "BPD_BPM_MASTER",
    COALESCE("BPD_AMOUNT", 0) AS "CREDIT",
    0 AS "DEBIT",
    "BPD_SALDO",
    "BPD_SALDO_MASTER",
    "BPD_DESC",
    "BPD_ACC",
    "TB_BP_MASTER"."BPM_ACC"
FROM "PUBLIC"."TB_BP_DETAIL"
INNER JOIN "PUBLIC"."TB_BP_MASTER"
    ON 1=1
WHERE "TB_BP_DETAIL"."BPD_BPM_MASTER" = "TB_BP_MASTER"."BPM_DOC_NO"))
UNION
(SELECT
    "BRD_ID",
    "BRD_DATE_CREATED",
    'BR' AS "DOC_TYPE",
    "BRM_DATE_TRANS",
    "BRM_DOC_NO",
    "BRM_REF_NO",
    "BRD_BRM_MASTER",
    0 AS "CREDIT",
    COALESCE("BRD_AMOUNT", 0) AS "DEBIT",
    "BRD_SALDO",
    "BRD_SALDO_MASTER",
    "BRD_DESC",
    "BRD_ACC",
    "TB_BR_MASTER"."BRM_ACC"
FROM "PUBLIC"."TB_BR_DETAIL"
INNER JOIN "PUBLIC"."TB_BR_MASTER"
    ON 1=1
WHERE "TB_BR_DETAIL"."BRD_BRM_MASTER" = "TB_BR_MASTER"."BRM_DOC_NO"))
UNION
(SELECT
    "JD_ID",
    "JD_DATE_CREATED",
    CASE "JM_TYPE" WHEN 0 THEN 'GJ' WHEN 1 THEN 'PJ' ELSE 'SJ' END AS "DOC_TYPE",
    "JM_DATE_TRANS",
    "JM_DOC_NO",
    "JM_REF_NO",
    "JD_JM_MASTER",
    COALESCE("JD_AMOUNT_KREDIT", 0) AS "CREDIT",
    COALESCE("JD_AMOUNT_DEBIT", 0) AS "DEBIT",
    "JD_SALDO",
    "JD_SALDO",
    "JD_DESC",
    "JD_ACC",
    "JD_ACC"
FROM "PUBLIC"."TB_JOURNAL_DETAIL"
INNER JOIN "PUBLIC"."TB_JOURNAL_MASTER"
    ON 1=1
WHERE "TB_JOURNAL_DETAIL"."JD_JM_MASTER" = "TB_JOURNAL_MASTER"."JM_DOC_NO");
CREATE FORCE VIEW "PUBLIC"."CASHBOOKVIEW"("DOC_TYPE", "DATE_TRANS", "DATE_CREATED", "DOC_NO", "REF_NO", "DOC_NO_2", "CREDIT", "DEBIT", "SALDO", "DESCRIPTION", "ACC_CODE", "LINK_TO") AS
(((SELECT
    'CP' AS "DOC_TYPE",
    "CPM_DATE_TRANS" AS "DATE_TRANS",
    "CPD_DATE_CREATED" AS "DATE_CREATED",
    "CRP_DOC_NO" AS "DOC_NO",
    "CPM_REF_NO" AS "REF_NO",
    "CPD_CPM_MASTER" AS "DOC_NO_2",
    COALESCE("CPD_AMOUNT", 0) AS "CREDIT",
    COALESCE("CPD_AMOUNT_DEBIT", 0) AS "DEBIT",
    "CPD_SALDO" AS "SALDO",
    "CPD_DESC" AS "DESCRIPTION",
    "CPM_ACC" AS "ACC_CODE",
    "CPD_ACC" AS "LINK_TO"
FROM "PUBLIC"."TB_CP_DETAIL"
INNER JOIN "PUBLIC"."TB_CP_MASTER"
    ON 1=1
WHERE "TB_CP_DETAIL"."CPD_CPM_MASTER" = "TB_CP_MASTER"."CRP_DOC_NO")
UNION
(SELECT
    'CR' AS "DOC_TYPE",
    "CRM_DATE_TRANS",
    "CRD_DATE_CREATED",
    "CRM_DOC_NO",
    "CRM_REF_NO",
    "CRD_CRM_MASTER",
    COALESCE("CRD_AMOUNT_KREDIT", 0) AS "CREDIT",
    COALESCE("CRD_AMOUNT", 0) AS "DEBIT",
    "CRD_SALDO",
    "CRD_DESC",
    "CRM_ACC",
    "CRD_ACC" AS "LINK_TO"
FROM "PUBLIC"."TB_CR_DETAIL"
INNER JOIN "PUBLIC"."TB_CR_MASTER"
    ON 1=1
WHERE "TB_CR_DETAIL"."CRD_CRM_MASTER" = "TB_CR_MASTER"."CRM_DOC_NO"))
UNION
(SELECT
    'BP' AS "DOC_TYPE",
    "BPM_DATE_TRANS" AS "DATE_TRANS",
    "BPD_DATE_CREATED",
    "BPM_DOC_NO" AS "DOC_NO",
    "BPM_REF_NO" AS "REF_NO",
    "BPD_BPM_MASTER",
    COALESCE("BPD_AMOUNT", 0) AS "CREDIT",
    COALESCE("BPD_AMOUNT_DEBIT", 0) AS "DEBIT",
    "BPD_SALDO",
    "BPD_DESC",
    "BPM_ACC",
    "BPD_ACC" AS "LINK_TO"
FROM "PUBLIC"."TB_BP_DETAIL"
INNER JOIN "PUBLIC"."TB_BP_MASTER"
    ON 1=1
WHERE "TB_BP_DETAIL"."BPD_BPM_MASTER" = "TB_BP_MASTER"."BPM_DOC_NO"))
UNION
(SELECT
    'BR' AS "DOC_TYPE",
    "BRM_DATE_TRANS",
    "BRD_DATE_CREATED",
    "BRM_DOC_NO",
    "BRM_REF_NO",
    "BRD_BRM_MASTER",
    COALESCE("BRD_AMOUNT_KREDIT", 0) AS "CREDIT",
    COALESCE("BRD_AMOUNT", 0) AS "DEBIT",
    "BRD_SALDO",
    "BRD_DESC",
    "BRM_ACC",
    "BRD_ACC" AS "LINK_TO"
FROM "PUBLIC"."TB_BR_DETAIL"
INNER JOIN "PUBLIC"."TB_BR_MASTER"
    ON 1=1
WHERE "TB_BR_DETAIL"."BRD_BRM_MASTER" = "TB_BR_MASTER"."BRM_DOC_NO");
CREATE FORCE VIEW "PUBLIC"."HEADERLEDGER"("DOC_NO", "DATE_TRANS", "REF_NO", "CPM_ACC", "ACC_NAME") AS
(((SELECT
    "CRP_DOC_NO" AS "DOC_NO",
    "CPM_DATE_TRANS" AS "DATE_TRANS",
    "CPM_REF_NO" AS "REF_NO",
    "CPM_ACC",
    "ACC_NAME"
FROM "PUBLIC"."TB_CP_MASTER"
INNER JOIN "PUBLIC"."TB_ACC"
    ON 1=1
WHERE "TB_CP_MASTER"."CPM_ACC" = "TB_ACC"."ACC_CODE")
UNION
(SELECT
    "CRM_DOC_NO",
    "CRM_DATE_TRANS",
    "CRM_REF_NO",
    "CRM_ACC",
    "ACC_NAME"
FROM "PUBLIC"."TB_CR_MASTER"
INNER JOIN "PUBLIC"."TB_ACC"
    ON 1=1
WHERE "TB_CR_MASTER"."CRM_ACC" = "TB_ACC"."ACC_CODE"))
UNION
(SELECT
    "BPM_DOC_NO",
    "BPM_DATE_TRANS",
    "BPM_REF_NO",
    "BPM_ACC",
    "ACC_NAME"
FROM "PUBLIC"."TB_BP_MASTER"
INNER JOIN "PUBLIC"."TB_ACC"
    ON 1=1
WHERE "TB_BP_MASTER"."BPM_ACC" = "TB_ACC"."ACC_CODE"))
UNION
(SELECT
    "BRM_DOC_NO",
    "BRM_DATE_TRANS",
    "BRM_REF_NO",
    "BRM_ACC",
    "ACC_NAME"
FROM "PUBLIC"."TB_BR_MASTER"
INNER JOIN "PUBLIC"."TB_ACC"
    ON 1=1
WHERE "TB_BR_MASTER"."BRM_ACC" = "TB_ACC"."ACC_CODE");
CREATE FORCE VIEW "PUBLIC"."LEDGER"("ID", "DATE_CREATED", "DOC_TYPE", "DATE_TRANS", "DOC_NO", "REF_NO", "DOC_NO_2", "CREDIT", "DEBIT", "SALDO", "SALDO_MASTER", "DESCRIPTION", "ACC_CODE", "ACC_CODE_MASTER") AS
((((SELECT
    "CPD_ID" AS "ID",
    "CPD_DATE_CREATED" AS "DATE_CREATED",
    'CP' AS "DOC_TYPE",
    "CPM_DATE_TRANS" AS "DATE_TRANS",
    "CRP_DOC_NO" AS "DOC_NO",
    "CPM_REF_NO" AS "REF_NO",
    "CPD_CPM_MASTER" AS "DOC_NO_2",
    0 AS "CREDIT",
    COALESCE("CPD_AMOUNT_DEBIT", 0) AS "DEBIT",
    "CPD_SALDO" AS "SALDO",
    "CPD_SALDO_MASTER" AS "SALDO_MASTER",
    "CPD_DESC" AS "DESCRIPTION",
    "CPD_ACC" AS "ACC_CODE",
    "TB_CP_MASTER"."CPM_ACC" AS "ACC_CODE_MASTER"
FROM "PUBLIC"."TB_CP_DETAIL"
INNER JOIN "PUBLIC"."TB_CP_MASTER"
    ON 1=1
WHERE "TB_CP_DETAIL"."CPD_CPM_MASTER" = "TB_CP_MASTER"."CRP_DOC_NO")
UNION
(SELECT
    "CRD_ID",
    "CRD_DATE_CREATED",
    'CR' AS "DOC_TYPE",
    "CRM_DATE_TRANS",
    "CRM_DOC_NO",
    "CRM_REF_NO",
    "CRD_CRM_MASTER",
    COALESCE("CRD_AMOUNT_KREDIT", 0) AS "CREDIT",
    0 AS "DEBIT",
    "CRD_SALDO",
    "CRD_SALDO_MASTER",
    "CRD_DESC",
    "CRD_ACC",
    "TB_CR_MASTER"."CRM_ACC"
FROM "PUBLIC"."TB_CR_DETAIL"
INNER JOIN "PUBLIC"."TB_CR_MASTER"
    ON 1=1
WHERE "TB_CR_DETAIL"."CRD_CRM_MASTER" = "TB_CR_MASTER"."CRM_DOC_NO"))
UNION
(SELECT
    "BPD_ID",
    "BPD_DATE_CREATED",
    'BP' AS "DOC_TYPE",
    "BPM_DATE_TRANS",
    "BPM_DOC_NO",
    "BPM_REF_NO",
    "BPD_BPM_MASTER",
    0 AS "CREDIT",
    COALESCE("BPD_AMOUNT_DEBIT", 0) AS "DEBIT",
    "BPD_SALDO",
    "BPD_SALDO_MASTER",
    "BPD_DESC",
    "BPD_ACC",
    "TB_BP_MASTER"."BPM_ACC"
FROM "PUBLIC"."TB_BP_DETAIL"
INNER JOIN "PUBLIC"."TB_BP_MASTER"
    ON 1=1
WHERE "TB_BP_DETAIL"."BPD_BPM_MASTER" = "TB_BP_MASTER"."BPM_DOC_NO"))
UNION
(SELECT
    "BRD_ID",
    "BRD_DATE_CREATED",
    'BR' AS "DOC_TYPE",
    "BRM_DATE_TRANS",
    "BRM_DOC_NO",
    "BRM_REF_NO",
    "BRD_BRM_MASTER",
    COALESCE("BRD_AMOUNT_KREDIT", 0) AS "CREDIT",
    0 AS "DEBIT",
    "BRD_SALDO",
    "BRD_SALDO_MASTER",
    "BRD_DESC",
    "BRD_ACC",
    "TB_BR_MASTER"."BRM_ACC"
FROM "PUBLIC"."TB_BR_DETAIL"
INNER JOIN "PUBLIC"."TB_BR_MASTER"
    ON 1=1
WHERE "TB_BR_DETAIL"."BRD_BRM_MASTER" = "TB_BR_MASTER"."BRM_DOC_NO"))
UNION
(SELECT
    "JD_ID",
    "JD_DATE_CREATED",
    CASE "JM_TYPE" WHEN 0 THEN 'GJ' WHEN 1 THEN 'PJ' ELSE 'SJ' END AS "DOC_TYPE",
    "JM_DATE_TRANS",
    "JM_DOC_NO",
    "JM_REF_NO",
    "JD_JM_MASTER",
    COALESCE("JD_AMOUNT_KREDIT", 0) AS "CREDIT",
    COALESCE("JD_AMOUNT_DEBIT", 0) AS "DEBIT",
    "JD_SALDO",
    "JD_SALDO",
    "JD_DESC",
    "JD_ACC",
    "JD_ACC"
FROM "PUBLIC"."TB_JOURNAL_DETAIL"
INNER JOIN "PUBLIC"."TB_JOURNAL_MASTER"
    ON 1=1
WHERE "TB_JOURNAL_DETAIL"."JD_JM_MASTER" = "TB_JOURNAL_MASTER"."JM_DOC_NO");
CREATE FORCE VIEW "PUBLIC"."PLBSHEAD"("REPORT_TYPE", "REPORT_CODE") AS
SELECT
    CASE "ACC_GROUP" WHEN 0 THEN 'BALANCE SHEET' WHEN 2 THEN 'BALANCE SHEET' ELSE 'PROFIT LOSS' END AS "REPORT_TYPE",
    CASE "ACC_GROUP" WHEN 0 THEN 'BS' WHEN 2 THEN 'BS' ELSE 'PL' END AS "REPORT_CODE"
FROM "PUBLIC"."TB_ACC"
GROUP BY CASE "ACC_GROUP" WHEN 0 THEN 'BALANCE SHEET' WHEN 2 THEN 'BALANCE SHEET' ELSE 'PROFIT LOSS' END, CASE "ACC_GROUP" WHEN 0 THEN 'BS' WHEN 2 THEN 'BS' ELSE 'PL' END;
CREATE CACHED TABLE "PUBLIC"."TB_JOURNAL_MASTER"(
    "JM_DOC_NO" CHARACTER VARYING(15),
    "JM_DATE_TRANS" DATE,
    "JM_REF_NO" CHARACTER VARYING(15),
    "JM_DATE_REF" DATE,
    "JM_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "JM_TYPE" SMALLINT
);
CREATE CACHED TABLE "PUBLIC"."TB_BP_MASTER"(
    "BPM_DOC_NO" CHARACTER VARYING(15),
    "BPM_DATE_TRANS" DATE,
    "BPM_REF_NO" CHARACTER VARYING(15),
    "BPM_DATE_REF" DATE,
    "BPM_ACC" CHARACTER VARYING(10),
    "BPM_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE CACHED TABLE "PUBLIC"."TB_BP_DETAIL"(
    "BPD_ID" CHARACTER VARYING(15) SELECTIVITY 100,
    "BPD_BPM_MASTER" CHARACTER VARYING(15) SELECTIVITY 4,
    "BPD_ACC" CHARACTER VARYING(10) SELECTIVITY 2,
    "BPD_AMOUNT" DOUBLE PRECISION SELECTIVITY 62,
    "BPD_DESC" CHARACTER VARYING(300) SELECTIVITY 72,
    "BPD_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP SELECTIVITY 12,
    "BPD_AMOUNT_DEBIT" DOUBLE PRECISION SELECTIVITY 62,
    "BPD_SALDO" DOUBLE PRECISION SELECTIVITY 94,
    "BPD_SALDO_MASTER" DOUBLE PRECISION SELECTIVITY 95
);
CREATE CACHED TABLE "PUBLIC"."TB_BR_MASTER"(
    "BRM_DOC_NO" CHARACTER VARYING(15),
    "BRM_DATE_TRANS" DATE,
    "BRM_REF_NO" CHARACTER VARYING(15),
    "BRM_DATE_REF" DATE,
    "BRM_ACC" CHARACTER VARYING(10),
    "BRM_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE CACHED TABLE "PUBLIC"."TB_BR_DETAIL"(
    "BRD_ID" CHARACTER VARYING(15),
    "BRD_BRM_MASTER" CHARACTER VARYING(15),
    "BRD_ACC" CHARACTER VARYING(10),
    "BRD_AMOUNT" DOUBLE PRECISION,
    "BRD_DESC" CHARACTER VARYING(300),
    "BRD_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "BRD_AMOUNT_KREDIT" DOUBLE PRECISION,
    "BRD_SALDO" DOUBLE PRECISION,
    "BRD_SALDO_MASTER" DOUBLE PRECISION
);
CREATE CACHED TABLE "PUBLIC"."TB_CR_MASTER"(
    "CRM_DOC_NO" CHARACTER VARYING(15),
    "CRM_DATE_TRANS" DATE,
    "CRM_REF_NO" CHARACTER VARYING(15),
    "CRM_DATE_REF" DATE,
    "CRM_ACC" CHARACTER VARYING(10),
    "CRM_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE CACHED TABLE "PUBLIC"."TB_CR_DETAIL"(
    "CRD_ID" CHARACTER VARYING(15),
    "CRD_CRM_MASTER" CHARACTER VARYING(15),
    "CRD_ACC" CHARACTER VARYING(10),
    "CRD_AMOUNT" DOUBLE PRECISION,
    "CRD_DESC" CHARACTER VARYING(300),
    "CRD_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "CRD_AMOUNT_KREDIT" DOUBLE PRECISION,
    "CRD_SALDO" DOUBLE PRECISION,
    "CRD_SALDO_MASTER" DOUBLE PRECISION
);
CREATE CACHED TABLE "PUBLIC"."TB_CP_MASTER"(
    "CRP_DOC_NO" CHARACTER VARYING(15),
    "CPM_DATE_TRANS" DATE,
    "CPM_REF_NO" CHARACTER VARYING(15),
    "CPM_DATE_REF" DATE,
    "CPM_ACC" CHARACTER VARYING(10),
    "CPM_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE CACHED TABLE "PUBLIC"."TB_CP_DETAIL"(
    "CPD_ID" CHARACTER VARYING(15) SELECTIVITY 100,
    "CPD_CPM_MASTER" CHARACTER VARYING(15) SELECTIVITY 1,
    "CPD_ACC" CHARACTER VARYING(10) SELECTIVITY 1,
    "CPD_AMOUNT" DOUBLE PRECISION SELECTIVITY 28,
    "CPD_DESC" CHARACTER VARYING(300) SELECTIVITY 96,
    "CPD_DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP SELECTIVITY 4,
    "CPD_AMOUNT_DEBIT" DOUBLE PRECISION SELECTIVITY 28,
    "CPD_SALDO" DOUBLE PRECISION SELECTIVITY 98,
    "CPD_SALDO_MASTER" DOUBLE PRECISION SELECTIVITY 100
);
CREATE CACHED TABLE "PUBLIC"."TB_ACC"(
    "ACC_CODE" CHARACTER VARYING(10) SELECTIVITY 100,
    "ACC_NAME" CHARACTER VARYING(250) SELECTIVITY 100,
    "ACC_OPENING_BALANCE" DOUBLE PRECISION SELECTIVITY 1,
    "ACC_TYPE" SMALLINT SELECTIVITY 3,
    "ACC_GROUP" SMALLINT SELECTIVITY 4,
    "ACC_DESC" CHARACTER VARYING(300) SELECTIVITY 1,
    "DATE_CREATED" TIMESTAMP DEFAULT CURRENT_TIMESTAMP SELECTIVITY 65,
    "ISBOOKPRINT" SMALLINT SELECTIVITY 2,
    "ACC_CURRENT_BALANCE" DOUBLE PRECISION SELECTIVITY 56
);
INSERT INTO "PUBLIC"."TB_CR_MASTER" SELECT * FROM O_289;
INSERT INTO "PUBLIC"."TB_INFO" SELECT * FROM O_4;
INSERT INTO "PUBLIC"."TB_USER" SELECT * FROM O_6;
INSERT INTO "PUBLIC"."TB_JOURNAL_MASTER" SELECT * FROM O_263;
INSERT INTO "PUBLIC"."TB_CR_DETAIL" SELECT * FROM O_295;
INSERT INTO "PUBLIC"."TB_BP_MASTER" SELECT * FROM O_267;
INSERT INTO "PUBLIC"."TB_CP_MASTER" SELECT * FROM O_300;
INSERT INTO "PUBLIC"."TB_JOURNAL_DETAIL" SELECT * FROM O_14;
INSERT INTO "PUBLIC"."TB_BP_DETAIL" SELECT * FROM O_273;
INSERT INTO "PUBLIC"."TB_CP_DETAIL" SELECT * FROM O_306;
INSERT INTO "PUBLIC"."TB_BR_MASTER" SELECT * FROM O_278;
INSERT INTO "PUBLIC"."TB_ACC" SELECT * FROM O_311;
INSERT INTO "PUBLIC"."TB_BR_DETAIL" SELECT * FROM O_284;
DROP TABLE O_289;
DROP TABLE O_4;
DROP TABLE O_6;
DROP TABLE O_263;
DROP TABLE O_295;
DROP TABLE O_267;
DROP TABLE O_300;
DROP TABLE O_14;
DROP TABLE O_273;
DROP TABLE O_306;
DROP TABLE O_278;
DROP TABLE O_311;
DROP TABLE O_284;
DROP ALIAS READ_BLOB_MAP;
DROP ALIAS READ_CLOB_MAP;
DROP TABLE IF EXISTS INFORMATION_SCHEMA.LOB_BLOCKS;
