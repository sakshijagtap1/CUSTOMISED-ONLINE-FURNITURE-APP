.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# static fields
.field private static bmparse:Z

.field private static ignoreMissingBoundaryParameter:Z

.field private static ignoreMissingEndBoundary:Z


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 102
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 103
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 104
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    .line 109
    :try_start_8
    const-string v3, "mail.mime.multipart.ignoremissingendboundary"

    .line 108
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_41

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    move v3, v1

    .line 111
    :goto_19
    sput-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 114
    const-string v3, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 113
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_43

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    move v3, v1

    .line 116
    :goto_2c
    sput-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 119
    const-string v3, "mail.mime.multipart.bmparse"

    .line 118
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_45

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    :goto_3e
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_40
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_40} :catch_47

    .line 100
    :goto_40
    return-void

    :cond_41
    move v3, v2

    .line 112
    goto :goto_19

    :cond_43
    move v3, v2

    .line 117
    goto :goto_2c

    :cond_45
    move v1, v2

    .line 121
    goto :goto_3e

    .line 122
    :catch_47
    move-exception v1

    goto :goto_40
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 161
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 130
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 138
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Ljavax/mail/internet/ContentType;

    const-string v2, "multipart"

    invoke-direct {v1, v2, p1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 179
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "boundary"

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .registers 5
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 202
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 130
    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 204
    instance-of v1, p1, Ljavax/mail/MessageAware;

    if-eqz v1, :cond_1f

    move-object v1, p1

    .line 205
    check-cast v1, Ljavax/mail/MessageAware;

    invoke-interface {v1}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 206
    .local v0, "mc":Ljavax/mail/MessageContext;
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 209
    .end local v0    # "mc":Ljavax/mail/MessageContext;
    :cond_1f
    instance-of v1, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v1, :cond_29

    .line 211
    check-cast p1, Ljavax/mail/MultipartDataSource;

    .end local p1    # "ds":Ljavax/activation/DataSource;
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 220
    :goto_28
    return-void

    .line 217
    .restart local p1    # "ds":Ljavax/activation/DataSource;
    :cond_29
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 218
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 219
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    goto :goto_28
.end method

.method private declared-synchronized parsebm()V
    .registers 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 718
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    move/from16 v43, v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a8

    if-eqz v43, :cond_b

    .line 1034
    :goto_9
    monitor-exit p0

    return-void

    .line 721
    :cond_b
    const/16 v25, 0x0

    .line 722
    .local v25, "in":Ljava/io/InputStream;
    const/16 v38, 0x0

    .line 723
    .local v38, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v40, 0x0

    .local v40, "start":J
    const-wide/16 v18, 0x0

    .line 726
    .local v18, "end":J
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    .line 727
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    move/from16 v43, v0

    if-nez v43, :cond_40

    .line 728
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v43, v0

    if-nez v43, :cond_40

    .line 729
    move-object/from16 v0, v25

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v43, v0

    if-nez v43, :cond_40

    .line 730
    new-instance v26, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3e} :catch_ab
    .catchall {:try_start_13 .. :try_end_3e} :catchall_a8

    .end local v25    # "in":Ljava/io/InputStream;
    .local v26, "in":Ljava/io/InputStream;
    move-object/from16 v25, v26

    .line 734
    .end local v26    # "in":Ljava/io/InputStream;
    .restart local v25    # "in":Ljava/io/InputStream;
    :cond_40
    :try_start_40
    move-object/from16 v0, v25

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v43, v0

    if-eqz v43, :cond_4e

    .line 735
    move-object/from16 v0, v25

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object/from16 v38, v0

    .line 737
    :cond_4e
    new-instance v15, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v15, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 738
    .local v15, "cType":Ljavax/mail/internet/ContentType;
    const/4 v11, 0x0

    .line 739
    .local v11, "boundary":Ljava/lang/String;
    const-string v43, "boundary"

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 740
    .local v12, "bp":Ljava/lang/String;
    if-eqz v12, :cond_ba

    .line 741
    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "--"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_40 .. :try_end_76} :catchall_a8

    move-result-object v11

    .line 747
    :cond_77
    :try_start_77
    new-instance v31, Lcom/sun/mail/util/LineInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 748
    .local v31, "lin":Lcom/sun/mail/util/LineInputStream;
    const/16 v35, 0x0

    .line 750
    .local v35, "preamblesb":Ljava/lang/StringBuffer;
    const/16 v33, 0x0

    .line 751
    .local v33, "lineSeparator":Ljava/lang/String;
    :cond_84
    :goto_84
    invoke-virtual/range {v31 .. v31}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v32

    .local v32, "line":Ljava/lang/String;
    if-nez v32, :cond_c6

    .line 798
    :cond_8a
    :goto_8a
    if-nez v32, :cond_143

    .line 799
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "Missing start boundary"

    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_94} :catch_94
    .catchall {:try_start_77 .. :try_end_94} :catchall_a3

    .line 1023
    .end local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v32    # "line":Ljava/lang/String;
    .end local v33    # "lineSeparator":Ljava/lang/String;
    .end local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_94
    move-exception v29

    .line 1024
    .local v29, "ioex":Ljava/io/IOException;
    :try_start_95
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "IO Error"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v43
    :try_end_a3
    .catchall {:try_start_95 .. :try_end_a3} :catchall_a3

    .line 1025
    .end local v29    # "ioex":Ljava/io/IOException;
    :catchall_a3
    move-exception v43

    .line 1027
    :try_start_a4
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_3db
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    .line 1031
    :goto_a7
    :try_start_a7
    throw v43
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a8

    .line 718
    .end local v11    # "boundary":Ljava/lang/String;
    .end local v12    # "bp":Ljava/lang/String;
    .end local v15    # "cType":Ljavax/mail/internet/ContentType;
    .end local v18    # "end":J
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v38    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v40    # "start":J
    :catchall_a8
    move-exception v43

    monitor-exit p0

    throw v43

    .line 731
    .restart local v18    # "end":J
    .restart local v25    # "in":Ljava/io/InputStream;
    .restart local v38    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v40    # "start":J
    :catch_ab
    move-exception v20

    .line 732
    .local v20, "ex":Ljava/lang/Exception;
    :try_start_ac
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "No inputstream from datasource"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v43

    .line 742
    .end local v20    # "ex":Ljava/lang/Exception;
    .restart local v11    # "boundary":Ljava/lang/String;
    .restart local v12    # "bp":Ljava/lang/String;
    .restart local v15    # "cType":Ljavax/mail/internet/ContentType;
    :cond_ba
    sget-boolean v43, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v43, :cond_77

    .line 743
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "Missing boundary parameter"

    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_a8

    .line 759
    .restart local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v32    # "line":Ljava/lang/String;
    .restart local v33    # "lineSeparator":Ljava/lang/String;
    .restart local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_c6
    :try_start_c6
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    add-int/lit8 v24, v43, -0x1

    .local v24, "i":I
    :goto_cc
    if-gez v24, :cond_118

    .line 764
    :cond_ce
    const/16 v43, 0x0

    add-int/lit8 v44, v24, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 765
    if-eqz v11, :cond_12f

    .line 766
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_8a

    .line 781
    :cond_e6
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_e9} :catch_94
    .catchall {:try_start_c6 .. :try_end_e9} :catchall_a3

    move-result v43

    if-lez v43, :cond_84

    .line 784
    if-nez v33, :cond_f6

    .line 787
    :try_start_ee
    const-string v43, "line.separator"

    const-string v44, "\n"

    invoke-static/range {v43 .. v44}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f5
    .catch Ljava/lang/SecurityException; {:try_start_ee .. :try_end_f5} :catch_13f
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f5} :catch_94
    .catchall {:try_start_ee .. :try_end_f5} :catchall_a3

    move-result-object v33

    .line 793
    :cond_f6
    :goto_f6
    if-nez v35, :cond_107

    .line 794
    :try_start_f8
    new-instance v35, Ljava/lang/StringBuffer;

    .end local v35    # "preamblesb":Ljava/lang/StringBuffer;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    add-int/lit8 v43, v43, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 795
    .restart local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_107
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_84

    .line 760
    :cond_118
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 761
    .local v14, "c":C
    const/16 v43, 0x20

    move/from16 v0, v43

    if-eq v14, v0, :cond_12c

    const/16 v43, 0x9

    move/from16 v0, v43

    if-ne v14, v0, :cond_ce

    .line 759
    :cond_12c
    add-int/lit8 v24, v24, -0x1

    goto :goto_cc

    .line 774
    .end local v14    # "c":C
    :cond_12f
    const-string v43, "--"

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_e6

    .line 775
    move-object/from16 v11, v32

    .line 776
    goto/16 :goto_8a

    .line 788
    :catch_13f
    move-exception v20

    .line 789
    .local v20, "ex":Ljava/lang/SecurityException;
    const-string v33, "\n"

    goto :goto_f6

    .line 801
    .end local v20    # "ex":Ljava/lang/SecurityException;
    .end local v24    # "i":I
    :cond_143
    if-eqz v35, :cond_14f

    .line 802
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 805
    :cond_14f
    invoke-static {v11}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 806
    .local v10, "bndbytes":[B
    array-length v9, v10

    .line 813
    .local v9, "bl":I
    const/16 v43, 0x100

    move/from16 v0, v43

    new-array v8, v0, [I

    .line 814
    .local v8, "bcs":[I
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_15c
    move/from16 v0, v24

    if-lt v0, v9, :cond_17f

    .line 818
    new-array v0, v9, [I

    move-object/from16 v22, v0

    .line 820
    .local v22, "gss":[I
    move/from16 v24, v9

    :goto_166
    if-gtz v24, :cond_188

    .line 836
    add-int/lit8 v43, v9, -0x1

    const/16 v44, 0x1

    aput v44, v22, v43
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_16e} :catch_94
    .catchall {:try_start_f8 .. :try_end_16e} :catchall_a3

    .line 842
    const/16 v16, 0x0

    .line 844
    .local v16, "done":Z
    :goto_170
    if-eqz v16, :cond_1ad

    .line 1027
    :goto_172
    :try_start_172
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_3de
    .catchall {:try_start_172 .. :try_end_175} :catchall_a8

    .line 1033
    :goto_175
    const/16 v43, 0x1

    :try_start_177
    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_17d
    .catchall {:try_start_177 .. :try_end_17d} :catchall_a8

    goto/16 :goto_9

    .line 815
    .end local v16    # "done":Z
    .end local v22    # "gss":[I
    :cond_17f
    :try_start_17f
    aget-byte v43, v10, v24

    add-int/lit8 v44, v24, 0x1

    aput v44, v8, v43

    .line 814
    add-int/lit8 v24, v24, 0x1

    goto :goto_15c

    .line 822
    .restart local v22    # "gss":[I
    :cond_188
    add-int/lit8 v30, v9, -0x1

    .local v30, "j":I
    :goto_18a
    move/from16 v0, v30

    move/from16 v1, v24

    if-ge v0, v1, :cond_195

    .line 833
    :goto_190
    if-gtz v30, :cond_1a8

    .line 820
    :cond_192
    add-int/lit8 v24, v24, -0x1

    goto :goto_166

    .line 824
    :cond_195
    aget-byte v43, v10, v30

    sub-int v44, v30, v24

    aget-byte v44, v10, v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_192

    .line 826
    add-int/lit8 v43, v30, -0x1

    aput v24, v22, v43

    .line 822
    add-int/lit8 v30, v30, -0x1

    goto :goto_18a

    .line 834
    :cond_1a8
    add-int/lit8 v30, v30, -0x1

    aput v24, v22, v30

    goto :goto_190

    .line 845
    .end local v30    # "j":I
    .restart local v16    # "done":Z
    :cond_1ad
    const/16 v23, 0x0

    .line 846
    .local v23, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v38, :cond_1d8

    .line 847
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v40

    .line 849
    :cond_1b5
    invoke-virtual/range {v31 .. v31}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1c1

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    if-gtz v43, :cond_1b5

    .line 851
    :cond_1c1
    if-nez v32, :cond_1e0

    .line 852
    sget-boolean v43, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v43, :cond_1cf

    .line 853
    new-instance v43, Ljavax/mail/MessagingException;

    .line 854
    const-string v44, "missing multipart end boundary"

    .line 853
    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 856
    :cond_1cf
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    goto :goto_172

    .line 861
    :cond_1d8
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v23

    .line 864
    :cond_1e0
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->markSupported()Z

    move-result v43

    if-nez v43, :cond_1ee

    .line 865
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "Stream doesn\'t support mark"

    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 867
    :cond_1ee
    const/4 v13, 0x0

    .line 869
    .local v13, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v38, :cond_231

    .line 870
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 884
    .restart local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    :goto_1f6
    new-array v0, v9, [B

    move-object/from16 v28, v0

    .line 885
    .local v28, "inbuf":[B
    new-array v0, v9, [B

    move-object/from16 v37, v0

    .line 886
    .local v37, "previnbuf":[B
    const/16 v27, 0x0

    .line 887
    .local v27, "inSize":I
    const/16 v36, 0x0

    .line 889
    .local v36, "prevSize":I
    const/16 v21, 0x1

    .line 895
    .local v21, "first":Z
    :goto_204
    add-int/lit8 v43, v9, 0x4

    move/from16 v0, v43

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v43, v0

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 896
    const/16 v17, 0x0

    .line 897
    .local v17, "eolLen":I
    const/16 v43, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v9}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v27

    .line 898
    move/from16 v0, v27

    if-ge v0, v9, :cond_263

    .line 900
    sget-boolean v43, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v43, :cond_236

    .line 901
    new-instance v43, Ljavax/mail/MessagingException;

    .line 902
    const-string v44, "missing multipart end boundary"

    .line 901
    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 872
    .end local v17    # "eolLen":I
    .end local v21    # "first":Z
    .end local v27    # "inSize":I
    .end local v28    # "inbuf":[B
    .end local v36    # "prevSize":I
    .end local v37    # "previnbuf":[B
    :cond_231
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    goto :goto_1f6

    .line 903
    .restart local v17    # "eolLen":I
    .restart local v21    # "first":Z
    .restart local v27    # "inSize":I
    .restart local v28    # "inbuf":[B
    .restart local v36    # "prevSize":I
    .restart local v37    # "previnbuf":[B
    :cond_236
    if-eqz v38, :cond_23c

    .line 904
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    .line 905
    :cond_23c
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 906
    const/16 v16, 0x1

    .line 1009
    :cond_246
    :goto_246
    if-eqz v38, :cond_3a5

    .line 1010
    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v34

    .line 1021
    .local v34, "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_25a
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-super {v0, v1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    goto/16 :goto_170

    .line 911
    .end local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_263
    add-int/lit8 v24, v9, -0x1

    :goto_265
    if-gez v24, :cond_2d1

    .line 915
    :cond_267
    if-gez v24, :cond_316

    .line 916
    const/16 v17, 0x0

    .line 917
    if-nez v21, :cond_299

    .line 920
    add-int/lit8 v43, v36, -0x1

    aget-byte v6, v37, v43

    .line 921
    .local v6, "b":I
    const/16 v43, 0xd

    move/from16 v0, v43

    if-eq v6, v0, :cond_27d

    const/16 v43, 0xa

    move/from16 v0, v43

    if-ne v6, v0, :cond_299

    .line 922
    :cond_27d
    const/16 v17, 0x1

    .line 923
    const/16 v43, 0xa

    move/from16 v0, v43

    if-ne v6, v0, :cond_299

    const/16 v43, 0x2

    move/from16 v0, v36

    move/from16 v1, v43

    if-lt v0, v1, :cond_299

    .line 924
    add-int/lit8 v43, v36, -0x2

    aget-byte v6, v37, v43

    .line 925
    const/16 v43, 0xd

    move/from16 v0, v43

    if-ne v6, v0, :cond_299

    .line 926
    const/16 v17, 0x2

    .line 930
    .end local v6    # "b":I
    :cond_299
    if-nez v21, :cond_29d

    if-lez v17, :cond_314

    .line 931
    :cond_29d
    if-eqz v38, :cond_2af

    .line 934
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v44

    int-to-long v0, v9

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v18, v44, v46

    .line 937
    :cond_2af
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 938
    .local v7, "b2":I
    const/16 v43, 0x2d

    move/from16 v0, v43

    if-ne v7, v0, :cond_2e2

    .line 939
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v43

    const/16 v44, 0x2d

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2e2

    .line 940
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 941
    const/16 v16, 0x1

    .line 942
    goto/16 :goto_246

    .line 912
    .end local v7    # "b2":I
    :cond_2d1
    aget-byte v43, v28, v24

    aget-byte v44, v10, v24

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_267

    .line 911
    add-int/lit8 v24, v24, -0x1

    goto :goto_265

    .line 947
    .restart local v7    # "b2":I
    :cond_2de
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 946
    :cond_2e2
    const/16 v43, 0x20

    move/from16 v0, v43

    if-eq v7, v0, :cond_2de

    const/16 v43, 0x9

    move/from16 v0, v43

    if-eq v7, v0, :cond_2de

    .line 949
    const/16 v43, 0xa

    move/from16 v0, v43

    if-eq v7, v0, :cond_246

    .line 951
    const/16 v43, 0xd

    move/from16 v0, v43

    if-ne v7, v0, :cond_314

    .line 952
    const/16 v43, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 953
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v43

    const/16 v44, 0xa

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_246

    .line 954
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_246

    .line 958
    .end local v7    # "b2":I
    :cond_314
    const/16 v24, 0x0

    .line 968
    :cond_316
    add-int/lit8 v43, v24, 0x1

    aget-byte v44, v28, v24

    and-int/lit8 v44, v44, 0x7f

    aget v44, v8, v44

    sub-int v43, v43, v44

    aget v44, v22, v24

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 970
    .local v39, "skip":I
    const/16 v43, 0x2

    move/from16 v0, v39

    move/from16 v1, v43

    if-ge v0, v1, :cond_37c

    .line 974
    if-nez v38, :cond_345

    const/16 v43, 0x1

    move/from16 v0, v36

    move/from16 v1, v43

    if-le v0, v1, :cond_345

    .line 975
    const/16 v43, 0x0

    add-int/lit8 v44, v36, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 976
    :cond_345
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    .line 977
    const-wide/16 v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 978
    const/16 v43, 0x1

    move/from16 v0, v36

    move/from16 v1, v43

    if-lt v0, v1, :cond_371

    .line 980
    const/16 v43, 0x0

    add-int/lit8 v44, v36, -0x1

    aget-byte v44, v37, v44

    aput-byte v44, v37, v43

    .line 981
    const/16 v43, 0x1

    const/16 v44, 0x0

    aget-byte v44, v28, v44

    aput-byte v44, v37, v43

    .line 982
    const/16 v36, 0x2

    .line 1002
    :goto_36d
    const/16 v21, 0x0

    .line 894
    goto/16 :goto_204

    .line 985
    :cond_371
    const/16 v43, 0x0

    const/16 v44, 0x0

    aget-byte v44, v28, v44

    aput-byte v44, v37, v43

    .line 986
    const/16 v36, 0x1

    goto :goto_36d

    .line 991
    :cond_37c
    if-lez v36, :cond_38b

    if-nez v38, :cond_38b

    .line 992
    const/16 v43, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v43

    move/from16 v2, v36

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 994
    :cond_38b
    move/from16 v36, v39

    .line 995
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    .line 996
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 998
    move-object/from16 v42, v28

    .line 999
    .local v42, "tmp":[B
    move-object/from16 v28, v37

    .line 1000
    move-object/from16 v37, v42

    goto :goto_36d

    .line 1013
    .end local v39    # "skip":I
    .end local v42    # "tmp":[B
    :cond_3a5
    sub-int v43, v36, v17

    if-lez v43, :cond_3b6

    .line 1014
    const/16 v43, 0x0

    sub-int v44, v36, v17

    move-object/from16 v0, v37

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1017
    :cond_3b6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move/from16 v43, v0

    if-nez v43, :cond_3cb

    if-lez v27, :cond_3cb

    .line 1018
    const/16 v43, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v43

    move/from16 v2, v27

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1019
    :cond_3cb
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_3d8
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_3d8} :catch_94
    .catchall {:try_start_17f .. :try_end_3d8} :catchall_a3

    move-result-object v34

    .restart local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    goto/16 :goto_25a

    .line 1028
    .end local v8    # "bcs":[I
    .end local v9    # "bl":I
    .end local v10    # "bndbytes":[B
    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "done":Z
    .end local v17    # "eolLen":I
    .end local v21    # "first":Z
    .end local v22    # "gss":[I
    .end local v23    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v24    # "i":I
    .end local v27    # "inSize":I
    .end local v28    # "inbuf":[B
    .end local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v32    # "line":Ljava/lang/String;
    .end local v33    # "lineSeparator":Ljava/lang/String;
    .end local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v35    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v36    # "prevSize":I
    .end local v37    # "previnbuf":[B
    :catch_3db
    move-exception v44

    goto/16 :goto_a7

    .restart local v8    # "bcs":[I
    .restart local v9    # "bl":I
    .restart local v10    # "bndbytes":[B
    .restart local v16    # "done":Z
    .restart local v22    # "gss":[I
    .restart local v24    # "i":I
    .restart local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v32    # "line":Ljava/lang/String;
    .restart local v33    # "lineSeparator":Ljava/lang/String;
    .restart local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_3de
    move-exception v43

    goto/16 :goto_175
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1052
    if-nez p3, :cond_4

    .line 1053
    const/4 v1, 0x0

    .line 1063
    :cond_3
    :goto_3
    return v1

    .line 1054
    :cond_4
    const/4 v1, 0x0

    .line 1055
    .local v1, "total":I
    :goto_5
    if-gtz p3, :cond_b

    .line 1063
    :cond_7
    if-gtz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_3

    .line 1056
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1057
    .local v0, "bsize":I
    if-lez v0, :cond_7

    .line 1059
    add-int/2addr p2, v0

    .line 1060
    add-int/2addr v1, v0

    .line 1061
    sub-int/2addr p3, v0

    goto :goto_5
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .registers 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1071
    :goto_2
    cmp-long v2, p2, v4

    if-gtz v2, :cond_7

    .line 1077
    return-void

    .line 1072
    :cond_7
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 1073
    .local v0, "cur":J
    cmp-long v2, v0, v4

    if-gtz v2, :cond_17

    .line 1074
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "can\'t skip"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1075
    :cond_17
    sub-long/2addr p2, v0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .registers 3
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 326
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 327
    monitor-exit p0

    return-void

    .line 325
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 4
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 345
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 346
    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 347
    monitor-exit p0

    return-void

    .line 345
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1092
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .registers 4
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1109
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 256
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 255
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .registers 7
    .param p1, "CID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 268
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 270
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    move-result v0

    .line 271
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-lt v1, v0, :cond_e

    .line 277
    const/4 v2, 0x0

    :cond_c
    monitor-exit p0

    return-object v2

    .line 272
    :cond_e
    :try_start_e
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    .line 273
    .local v2, "part":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_20

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_23

    move-result v4

    if-nez v4, :cond_c

    .line 271
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 268
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "s":Ljava/lang/String;
    :catchall_23
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 243
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result v0

    monitor-exit p0

    return v0

    .line 242
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 377
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 378
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 377
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isComplete()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 364
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 365
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    .line 364
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 462
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    move/from16 v33, v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_13

    if-eqz v33, :cond_b

    .line 702
    :goto_9
    monitor-exit p0

    return-void

    .line 465
    :cond_b
    :try_start_b
    sget-boolean v33, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v33, :cond_16

    .line 466
    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_9

    .line 462
    :catchall_13
    move-exception v33

    monitor-exit p0

    throw v33

    .line 470
    :cond_16
    const/16 v24, 0x0

    .line 471
    .local v24, "in":Ljava/io/InputStream;
    const/16 v32, 0x0

    .line 472
    .local v32, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v34, 0x0

    .local v34, "start":J
    const-wide/16 v18, 0x0

    .line 475
    .local v18, "end":J
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    .line 476
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    move/from16 v33, v0

    if-nez v33, :cond_4b

    .line 477
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v33, v0

    if-nez v33, :cond_4b

    .line 478
    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v33, v0

    if-nez v33, :cond_4b

    .line 479
    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_49} :catch_bb
    .catchall {:try_start_1e .. :try_end_49} :catchall_13

    .end local v24    # "in":Ljava/io/InputStream;
    .local v25, "in":Ljava/io/InputStream;
    move-object/from16 v24, v25

    .line 483
    .end local v25    # "in":Ljava/io/InputStream;
    .restart local v24    # "in":Ljava/io/InputStream;
    :cond_4b
    :try_start_4b
    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v33, v0

    if-eqz v33, :cond_59

    .line 484
    move-object/from16 v0, v24

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object/from16 v32, v0

    .line 486
    :cond_59
    new-instance v15, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 487
    .local v15, "cType":Ljavax/mail/internet/ContentType;
    const/4 v11, 0x0

    .line 488
    .local v11, "boundary":Ljava/lang/String;
    const-string v33, "boundary"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 489
    .local v12, "bp":Ljava/lang/String;
    if-eqz v12, :cond_ca

    .line 490
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v36, "--"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_85
    .catchall {:try_start_4b .. :try_end_85} :catchall_13

    move-result-object v11

    .line 496
    :cond_86
    :try_start_86
    new-instance v27, Lcom/sun/mail/util/LineInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 497
    .local v27, "lin":Lcom/sun/mail/util/LineInputStream;
    const/16 v31, 0x0

    .line 499
    .local v31, "preamblesb":Ljava/lang/StringBuffer;
    const/16 v29, 0x0

    .line 500
    .local v29, "lineSeparator":Ljava/lang/String;
    :cond_93
    :goto_93
    invoke-virtual/range {v27 .. v27}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, "line":Ljava/lang/String;
    if-nez v28, :cond_da

    .line 547
    :cond_99
    :goto_99
    if-nez v28, :cond_15b

    .line 548
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "Missing start boundary"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a7} :catch_a7
    .catchall {:try_start_86 .. :try_end_a7} :catchall_b6

    .line 691
    .end local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "line":Ljava/lang/String;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_a7
    move-exception v26

    .line 692
    .local v26, "ioex":Ljava/io/IOException;
    :try_start_a8
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "IO Error"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v33
    :try_end_b6
    .catchall {:try_start_a8 .. :try_end_b6} :catchall_b6

    .line 693
    .end local v26    # "ioex":Ljava/io/IOException;
    :catchall_b6
    move-exception v33

    .line 695
    :try_start_b7
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_312
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_13

    .line 699
    :goto_ba
    :try_start_ba
    throw v33

    .line 480
    .end local v11    # "boundary":Ljava/lang/String;
    .end local v12    # "bp":Ljava/lang/String;
    .end local v15    # "cType":Ljavax/mail/internet/ContentType;
    :catch_bb
    move-exception v21

    .line 481
    .local v21, "ex":Ljava/lang/Exception;
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "No inputstream from datasource"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v33

    .line 491
    .end local v21    # "ex":Ljava/lang/Exception;
    .restart local v11    # "boundary":Ljava/lang/String;
    .restart local v12    # "bp":Ljava/lang/String;
    .restart local v15    # "cType":Ljavax/mail/internet/ContentType;
    :cond_ca
    sget-boolean v33, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v33, :cond_86

    .line 492
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "Missing boundary parameter"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_da
    .catchall {:try_start_ba .. :try_end_da} :catchall_13

    .line 508
    .restart local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v28    # "line":Ljava/lang/String;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_da
    :try_start_da
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v23, v33, -0x1

    .local v23, "i":I
    :goto_e0
    if-gez v23, :cond_130

    .line 513
    :cond_e2
    const/16 v33, 0x0

    add-int/lit8 v36, v23, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 514
    if-eqz v11, :cond_147

    .line 515
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_99

    .line 530
    :cond_fa
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_fd} :catch_a7
    .catchall {:try_start_da .. :try_end_fd} :catchall_b6

    move-result v33

    if-lez v33, :cond_93

    .line 533
    if-nez v29, :cond_10e

    .line 536
    :try_start_102
    const-string v33, "line.separator"

    const-string v36, "\n"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10d
    .catch Ljava/lang/SecurityException; {:try_start_102 .. :try_end_10d} :catch_157
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_10d} :catch_a7
    .catchall {:try_start_102 .. :try_end_10d} :catchall_b6

    move-result-object v29

    .line 542
    :cond_10e
    :goto_10e
    if-nez v31, :cond_11f

    .line 543
    :try_start_110
    new-instance v31, Ljava/lang/StringBuffer;

    .end local v31    # "preamblesb":Ljava/lang/StringBuffer;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 544
    .restart local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_11f
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_93

    .line 509
    :cond_130
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 510
    .local v14, "c":C
    const/16 v33, 0x20

    move/from16 v0, v33

    if-eq v14, v0, :cond_144

    const/16 v33, 0x9

    move/from16 v0, v33

    if-ne v14, v0, :cond_e2

    .line 508
    :cond_144
    add-int/lit8 v23, v23, -0x1

    goto :goto_e0

    .line 523
    .end local v14    # "c":C
    :cond_147
    const-string v33, "--"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_fa

    .line 524
    move-object/from16 v11, v28

    .line 525
    goto/16 :goto_99

    .line 537
    :catch_157
    move-exception v21

    .line 538
    .local v21, "ex":Ljava/lang/SecurityException;
    const-string v29, "\n"

    goto :goto_10e

    .line 550
    .end local v21    # "ex":Ljava/lang/SecurityException;
    .end local v23    # "i":I
    :cond_15b
    if-eqz v31, :cond_167

    .line 551
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 554
    :cond_167
    invoke-static {v11}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 555
    .local v9, "bndbytes":[B
    array-length v8, v9
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_16c} :catch_a7
    .catchall {:try_start_110 .. :try_end_16c} :catchall_b6

    .line 561
    .local v8, "bl":I
    const/16 v16, 0x0

    .line 563
    .local v16, "done":Z
    :goto_16e
    if-eqz v16, :cond_17d

    .line 695
    :goto_170
    :try_start_170
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_173} :catch_315
    .catchall {:try_start_170 .. :try_end_173} :catchall_13

    .line 701
    :goto_173
    const/16 v33, 0x1

    :try_start_175
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_17b
    .catchall {:try_start_175 .. :try_end_17b} :catchall_13

    goto/16 :goto_9

    .line 564
    :cond_17d
    const/16 v22, 0x0

    .line 565
    .local v22, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v32, :cond_1ac

    .line 566
    :try_start_181
    invoke-interface/range {v32 .. v32}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v34

    .line 568
    :cond_185
    invoke-virtual/range {v27 .. v27}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_191

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v33

    if-gtz v33, :cond_185

    .line 570
    :cond_191
    if-nez v28, :cond_1b4

    .line 571
    sget-boolean v33, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v33, :cond_1a3

    .line 572
    new-instance v33, Ljavax/mail/MessagingException;

    .line 573
    const-string v36, "missing multipart end boundary"

    .line 572
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 575
    :cond_1a3
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    goto :goto_170

    .line 580
    :cond_1ac
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v22

    .line 583
    :cond_1b4
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->markSupported()Z

    move-result v33

    if-nez v33, :cond_1c6

    .line 584
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "Stream doesn\'t support mark"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 586
    :cond_1c6
    const/4 v13, 0x0

    .line 588
    .local v13, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v32, :cond_22b

    .line 589
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 593
    .restart local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    :goto_1ce
    const/4 v10, 0x1

    .line 595
    .local v10, "bol":Z
    const/16 v17, -0x1

    .local v17, "eol1":I
    const/16 v20, -0x1

    .line 601
    .local v20, "eol2":I
    :cond_1d3
    :goto_1d3
    if-eqz v10, :cond_29d

    .line 607
    add-int/lit8 v33, v8, 0x4

    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 609
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_1e6
    move/from16 v0, v23

    if-lt v0, v8, :cond_230

    .line 612
    :cond_1ea
    move/from16 v0, v23

    if-ne v0, v8, :cond_27a

    .line 614
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 615
    .local v7, "b2":I
    const/16 v33, 0x2d

    move/from16 v0, v33

    if-ne v7, v0, :cond_249

    .line 616
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v33

    const/16 v36, 0x2d

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_249

    .line 617
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 618
    const/16 v16, 0x1

    .line 685
    .end local v7    # "b2":I
    .end local v23    # "i":I
    :cond_20e
    :goto_20e
    if-eqz v32, :cond_302

    .line 686
    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v30

    .line 689
    .local v30, "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_222
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-super {v0, v1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    goto/16 :goto_16e

    .line 591
    .end local v10    # "bol":Z
    .end local v17    # "eol1":I
    .end local v20    # "eol2":I
    .end local v30    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_22b
    invoke-interface/range {v32 .. v32}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    goto :goto_1ce

    .line 610
    .restart local v10    # "bol":Z
    .restart local v17    # "eol1":I
    .restart local v20    # "eol2":I
    .restart local v23    # "i":I
    :cond_230
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v33

    aget-byte v36, v9, v23

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_1ea

    .line 609
    add-int/lit8 v23, v23, 0x1

    goto :goto_1e6

    .line 624
    .restart local v7    # "b2":I
    :cond_245
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 623
    :cond_249
    const/16 v33, 0x20

    move/from16 v0, v33

    if-eq v7, v0, :cond_245

    const/16 v33, 0x9

    move/from16 v0, v33

    if-eq v7, v0, :cond_245

    .line 626
    const/16 v33, 0xa

    move/from16 v0, v33

    if-eq v7, v0, :cond_20e

    .line 628
    const/16 v33, 0xd

    move/from16 v0, v33

    if-ne v7, v0, :cond_27a

    .line 629
    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 630
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v33

    const/16 v36, 0xa

    move/from16 v0, v33

    move/from16 v1, v36

    if-eq v0, v1, :cond_20e

    .line 631
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->reset()V

    goto :goto_20e

    .line 636
    .end local v7    # "b2":I
    :cond_27a
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->reset()V

    .line 640
    if-eqz v13, :cond_29d

    const/16 v33, -0x1

    move/from16 v0, v17

    move/from16 v1, v33

    if-eq v0, v1, :cond_29d

    .line 641
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    const/16 v33, -0x1

    move/from16 v0, v20

    move/from16 v1, v33

    if-eq v0, v1, :cond_299

    .line 643
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 644
    :cond_299
    const/16 v20, -0x1

    move/from16 v17, v20

    .line 649
    .end local v23    # "i":I
    :cond_29d
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v6

    .local v6, "b":I
    if-gez v6, :cond_2bf

    .line 650
    sget-boolean v33, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v33, :cond_2b3

    .line 651
    new-instance v33, Ljavax/mail/MessagingException;

    .line 652
    const-string v36, "missing multipart end boundary"

    .line 651
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 653
    :cond_2b3
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 654
    const/16 v16, 0x1

    .line 655
    goto/16 :goto_20e

    .line 662
    :cond_2bf
    const/16 v33, 0xd

    move/from16 v0, v33

    if-eq v6, v0, :cond_2cb

    const/16 v33, 0xa

    move/from16 v0, v33

    if-ne v6, v0, :cond_2fa

    .line 663
    :cond_2cb
    const/4 v10, 0x1

    .line 664
    if-eqz v32, :cond_2d6

    .line 665
    invoke-interface/range {v32 .. v32}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v36

    const-wide/16 v38, 0x1

    sub-long v18, v36, v38

    .line 666
    :cond_2d6
    move/from16 v17, v6

    .line 667
    const/16 v33, 0xd

    move/from16 v0, v33

    if-ne v6, v0, :cond_1d3

    .line 668
    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 669
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v33, 0xa

    move/from16 v0, v33

    if-ne v6, v0, :cond_2f5

    .line 670
    move/from16 v20, v6

    goto/16 :goto_1d3

    .line 672
    :cond_2f5
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_1d3

    .line 675
    :cond_2fa
    const/4 v10, 0x0

    .line 676
    if-eqz v13, :cond_1d3

    .line 677
    invoke-virtual {v13, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1d3

    .line 688
    .end local v6    # "b":I
    :cond_302
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_30f
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_30f} :catch_a7
    .catchall {:try_start_181 .. :try_end_30f} :catchall_b6

    move-result-object v30

    .restart local v30    # "part":Ljavax/mail/internet/MimeBodyPart;
    goto/16 :goto_222

    .line 696
    .end local v8    # "bl":I
    .end local v9    # "bndbytes":[B
    .end local v10    # "bol":Z
    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "done":Z
    .end local v17    # "eol1":I
    .end local v20    # "eol2":I
    .end local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "line":Ljava/lang/String;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v30    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_312
    move-exception v36

    goto/16 :goto_ba

    .restart local v8    # "bl":I
    .restart local v9    # "bndbytes":[B
    .restart local v16    # "done":Z
    .restart local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v28    # "line":Ljava/lang/String;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_315
    move-exception v33

    goto/16 :goto_173
.end method

.method public removeBodyPart(I)V
    .registers 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 310
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    .line 311
    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .registers 3
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 293
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .registers 3
    .param p1, "preamble"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 394
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 395
    monitor-exit p0

    return-void

    .line 394
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .registers 4
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 231
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 234
    monitor-exit p0

    return-void

    .line 231
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected updateHeaders()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 417
    return-void

    .line 416
    :cond_a
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 425
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    new-instance v5, Ljavax/mail/internet/ContentType;

    iget-object v6, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v6, "boundary"

    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 427
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "boundary":Ljava/lang/String;
    new-instance v2, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v2, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 432
    .local v2, "los":Lcom/sun/mail/util/LineOutputStream;
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v4, :cond_4a

    .line 433
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 434
    .local v3, "pb":[B
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 436
    array-length v4, v3

    if-lez v4, :cond_4a

    .line 437
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4a

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4a

    .line 438
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 442
    .end local v3    # "pb":[B
    :cond_4a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4b
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_6b

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_7f

    .line 450
    monitor-exit p0

    return-void

    .line 443
    :cond_6b
    :try_start_6b
    invoke-virtual {v2, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 444
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v4, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 445
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_7f

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 425
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "los":Lcom/sun/mail/util/LineOutputStream;
    :catchall_7f
    move-exception v4

    monitor-exit p0

    throw v4
.end method
