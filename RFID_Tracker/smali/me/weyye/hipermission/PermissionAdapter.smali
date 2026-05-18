.class public Lme/weyye/hipermission/PermissionAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermissionAdapter.java"


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/weyye/hipermission/PermissionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterColor:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lme/weyye/hipermission/PermissionItem;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 28
    iget-object v0, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 43
    iget-object p2, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/weyye/hipermission/PermissionItem;

    .line 44
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lme/weyye/hipermission/R$layout;->permission_info_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    iget p3, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    .line 46
    iget v0, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    .line 47
    iget v1, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 48
    sget v2, Lme/weyye/hipermission/R$id;->icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v3, v6

    const/4 v6, 0x2

    aput v5, v3, v6

    const/4 v6, 0x3

    aput v5, v3, v6

    int-to-float v1, v1

    const/4 v6, 0x4

    aput v1, v3, v6

    const/4 v1, 0x5

    aput v5, v3, v1

    const/4 v1, 0x6

    aput v4, v3, v1

    const/4 v1, 0x7

    aput v5, v3, v1

    const/16 v1, 0x8

    aput v5, v3, v1

    int-to-float v0, v0

    const/16 v1, 0x9

    aput v0, v3, v1

    const/16 v0, 0xa

    aput v5, v3, v0

    const/16 v0, 0xb

    aput v5, v3, v0

    const/16 v0, 0xc

    aput v4, v3, v0

    const/16 v0, 0xd

    aput v5, v3, v0

    int-to-float p3, p3

    const/16 v0, 0xe

    aput p3, v3, v0

    const/16 p3, 0xf

    aput v5, v3, p3

    const/16 p3, 0x10

    aput v5, v3, p3

    const/16 p3, 0x11

    aput v5, v3, p3

    const/16 p3, 0x12

    aput v4, v3, p3

    const/16 p3, 0x13

    aput v4, v3, p3

    .line 55
    new-instance p3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p3, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 56
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 57
    sget p3, Lme/weyye/hipermission/R$id;->name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 58
    iget v0, p0, Lme/weyye/hipermission/PermissionAdapter;->mTextColor:I

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :cond_0
    iget v0, p1, Lme/weyye/hipermission/PermissionItem;->PermissionIconRes:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object p1, p1, Lme/weyye/hipermission/PermissionItem;->PermissionName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setFilterColor(I)V
    .locals 0

    .line 71
    iput p1, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    .line 72
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 66
    iput p1, p0, Lme/weyye/hipermission/PermissionAdapter;->mTextColor:I

    .line 67
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionAdapter;->notifyDataSetChanged()V

    return-void
.end method
