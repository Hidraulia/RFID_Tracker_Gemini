.class public Ljxl/biff/DataValidation;
.super Ljava/lang/Object;
.source "DataValidation.java"


# static fields
.field public static final DEFAULT_OBJECT_ID:I = -0x1

.field private static final MAX_NO_OF_VALIDITY_SETTINGS:I = 0xfffd

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private comboBoxObjectId:I

.field private copied:Z

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private validityList:Ljxl/biff/DataValidityListRecord;

.field private validitySettings:Ljava/util/ArrayList;

.field private workbook:Ljxl/biff/WorkbookMethods;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Ljxl/biff/DataValidation;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/DataValidation;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(ILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p3, p0, Ljxl/biff/DataValidation;->workbook:Ljxl/biff/WorkbookMethods;

    .line 104
    iput-object p2, p0, Ljxl/biff/DataValidation;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 105
    iput-object p4, p0, Ljxl/biff/DataValidation;->workbookSettings:Ljxl/WorkbookSettings;

    .line 106
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    .line 107
    iput p1, p0, Ljxl/biff/DataValidation;->comboBoxObjectId:I

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Ljxl/biff/DataValidation;->copied:Z

    return-void
.end method

.method public constructor <init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p3, p0, Ljxl/biff/DataValidation;->workbook:Ljxl/biff/WorkbookMethods;

    .line 120
    iput-object p2, p0, Ljxl/biff/DataValidation;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 121
    iput-object p4, p0, Ljxl/biff/DataValidation;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p2, 0x1

    .line 122
    iput-boolean p2, p0, Ljxl/biff/DataValidation;->copied:Z

    .line 123
    new-instance p2, Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1}, Ljxl/biff/DataValidation;->getDataValidityList()Ljxl/biff/DataValidityListRecord;

    move-result-object p3

    invoke-direct {p2, p3}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object p2, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    .line 125
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {p1}, Ljxl/biff/DataValidation;->getDataValiditySettings()[Ljxl/biff/DataValiditySettingsRecord;

    move-result-object p1

    const/4 p2, 0x0

    .line 128
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    .line 130
    iget-object p3, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    new-instance p4, Ljxl/biff/DataValiditySettingsRecord;

    aget-object v0, p1, p2

    iget-object v1, p0, Ljxl/biff/DataValidation;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v2, p0, Ljxl/biff/DataValidation;->workbook:Ljxl/biff/WorkbookMethods;

    iget-object v3, p0, Ljxl/biff/DataValidation;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {p4, v0, v1, v2, v3}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DataValiditySettingsRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljxl/biff/DataValidityListRecord;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v0}, Ljxl/biff/DataValidityListRecord;->getNumberOfSettings()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Ljxl/biff/DataValidation;->copied:Z

    return-void
.end method


# virtual methods
.method public add(Ljxl/biff/DataValiditySettingsRecord;)V
    .locals 1

    .line 142
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p1, p0}, Ljxl/biff/DataValiditySettingsRecord;->setDataValidation(Ljxl/biff/DataValidation;)V

    .line 145
    iget-boolean p1, p0, Ljxl/biff/DataValidation;->copied:Z

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljxl/common/Assert;->verify(Z)V

    .line 149
    iget-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1}, Ljxl/biff/DataValidityListRecord;->dvAdded()V

    :cond_1
    return-void
.end method

.method public getComboBoxObjectId()I
    .locals 1

    .line 353
    iget v0, p0, Ljxl/biff/DataValidation;->comboBoxObjectId:I

    return v0
.end method

.method public getDataValidityList()Ljxl/biff/DataValidityListRecord;
    .locals 1

    .line 158
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    return-object v0
.end method

.method public getDataValiditySettings(II)Ljxl/biff/DataValiditySettingsRecord;
    .locals 5

    .line 335
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/DataValiditySettingsRecord;

    .line 338
    invoke-virtual {v3}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v4

    if-ne v4, p2, :cond_0

    const/4 v1, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getDataValiditySettings()[Ljxl/biff/DataValiditySettingsRecord;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/DataValiditySettingsRecord;

    .line 167
    iget-object v1, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/DataValiditySettingsRecord;

    check-cast v0, [Ljxl/biff/DataValiditySettingsRecord;

    return-object v0
.end method

.method public insertColumn(I)V
    .locals 2

    .line 252
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 255
    invoke-virtual {v1, p1}, Ljxl/biff/DataValiditySettingsRecord;->insertColumn(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public insertRow(I)V
    .locals 2

    .line 215
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 218
    invoke-virtual {v1, p1}, Ljxl/biff/DataValiditySettingsRecord;->insertRow(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeColumn(I)V
    .locals 3

    .line 266
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 270
    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastColumn()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 273
    iget-object v1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->dvRemoved()V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v1, p1}, Ljxl/biff/DataValiditySettingsRecord;->removeColumn(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeDataValidation(II)V
    .locals 3

    .line 290
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 294
    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastColumn()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastRow()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 298
    iget-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1}, Ljxl/biff/DataValidityListRecord;->dvRemoved()V

    :cond_1
    return-void
.end method

.method public removeRow(I)V
    .locals 3

    .line 229
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 233
    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastRow()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 236
    iget-object v1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->dvRemoved()V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v1, p1}, Ljxl/biff/DataValiditySettingsRecord;->removeRow(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeSharedDataValidation(IIII)V
    .locals 3

    .line 313
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 317
    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastColumn()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastRow()I

    move-result v1

    if-ne v1, p4, :cond_0

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 321
    iget-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1}, Ljxl/biff/DataValidityListRecord;->dvRemoved()V

    :cond_1
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0xfffd

    if-le v0, v1, :cond_1

    .line 180
    sget-object v0, Ljxl/biff/DataValidation;->logger:Ljxl/common/Logger;

    const-string v2, "Maximum number of data validations exceeded - truncating..."

    invoke-virtual {v0, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    const v3, 0xfffc

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 187
    :cond_1
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    if-nez v0, :cond_2

    .line 189
    new-instance v0, Ljxl/biff/DValParser;

    iget v1, p0, Ljxl/biff/DataValidation;->comboBoxObjectId:I

    iget-object v2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljxl/biff/DValParser;-><init>(II)V

    .line 191
    new-instance v1, Ljxl/biff/DataValidityListRecord;

    invoke-direct {v1, v0}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/biff/DValParser;)V

    iput-object v1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    .line 194
    :cond_2
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v0}, Ljxl/biff/DataValidityListRecord;->hasDVRecords()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 199
    :cond_3
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 201
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 204
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_0

    :cond_4
    return-void
.end method
