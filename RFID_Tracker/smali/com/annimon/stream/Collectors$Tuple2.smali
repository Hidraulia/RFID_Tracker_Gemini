.class final Lcom/annimon/stream/Collectors$Tuple2;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tuple2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)V"
        }
    .end annotation

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    iput-object p1, p0, Lcom/annimon/stream/Collectors$Tuple2;->a:Ljava/lang/Object;

    .line 1068
    iput-object p2, p0, Lcom/annimon/stream/Collectors$Tuple2;->b:Ljava/lang/Object;

    return-void
.end method
