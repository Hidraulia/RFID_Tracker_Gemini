.class public Lcom/peripheral/ble/ReadResponse;
.super Ljava/lang/Object;
.source "ReadResponse.java"


# instance fields
.field public final status:Lcom/peripheral/ble/GattStatus;

.field public final value:[B


# direct methods
.method public constructor <init>(Lcom/peripheral/ble/GattStatus;[B)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/peripheral/ble/ReadResponse;->status:Lcom/peripheral/ble/GattStatus;

    .line 10
    iput-object p2, p0, Lcom/peripheral/ble/ReadResponse;->value:[B

    return-void
.end method
