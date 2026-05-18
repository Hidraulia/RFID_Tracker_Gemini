.class Ljxl/biff/formula/Attribute;
.super Ljxl/biff/formula/Operator;
.source "Attribute.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static final CHOOSE_MASK:I = 0x4

.field private static final GOTO_MASK:I = 0x8

.field private static final IF_MASK:I = 0x2

.field private static final SUM_MASK:I = 0x10

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private ifConditions:Ljxl/biff/formula/VariableArgFunction;

.field private options:I

.field private settings:Ljxl/WorkbookSettings;

.field private word:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/biff/formula/Attribute;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Attribute;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/WorkbookSettings;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 72
    iput-object p1, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/formula/StringFunction;Ljxl/WorkbookSettings;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 83
    iput-object p2, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    .line 85
    invoke-virtual {p1, p2}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p2

    sget-object v0, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    if-ne p2, v0, :cond_0

    .line 87
    iget p1, p0, Ljxl/biff/formula/Attribute;->options:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Ljxl/biff/formula/Attribute;->options:I

    goto :goto_0

    .line 89
    :cond_0
    iget-object p2, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, p2}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p1

    sget-object p2, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    if-ne p1, p2, :cond_1

    .line 91
    iget p1, p0, Ljxl/biff/formula/Attribute;->options:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljxl/biff/formula/Attribute;->options:I

    :cond_1
    :goto_0
    return-void
.end method

.method private getIf()[B
    .locals 13

    .line 282
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 287
    array-length v1, v0

    const/4 v2, 0x0

    .line 290
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v3

    .line 293
    array-length v4, v3

    .line 294
    array-length v5, v3

    add-int/lit8 v5, v5, 0x4

    new-array v6, v5, [B

    .line 295
    array-length v7, v3

    invoke-static {v3, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    sget-object v3, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v3}, Ljxl/biff/formula/Token;->getCode()B

    move-result v3

    aput-byte v3, v6, v4

    add-int/lit8 v3, v4, 0x1

    const/4 v7, 0x2

    .line 298
    aput-byte v7, v6, v3

    add-int/2addr v4, v7

    const/4 v3, 0x1

    .line 302
    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v8

    .line 303
    array-length v9, v8

    add-int/2addr v9, v5

    new-array v10, v9, [B

    .line 304
    invoke-static {v6, v2, v10, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    array-length v6, v8

    invoke-static {v8, v2, v10, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v9, 0x4

    .line 310
    new-array v6, v5, [B

    .line 311
    invoke-static {v10, v2, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    sget-object v8, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v8}, Ljxl/biff/formula/Token;->getCode()B

    move-result v8

    aput-byte v8, v6, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v10, 0x8

    .line 314
    aput-byte v10, v6, v8

    add-int/2addr v9, v7

    const/4 v8, 0x3

    if-le v1, v7, :cond_0

    sub-int v11, v5, v4

    sub-int/2addr v11, v7

    .line 321
    invoke-static {v11, v6, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v11, v1, -0x1

    .line 325
    aget-object v0, v0, v11

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v0

    .line 326
    array-length v11, v0

    add-int/2addr v11, v5

    new-array v12, v11, [B

    .line 327
    invoke-static {v6, v2, v12, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    array-length v6, v0

    invoke-static {v0, v2, v12, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v11, 0x4

    .line 333
    new-array v6, v0, [B

    .line 334
    invoke-static {v12, v2, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    sget-object v0, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v0}, Ljxl/biff/formula/Token;->getCode()B

    move-result v0

    aput-byte v0, v6, v11

    add-int/lit8 v0, v11, 0x1

    .line 337
    aput-byte v10, v6, v0

    add-int/2addr v11, v7

    .line 338
    aput-byte v8, v6, v11

    .line 342
    :cond_0
    array-length v0, v6

    .line 343
    array-length v5, v6

    add-int/lit8 v5, v5, 0x4

    new-array v10, v5, [B

    .line 344
    array-length v11, v6

    invoke-static {v6, v2, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    sget-object v6, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    invoke-virtual {v6}, Ljxl/biff/formula/Token;->getCode()B

    move-result v6

    aput-byte v6, v10, v0

    add-int/lit8 v6, v0, 0x1

    int-to-byte v11, v1

    .line 347
    aput-byte v11, v10, v6

    add-int/lit8 v6, v0, 0x2

    .line 348
    aput-byte v3, v10, v6

    add-int/2addr v0, v8

    .line 349
    aput-byte v2, v10, v0

    sub-int/2addr v5, v3

    if-ge v1, v8, :cond_1

    sub-int v0, v5, v4

    add-int/lit8 v0, v0, -0x5

    .line 357
    invoke-static {v0, v10, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :cond_1
    sub-int/2addr v5, v9

    sub-int/2addr v5, v7

    .line 362
    invoke-static {v5, v10, v9}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v10
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 3

    .line 389
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 398
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 400
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 3

    .line 418
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 427
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 429
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 3

    .line 447
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 456
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 458
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method getBytes()[B
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 243
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isSum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v2

    .line 249
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 251
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v4

    .line 254
    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 255
    array-length v6, v1

    invoke-static {v1, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    array-length v1, v1

    array-length v6, v4

    invoke-static {v4, v0, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    move-object v1, v5

    goto :goto_0

    .line 261
    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 262
    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    array-length v0, v1

    sget-object v3, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v3}, Ljxl/biff/formula/Token;->getCode()B

    move-result v3

    aput-byte v3, v2, v0

    .line 264
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    aput-byte v1, v2, v0

    move-object v1, v2

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-direct {p0}, Ljxl/biff/formula/Attribute;->getIf()[B

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 2

    .line 188
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/ParseItem;

    .line 191
    invoke-virtual {p0, p1}, Ljxl/biff/formula/Attribute;->add(Ljxl/biff/formula/ParseItem;)V

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/ParseItem;

    .line 196
    invoke-virtual {p0, p1}, Ljxl/biff/formula/Attribute;->add(Ljxl/biff/formula/ParseItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method getPrecedence()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 6

    .line 207
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/16 v4, 0x28

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 210
    sget-object v1, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    iget-object v5, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v1, v5}, Ljxl/biff/formula/Function;->getName(Ljxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 212
    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 213
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 217
    sget-object v0, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    iget-object v1, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0, v1}, Ljxl/biff/formula/Function;->getName(Ljxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 220
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 223
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1

    .line 225
    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    const/16 v1, 0x2c

    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 3

    .line 529
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 538
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 540
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public isChoose()Z
    .locals 1

    .line 178
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFunction()Z
    .locals 1

    .line 138
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x12

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoto()Z
    .locals 1

    .line 168
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIf()Z
    .locals 1

    .line 158
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSum()Z
    .locals 1

    .line 148
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read([BI)I
    .locals 1

    .line 118
    aget-byte v0, p1, p2

    iput v0, p0, Ljxl/biff/formula/Attribute;->options:I

    add-int/lit8 v0, p2, 0x1

    .line 119
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/formula/Attribute;->word:I

    .line 121
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isChoose()Z

    move-result p1

    const/4 p2, 0x3

    if-nez p1, :cond_0

    return p2

    .line 128
    :cond_0
    iget p1, p0, Ljxl/biff/formula/Attribute;->word:I

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    return p1
.end method

.method rowInserted(IIZ)V
    .locals 3

    .line 476
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 485
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 487
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 3

    .line 505
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 514
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 516
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method setIfConditions(Ljxl/biff/formula/VariableArgFunction;)V
    .locals 0

    .line 102
    iput-object p1, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    .line 106
    iget p1, p0, Ljxl/biff/formula/Attribute;->options:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljxl/biff/formula/Attribute;->options:I

    return-void
.end method
