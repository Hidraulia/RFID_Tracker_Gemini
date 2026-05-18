.class public final enum Lcom/peripheral/ble/GattStatus;
.super Ljava/lang/Enum;
.source "GattStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/GattStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/GattStatus;

.field public static final enum ALREADY_OPEN:Lcom/peripheral/ble/GattStatus;

.field public static final enum ATTRIBUTE_NOT_FOUND:Lcom/peripheral/ble/GattStatus;

.field public static final enum ATTRIBUTE_NOT_LONG:Lcom/peripheral/ble/GattStatus;

.field public static final enum AUTHORIZATION_FAILED:Lcom/peripheral/ble/GattStatus;

.field public static final enum BUSY:Lcom/peripheral/ble/GattStatus;

.field public static final enum CANCEL:Lcom/peripheral/ble/GattStatus;

.field public static final enum CCCD_CFG_ERROR:Lcom/peripheral/ble/GattStatus;

.field public static final enum CMD_STARTED:Lcom/peripheral/ble/GattStatus;

.field public static final enum CONNECTION_CANCELLED:Lcom/peripheral/ble/GattStatus;

.field public static final enum CONNECTION_CONGESTED:Lcom/peripheral/ble/GattStatus;

.field public static final enum DATABASE_OUT_OF_SYNC:Lcom/peripheral/ble/GattStatus;

.field public static final enum DB_FULL:Lcom/peripheral/ble/GattStatus;

.field public static final enum DUPLICATE_REGISTRATION:Lcom/peripheral/ble/GattStatus;

.field public static final enum ENCRYPTED_NO_MITM:Lcom/peripheral/ble/GattStatus;

.field public static final enum ERROR:Lcom/peripheral/ble/GattStatus;

.field public static final enum FAILURE_REGISTERING_CLIENT:Lcom/peripheral/ble/GattStatus;

.field public static final enum ILLEGAL_PARAMETER:Lcom/peripheral/ble/GattStatus;

.field public static final enum INSUFFICIENT_AUTHENTICATION:Lcom/peripheral/ble/GattStatus;

.field public static final enum INSUFFICIENT_AUTHORIZATION:Lcom/peripheral/ble/GattStatus;

.field public static final enum INSUFFICIENT_ENCRYPTION:Lcom/peripheral/ble/GattStatus;

.field public static final enum INSUFFICIENT_ENCRYPTION_KEY_SIZE:Lcom/peripheral/ble/GattStatus;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/peripheral/ble/GattStatus;

.field public static final enum INTERNAL_ERROR:Lcom/peripheral/ble/GattStatus;

.field public static final enum INVALID_ATTRIBUTE_VALUE_LENGTH:Lcom/peripheral/ble/GattStatus;

.field public static final enum INVALID_CFG:Lcom/peripheral/ble/GattStatus;

.field public static final enum INVALID_HANDLE:Lcom/peripheral/ble/GattStatus;

.field public static final enum INVALID_OFFSET:Lcom/peripheral/ble/GattStatus;

.field public static final enum INVALID_PDU:Lcom/peripheral/ble/GattStatus;

.field public static final enum MORE:Lcom/peripheral/ble/GattStatus;

.field public static final enum NOT_ENCRYPTED:Lcom/peripheral/ble/GattStatus;

.field public static final enum NO_RESOURCES:Lcom/peripheral/ble/GattStatus;

.field public static final enum PENDING:Lcom/peripheral/ble/GattStatus;

.field public static final enum PREPARE_QUEUE_FULL:Lcom/peripheral/ble/GattStatus;

.field public static final enum PROCEDURE_IN_PROGRESS:Lcom/peripheral/ble/GattStatus;

.field public static final enum READ_NOT_PERMITTED:Lcom/peripheral/ble/GattStatus;

.field public static final enum REQUEST_NOT_SUPPORTED:Lcom/peripheral/ble/GattStatus;

.field public static final enum SERVICE_STARTED:Lcom/peripheral/ble/GattStatus;

.field public static final enum SUCCESS:Lcom/peripheral/ble/GattStatus;

.field public static final enum TOO_SHORT:Lcom/peripheral/ble/GattStatus;

.field public static final enum UNKNOWN_STATUS_CODE:Lcom/peripheral/ble/GattStatus;

.field public static final enum UNLIKELY_ERROR:Lcom/peripheral/ble/GattStatus;

.field public static final enum UNSUPPORTED_GROUP_TYPE:Lcom/peripheral/ble/GattStatus;

.field public static final enum VALUE_NOT_ALLOWED:Lcom/peripheral/ble/GattStatus;

.field public static final enum VALUE_OUT_OF_RANGE:Lcom/peripheral/ble/GattStatus;

.field public static final enum WRITE_NOT_PERMITTED:Lcom/peripheral/ble/GattStatus;

.field public static final enum WRONG_STATE:Lcom/peripheral/ble/GattStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 43
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1, v1}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    .line 48
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/4 v2, 0x1

    const-string v3, "INVALID_HANDLE"

    invoke-direct {v0, v3, v2, v2}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INVALID_HANDLE:Lcom/peripheral/ble/GattStatus;

    .line 53
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/4 v3, 0x2

    const-string v4, "READ_NOT_PERMITTED"

    invoke-direct {v0, v4, v3, v3}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->READ_NOT_PERMITTED:Lcom/peripheral/ble/GattStatus;

    .line 58
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/4 v4, 0x3

    const-string v5, "WRITE_NOT_PERMITTED"

    invoke-direct {v0, v5, v4, v4}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->WRITE_NOT_PERMITTED:Lcom/peripheral/ble/GattStatus;

    .line 63
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/4 v5, 0x4

    const-string v6, "INVALID_PDU"

    invoke-direct {v0, v6, v5, v5}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INVALID_PDU:Lcom/peripheral/ble/GattStatus;

    .line 68
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/4 v6, 0x5

    const-string v7, "INSUFFICIENT_AUTHENTICATION"

    invoke-direct {v0, v7, v6, v6}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_AUTHENTICATION:Lcom/peripheral/ble/GattStatus;

    .line 73
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/4 v7, 0x6

    const-string v8, "REQUEST_NOT_SUPPORTED"

    invoke-direct {v0, v8, v7, v7}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->REQUEST_NOT_SUPPORTED:Lcom/peripheral/ble/GattStatus;

    .line 78
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/4 v8, 0x7

    const-string v9, "INVALID_OFFSET"

    invoke-direct {v0, v9, v8, v8}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INVALID_OFFSET:Lcom/peripheral/ble/GattStatus;

    .line 83
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v9, 0x8

    const-string v10, "INSUFFICIENT_AUTHORIZATION"

    invoke-direct {v0, v10, v9, v9}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_AUTHORIZATION:Lcom/peripheral/ble/GattStatus;

    .line 88
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v10, 0x9

    const-string v11, "PREPARE_QUEUE_FULL"

    invoke-direct {v0, v11, v10, v10}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->PREPARE_QUEUE_FULL:Lcom/peripheral/ble/GattStatus;

    .line 93
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v11, 0xa

    const-string v12, "ATTRIBUTE_NOT_FOUND"

    invoke-direct {v0, v12, v11, v11}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->ATTRIBUTE_NOT_FOUND:Lcom/peripheral/ble/GattStatus;

    .line 98
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v12, 0xb

    const-string v13, "ATTRIBUTE_NOT_LONG"

    invoke-direct {v0, v13, v12, v12}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->ATTRIBUTE_NOT_LONG:Lcom/peripheral/ble/GattStatus;

    .line 103
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v13, 0xc

    const-string v14, "INSUFFICIENT_ENCRYPTION_KEY_SIZE"

    invoke-direct {v0, v14, v13, v13}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_ENCRYPTION_KEY_SIZE:Lcom/peripheral/ble/GattStatus;

    .line 108
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v14, 0xd

    const-string v15, "INVALID_ATTRIBUTE_VALUE_LENGTH"

    invoke-direct {v0, v15, v14, v14}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INVALID_ATTRIBUTE_VALUE_LENGTH:Lcom/peripheral/ble/GattStatus;

    .line 113
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v15, 0xe

    const-string v14, "UNLIKELY_ERROR"

    invoke-direct {v0, v14, v15, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->UNLIKELY_ERROR:Lcom/peripheral/ble/GattStatus;

    .line 118
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v14, 0xf

    const-string v15, "INSUFFICIENT_ENCRYPTION"

    invoke-direct {v0, v15, v14, v14}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_ENCRYPTION:Lcom/peripheral/ble/GattStatus;

    .line 123
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v15, 0x10

    const-string v14, "UNSUPPORTED_GROUP_TYPE"

    invoke-direct {v0, v14, v15, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->UNSUPPORTED_GROUP_TYPE:Lcom/peripheral/ble/GattStatus;

    .line 128
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v14, 0x11

    const-string v15, "INSUFFICIENT_RESOURCES"

    invoke-direct {v0, v15, v14, v14}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_RESOURCES:Lcom/peripheral/ble/GattStatus;

    .line 133
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v15, 0x12

    const-string v14, "DATABASE_OUT_OF_SYNC"

    invoke-direct {v0, v14, v15, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->DATABASE_OUT_OF_SYNC:Lcom/peripheral/ble/GattStatus;

    .line 138
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v14, 0x13

    const-string v15, "VALUE_NOT_ALLOWED"

    invoke-direct {v0, v15, v14, v14}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->VALUE_NOT_ALLOWED:Lcom/peripheral/ble/GattStatus;

    .line 143
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v15, 0x14

    const-string v14, "TOO_SHORT"

    const/16 v13, 0x7f

    invoke-direct {v0, v14, v15, v13}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->TOO_SHORT:Lcom/peripheral/ble/GattStatus;

    .line 151
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const/16 v13, 0x15

    const-string v14, "NO_RESOURCES"

    const/16 v15, 0x80

    invoke-direct {v0, v14, v13, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->NO_RESOURCES:Lcom/peripheral/ble/GattStatus;

    .line 156
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v14, "INTERNAL_ERROR"

    const/16 v15, 0x16

    const/16 v13, 0x81

    invoke-direct {v0, v14, v15, v13}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INTERNAL_ERROR:Lcom/peripheral/ble/GattStatus;

    .line 161
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "WRONG_STATE"

    const/16 v14, 0x17

    const/16 v15, 0x82

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->WRONG_STATE:Lcom/peripheral/ble/GattStatus;

    .line 166
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "DB_FULL"

    const/16 v14, 0x18

    const/16 v15, 0x83

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->DB_FULL:Lcom/peripheral/ble/GattStatus;

    .line 171
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "BUSY"

    const/16 v14, 0x19

    const/16 v15, 0x84

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->BUSY:Lcom/peripheral/ble/GattStatus;

    .line 176
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "ERROR"

    const/16 v14, 0x1a

    const/16 v15, 0x85

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->ERROR:Lcom/peripheral/ble/GattStatus;

    .line 181
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "CMD_STARTED"

    const/16 v14, 0x1b

    const/16 v15, 0x86

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->CMD_STARTED:Lcom/peripheral/ble/GattStatus;

    .line 186
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "ILLEGAL_PARAMETER"

    const/16 v14, 0x1c

    const/16 v15, 0x87

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->ILLEGAL_PARAMETER:Lcom/peripheral/ble/GattStatus;

    .line 191
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "PENDING"

    const/16 v14, 0x1d

    const/16 v15, 0x88

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->PENDING:Lcom/peripheral/ble/GattStatus;

    .line 196
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "AUTHORIZATION_FAILED"

    const/16 v14, 0x1e

    const/16 v15, 0x89

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->AUTHORIZATION_FAILED:Lcom/peripheral/ble/GattStatus;

    .line 201
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "MORE"

    const/16 v14, 0x1f

    const/16 v15, 0x8a

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->MORE:Lcom/peripheral/ble/GattStatus;

    .line 206
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "INVALID_CFG"

    const/16 v14, 0x20

    const/16 v15, 0x8b

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->INVALID_CFG:Lcom/peripheral/ble/GattStatus;

    .line 211
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "SERVICE_STARTED"

    const/16 v14, 0x21

    const/16 v15, 0x8c

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->SERVICE_STARTED:Lcom/peripheral/ble/GattStatus;

    .line 216
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "ENCRYPTED_NO_MITM"

    const/16 v14, 0x22

    const/16 v15, 0x8d

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->ENCRYPTED_NO_MITM:Lcom/peripheral/ble/GattStatus;

    .line 221
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "NOT_ENCRYPTED"

    const/16 v14, 0x23

    const/16 v15, 0x8e

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->NOT_ENCRYPTED:Lcom/peripheral/ble/GattStatus;

    .line 226
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "CONNECTION_CONGESTED"

    const/16 v14, 0x24

    const/16 v15, 0x8f

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->CONNECTION_CONGESTED:Lcom/peripheral/ble/GattStatus;

    .line 231
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "DUPLICATE_REGISTRATION"

    const/16 v14, 0x25

    const/16 v15, 0x90

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->DUPLICATE_REGISTRATION:Lcom/peripheral/ble/GattStatus;

    .line 236
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "ALREADY_OPEN"

    const/16 v14, 0x26

    const/16 v15, 0x91

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->ALREADY_OPEN:Lcom/peripheral/ble/GattStatus;

    .line 241
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "CANCEL"

    const/16 v14, 0x27

    const/16 v15, 0x92

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->CANCEL:Lcom/peripheral/ble/GattStatus;

    .line 248
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "CCCD_CFG_ERROR"

    const/16 v14, 0x28

    const/16 v15, 0xfd

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->CCCD_CFG_ERROR:Lcom/peripheral/ble/GattStatus;

    .line 253
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "PROCEDURE_IN_PROGRESS"

    const/16 v14, 0x29

    const/16 v15, 0xfe

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->PROCEDURE_IN_PROGRESS:Lcom/peripheral/ble/GattStatus;

    .line 258
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "VALUE_OUT_OF_RANGE"

    const/16 v14, 0x2a

    const/16 v15, 0xff

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->VALUE_OUT_OF_RANGE:Lcom/peripheral/ble/GattStatus;

    .line 265
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "CONNECTION_CANCELLED"

    const/16 v14, 0x2b

    const/16 v15, 0x100

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->CONNECTION_CANCELLED:Lcom/peripheral/ble/GattStatus;

    .line 271
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "FAILURE_REGISTERING_CLIENT"

    const/16 v14, 0x2c

    const/16 v15, 0x101

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->FAILURE_REGISTERING_CLIENT:Lcom/peripheral/ble/GattStatus;

    .line 276
    new-instance v0, Lcom/peripheral/ble/GattStatus;

    const-string v13, "UNKNOWN_STATUS_CODE"

    const/16 v14, 0x2d

    const v15, 0xffff

    invoke-direct {v0, v13, v14, v15}, Lcom/peripheral/ble/GattStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/GattStatus;->UNKNOWN_STATUS_CODE:Lcom/peripheral/ble/GattStatus;

    const/16 v13, 0x2e

    new-array v13, v13, [Lcom/peripheral/ble/GattStatus;

    .line 38
    sget-object v14, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    aput-object v14, v13, v1

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INVALID_HANDLE:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->READ_NOT_PERMITTED:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v3

    sget-object v1, Lcom/peripheral/ble/GattStatus;->WRITE_NOT_PERMITTED:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v4

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INVALID_PDU:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v5

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_AUTHENTICATION:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v6

    sget-object v1, Lcom/peripheral/ble/GattStatus;->REQUEST_NOT_SUPPORTED:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v7

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INVALID_OFFSET:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v8

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_AUTHORIZATION:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v9

    sget-object v1, Lcom/peripheral/ble/GattStatus;->PREPARE_QUEUE_FULL:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v10

    sget-object v1, Lcom/peripheral/ble/GattStatus;->ATTRIBUTE_NOT_FOUND:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v11

    sget-object v1, Lcom/peripheral/ble/GattStatus;->ATTRIBUTE_NOT_LONG:Lcom/peripheral/ble/GattStatus;

    aput-object v1, v13, v12

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_ENCRYPTION_KEY_SIZE:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INVALID_ATTRIBUTE_VALUE_LENGTH:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->UNLIKELY_ERROR:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_ENCRYPTION:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->UNSUPPORTED_GROUP_TYPE:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_RESOURCES:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->DATABASE_OUT_OF_SYNC:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->VALUE_NOT_ALLOWED:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->TOO_SHORT:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->NO_RESOURCES:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INTERNAL_ERROR:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->WRONG_STATE:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x17

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->DB_FULL:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x18

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->BUSY:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x19

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->ERROR:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x1a

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->CMD_STARTED:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x1b

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->ILLEGAL_PARAMETER:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x1c

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->PENDING:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x1d

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->AUTHORIZATION_FAILED:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x1e

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->MORE:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x1f

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->INVALID_CFG:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x20

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->SERVICE_STARTED:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x21

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->ENCRYPTED_NO_MITM:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x22

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->NOT_ENCRYPTED:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x23

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->CONNECTION_CONGESTED:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x24

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->DUPLICATE_REGISTRATION:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x25

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->ALREADY_OPEN:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x26

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->CANCEL:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x27

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->CCCD_CFG_ERROR:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x28

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->PROCEDURE_IN_PROGRESS:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x29

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->VALUE_OUT_OF_RANGE:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x2a

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->CONNECTION_CANCELLED:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x2b

    aput-object v1, v13, v2

    sget-object v1, Lcom/peripheral/ble/GattStatus;->FAILURE_REGISTERING_CLIENT:Lcom/peripheral/ble/GattStatus;

    const/16 v2, 0x2c

    aput-object v1, v13, v2

    const/16 v1, 0x2d

    aput-object v0, v13, v1

    sput-object v13, Lcom/peripheral/ble/GattStatus;->$VALUES:[Lcom/peripheral/ble/GattStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 279
    iput p3, p0, Lcom/peripheral/ble/GattStatus;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/peripheral/ble/GattStatus;
    .locals 5

    .line 285
    invoke-static {}, Lcom/peripheral/ble/GattStatus;->values()[Lcom/peripheral/ble/GattStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 286
    iget v4, v3, Lcom/peripheral/ble/GattStatus;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_1
    sget-object p0, Lcom/peripheral/ble/GattStatus;->UNKNOWN_STATUS_CODE:Lcom/peripheral/ble/GattStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/GattStatus;
    .locals 1

    .line 38
    const-class v0, Lcom/peripheral/ble/GattStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/GattStatus;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/GattStatus;
    .locals 1

    .line 38
    sget-object v0, Lcom/peripheral/ble/GattStatus;->$VALUES:[Lcom/peripheral/ble/GattStatus;

    invoke-virtual {v0}, [Lcom/peripheral/ble/GattStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/GattStatus;

    return-object v0
.end method
