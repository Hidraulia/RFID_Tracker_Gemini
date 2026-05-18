.class Ljxl/biff/formula/StringFormulaParser;
.super Ljava/lang/Object;
.source "StringFormulaParser.java"

# interfaces
.implements Ljxl/biff/formula/Parser;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private arguments:Ljava/util/Stack;

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private formula:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private parseContext:Ljxl/biff/formula/ParseContext;

.field private parsedFormula:Ljava/lang/String;

.field private root:Ljxl/biff/formula/ParseItem;

.field private settings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Ljxl/biff/formula/StringFormulaParser;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/StringFormulaParser;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    .line 97
    iput-object p2, p0, Ljxl/biff/formula/StringFormulaParser;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 98
    iput-object p3, p0, Ljxl/biff/formula/StringFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 99
    iput-object p5, p0, Ljxl/biff/formula/StringFormulaParser;->parseContext:Ljxl/biff/formula/ParseContext;

    return-void
.end method

.method private getTokens()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v2, Ljxl/biff/formula/Yylex;

    invoke-direct {v2, v1}, Ljxl/biff/formula/Yylex;-><init>(Ljava/io/Reader;)V

    .line 276
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-virtual {v2, v1}, Ljxl/biff/formula/Yylex;->setExternalSheet(Ljxl/biff/formula/ExternalSheet;)V

    .line 277
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {v2, v1}, Ljxl/biff/formula/Yylex;->setNameTable(Ljxl/biff/WorkbookMethods;)V

    .line 280
    :try_start_0
    invoke-virtual {v2}, Ljxl/biff/formula/Yylex;->yylex()Ljxl/biff/formula/ParseItem;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {v2}, Ljxl/biff/formula/Yylex;->yylex()Ljxl/biff/formula/ParseItem;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->LEXICAL_ERROR:Ljxl/biff/formula/FormulaException$FormulaMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at char  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljxl/biff/formula/Yylex;->getPos()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    .line 289
    sget-object v2, Ljxl/biff/formula/StringFormulaParser;->logger:Ljxl/common/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private handleFunction(Ljxl/biff/formula/StringFunction;Ljava/util/Iterator;Ljava/util/Stack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 349
    invoke-direct {p0, p2}, Ljxl/biff/formula/StringFormulaParser;->parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;

    move-result-object p2

    .line 352
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    sget-object v1, Ljxl/biff/formula/Function;->UNKNOWN:Ljxl/biff/formula/Function;

    if-eq v0, v1, :cond_e

    .line 359
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    sget-object v1, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljxl/biff/formula/Attribute;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v0, p1, v1}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/biff/formula/StringFunction;Ljxl/WorkbookSettings;)V

    .line 363
    invoke-virtual {v0, p2}, Ljxl/biff/formula/Attribute;->add(Ljxl/biff/formula/ParseItem;)V

    .line 364
    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    sget-object v1, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 371
    new-instance p2, Ljxl/biff/formula/Attribute;

    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {p2, p1, v0}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/biff/formula/StringFunction;Ljxl/WorkbookSettings;)V

    .line 375
    new-instance p1, Ljxl/biff/formula/VariableArgFunction;

    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {p1, v0}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/WorkbookSettings;)V

    .line 376
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 379
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/formula/ParseItem;

    .line 380
    invoke-virtual {p1, v1}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p2, p1}, Ljxl/biff/formula/Attribute;->setIfConditions(Ljxl/biff/formula/VariableArgFunction;)V

    .line 384
    invoke-virtual {p3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 390
    :cond_2
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result v0

    const/16 v1, 0xff

    const/4 v3, 0x1

    if-ne v0, v1, :cond_8

    .line 395
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-nez v0, :cond_5

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    .line 398
    :cond_3
    new-instance v0, Ljxl/biff/formula/VariableArgFunction;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p1

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v0, p1, v2, v1}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/biff/formula/Function;ILjxl/WorkbookSettings;)V

    if-eqz p2, :cond_4

    .line 403
    invoke-virtual {v0, p2}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    .line 406
    :cond_4
    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 411
    :cond_5
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result p2

    .line 412
    new-instance v0, Ljxl/biff/formula/VariableArgFunction;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p1

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v0, p1, p2, v1}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/biff/formula/Function;ILjxl/WorkbookSettings;)V

    .line 415
    new-array p1, p2, [Ljxl/biff/formula/ParseItem;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_6

    .line 418
    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/formula/ParseItem;

    sub-int v5, p2, v1

    sub-int/2addr v5, v3

    .line 419
    aput-object v4, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ge v2, p2, :cond_7

    .line 424
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 426
    :cond_7
    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object p1, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    const/4 p1, 0x0

    .line 428
    iput-object p1, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    :goto_3
    return-void

    .line 434
    :cond_8
    new-instance v0, Ljxl/biff/formula/BuiltInFunction;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v1

    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v0, v1, v4}, Ljxl/biff/formula/BuiltInFunction;-><init>(Ljxl/biff/formula/Function;Ljxl/WorkbookSettings;)V

    .line 437
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 441
    invoke-virtual {v0, p2}, Ljxl/biff/formula/BuiltInFunction;->add(Ljxl/biff/formula/ParseItem;)V

    goto :goto_5

    .line 445
    :cond_9
    iget-object p2, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-nez p2, :cond_a

    if-nez p1, :cond_b

    :cond_a
    iget-object p2, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-ne p1, p2, :cond_b

    goto :goto_4

    .line 448
    :cond_b
    new-instance p1, Ljxl/biff/formula/FormulaException;

    sget-object p2, Ljxl/biff/formula/FormulaException;->INCORRECT_ARGUMENTS:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {p1, p2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw p1

    :cond_c
    :goto_4
    if-ge v2, p1, :cond_d

    .line 455
    iget-object p2, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {p2, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljxl/biff/formula/ParseItem;

    .line 456
    invoke-virtual {v0, p2}, Ljxl/biff/formula/BuiltInFunction;->add(Ljxl/biff/formula/ParseItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 459
    :cond_d
    :goto_5
    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 354
    :cond_e
    new-instance p1, Ljxl/biff/formula/FormulaException;

    sget-object p2, Ljxl/biff/formula/FormulaException;->UNRECOGNIZED_FUNCTION:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {p1, p2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private handleOperand(Ljxl/biff/formula/Operand;Ljava/util/Stack;)V
    .locals 3

    .line 542
    instance-of v0, p1, Ljxl/biff/formula/IntegerValue;

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 550
    check-cast p1, Ljxl/biff/formula/IntegerValue;

    .line 551
    invoke-virtual {p1}, Ljxl/biff/formula/IntegerValue;->isOutOfRange()Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 558
    :cond_1
    new-instance v0, Ljxl/biff/formula/DoubleValue;

    invoke-virtual {p1}, Ljxl/biff/formula/IntegerValue;->getValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/DoubleValue;-><init>(D)V

    .line 559
    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 127
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    .line 133
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    if-nez v3, :cond_e

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/biff/formula/ParseItem;

    .line 136
    iget-object v7, p0, Ljxl/biff/formula/StringFormulaParser;->parseContext:Ljxl/biff/formula/ParseContext;

    invoke-virtual {v6, v7}, Ljxl/biff/formula/ParseItem;->setParseContext(Ljxl/biff/formula/ParseContext;)V

    .line 138
    instance-of v7, v6, Ljxl/biff/formula/Operand;

    if-eqz v7, :cond_0

    .line 140
    move-object v5, v6

    check-cast v5, Ljxl/biff/formula/Operand;

    invoke-direct {p0, v5, v0}, Ljxl/biff/formula/StringFormulaParser;->handleOperand(Ljxl/biff/formula/Operand;Ljava/util/Stack;)V

    goto/16 :goto_4

    .line 142
    :cond_0
    instance-of v7, v6, Ljxl/biff/formula/StringFunction;

    if-eqz v7, :cond_1

    .line 144
    move-object v5, v6

    check-cast v5, Ljxl/biff/formula/StringFunction;

    invoke-direct {p0, v5, p1, v0}, Ljxl/biff/formula/StringFormulaParser;->handleFunction(Ljxl/biff/formula/StringFunction;Ljava/util/Iterator;Ljava/util/Stack;)V

    goto/16 :goto_4

    .line 146
    :cond_1
    instance-of v7, v6, Ljxl/biff/formula/Operator;

    if-eqz v7, :cond_8

    .line 148
    move-object v7, v6

    check-cast v7, Ljxl/biff/formula/Operator;

    .line 153
    instance-of v8, v7, Ljxl/biff/formula/StringOperator;

    if-eqz v8, :cond_4

    .line 155
    check-cast v7, Ljxl/biff/formula/StringOperator;

    .line 156
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    instance-of v5, v5, Ljxl/biff/formula/Operator;

    if-eqz v5, :cond_2

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v7}, Ljxl/biff/formula/StringOperator;->getBinaryOperator()Ljxl/biff/formula/Operator;

    move-result-object v7

    goto :goto_2

    .line 158
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljxl/biff/formula/StringOperator;->getUnaryOperator()Ljxl/biff/formula/Operator;

    move-result-object v7

    .line 166
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 169
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 173
    :cond_5
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/formula/Operator;

    .line 177
    invoke-virtual {v7}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v8

    invoke-virtual {v5}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 179
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 181
    :cond_6
    invoke-virtual {v7}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v8

    invoke-virtual {v5}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v9

    if-ne v8, v9, :cond_7

    instance-of v8, v7, Ljxl/biff/formula/UnaryOperator;

    if-eqz v8, :cond_7

    .line 187
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 193
    :cond_7
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 194
    invoke-virtual {v5, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 195
    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 200
    :cond_8
    instance-of v5, v6, Ljxl/biff/formula/ArgumentSeparator;

    if-eqz v5, :cond_b

    .line 203
    :goto_3
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 205
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/formula/Operator;

    .line 206
    invoke-virtual {v5, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 207
    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-nez v4, :cond_a

    .line 215
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 218
    :cond_a
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_4

    .line 221
    :cond_b
    instance-of v5, v6, Ljxl/biff/formula/OpenParentheses;

    if-eqz v5, :cond_c

    .line 223
    invoke-direct {p0, p1}, Ljxl/biff/formula/StringFormulaParser;->parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;

    move-result-object v5

    .line 224
    new-instance v7, Ljxl/biff/formula/Parenthesis;

    invoke-direct {v7}, Ljxl/biff/formula/Parenthesis;-><init>()V

    .line 225
    invoke-virtual {v5, v7}, Ljxl/biff/formula/ParseItem;->setParent(Ljxl/biff/formula/ParseItem;)V

    .line 226
    invoke-virtual {v7, v5}, Ljxl/biff/formula/Parenthesis;->add(Ljxl/biff/formula/ParseItem;)V

    .line 227
    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 229
    :cond_c
    instance-of v5, v6, Ljxl/biff/formula/CloseParentheses;

    if-eqz v5, :cond_d

    const/4 v3, 0x1

    :cond_d
    :goto_4
    move-object v5, v6

    goto/16 :goto_0

    .line 237
    :cond_e
    :goto_5
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 239
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/Operator;

    .line 240
    invoke-virtual {p1, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 241
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 244
    :cond_f
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljxl/biff/formula/ParseItem;

    :cond_10
    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    .line 250
    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_11
    iput-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    .line 255
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_13

    .line 257
    :cond_12
    sget-object p1, Ljxl/biff/formula/StringFormulaParser;->logger:Ljxl/common/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Formula "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has a non-empty parse stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_13
    return-object v2
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 1

    .line 470
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 1

    .line 485
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    return-void
.end method

.method public columnRemoved(IIZ)V
    .locals 1

    .line 501
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    return-void
.end method

.method public getBytes()[B
    .locals 5

    .line 323
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v0

    .line 325
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->isVolatile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    array-length v1, v0

    const/4 v2, 0x4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 328
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    sget-object v0, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v0}, Ljxl/biff/formula/Token;->getCode()B

    move-result v0

    aput-byte v0, v1, v4

    const/4 v0, 0x1

    .line 330
    aput-byte v0, v1, v0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 2

    .line 306
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->parsedFormula:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v1, v0}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->parsedFormula:Ljava/lang/String;

    .line 313
    :cond_0
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->parsedFormula:Ljava/lang/String;

    return-object v0
.end method

.method public handleImportedCellReferences()Z
    .locals 1

    .line 572
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 573
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->isValid()Z

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljxl/biff/formula/StringFormulaParser;->getTokens()Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Ljxl/biff/formula/StringFormulaParser;->parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    return-void
.end method

.method public rowInserted(IIZ)V
    .locals 1

    .line 516
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    return-void
.end method

.method public rowRemoved(IIZ)V
    .locals 1

    .line 531
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    return-void
.end method
