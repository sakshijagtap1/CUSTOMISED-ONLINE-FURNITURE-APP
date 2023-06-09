.class public Ljavax/mail/internet/ParameterList;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/ParameterList$MultiValue;,
        Ljavax/mail/internet/ParameterList$ParamEnum;,
        Ljavax/mail/internet/ParameterList$ToStringBuffer;,
        Ljavax/mail/internet/ParameterList$Value;
    }
.end annotation


# static fields
.field private static applehack:Z

.field private static decodeParameters:Z

.field private static decodeParametersStrict:Z

.field private static encodeParameters:Z

.field private static final hex:[C


# instance fields
.field private lastName:Ljava/lang/String;

.field private list:Ljava/util/Map;

.field private multisegmentNames:Ljava/util/Set;

.field private slist:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    sput-boolean v2, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 130
    sput-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 131
    sput-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    .line 132
    sput-boolean v2, Ljavax/mail/internet/ParameterList;->applehack:Z

    .line 136
    :try_start_a
    const-string v3, "mail.mime.encodeparameters"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_5f

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    move v3, v1

    :goto_1b
    sput-boolean v3, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 139
    const-string v3, "mail.mime.decodeparameters"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_61

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    move v3, v1

    :goto_2e
    sput-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 142
    const-string v3, "mail.mime.decodeparameters.strict"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_63

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    move v3, v1

    :goto_41
    sput-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    .line 145
    const-string v3, "mail.mime.applefilenames"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_65

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    :goto_53
    sput-boolean v1, Ljavax/mail/internet/ParameterList;->applehack:Z
    :try_end_55
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_55} :catch_67

    .line 653
    :goto_55
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_6a

    sput-object v1, Ljavax/mail/internet/ParameterList;->hex:[C

    .line 66
    return-void

    :cond_5f
    move v3, v2

    .line 138
    goto :goto_1b

    :cond_61
    move v3, v2

    .line 141
    goto :goto_2e

    :cond_63
    move v3, v2

    .line 144
    goto :goto_41

    :cond_65
    move v1, v2

    .line 147
    goto :goto_53

    .line 148
    :catch_67
    move-exception v1

    goto :goto_55

    .line 653
    nop

    :array_6a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 204
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_1f

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    .line 208
    :cond_1f
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 12
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x4

    const/4 v8, -0x1

    .line 221
    invoke-direct {p0}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 223
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v6, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v6}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    :goto_c
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 226
    .local v3, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    .line 229
    .local v4, "type":I
    if-ne v4, v9, :cond_1f

    .line 287
    :cond_16
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v6, :cond_1e

    .line 292
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V

    .line 294
    :cond_1e
    return-void

    .line 232
    :cond_1f
    int-to-char v6, v4

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_cb

    .line 234
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v6

    if-eq v6, v9, :cond_16

    .line 239
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v6

    if-eq v6, v8, :cond_53

    .line 240
    new-instance v6, Ljavax/mail/internet/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Expected parameter name, got \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 242
    :cond_53
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 246
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v6

    int-to-char v6, v6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_89

    .line 247
    new-instance v6, Ljavax/mail/internet/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Expected \'=\', got \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 247
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 251
    :cond_89
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    .line 254
    if-eq v4, v8, :cond_b5

    .line 255
    const/4 v6, -0x2

    if-eq v4, v6, :cond_b5

    .line 256
    new-instance v6, Ljavax/mail/internet/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Expected parameter value, got \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 256
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 259
    :cond_b5
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "value":Ljava/lang/String;
    iput-object v2, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 261
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v6, :cond_c4

    .line 262
    invoke-direct {p0, v2, v5}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 264
    :cond_c4
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 272
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_cb
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->applehack:Z

    if-eqz v6, :cond_117

    if-ne v4, v8, :cond_117

    .line 273
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    if-eqz v6, :cond_117

    .line 274
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e9

    .line 275
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    const-string v7, "filename"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 277
    :cond_e9
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v7, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    .local v1, "lastValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    .restart local v5    # "value":Ljava/lang/String;
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v7, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 281
    .end local v1    # "lastValue":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_117
    new-instance v6, Ljavax/mail/internet/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Expected \';\', got \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 649
    invoke-static {p0}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private combineMultisegmentNames(Z)V
    .registers 26
    .param p1, "keepConsistentOnFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v14, 0x0

    .line 348
    .local v14, "success":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 349
    .local v6, "it":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_a5

    move-result v21

    if-nez v21, :cond_58

    .line 411
    const/4 v14, 0x1

    .line 418
    if-nez p1, :cond_16

    if-eqz v14, :cond_57

    .line 421
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v21

    if-lez v21, :cond_45

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 424
    .local v12, "sit":Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_1d6

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 437
    .end local v12    # "sit":Ljava/util/Iterator;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->clear()V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 441
    :cond_57
    return-void

    .line 350
    :cond_58
    :try_start_58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 351
    .local v8, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 352
    .local v10, "sb":Ljava/lang/StringBuffer;
    new-instance v7, Ljavax/mail/internet/ParameterList$MultiValue;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljavax/mail/internet/ParameterList$MultiValue;-><init>(Ljavax/mail/internet/ParameterList$MultiValue;)V

    .line 357
    .local v7, "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    const/4 v2, 0x0

    .line 359
    .local v2, "charset":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "segment":I
    move-object v3, v2

    .line 360
    .end local v2    # "charset":Ljava/lang/String;
    .local v3, "charset":Ljava/lang/String;
    :goto_6f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 361
    .local v13, "sname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 362
    .local v16, "v":Ljava/lang/Object;
    if-nez v16, :cond_ec

    .line 403
    :goto_96
    if-nez v11, :cond_18d

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catchall {:try_start_58 .. :try_end_a3} :catchall_a5

    goto/16 :goto_b

    .line 412
    .end local v3    # "charset":Ljava/lang/String;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "segment":I
    .end local v13    # "sname":Ljava/lang/String;
    .end local v16    # "v":Ljava/lang/Object;
    :catchall_a5
    move-exception v21

    .line 418
    if-nez p1, :cond_aa

    if-eqz v14, :cond_eb

    .line 421
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->size()I

    move-result v22

    if-lez v22, :cond_d9

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 424
    .restart local v12    # "sit":Ljava/util/Iterator;
    :cond_c4
    :goto_c4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_1a2

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 437
    .end local v12    # "sit":Ljava/util/Iterator;
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->clear()V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->clear()V

    .line 440
    :cond_eb
    throw v21

    .line 364
    .restart local v3    # "charset":Ljava/lang/String;
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v7    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v11    # "segment":I
    .restart local v13    # "sname":Ljava/lang/String;
    .restart local v16    # "v":Ljava/lang/Object;
    :cond_ec
    :try_start_ec
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljavax/mail/internet/ParameterList$MultiValue;->add(Ljava/lang/Object;)Z

    .line 365
    const/16 v17, 0x0

    .line 366
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/mail/internet/ParameterList$Value;

    move/from16 v21, v0
    :try_end_f9
    .catchall {:try_start_ec .. :try_end_f9} :catchall_a5

    if-eqz v21, :cond_185

    .line 368
    :try_start_fb
    move-object/from16 v0, v16

    check-cast v0, Ljavax/mail/internet/ParameterList$Value;

    move-object/from16 v20, v0

    .line 369
    .local v20, "vv":Ljavax/mail/internet/ParameterList$Value;
    move-object/from16 v0, v20

    iget-object v4, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 370
    .local v4, "evalue":Ljava/lang/String;
    move-object/from16 v17, v4

    .line 371
    if-nez v11, :cond_138

    .line 374
    invoke-static {v4}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v19

    .line 375
    .local v19, "vnew":Ljavax/mail/internet/ParameterList$Value;
    move-object/from16 v0, v19

    iget-object v2, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
    :try_end_115
    .catch Ljava/lang/NumberFormatException; {:try_start_fb .. :try_end_115} :catch_147
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_fb .. :try_end_115} :catch_165
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_fb .. :try_end_115} :catch_175
    .catchall {:try_start_fb .. :try_end_115} :catchall_a5

    .line 376
    .end local v3    # "charset":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    :try_start_115
    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_121
    .catch Ljava/lang/NumberFormatException; {:try_start_115 .. :try_end_121} :catch_210
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_115 .. :try_end_121} :catch_20d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_115 .. :try_end_121} :catch_20a
    .catchall {:try_start_115 .. :try_end_121} :catchall_a5

    .end local v17    # "value":Ljava/lang/String;
    .local v18, "value":Ljava/lang/String;
    move-object/from16 v17, v18

    .line 400
    .end local v4    # "evalue":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    .end local v19    # "vnew":Ljavax/mail/internet/ParameterList$Value;
    .end local v20    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_123
    :goto_123
    :try_start_123
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_133
    .catchall {:try_start_123 .. :try_end_133} :catchall_a5

    .line 359
    add-int/lit8 v11, v11, 0x1

    move-object v3, v2

    .end local v2    # "charset":Ljava/lang/String;
    .restart local v3    # "charset":Ljava/lang/String;
    goto/16 :goto_6f

    .line 378
    .restart local v4    # "evalue":Ljava/lang/String;
    .restart local v20    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :cond_138
    if-nez v3, :cond_157

    .line 380
    :try_start_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_145
    .catch Ljava/lang/NumberFormatException; {:try_start_13a .. :try_end_145} :catch_147
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13a .. :try_end_145} :catch_165
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_13a .. :try_end_145} :catch_175
    .catchall {:try_start_13a .. :try_end_145} :catchall_a5

    goto/16 :goto_96

    .line 385
    .end local v4    # "evalue":Ljava/lang/String;
    .end local v20    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :catch_147
    move-exception v9

    move-object v2, v3

    .line 386
    .end local v3    # "charset":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    .local v9, "nex":Ljava/lang/NumberFormatException;
    :goto_149
    :try_start_149
    sget-boolean v21, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v21, :cond_123

    .line 387
    new-instance v21, Ljavax/mail/internet/ParseException;

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_157
    .catchall {:try_start_149 .. :try_end_157} :catchall_a5

    .line 383
    .end local v2    # "charset":Ljava/lang/String;
    .end local v9    # "nex":Ljava/lang/NumberFormatException;
    .restart local v3    # "charset":Ljava/lang/String;
    .restart local v4    # "evalue":Ljava/lang/String;
    .restart local v20    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :cond_157
    :try_start_157
    invoke-static {v4, v3}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_161
    .catch Ljava/lang/NumberFormatException; {:try_start_157 .. :try_end_161} :catch_147
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_157 .. :try_end_161} :catch_165
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_157 .. :try_end_161} :catch_175
    .catchall {:try_start_157 .. :try_end_161} :catchall_a5

    .end local v17    # "value":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    move-object/from16 v17, v18

    .end local v18    # "value":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "charset":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    goto :goto_123

    .line 388
    .end local v2    # "charset":Ljava/lang/String;
    .end local v4    # "evalue":Ljava/lang/String;
    .end local v20    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .restart local v3    # "charset":Ljava/lang/String;
    :catch_165
    move-exception v15

    move-object v2, v3

    .line 389
    .end local v3    # "charset":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    .local v15, "uex":Ljava/io/UnsupportedEncodingException;
    :goto_167
    :try_start_167
    sget-boolean v21, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v21, :cond_123

    .line 390
    new-instance v21, Ljavax/mail/internet/ParseException;

    invoke-virtual {v15}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 391
    .end local v2    # "charset":Ljava/lang/String;
    .end local v15    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "charset":Ljava/lang/String;
    :catch_175
    move-exception v5

    move-object v2, v3

    .line 392
    .end local v3    # "charset":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    .local v5, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_177
    sget-boolean v21, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v21, :cond_123

    .line 393
    new-instance v21, Ljavax/mail/internet/ParseException;

    invoke-virtual {v5}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 398
    .end local v2    # "charset":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v3    # "charset":Ljava/lang/String;
    :cond_185
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v2, v3

    .end local v3    # "charset":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    goto :goto_123

    .line 407
    .end local v2    # "charset":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    .restart local v3    # "charset":Ljava/lang/String;
    :cond_18d
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v7, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a0
    .catchall {:try_start_167 .. :try_end_1a0} :catchall_a5

    goto/16 :goto_b

    .line 425
    .end local v3    # "charset":Ljava/lang/String;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "segment":I
    .end local v13    # "sname":Ljava/lang/String;
    .end local v16    # "v":Ljava/lang/Object;
    .restart local v12    # "sit":Ljava/util/Iterator;
    :cond_1a2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 426
    .restart local v16    # "v":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/mail/internet/ParameterList$Value;

    move/from16 v22, v0

    if-eqz v22, :cond_c4

    move-object/from16 v20, v16

    .line 427
    check-cast v20, Ljavax/mail/internet/ParameterList$Value;

    .line 428
    .restart local v20    # "vv":Ljavax/mail/internet/ParameterList$Value;
    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v19

    .line 429
    .restart local v19    # "vnew":Ljavax/mail/internet/ParameterList$Value;
    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 430
    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    goto/16 :goto_c4

    .line 425
    .end local v16    # "v":Ljava/lang/Object;
    .end local v19    # "vnew":Ljavax/mail/internet/ParameterList$Value;
    .end local v20    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .restart local v6    # "it":Ljava/util/Iterator;
    :cond_1d6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 426
    .restart local v16    # "v":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/mail/internet/ParameterList$Value;

    move/from16 v21, v0

    if-eqz v21, :cond_30

    move-object/from16 v20, v16

    .line 427
    check-cast v20, Ljavax/mail/internet/ParameterList$Value;

    .line 428
    .restart local v20    # "vv":Ljavax/mail/internet/ParameterList$Value;
    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v19

    .line 429
    .restart local v19    # "vnew":Ljavax/mail/internet/ParameterList$Value;
    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 430
    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    goto/16 :goto_30

    .line 391
    .end local v12    # "sit":Ljava/util/Iterator;
    .restart local v2    # "charset":Ljava/lang/String;
    .restart local v4    # "evalue":Ljava/lang/String;
    .restart local v7    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v11    # "segment":I
    .restart local v13    # "sname":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :catch_20a
    move-exception v5

    goto/16 :goto_177

    .line 388
    :catch_20d
    move-exception v15

    goto/16 :goto_167

    .line 385
    :catch_210
    move-exception v9

    goto/16 :goto_149
.end method

.method private static decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-array v0, v6, [B

    .line 747
    .local v0, "b":[B
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v1, 0x0

    .local v1, "bi":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_19

    .line 756
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v0, v7, v1, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v6

    .line 748
    :cond_19
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 749
    .local v3, "c":C
    const/16 v6, 0x25

    if-ne v3, v6, :cond_32

    .line 750
    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x3

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 751
    .local v4, "hex":Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v3, v6

    .line 752
    add-int/lit8 v5, v5, 0x2

    .line 754
    .end local v4    # "hex":Ljava/lang/String;
    :cond_32
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bi":I
    .local v2, "bi":I
    int-to-byte v6, v3

    aput-byte v6, v0, v1

    .line 747
    add-int/lit8 v5, v5, 0x1

    move v1, v2

    .end local v2    # "bi":I
    .restart local v1    # "bi":I
    goto :goto_8
.end method

.method private static decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .registers 12
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 696
    new-instance v7, Ljavax/mail/internet/ParameterList$Value;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .line 697
    .local v7, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p0, v7, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 698
    iput-object p0, v7, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 700
    const/16 v8, 0x27

    :try_start_c
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 701
    .local v2, "i":I
    if-gtz v2, :cond_3a

    .line 702
    sget-boolean v8, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v8, :cond_85

    .line 703
    new-instance v8, Ljavax/mail/internet/ParseException;

    .line 704
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Missing charset in encoded value: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 703
    invoke-direct {v8, v9}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_2b} :catch_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_2b} :catch_62
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_c .. :try_end_2b} :catch_86

    .line 719
    .end local v2    # "i":I
    :catch_2b
    move-exception v5

    .line 720
    .local v5, "nex":Ljava/lang/NumberFormatException;
    sget-boolean v8, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v8, :cond_85

    .line 721
    new-instance v8, Ljavax/mail/internet/ParseException;

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 707
    .end local v5    # "nex":Ljava/lang/NumberFormatException;
    .restart local v2    # "i":I
    :cond_3a
    const/4 v8, 0x0

    :try_start_3b
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "charset":Ljava/lang/String;
    const/16 v8, 0x27

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 709
    .local v4, "li":I
    if-gez v4, :cond_71

    .line 710
    sget-boolean v8, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v8, :cond_85

    .line 711
    new-instance v8, Ljavax/mail/internet/ParseException;

    .line 712
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Missing language in encoded value: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 711
    invoke-direct {v8, v9}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_62} :catch_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_62} :catch_62
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3b .. :try_end_62} :catch_86

    .line 722
    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "li":I
    :catch_62
    move-exception v6

    .line 723
    .local v6, "uex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v8, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v8, :cond_85

    .line 724
    new-instance v8, Ljavax/mail/internet/ParseException;

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 715
    .end local v6    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "li":I
    :cond_71
    add-int/lit8 v8, v2, 0x1

    :try_start_73
    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, "lang":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 717
    iput-object v0, v7, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 718
    invoke-static {p0, v0}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_85} :catch_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_73 .. :try_end_85} :catch_62
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_73 .. :try_end_85} :catch_86

    .line 729
    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "lang":Ljava/lang/String;
    .end local v4    # "li":I
    :cond_85
    return-object v7

    .line 725
    :catch_86
    move-exception v1

    .line 726
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v8, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v8, :cond_85

    .line 727
    new-instance v8, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .registers 13
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x25

    const/4 v6, 0x0

    .line 665
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    move-object v5, v6

    .line 689
    :goto_b
    return-object v5

    .line 670
    :cond_c
    :try_start_c
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_13} :catch_3e

    move-result-object v0

    .line 674
    .local v0, "b":[B
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v7, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 675
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    array-length v7, v0

    if-lt v3, v7, :cond_41

    .line 685
    new-instance v5, Ljavax/mail/internet/ParameterList$Value;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .line 686
    .local v5, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p1, v5, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 687
    iput-object p0, v5, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 688
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    goto :goto_b

    .line 671
    .end local v0    # "b":[B
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "v":Ljavax/mail/internet/ParameterList$Value;
    :catch_3e
    move-exception v2

    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    move-object v5, v6

    .line 672
    goto :goto_b

    .line 677
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "b":[B
    .restart local v3    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_41
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    int-to-char v1, v7

    .line 679
    .local v1, "c":C
    const/16 v7, 0x20

    if-le v1, v7, :cond_60

    const/16 v7, 0x7f

    if-ge v1, v7, :cond_60

    const/16 v7, 0x2a

    if-eq v1, v7, :cond_60

    const/16 v7, 0x27

    if-eq v1, v7, :cond_60

    if-eq v1, v10, :cond_60

    .line 680
    const-string v7, "()<>@,;:\\\"\t []/?="

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_7a

    .line 681
    :cond_60
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Ljavax/mail/internet/ParameterList;->hex:[C

    shr-int/lit8 v9, v1, 0x4

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Ljavax/mail/internet/ParameterList;->hex:[C

    and-int/lit8 v9, v1, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 676
    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 683
    :cond_7a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_77
.end method

.method private putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 308
    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 309
    .local v1, "star":I
    if-gez v1, :cond_f

    .line 311
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :goto_e
    return-void

    .line 312
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_25

    .line 314
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 315
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-static {p2}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 318
    :cond_25
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "rname":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 325
    new-instance v2, Ljavax/mail/internet/ParameterList$Value;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .local v2, "v":Ljavax/mail/internet/ParameterList$Value;
    move-object v3, v2

    .line 326
    check-cast v3, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v3, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    move-object v3, v2

    .line 327
    check-cast v3, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v3, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 333
    .end local v2    # "v":Ljavax/mail/internet/ParameterList$Value;
    :goto_57
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 331
    :cond_5d
    move-object v2, p2

    .local v2, "v":Ljava/lang/String;
    goto :goto_57
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 650
    const-string v0, "()<>@,;:\\\"\t []/?="

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 464
    .local v0, "v":Ljava/lang/Object;
    instance-of v2, v0, Ljavax/mail/internet/ParameterList$MultiValue;

    if-eqz v2, :cond_19

    .line 465
    check-cast v0, Ljavax/mail/internet/ParameterList$MultiValue;

    .end local v0    # "v":Ljava/lang/Object;
    iget-object v1, v0, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;

    .line 470
    .local v1, "value":Ljava/lang/String;
    :goto_18
    return-object v1

    .line 466
    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_19
    instance-of v2, v0, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v2, :cond_22

    .line 467
    check-cast v0, Ljavax/mail/internet/ParameterList$Value;

    .end local v0    # "v":Ljava/lang/Object;
    iget-object v1, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_18

    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_22
    move-object v1, v0

    .line 469
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_18
.end method

.method public getNames()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 552
    new-instance v0, Ljavax/mail/internet/ParameterList$ParamEnum;

    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$ParamEnum;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 483
    if-nez p1, :cond_1d

    if-eqz p2, :cond_1d

    const-string v1, "DONE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 490
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 492
    const/4 v1, 0x1

    :try_start_19
    invoke-direct {p0, v1}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V
    :try_end_1c
    .catch Ljavax/mail/internet/ParseException; {:try_start_19 .. :try_end_1c} :catch_3c

    .line 509
    :cond_1c
    :goto_1c
    return-void

    .line 499
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 500
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v1, :cond_36

    .line 502
    :try_start_2b
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljavax/mail/internet/ParseException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1c

    .line 503
    :catch_2f
    move-exception v0

    .line 505
    .local v0, "pex":Ljavax/mail/internet/ParseException;
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 508
    .end local v0    # "pex":Ljavax/mail/internet/ParseException;
    :cond_36
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 493
    :catch_3c
    move-exception v1

    goto :goto_1c
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 524
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v1, :cond_1e

    .line 525
    invoke-static {p2, p3}, Ljavax/mail/internet/ParameterList;->encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v0

    .line 527
    .local v0, "ev":Ljavax/mail/internet/ParameterList$Value;
    if-eqz v0, :cond_1a

    .line 528
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .end local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :goto_19
    return-void

    .line 530
    .restart local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :cond_1a
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 532
    .end local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :cond_1e
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public size()I
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 12
    .param p1, "used"    # I

    .prologue
    .line 580
    new-instance v4, Ljavax/mail/internet/ParameterList$ToStringBuffer;

    invoke-direct {v4, p1}, Ljavax/mail/internet/ParameterList$ToStringBuffer;-><init>(I)V

    .line 581
    .local v4, "sb":Ljavax/mail/internet/ParameterList$ToStringBuffer;
    iget-object v8, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 583
    .local v0, "e":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 601
    invoke-virtual {v4}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 584
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    .local v2, "name":Ljava/lang/String;
    iget-object v8, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 586
    .local v5, "v":Ljava/lang/Object;
    instance-of v8, v5, Ljavax/mail/internet/ParameterList$MultiValue;

    if-eqz v8, :cond_87

    move-object v7, v5

    .line 587
    check-cast v7, Ljavax/mail/internet/ParameterList$MultiValue;

    .line 588
    .local v7, "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, "ns":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    invoke-virtual {v7}, Ljavax/mail/internet/ParameterList$MultiValue;->size()I

    move-result v8

    if-ge v1, v8, :cond_f

    .line 590
    invoke-virtual {v7, v1}, Ljavax/mail/internet/ParameterList$MultiValue;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 591
    .local v6, "va":Ljava/lang/Object;
    instance-of v8, v6, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v8, :cond_70

    .line 592
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v6, Ljavax/mail/internet/ParameterList$Value;

    .end local v6    # "va":Ljava/lang/Object;
    iget-object v9, v6, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 594
    .restart local v6    # "va":Ljava/lang/Object;
    :cond_70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v6, Ljava/lang/String;

    .end local v6    # "va":Ljava/lang/Object;
    invoke-virtual {v4, v8, v6}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 596
    .end local v1    # "i":I
    .end local v3    # "ns":Ljava/lang/String;
    .end local v7    # "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    :cond_87
    instance-of v8, v5, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v8, :cond_a7

    .line 597
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v5, Ljavax/mail/internet/ParameterList$Value;

    .end local v5    # "v":Ljava/lang/Object;
    iget-object v9, v5, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 599
    .restart local v5    # "v":Ljava/lang/Object;
    :cond_a7
    check-cast v5, Ljava/lang/String;

    .end local v5    # "v":Ljava/lang/Object;
    invoke-virtual {v4, v2, v5}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method
