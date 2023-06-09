.class public Ljavax/activation/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# instance fields
.field private parameters:Ljavax/activation/MimeTypeParameterList;

.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "application"

    iput-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 66
    const-string v0, "*"

    iput-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 67
    new-instance v0, Ljavax/activation/MimeTypeParameterList;

    invoke-direct {v0}, Ljavax/activation/MimeTypeParameterList;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "rawdata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0, p1}, Ljavax/activation/MimeType;->parse(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "primary"    # Ljava/lang/String;
    .param p2, "sub"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-direct {p0, p1}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 91
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 97
    invoke-direct {p0, p2}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 98
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 103
    new-instance v0, Ljavax/activation/MimeTypeParameterList;

    invoke-direct {v0}, Ljavax/activation/MimeTypeParameterList;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    .line 104
    return-void

    .line 93
    :cond_27
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Primary type is invalid."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2f
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Sub type is invalid."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isTokenChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 319
    const/16 v0, 0x20

    if-le p0, v0, :cond_12

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_12

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isValidToken(Ljava/lang/String;)Z
    .registers 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 327
    .local v2, "len":I
    if-lez v2, :cond_b

    .line 328
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-lt v1, v2, :cond_c

    .line 334
    const/4 v3, 0x1

    .line 336
    .end local v1    # "i":I
    :cond_b
    return v3

    .line 329
    .restart local v1    # "i":I
    :cond_c
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 330
    .local v0, "c":C
    invoke-static {v0}, Ljavax/activation/MimeType;->isTokenChar(C)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private parse(Ljava/lang/String;)V
    .registers 6
    .param p1, "rawdata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 110
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 111
    .local v1, "slashIndex":I
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 112
    .local v0, "semIndex":I
    if-gez v1, :cond_19

    if-gez v0, :cond_19

    .line 115
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    const-string v3, "Unable to find a sub type."

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_19
    if-gez v1, :cond_25

    if-ltz v0, :cond_25

    .line 119
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    const-string v3, "Unable to find a sub type."

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_25
    if-ltz v1, :cond_62

    if-gez v0, :cond_62

    .line 122
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 123
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 122
    iput-object v2, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 124
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 125
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 124
    iput-object v2, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 126
    new-instance v2, Ljavax/activation/MimeTypeParameterList;

    invoke-direct {v2}, Ljavax/activation/MimeTypeParameterList;-><init>()V

    iput-object v2, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    .line 143
    :goto_52
    iget-object v2, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 144
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    const-string v3, "Primary type is invalid."

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_62
    if-ge v1, v0, :cond_92

    .line 129
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 130
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 129
    iput-object v2, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 131
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 132
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 131
    iput-object v2, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 133
    new-instance v2, Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParameterList;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    goto :goto_52

    .line 137
    :cond_92
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    const-string v3, "Unable to find a sub type."

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_9a
    iget-object v2, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 148
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    const-string v3, "Sub type is invalid."

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_aa
    return-void
.end method


# virtual methods
.method public getBaseType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {v0, p1}, Ljavax/activation/MimeTypeParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljavax/activation/MimeTypeParameterList;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    return-object v0
.end method

.method public getPrimaryType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/lang/String;)Z
    .registers 3
    .param p1, "rawdata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljavax/activation/MimeType;

    invoke-direct {v0, p1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/activation/MimeType;->match(Ljavax/activation/MimeType;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/activation/MimeType;)Z
    .registers 4
    .param p1, "type"    # Ljavax/activation/MimeType;

    .prologue
    .line 262
    iget-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/activation/MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 263
    iget-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 264
    invoke-virtual {p1}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 265
    iget-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    .line 262
    goto :goto_2f
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 307
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/activation/MimeType;->parse(Ljava/lang/String;)V
    :try_end_7
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_7} :catch_8

    .line 311
    return-void

    .line 308
    :catch_8
    move-exception v0

    .line 309
    .local v0, "e":Ljavax/activation/MimeTypeParseException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/activation/MimeTypeParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeParameter(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {v0, p1}, Ljavax/activation/MimeTypeParameterList;->remove(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {v0, p1, p2}, Ljavax/activation/MimeTypeParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setPrimaryType(Ljava/lang/String;)V
    .registers 4
    .param p1, "primary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 170
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Primary type is invalid."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .registers 4
    .param p1, "sub"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 193
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Sub type is invalid."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/activation/MimeType;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {v1}, Ljavax/activation/MimeTypeParameterList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Ljavax/activation/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 290
    invoke-interface {p1}, Ljava/io/ObjectOutput;->flush()V

    .line 291
    return-void
.end method
