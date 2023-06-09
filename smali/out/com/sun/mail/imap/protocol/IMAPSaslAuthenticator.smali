.class public Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
.super Ljava/lang/Object;
.source "IMAPSaslAuthenticator.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/SaslAuthenticator;


# instance fields
.field private debug:Z

.field private host:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private props:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/util/Properties;ZLjava/io/PrintStream;Ljava/lang/String;)V
    .registers 7
    .param p1, "pr"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "debug"    # Z
    .param p5, "out"    # Ljava/io/PrintStream;
    .param p6, "host"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 70
    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 72
    iput-boolean p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    .line 73
    iput-object p5, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    .line 74
    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    return-object v0
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 36
    .param p1, "mechs"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 81
    :try_start_7
    new-instance v28, Ljava/util/Vector;

    invoke-direct/range {v28 .. v28}, Ljava/util/Vector;-><init>()V

    .line 82
    .local v28, "v":Ljava/util/Vector;
    const/16 v26, 0x0

    .line 83
    .local v26, "tag":Ljava/lang/String;
    const/16 v21, 0x0

    .line 84
    .local v21, "r":Lcom/sun/mail/iap/Response;
    const/4 v13, 0x0

    .line 85
    .local v13, "done":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_2d

    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: Mechanisms:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 87
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_21
    move-object/from16 v0, p1

    array-length v4, v0

    if-lt v15, v4, :cond_68

    .line 89
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 93
    .end local v15    # "i":I
    :cond_2d
    move-object/from16 v22, p2

    .line 94
    .local v22, "r0":Ljava/lang/String;
    move-object/from16 v27, p4

    .line 95
    .local v27, "u0":Ljava/lang/String;
    move-object/from16 v19, p5

    .line 96
    .local v19, "p0":Ljava/lang/String;
    new-instance v9, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;-><init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_22b

    .line 136
    .local v9, "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :try_start_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    .line 136
    invoke-static/range {v4 .. v9}, Ljavax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;
    :try_end_53
    .catch Ljavax/security/sasl/SaslException; {:try_start_40 .. :try_end_53} :catch_83
    .catchall {:try_start_40 .. :try_end_53} :catchall_22b

    move-result-object v24

    .line 144
    .local v24, "sc":Ljavax/security/sasl/SaslClient;
    if-nez v24, :cond_a5

    .line 145
    :try_start_56
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_65

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: No SASL support"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    :cond_65
    monitor-exit v29

    const/4 v4, 0x0

    .line 258
    .end local v24    # "sc":Ljavax/security/sasl/SaslClient;
    :goto_67
    return v4

    .line 88
    .end local v9    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .end local v19    # "p0":Ljava/lang/String;
    .end local v22    # "r0":Ljava/lang/String;
    .end local v27    # "u0":Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p1, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v15, v15, 0x1

    goto :goto_21

    .line 138
    .end local v15    # "i":I
    .restart local v9    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v19    # "p0":Ljava/lang/String;
    .restart local v22    # "r0":Ljava/lang/String;
    .restart local v27    # "u0":Ljava/lang/String;
    :catch_83
    move-exception v25

    .line 139
    .local v25, "sex":Ljavax/security/sasl/SaslException;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_a2

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IMAP SASL DEBUG: Failed to create SASL client: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    :cond_a2
    monitor-exit v29

    const/4 v4, 0x0

    goto :goto_67

    .line 149
    .end local v25    # "sex":Ljavax/security/sasl/SaslException;
    .restart local v24    # "sc":Ljavax/security/sasl/SaslClient;
    :cond_a5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_c5

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IMAP SASL DEBUG: SASL client "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-interface/range {v24 .. v24}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_56 .. :try_end_c5} :catchall_22b

    .line 154
    :cond_c5
    :try_start_c5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTHENTICATE "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v24 .. v24}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    const/4 v6, 0x0

    .line 154
    invoke-virtual {v4, v5, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e0} :catch_139
    .catchall {:try_start_c5 .. :try_end_e0} :catchall_22b

    move-result-object v26

    .line 162
    :try_start_e1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getIMAPOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    .line 177
    .local v18, "os":Ljava/io/OutputStream;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v12, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x2

    new-array v10, v4, [B

    fill-array-data v10, :array_284

    .line 181
    .local v10, "CRLF":[B
    invoke-interface/range {v24 .. v24}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "XGWTRUSTEDAPP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 182
    .local v17, "isXGWTRUSTEDAPP":Z
    :goto_fe
    if-eqz v13, :cond_15a

    .line 233
    invoke-interface/range {v24 .. v24}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_255

    .line 234
    const-string v4, "javax.security.sasl.qop"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljavax/security/sasl/SaslClient;->getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 235
    .local v20, "qop":Ljava/lang/String;
    if-eqz v20, :cond_255

    const-string v4, "auth-int"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_126

    .line 236
    const-string v4, "auth-conf"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_255

    .line 238
    :cond_126
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_135

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: Mechanism requires integrity or confidentiality"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    :cond_135
    monitor-exit v29

    const/4 v4, 0x0

    goto/16 :goto_67

    .line 156
    .end local v10    # "CRLF":[B
    .end local v12    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "isXGWTRUSTEDAPP":Z
    .end local v18    # "os":Ljava/io/OutputStream;
    .end local v20    # "qop":Ljava/lang/String;
    :catch_139
    move-exception v14

    .line 157
    .local v14, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_156

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IMAP SASL DEBUG: AUTHENTICATE Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    :cond_156
    monitor-exit v29
    :try_end_157
    .catchall {:try_start_e1 .. :try_end_157} :catchall_22b

    const/4 v4, 0x0

    goto/16 :goto_67

    .line 184
    .end local v14    # "ex":Ljava/lang/Exception;
    .restart local v10    # "CRLF":[B
    .restart local v12    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "isXGWTRUSTEDAPP":Z
    .restart local v18    # "os":Ljava/io/OutputStream;
    :cond_15a
    :try_start_15a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v21

    .line 185
    invoke-virtual/range {v21 .. v21}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v4

    if-eqz v4, :cond_22e

    .line 186
    const/4 v11, 0x0

    check-cast v11, [B

    .line 187
    .local v11, "ba":[B
    invoke-interface/range {v24 .. v24}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v4

    if-nez v4, :cond_1ae

    .line 188
    invoke-virtual/range {v21 .. v21}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/mail/iap/ByteArray;->getNewBytes()[B

    move-result-object v11

    .line 189
    array-length v4, v11

    if-lez v4, :cond_180

    .line 190
    invoke-static {v11}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v11

    .line 191
    :cond_180
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_1a8

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IMAP SASL DEBUG: challenge: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    const/4 v6, 0x0

    array-length v7, v11

    invoke-static {v11, v6, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    :cond_1a8
    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v11

    .line 196
    :cond_1ae
    if-nez v11, :cond_1dd

    .line 197
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_1bf

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: no response"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    :cond_1bf
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 200
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 201
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_1ca} :catch_1cc
    .catchall {:try_start_15a .. :try_end_1ca} :catchall_22b

    goto/16 :goto_fe

    .line 223
    .end local v11    # "ba":[B
    :catch_1cc
    move-exception v16

    .line 224
    .local v16, "ioex":Ljava/lang/Exception;
    :try_start_1cd
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_1d6

    .line 225
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    :cond_1d6
    invoke-static/range {v16 .. v16}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_1d9
    .catchall {:try_start_1cd .. :try_end_1d9} :catchall_22b

    move-result-object v21

    .line 228
    const/4 v13, 0x1

    goto/16 :goto_fe

    .line 203
    .end local v16    # "ioex":Ljava/lang/Exception;
    .restart local v11    # "ba":[B
    :cond_1dd
    :try_start_1dd
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_205

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IMAP SASL DEBUG: response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    const/4 v6, 0x0

    array-length v7, v11

    invoke-static {v11, v6, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    :cond_205
    invoke-static {v11}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v11

    .line 207
    if-eqz v17, :cond_214

    .line 208
    const-string v4, "XGWTRUSTEDAPP "

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    :cond_214
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    invoke-virtual {v12, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 212
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 213
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 214
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_229} :catch_1cc
    .catchall {:try_start_1dd .. :try_end_229} :catchall_22b

    goto/16 :goto_fe

    .line 80
    .end local v9    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .end local v10    # "CRLF":[B
    .end local v11    # "ba":[B
    .end local v12    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "done":Z
    .end local v17    # "isXGWTRUSTEDAPP":Z
    .end local v18    # "os":Ljava/io/OutputStream;
    .end local v19    # "p0":Ljava/lang/String;
    .end local v21    # "r":Lcom/sun/mail/iap/Response;
    .end local v22    # "r0":Ljava/lang/String;
    .end local v24    # "sc":Ljavax/security/sasl/SaslClient;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "u0":Ljava/lang/String;
    .end local v28    # "v":Ljava/util/Vector;
    :catchall_22b
    move-exception v4

    :try_start_22c
    monitor-exit v29
    :try_end_22d
    .catchall {:try_start_22c .. :try_end_22d} :catchall_22b

    throw v4

    .line 216
    .restart local v9    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v10    # "CRLF":[B
    .restart local v12    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "done":Z
    .restart local v17    # "isXGWTRUSTEDAPP":Z
    .restart local v18    # "os":Ljava/io/OutputStream;
    .restart local v19    # "p0":Ljava/lang/String;
    .restart local v21    # "r":Lcom/sun/mail/iap/Response;
    .restart local v22    # "r0":Ljava/lang/String;
    .restart local v24    # "sc":Ljavax/security/sasl/SaslClient;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "u0":Ljava/lang/String;
    .restart local v28    # "v":Ljava/util/Vector;
    :cond_22e
    :try_start_22e
    invoke-virtual/range {v21 .. v21}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_243

    invoke-virtual/range {v21 .. v21}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_243

    .line 218
    const/4 v13, 0x1

    goto/16 :goto_fe

    .line 219
    :cond_243
    invoke-virtual/range {v21 .. v21}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v4

    if-eqz v4, :cond_24c

    .line 220
    const/4 v13, 0x1

    goto/16 :goto_fe

    .line 222
    :cond_24c
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_253} :catch_1cc
    .catchall {:try_start_22e .. :try_end_253} :catchall_22b

    goto/16 :goto_fe

    .line 251
    :cond_255
    :try_start_255
    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [Lcom/sun/mail/iap/Response;

    move-object/from16 v23, v0

    .line 252
    .local v23, "responses":[Lcom/sun/mail/iap/Response;
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 258
    monitor-exit v29
    :try_end_280
    .catchall {:try_start_255 .. :try_end_280} :catchall_22b

    const/4 v4, 0x1

    goto/16 :goto_67

    .line 178
    nop

    :array_284
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method
