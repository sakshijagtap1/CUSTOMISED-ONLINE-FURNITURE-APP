.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 153
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v0, "()<>@,;:\\\"\t .[]"

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "skipComments"    # Z

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    if-nez p1, :cond_7

    const-string p1, ""

    .end local p1    # "header":Ljava/lang/String;
    :cond_7
    iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 169
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 170
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 172
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 173
    return-void
.end method

.method private static filterToken(Ljava/lang/String;II)Ljava/lang/String;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 359
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 362
    .local v2, "gotEscape":Z
    const/4 v1, 0x0

    .line 364
    .local v1, "gotCR":Z
    move v3, p1

    .local v3, "i":I
    :goto_8
    if-lt v3, p2, :cond_f

    .line 390
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 365
    :cond_f
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 366
    .local v0, "c":C
    const/16 v5, 0xa

    if-ne v0, v5, :cond_1d

    if-eqz v1, :cond_1d

    .line 369
    const/4 v1, 0x0

    .line 364
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 373
    :cond_1d
    const/4 v1, 0x0

    .line 374
    if-nez v2, :cond_30

    .line 376
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_26

    .line 377
    const/4 v2, 0x1

    goto :goto_1a

    .line 378
    :cond_26
    const/16 v5, 0xd

    if-ne v0, v5, :cond_2c

    .line 379
    const/4 v1, 0x1

    goto :goto_1a

    .line 381
    :cond_2c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 386
    :cond_30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    const/4 v11, -0x4

    const/16 v10, 0x28

    const/16 v9, 0x22

    const/16 v8, 0x20

    .line 247
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v6, v7, :cond_12

    .line 248
    sget-object v6, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    .line 342
    :goto_11
    return-object v6

    .line 251
    :cond_12
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v6

    if-ne v6, v11, :cond_1b

    .line 252
    sget-object v6, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto :goto_11

    .line 256
    :cond_1b
    const/4 v2, 0x0

    .line 258
    .local v2, "filter":Z
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 262
    .local v0, "c":C
    :goto_24
    if-eq v0, v10, :cond_3c

    .line 302
    if-ne v0, v9, :cond_fc

    .line 303
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v5, "start":I
    :goto_2e
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v6, v7, :cond_b6

    .line 322
    new-instance v6, Ljavax/mail/internet/ParseException;

    const-string v7, "Unbalanced quoted string"

    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 265
    .end local v5    # "start":I
    :cond_3c
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .restart local v5    # "start":I
    const/4 v3, 0x1

    .line 266
    .local v3, "nesting":I
    :goto_43
    if-lez v3, :cond_4b

    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v6, v7, :cond_55

    .line 279
    :cond_4b
    if-eqz v3, :cond_7f

    .line 280
    new-instance v6, Ljavax/mail/internet/ParseException;

    const-string v7, "Unbalanced comments"

    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 268
    :cond_55
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 269
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_6f

    .line 270
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 271
    const/4 v2, 0x1

    .line 267
    :cond_68
    :goto_68
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_43

    .line 272
    :cond_6f
    if-ne v0, v12, :cond_73

    .line 273
    const/4 v2, 0x1

    goto :goto_68

    .line 274
    :cond_73
    if-ne v0, v10, :cond_78

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 276
    :cond_78
    const/16 v6, 0x29

    if-ne v0, v6, :cond_68

    .line 277
    add-int/lit8 v3, v3, -0x1

    goto :goto_68

    .line 282
    :cond_7f
    iget-boolean v6, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v6, :cond_a2

    .line 286
    if-eqz v2, :cond_97

    .line 287
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v5, v7}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "s":Ljava/lang/String;
    :goto_8f
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v7, -0x3

    invoke-direct {v6, v7, v4}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 289
    .end local v4    # "s":Ljava/lang/String;
    :cond_97
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_8f

    .line 295
    .end local v4    # "s":Ljava/lang/String;
    :cond_a2
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v6

    if-ne v6, v11, :cond_ac

    .line 296
    sget-object v6, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto/16 :goto_11

    .line 297
    :cond_ac
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_24

    .line 304
    .end local v3    # "nesting":I
    :cond_b6
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 305
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_d1

    .line 306
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 307
    const/4 v2, 0x1

    .line 303
    :cond_c9
    :goto_c9
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto/16 :goto_2e

    .line 308
    :cond_d1
    if-ne v0, v12, :cond_d5

    .line 309
    const/4 v2, 0x1

    goto :goto_c9

    .line 310
    :cond_d5
    if-ne v0, v9, :cond_c9

    .line 311
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 314
    if-eqz v2, :cond_f1

    .line 315
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v5, v7}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 319
    .restart local v4    # "s":Ljava/lang/String;
    :goto_e9
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v4}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 317
    .end local v4    # "s":Ljava/lang/String;
    :cond_f1
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_e9

    .line 326
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "start":I
    :cond_fc
    if-lt v0, v8, :cond_10a

    const/16 v6, 0x7f

    if-ge v0, v6, :cond_10a

    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_122

    .line 327
    :cond_10a
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 328
    const/4 v6, 0x1

    new-array v1, v6, [C

    .line 329
    .local v1, "ch":[C
    const/4 v6, 0x0

    aput-char v0, v1, v6

    .line 330
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v6, v0, v7}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 334
    .end local v1    # "ch":[C
    :cond_122
    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .restart local v5    # "start":I
    :goto_124
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v6, v7, :cond_13a

    .line 342
    :cond_12a
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v7, -0x1

    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 335
    :cond_13a
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 338
    if-lt v0, v8, :cond_12a

    const/16 v6, 0x7f

    if-ge v0, v6, :cond_12a

    if-eq v0, v10, :cond_12a

    if-eq v0, v8, :cond_12a

    .line 339
    if-eq v0, v9, :cond_12a

    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_12a

    .line 334
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_124
.end method

.method private skipWhiteSpace()I
    .registers 4

    .prologue
    .line 348
    :goto_0
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v1, v2, :cond_8

    .line 352
    const/4 v1, -0x4

    :goto_7
    return v1

    .line 349
    :cond_8
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_23

    .line 350
    const/16 v1, 0x9

    if-eq v0, v1, :cond_23

    const/16 v1, 0xd

    if-eq v0, v1, :cond_23

    const/16 v1, 0xa

    if-eq v0, v1, :cond_23

    .line 351
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_7

    .line 348
    :cond_23
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 206
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 207
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 208
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    .line 209
    return-object v0
.end method

.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 224
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 225
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 226
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    .line 227
    return-object v0
.end method
