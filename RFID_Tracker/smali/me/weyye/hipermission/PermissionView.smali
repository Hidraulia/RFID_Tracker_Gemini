.class public Lme/weyye/hipermission/PermissionView;
.super Landroid/widget/FrameLayout;
.source "PermissionView.java"


# instance fields
.field private mBtnNext:Landroid/widget/Button;

.field private mGvPermission:Landroid/widget/GridView;

.field private mLlRoot:Landroid/widget/LinearLayout;

.field private mTvDesc:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lme/weyye/hipermission/PermissionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lme/weyye/hipermission/PermissionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionView;->initView()V

    return-void
.end method

.method private getColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 6

    .line 123
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 124
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 125
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v5, 0x2

    aput v4, v2, v5

    const/4 v5, 0x3

    aput v4, v2, v5

    int-to-float p1, p1

    const/4 v5, 0x4

    aput p1, v2, v5

    const/4 p1, 0x5

    aput v4, v2, p1

    const/4 p1, 0x6

    aput v3, v2, p1

    const/4 p1, 0x7

    aput v4, v2, p1

    const/16 p1, 0x8

    aput v4, v2, p1

    int-to-float p1, v1

    const/16 v1, 0x9

    aput p1, v2, v1

    const/16 p1, 0xa

    aput v4, v2, p1

    const/16 p1, 0xb

    aput v4, v2, p1

    const/16 p1, 0xc

    aput v3, v2, p1

    const/16 p1, 0xd

    aput v4, v2, p1

    int-to-float p1, v0

    const/16 v0, 0xe

    aput p1, v2, v0

    const/16 p1, 0xf

    aput v4, v2, p1

    const/16 p1, 0x10

    aput v4, v2, p1

    const/16 p1, 0x11

    aput v4, v2, p1

    const/16 p1, 0x12

    aput v3, v2, p1

    const/16 p1, 0x13

    aput v3, v2, p1

    .line 132
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    return-object p1
.end method

.method private initView()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lme/weyye/hipermission/R$layout;->dialog_request_permission:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    sget v1, Lme/weyye/hipermission/R$id;->tvTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionView;->mTvTitle:Landroid/widget/TextView;

    .line 47
    sget v1, Lme/weyye/hipermission/R$id;->llRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionView;->mLlRoot:Landroid/widget/LinearLayout;

    .line 48
    sget v1, Lme/weyye/hipermission/R$id;->tvDesc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionView;->mTvDesc:Landroid/widget/TextView;

    .line 49
    sget v1, Lme/weyye/hipermission/R$id;->goto_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    .line 50
    sget v1, Lme/weyye/hipermission/R$id;->gvPermission:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    return-void
.end method


# virtual methods
.method public setBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFilterColor(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lme/weyye/hipermission/PermissionAdapter;

    invoke-virtual {v0, p1}, Lme/weyye/hipermission/PermissionAdapter;->setFilterColor(I)V

    return-void
.end method

.method public setGridViewAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setGridViewColum(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStyleId(I)V
    .locals 10

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 77
    sget v1, Lme/weyye/hipermission/R$attr;->PermissionMsgColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionTitleColor:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionItemTextColor:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionButtonTextColor:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionBackround:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionButtonBackground:I

    const/4 v7, 0x5

    aput v1, v0, v7

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionBgFilterColor:I

    const/4 v8, 0x6

    aput v1, v0, v8

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionIconFilterColor:I

    const/4 v9, 0x7

    aput v1, v0, v9

    .line 87
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 90
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 92
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 93
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 94
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 95
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 96
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 97
    invoke-virtual {p1, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 98
    invoke-virtual {p1, v9, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-eqz v1, :cond_1

    .line 101
    iget-object v8, p0, Lme/weyye/hipermission/PermissionView;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz v5, :cond_3

    if-eqz v7, :cond_2

    .line 104
    invoke-direct {p0, v7}, Lme/weyye/hipermission/PermissionView;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 105
    :cond_2
    iget-object v1, p0, Lme/weyye/hipermission/PermissionView;->mLlRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 108
    iget-object v1, p0, Lme/weyye/hipermission/PermissionView;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    if-eqz v3, :cond_5

    .line 110
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lme/weyye/hipermission/PermissionAdapter;

    invoke-virtual {v0, v3}, Lme/weyye/hipermission/PermissionAdapter;->setTextColor(I)V

    :cond_5
    if-eqz v6, :cond_6

    .line 112
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eqz v4, :cond_7

    .line 114
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    :cond_7
    if-eqz v2, :cond_8

    .line 116
    invoke-virtual {p0, v2}, Lme/weyye/hipermission/PermissionView;->setFilterColor(I)V

    .line 118
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
