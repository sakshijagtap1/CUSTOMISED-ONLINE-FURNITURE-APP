.class public abstract Ljavax/mail/Transport;
.super Ljavax/mail/Service;
.source "Transport.java"


# instance fields
.field private transportListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 4
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 78
    return-void
.end method

.method public static send(Ljavax/mail/Message;)V
    .registers 2
    .param p0, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 118
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    .line 119
    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 2
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 140
    invoke-static {p0, p1}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    .line 141
    return-void
.end method

.method private static send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 29
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 147
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_f

    .line 148
    :cond_7
    new-instance v3, Ljavax/mail/SendFailedException;

    const-string v4, "No recipient addresses"

    invoke-direct {v3, v4}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_f
    new-instance v18, Ljava/util/Hashtable;

    invoke-direct/range {v18 .. v18}, Ljava/util/Hashtable;-><init>()V

    .line 157
    .local v18, "protocols":Ljava/util/Hashtable;
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 158
    .local v12, "invalid":Ljava/util/Vector;
    new-instance v24, Ljava/util/Vector;

    invoke-direct/range {v24 .. v24}, Ljava/util/Vector;-><init>()V

    .line 159
    .local v24, "validSent":Ljava/util/Vector;
    new-instance v25, Ljava/util/Vector;

    invoke-direct/range {v25 .. v25}, Ljava/util/Vector;-><init>()V

    .line 161
    .local v25, "validUnsent":Ljava/util/Vector;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_24
    move-object/from16 v0, p1

    array-length v3, v0

    if-lt v11, v3, :cond_37

    .line 174
    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->size()I

    move-result v9

    .line 175
    .local v9, "dsize":I
    if-nez v9, :cond_77

    .line 176
    new-instance v3, Ljavax/mail/SendFailedException;

    const-string v4, "No recipient addresses"

    invoke-direct {v3, v4}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v9    # "dsize":I
    :cond_37
    aget-object v3, p1, v11

    invoke-virtual {v3}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 164
    aget-object v3, p1, v11

    invoke-virtual {v3}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Vector;

    .line 165
    .local v23, "v":Ljava/util/Vector;
    aget-object v3, p1, v11

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 161
    .end local v23    # "v":Ljava/util/Vector;
    :goto_5a
    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    .line 168
    :cond_5d
    new-instance v26, Ljava/util/Vector;

    invoke-direct/range {v26 .. v26}, Ljava/util/Vector;-><init>()V

    .line 169
    .local v26, "w":Ljava/util/Vector;
    aget-object v3, p1, v11

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 170
    aget-object v3, p1, v11

    invoke-virtual {v3}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 178
    .end local v26    # "w":Ljava/util/Vector;
    .restart local v9    # "dsize":I
    :cond_77
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    if-eqz v3, :cond_9f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    move-object/from16 v19, v0

    .line 185
    .local v19, "s":Ljavax/mail/Session;
    :goto_83
    const/4 v3, 0x1

    if-ne v9, v3, :cond_ae

    .line 186
    const/4 v3, 0x0

    aget-object v3, p1, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v22

    .line 188
    .local v22, "transport":Ljavax/mail/Transport;
    :try_start_8f
    invoke-virtual/range {v22 .. v22}, Ljavax/mail/Transport;->connect()V

    .line 189
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_a9

    .line 191
    invoke-virtual/range {v22 .. v22}, Ljavax/mail/Transport;->close()V

    .line 277
    .end local v22    # "transport":Ljavax/mail/Transport;
    :cond_9e
    return-void

    .line 179
    .end local v19    # "s":Ljavax/mail/Session;
    :cond_9f
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v19

    goto :goto_83

    .line 190
    .restart local v19    # "s":Ljavax/mail/Session;
    .restart local v22    # "transport":Ljavax/mail/Transport;
    :catchall_a9
    move-exception v3

    .line 191
    invoke-virtual/range {v22 .. v22}, Ljavax/mail/Transport;->close()V

    .line 192
    throw v3

    .line 200
    .end local v22    # "transport":Ljavax/mail/Transport;
    :cond_ae
    const/4 v5, 0x0

    .line 201
    .local v5, "chainedEx":Ljavax/mail/MessagingException;
    const/16 v20, 0x0

    .line 203
    .local v20, "sendFailed":Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v10

    .line 204
    .local v10, "e":Ljava/util/Enumeration;
    :cond_b5
    :goto_b5
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_10b

    .line 258
    if-nez v20, :cond_c9

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_c9

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_9e

    .line 259
    :cond_c9
    const/4 v6, 0x0

    check-cast v6, [Ljavax/mail/Address;

    .local v6, "a":[Ljavax/mail/Address;
    const/4 v7, 0x0

    check-cast v7, [Ljavax/mail/Address;

    .local v7, "b":[Ljavax/mail/Address;
    const/4 v8, 0x0

    check-cast v8, [Ljavax/mail/Address;

    .line 262
    .local v8, "c":[Ljavax/mail/Address;
    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_e3

    .line 263
    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v6, v3, [Ljavax/mail/Address;

    .line 264
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 266
    :cond_e3
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_f4

    .line 267
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v7, v3, [Ljavax/mail/Address;

    .line 268
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 270
    :cond_f4
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_103

    .line 271
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v8, v3, [Ljavax/mail/Address;

    .line 272
    invoke-virtual {v12, v8}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 274
    :cond_103
    new-instance v3, Ljavax/mail/SendFailedException;

    const-string v4, "Sending failed"

    invoke-direct/range {v3 .. v8}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v3

    .line 205
    .end local v6    # "a":[Ljavax/mail/Address;
    .end local v7    # "b":[Ljavax/mail/Address;
    .end local v8    # "c":[Ljavax/mail/Address;
    :cond_10b
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Vector;

    .line 206
    .restart local v23    # "v":Ljava/util/Vector;
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v0, v3, [Ljavax/mail/Address;

    move-object/from16 v17, v0

    .line 207
    .local v17, "protaddresses":[Ljavax/mail/Address;
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 210
    const/4 v3, 0x0

    aget-object v3, v17, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v22

    .restart local v22    # "transport":Ljavax/mail/Transport;
    if-nez v22, :cond_139

    .line 213
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_12c
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v13, v3, :cond_b5

    .line 214
    aget-object v3, v17, v13

    invoke-virtual {v12, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 213
    add-int/lit8 v13, v13, 0x1

    goto :goto_12c

    .line 218
    .end local v13    # "j":I
    :cond_139
    :try_start_139
    invoke-virtual/range {v22 .. v22}, Ljavax/mail/Transport;->connect()V

    .line 219
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_145
    .catch Ljavax/mail/SendFailedException; {:try_start_139 .. :try_end_145} :catch_14a
    .catch Ljavax/mail/MessagingException; {:try_start_139 .. :try_end_145} :catch_19b
    .catchall {:try_start_139 .. :try_end_145} :catchall_17a

    .line 253
    invoke-virtual/range {v22 .. v22}, Ljavax/mail/Transport;->close()V

    goto/16 :goto_b5

    .line 220
    :catch_14a
    move-exception v21

    .line 221
    .local v21, "sex":Ljavax/mail/SendFailedException;
    const/16 v20, 0x1

    .line 223
    if-nez v5, :cond_174

    .line 224
    move-object/from16 v5, v21

    .line 229
    :goto_151
    :try_start_151
    invoke-virtual/range {v21 .. v21}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v6

    .line 230
    .restart local v6    # "a":[Ljavax/mail/Address;
    if-eqz v6, :cond_15b

    .line 231
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_158
    array-length v3, v6

    if-lt v13, v3, :cond_17f

    .line 235
    .end local v13    # "j":I
    :cond_15b
    invoke-virtual/range {v21 .. v21}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_165

    .line 237
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_162
    array-length v3, v6

    if-lt v14, v3, :cond_187

    .line 241
    .end local v14    # "k":I
    :cond_165
    invoke-virtual/range {v21 .. v21}, Ljavax/mail/SendFailedException;->getValidUnsentAddresses()[Ljavax/mail/Address;

    move-result-object v8

    .line 242
    .restart local v8    # "c":[Ljavax/mail/Address;
    if-eqz v8, :cond_16f

    .line 243
    const/4 v15, 0x0

    .local v15, "l":I
    :goto_16c
    array-length v3, v8
    :try_end_16d
    .catchall {:try_start_151 .. :try_end_16d} :catchall_17a

    if-lt v15, v3, :cond_191

    .line 253
    .end local v15    # "l":I
    :cond_16f
    invoke-virtual/range {v22 .. v22}, Ljavax/mail/Transport;->close()V

    goto/16 :goto_b5

    .line 226
    .end local v6    # "a":[Ljavax/mail/Address;
    .end local v8    # "c":[Ljavax/mail/Address;
    :cond_174
    :try_start_174
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_179
    .catchall {:try_start_174 .. :try_end_179} :catchall_17a

    goto :goto_151

    .line 252
    .end local v21    # "sex":Ljavax/mail/SendFailedException;
    :catchall_17a
    move-exception v3

    .line 253
    invoke-virtual/range {v22 .. v22}, Ljavax/mail/Transport;->close()V

    .line 254
    throw v3

    .line 232
    .restart local v6    # "a":[Ljavax/mail/Address;
    .restart local v13    # "j":I
    .restart local v21    # "sex":Ljavax/mail/SendFailedException;
    :cond_17f
    :try_start_17f
    aget-object v3, v6, v13

    invoke-virtual {v12, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 231
    add-int/lit8 v13, v13, 0x1

    goto :goto_158

    .line 238
    .end local v13    # "j":I
    .restart local v14    # "k":I
    :cond_187
    aget-object v3, v6, v14

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v14, v14, 0x1

    goto :goto_162

    .line 244
    .end local v14    # "k":I
    .restart local v8    # "c":[Ljavax/mail/Address;
    .restart local v15    # "l":I
    :cond_191
    aget-object v3, v8, v15

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_198
    .catchall {:try_start_17f .. :try_end_198} :catchall_17a

    .line 243
    add-int/lit8 v15, v15, 0x1

    goto :goto_16c

    .line 245
    .end local v6    # "a":[Ljavax/mail/Address;
    .end local v8    # "c":[Ljavax/mail/Address;
    .end local v15    # "l":I
    .end local v21    # "sex":Ljavax/mail/SendFailedException;
    :catch_19b
    move-exception v16

    .line 246
    .local v16, "mex":Ljavax/mail/MessagingException;
    const/16 v20, 0x1

    .line 248
    if-nez v5, :cond_1a7

    .line 249
    move-object/from16 v5, v16

    .line 253
    :goto_1a2
    invoke-virtual/range {v22 .. v22}, Ljavax/mail/Transport;->close()V

    goto/16 :goto_b5

    .line 251
    :cond_1a7
    :try_start_1a7
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_1ac
    .catchall {:try_start_1a7 .. :try_end_1ac} :catchall_17a

    goto :goto_1a2
.end method


# virtual methods
.method public declared-synchronized addTransportListener(Ljavax/mail/event/TransportListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/TransportListener;

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 316
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 317
    :cond_c
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 318
    monitor-exit p0

    return-void

    .line 315
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "validSent"    # [Ljavax/mail/Address;
    .param p3, "validUnsent"    # [Ljavax/mail/Address;
    .param p4, "invalid"    # [Ljavax/mail/Address;
    .param p5, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 347
    iget-object v1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v1, :cond_5

    .line 353
    :goto_4
    return-void

    .line 350
    :cond_5
    new-instance v0, Ljavax/mail/event/TransportEvent;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/mail/event/TransportEvent;-><init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 352
    .local v0, "e":Ljavax/mail/event/TransportEvent;
    iget-object v1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Transport;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    goto :goto_4
.end method

.method public declared-synchronized removeTransportListener(Ljavax/mail/event/TransportListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/TransportListener;

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 331
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 332
    :cond_a
    monitor-exit p0

    return-void

    .line 330
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
