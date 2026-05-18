.class Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState$1;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;
    .locals 2

    .line 607
    new-instance v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcel;Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 603
    invoke-virtual {p0, p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;
    .locals 0

    .line 612
    new-array p1, p1, [Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 603
    invoke-virtual {p0, p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState$1;->newArray(I)[Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;

    move-result-object p1

    return-object p1
.end method
