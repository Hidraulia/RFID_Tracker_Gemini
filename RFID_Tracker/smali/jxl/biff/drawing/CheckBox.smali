.class public Ljxl/biff/drawing/CheckBox;
.super Ljava/lang/Object;
.source "CheckBox.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private blipId:I

.field private column:I

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private drawingNumber:I

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private formatting:Ljxl/biff/ContinueRecord;

.field private height:D

.field private initialized:Z

.field private mso:Ljxl/biff/drawing/MsoDrawingRecord;

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private objRecord:Ljxl/biff/drawing/ObjRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private referenceCount:I

.field private row:I

.field private shapeId:I

.field private spContainer:Ljxl/biff/drawing/EscherContainer;

.field private text:Ljxl/biff/ContinueRecord;

.field private txo:Ljxl/biff/drawing/TextObjectRecord;

.field private type:Ljxl/biff/drawing/ShapeType;

.field private width:D

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Ljxl/biff/drawing/CheckBox;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/CheckBox;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    .line 224
    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    .line 225
    iput v0, p0, Ljxl/biff/drawing/CheckBox;->referenceCount:I

    .line 226
    sget-object v0, Ljxl/biff/drawing/ShapeType;->HOST_CONTROL:Ljxl/biff/drawing/ShapeType;

    iput-object v0, p0, Ljxl/biff/drawing/CheckBox;->type:Ljxl/biff/drawing/ShapeType;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 3

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    .line 201
    check-cast p1, Ljxl/biff/drawing/CheckBox;

    .line 202
    iget-object v1, p1, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 203
    iget-object v1, p1, Ljxl/biff/drawing/CheckBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v1, p0, Ljxl/biff/drawing/CheckBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 204
    iget-object v1, p1, Ljxl/biff/drawing/CheckBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    iput-object v1, p0, Ljxl/biff/drawing/CheckBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 205
    iput-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    .line 206
    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    .line 207
    iget-object v0, p1, Ljxl/biff/drawing/CheckBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/CheckBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 208
    iput-object p2, p0, Ljxl/biff/drawing/CheckBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 209
    iget v0, p1, Ljxl/biff/drawing/CheckBox;->drawingNumber:I

    iput v0, p0, Ljxl/biff/drawing/CheckBox;->drawingNumber:I

    .line 210
    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 211
    iget-object p2, p1, Ljxl/biff/drawing/CheckBox;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object p2, p0, Ljxl/biff/drawing/CheckBox;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 212
    iget-object p2, p1, Ljxl/biff/drawing/CheckBox;->txo:Ljxl/biff/drawing/TextObjectRecord;

    iput-object p2, p0, Ljxl/biff/drawing/CheckBox;->txo:Ljxl/biff/drawing/TextObjectRecord;

    .line 213
    iget-object p2, p1, Ljxl/biff/drawing/CheckBox;->text:Ljxl/biff/ContinueRecord;

    iput-object p2, p0, Ljxl/biff/drawing/CheckBox;->text:Ljxl/biff/ContinueRecord;

    .line 214
    iget-object p1, p1, Ljxl/biff/drawing/CheckBox;->formatting:Ljxl/biff/ContinueRecord;

    iput-object p1, p0, Ljxl/biff/drawing/CheckBox;->formatting:Ljxl/biff/ContinueRecord;

    .line 215
    iput-object p3, p0, Ljxl/biff/drawing/CheckBox;->workbookSettings:Ljxl/WorkbookSettings;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    .line 174
    iput-object p4, p0, Ljxl/biff/drawing/CheckBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 175
    iput-object p1, p0, Ljxl/biff/drawing/CheckBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 176
    iput-object p3, p0, Ljxl/biff/drawing/CheckBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 177
    iput-object p2, p0, Ljxl/biff/drawing/CheckBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 178
    iput-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    .line 179
    iput-object p5, p0, Ljxl/biff/drawing/CheckBox;->workbookSettings:Ljxl/WorkbookSettings;

    .line 180
    sget-object p3, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object p3, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    .line 181
    iget-object p3, p0, Ljxl/biff/drawing/CheckBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object p4, p0, Ljxl/biff/drawing/CheckBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {p4}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 182
    iget-object p3, p0, Ljxl/biff/drawing/CheckBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p3}, Ljxl/biff/drawing/DrawingData;->getNumDrawings()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    iput p3, p0, Ljxl/biff/drawing/CheckBox;->drawingNumber:I

    .line 183
    iget-object p3, p0, Ljxl/biff/drawing/CheckBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p3, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 185
    :cond_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 187
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    return-void
.end method

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 1

    .line 584
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 586
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 589
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .line 234
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget v1, p0, Ljxl/biff/drawing/CheckBox;->drawingNumber:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainer(I)Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/CheckBox;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 237
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 239
    iget-object v3, p0, Ljxl/biff/drawing/CheckBox;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v3, v3, v2

    check-cast v3, Ljxl/biff/drawing/Sp;

    .line 240
    iget-object v4, p0, Ljxl/biff/drawing/CheckBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {v4}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/CheckBox;->objectId:I

    .line 241
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/CheckBox;->shapeId:I

    .line 242
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeType()I

    move-result v3

    invoke-static {v3}, Ljxl/biff/drawing/ShapeType;->getType(I)Ljxl/biff/drawing/ShapeType;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/drawing/CheckBox;->type:Ljxl/biff/drawing/ShapeType;

    .line 244
    sget-object v4, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_1

    .line 246
    sget-object v3, Ljxl/biff/drawing/CheckBox;->logger:Ljxl/common/Logger;

    const-string v4, "Unknown shape type"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_1
    const/4 v3, 0x0

    .line 250
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    if-nez v3, :cond_3

    .line 252
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v4

    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_2

    .line 254
    aget-object v3, v0, v2

    check-cast v3, Ljxl/biff/drawing/ClientAnchor;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 260
    sget-object v0, Ljxl/biff/drawing/CheckBox;->logger:Ljxl/common/Logger;

    const-string v2, "Client anchor not found"

    invoke-virtual {v0, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2

    .line 264
    :cond_4
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v4

    double-to-int v0, v4

    iput v0, p0, Ljxl/biff/drawing/CheckBox;->column:I

    .line 265
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Ljxl/biff/drawing/CheckBox;->row:I

    .line 268
    :goto_2
    iput-boolean v1, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    return-void
.end method


# virtual methods
.method public addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V
    .locals 1

    .line 780
    iput-object p1, p0, Ljxl/biff/drawing/CheckBox;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 781
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p1}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    return-void
.end method

.method public final getBlipId()I
    .locals 1

    .line 329
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 334
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/CheckBox;->blipId:I

    return v0
.end method

.method public getColumn()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 406
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 549
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 551
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 554
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/CheckBox;->height:D

    return-wide v0
.end method

.method public getImageBytes()[B
    .locals 1

    const/4 v0, 0x0

    .line 626
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageData()[B
    .locals 2

    .line 599
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 601
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_2

    .line 603
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 606
    :cond_2
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/CheckBox;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 639
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .locals 1

    .line 344
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .locals 1

    .line 299
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 304
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/CheckBox;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .locals 1

    .line 416
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .locals 1

    .line 426
    iget v0, p0, Ljxl/biff/drawing/CheckBox;->referenceCount:I

    return v0
.end method

.method public getRow()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getShapeId()I
    .locals 1

    .line 314
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 316
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 319
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/CheckBox;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 15

    .line 354
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 359
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 361
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    return-object v0

    .line 364
    :cond_1
    new-instance v0, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v0}, Ljxl/biff/drawing/SpContainer;-><init>()V

    .line 365
    new-instance v1, Ljxl/biff/drawing/Sp;

    iget-object v2, p0, Ljxl/biff/drawing/CheckBox;->type:Ljxl/biff/drawing/ShapeType;

    iget v3, p0, Ljxl/biff/drawing/CheckBox;->shapeId:I

    const/16 v4, 0xa00

    invoke-direct {v1, v2, v3, v4}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 366
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 367
    new-instance v1, Ljxl/biff/drawing/Opt;

    invoke-direct {v1}, Ljxl/biff/drawing/Opt;-><init>()V

    const/16 v2, 0x7f

    const v3, 0x1040104

    const/4 v4, 0x0

    .line 368
    invoke-virtual {v1, v2, v4, v4, v3}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v2, 0xbf

    const v3, 0x80008

    .line 369
    invoke-virtual {v1, v2, v4, v4, v3}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v2, 0x1ff

    const/high16 v3, 0x80000

    .line 370
    invoke-virtual {v1, v2, v4, v4, v3}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v2, 0x3bf

    const/high16 v3, 0x20000

    .line 371
    invoke-virtual {v1, v2, v4, v4, v3}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 374
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 376
    new-instance v1, Ljxl/biff/drawing/ClientAnchor;

    iget v2, p0, Ljxl/biff/drawing/CheckBox;->column:I

    int-to-double v6, v2

    iget v3, p0, Ljxl/biff/drawing/CheckBox;->row:I

    int-to-double v8, v3

    add-int/lit8 v2, v2, 0x1

    int-to-double v10, v2

    add-int/lit8 v3, v3, 0x1

    int-to-double v12, v3

    const/4 v14, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v14}, Ljxl/biff/drawing/ClientAnchor;-><init>(DDDDI)V

    .line 381
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 382
    new-instance v1, Ljxl/biff/drawing/ClientData;

    invoke-direct {v1}, Ljxl/biff/drawing/ClientData;-><init>()V

    .line 383
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    return-object v0
.end method

.method public getType()Ljxl/biff/drawing/ShapeType;
    .locals 1

    .line 616
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->type:Ljxl/biff/drawing/ShapeType;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 515
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 517
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 520
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/CheckBox;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 446
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 448
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 450
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/CheckBox;->column:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 480
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 482
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 485
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/CheckBox;->row:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 716
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 728
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 0

    .line 396
    iput-object p1, p0, Ljxl/biff/drawing/CheckBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-void
.end method

.method public setFormatting(Ljxl/biff/ContinueRecord;)V
    .locals 0

    .line 770
    iput-object p1, p0, Ljxl/biff/drawing/CheckBox;->formatting:Ljxl/biff/ContinueRecord;

    return-void
.end method

.method public setHeight(D)V
    .locals 2

    .line 564
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 566
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 568
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 570
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    .line 573
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/CheckBox;->height:D

    return-void
.end method

.method public final setObjectId(III)V
    .locals 0

    .line 282
    iput p1, p0, Ljxl/biff/drawing/CheckBox;->objectId:I

    .line 283
    iput p2, p0, Ljxl/biff/drawing/CheckBox;->blipId:I

    .line 284
    iput p3, p0, Ljxl/biff/drawing/CheckBox;->shapeId:I

    .line 286
    iget-object p1, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object p2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, p2, :cond_0

    .line 288
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    :cond_0
    return-void
.end method

.method public setReferenceCount(I)V
    .locals 0

    .line 436
    iput p1, p0, Ljxl/biff/drawing/CheckBox;->referenceCount:I

    return-void
.end method

.method public setText(Ljxl/biff/ContinueRecord;)V
    .locals 0

    .line 760
    iput-object p1, p0, Ljxl/biff/drawing/CheckBox;->text:Ljxl/biff/ContinueRecord;

    return-void
.end method

.method public setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V
    .locals 0

    .line 750
    iput-object p1, p0, Ljxl/biff/drawing/CheckBox;->txo:Ljxl/biff/drawing/TextObjectRecord;

    return-void
.end method

.method public setWidth(D)V
    .locals 2

    .line 530
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 532
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 534
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 536
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    .line 539
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/CheckBox;->width:D

    return-void
.end method

.method public setX(D)V
    .locals 2

    .line 461
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 463
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 465
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 467
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    :cond_1
    double-to-int p1, p1

    .line 470
    iput p1, p0, Ljxl/biff/drawing/CheckBox;->column:I

    return-void
.end method

.method public setY(D)V
    .locals 2

    .line 495
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 497
    iget-boolean v0, p0, Ljxl/biff/drawing/CheckBox;->initialized:Z

    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0}, Ljxl/biff/drawing/CheckBox;->initialize()V

    .line 501
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    :cond_1
    double-to-int p1, p1

    .line 504
    iput p1, p0, Ljxl/biff/drawing/CheckBox;->row:I

    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_2

    .line 653
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 655
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 659
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->txo:Ljxl/biff/drawing/TextObjectRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 660
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->text:Ljxl/biff/ContinueRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 661
    iget-object v0, p0, Ljxl/biff/drawing/CheckBox;->formatting:Ljxl/biff/ContinueRecord;

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    :cond_1
    return-void

    .line 669
    :cond_2
    new-instance v0, Ljxl/biff/drawing/ObjRecord;

    iget v1, p0, Ljxl/biff/drawing/CheckBox;->objectId:I

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord;-><init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V

    .line 672
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 674
    sget-object p1, Ljxl/biff/drawing/CheckBox;->logger:Ljxl/common/Logger;

    const-string v0, "Writing of additional records for checkboxes not implemented"

    invoke-virtual {p1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method public writeTailRecords(Ljxl/write/biff/File;)V
    .locals 0

    return-void
.end method
