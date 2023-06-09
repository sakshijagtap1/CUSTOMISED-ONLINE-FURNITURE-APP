.class public Ljavax/activation/MailcapCommandMap;
.super Ljavax/activation/CommandMap;
.source "MailcapCommandMap.java"


# static fields
.field private static final PROG:I

.field private static defDB:Lcom/sun/activation/registries/MailcapFile;


# instance fields
.field private DB:[Lcom/sun/activation/registries/MailcapFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    .line 148
    invoke-direct {p0}, Ljavax/activation/CommandMap;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v0, "dbv":Ljava/util/List;
    const/4 v1, 0x0

    .line 151
    .local v1, "mf":Lcom/sun/activation/registries/MailcapFile;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v5, "MailcapCommandMap: load HOME"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 155
    :try_start_13
    const-string v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "user_home":Ljava/lang/String;
    if-eqz v4, :cond_3d

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mailcap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_3d

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_3d} :catch_b6

    .line 165
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "user_home":Ljava/lang/String;
    :cond_3d
    :goto_3d
    const-string v5, "MailcapCommandMap: load SYS"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 168
    :try_start_42
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mailcap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "system_mailcap":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_76

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_76} :catch_b4

    .line 175
    .end local v3    # "system_mailcap":Ljava/lang/String;
    :cond_76
    :goto_76
    const-string v5, "MailcapCommandMap: load JAR"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 177
    const-string v5, "mailcap"

    invoke-direct {p0, v0, v5}, Ljavax/activation/MailcapCommandMap;->loadAllResources(Ljava/util/List;Ljava/lang/String;)V

    .line 179
    const-string v5, "MailcapCommandMap: load DEF"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 180
    const-class v6, Ljavax/activation/MailcapCommandMap;

    monitor-enter v6

    .line 182
    :try_start_88
    sget-object v5, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    if-nez v5, :cond_94

    .line 183
    const-string v5, "mailcap.default"

    invoke-direct {p0, v5}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v5

    sput-object v5, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    .line 180
    :cond_94
    monitor-exit v6
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_b1

    .line 186
    sget-object v5, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    if-eqz v5, :cond_9e

    .line 187
    sget-object v5, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_9e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    .line 190
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    .line 191
    return-void

    .line 180
    :catchall_b1
    move-exception v5

    :try_start_b2
    monitor-exit v6
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v5

    .line 173
    :catch_b4
    move-exception v5

    goto :goto_76

    .line 163
    :catch_b6
    move-exception v5

    goto :goto_3d
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 338
    const-string v0, "MailcapCommandMap: load PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v1

    if-nez v0, :cond_19

    .line 341
    :try_start_f
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_1a

    .line 346
    :cond_19
    :goto_19
    return-void

    .line 342
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 321
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailcapCommandMap: load PROG from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 323
    :cond_1c
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    if-nez v0, :cond_2b

    .line 324
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    new-instance v1, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v2

    .line 326
    :cond_2b
    return-void
.end method

.method private appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .registers 9
    .param p1, "typeHash"    # Ljava/util/Map;
    .param p2, "cmdList"    # Ljava/util/List;

    .prologue
    .line 459
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 461
    .local v4, "verb_enum":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    .line 472
    return-void

    .line 462
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 463
    .local v3, "verb":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 464
    .local v1, "cmdList2":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 466
    .local v2, "cmd_enum":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 467
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, "cmd":Ljava/lang/String;
    new-instance v5, Ljavax/activation/CommandInfo;

    invoke-direct {v5, v3, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method private appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .registers 8
    .param p1, "cmdHash"    # Ljava/util/Map;
    .param p2, "cmdList"    # Ljava/util/List;

    .prologue
    .line 393
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 395
    .local v3, "verb_enum":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_f

    .line 403
    return-void

    .line 396
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    .local v2, "verb":Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Ljavax/activation/MailcapCommandMap;->checkForVerb(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 398
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 399
    .local v1, "cmdList2":Ljava/util/List;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    .local v0, "className":Ljava/lang/String;
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, v2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private checkForVerb(Ljava/util/List;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cmdList"    # Ljava/util/List;
    .param p2, "verb"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 411
    .local v0, "ee":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 417
    const/4 v2, 0x0

    :goto_b
    return v2

    .line 413
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/activation/CommandInfo;

    invoke-virtual {v2}, Ljavax/activation/CommandInfo;->getCommandName()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "enum_verb":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 415
    const/4 v2, 0x1

    goto :goto_b
.end method

.method private getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 592
    const-string v4, "    got content-handler"

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 593
    :cond_b
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "      class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 596
    :cond_23
    const/4 v1, 0x0

    .line 598
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_24
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 599
    if-nez v1, :cond_32

    .line 600
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_31} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_31} :catch_61
    .catch Ljava/lang/InstantiationException; {:try_start_24 .. :try_end_31} :catch_7b

    move-result-object v1

    .line 601
    :cond_32
    const/4 v0, 0x0

    .line 603
    .local v0, "cl":Ljava/lang/Class;
    :try_start_33
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_36} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_36} :catch_61
    .catch Ljava/lang/InstantiationException; {:try_start_33 .. :try_end_36} :catch_7b

    move-result-object v0

    .line 608
    :goto_37
    if-eqz v0, :cond_5f

    .line 609
    :try_start_39
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/activation/DataContentHandler;

    .line 620
    .end local v0    # "cl":Ljava/lang/Class;
    :goto_3f
    return-object v4

    .line 604
    .restart local v0    # "cl":Ljava/lang/Class;
    :catch_40
    move-exception v3

    .line 606
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_44} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39 .. :try_end_44} :catch_61
    .catch Ljava/lang/InstantiationException; {:try_start_39 .. :try_end_44} :catch_7b

    move-result-object v0

    goto :goto_37

    .line 610
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_46
    move-exception v2

    .line 611
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load DCH "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_5f
    :goto_5f
    const/4 v4, 0x0

    goto :goto_3f

    .line 613
    :catch_61
    move-exception v2

    .line 614
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load DCH "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f

    .line 616
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_7b
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load DCH "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f
.end method

.method private loadAllResources(Ljava/util/List;Ljava/lang/String;)V
    .registers 15
    .param p1, "v"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 233
    .local v0, "anyLoaded":Z
    const/4 v1, 0x0

    .line 235
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_2
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 236
    if-nez v1, :cond_10

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 238
    :cond_10
    if-eqz v1, :cond_4d

    .line 239
    invoke-static {v1, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v9

    .line 242
    .local v9, "urls":[Ljava/net/URL;
    :goto_16
    if-eqz v9, :cond_27

    .line 243
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 244
    const-string v10, "MailcapCommandMap: getResources"

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 245
    :cond_23
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v10, v9
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_fe

    if-lt v4, v10, :cond_52

    .line 288
    .end local v4    # "i":I
    .end local v9    # "urls":[Ljava/net/URL;
    :cond_27
    :goto_27
    if-nez v0, :cond_4c

    .line 289
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_34

    .line 290
    const-string v10, "MailcapCommandMap: !anyLoaded"

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 291
    :cond_34
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v6

    .line 292
    .local v6, "mf":Lcom/sun/activation/registries/MailcapFile;
    if-eqz v6, :cond_4c

    .line 293
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v6    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :cond_4c
    return-void

    .line 241
    :cond_4d
    :try_start_4d
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v9

    .restart local v9    # "urls":[Ljava/net/URL;
    goto :goto_16

    .line 246
    .restart local v4    # "i":I
    :cond_52
    aget-object v8, v9, v4

    .line 247
    .local v8, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 248
    .local v2, "clis":Ljava/io/InputStream;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 249
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: URL "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6d} :catch_fe

    .line 251
    :cond_6d
    :try_start_6d
    invoke-static {v8}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_9c

    .line 253
    new-instance v10, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v10, v2}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const/4 v0, 0x1

    .line 255
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_94

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: successfully loaded mailcap file from URL: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 256
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_94} :catch_b5
    .catch Ljava/lang/SecurityException; {:try_start_6d .. :try_end_94} :catch_d6
    .catchall {:try_start_6d .. :try_end_94} :catchall_f7

    .line 276
    :cond_94
    :goto_94
    if-eqz v2, :cond_99

    .line 277
    :try_start_96
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_fe

    .line 245
    :cond_99
    :goto_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 261
    :cond_9c
    :try_start_9c
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_94

    .line 262
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: not loading mailcap file from URL: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 262
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_b4} :catch_b5
    .catch Ljava/lang/SecurityException; {:try_start_9c .. :try_end_b4} :catch_d6
    .catchall {:try_start_9c .. :try_end_b4} :catchall_f7

    goto :goto_94

    .line 266
    :catch_b5
    move-exception v5

    .line 267
    .local v5, "ioex":Ljava/io/IOException;
    :try_start_b6
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_ce

    .line 268
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 268
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_f7

    .line 276
    :cond_ce
    if-eqz v2, :cond_99

    .line 277
    :try_start_d0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_fe

    goto :goto_99

    .line 278
    :catch_d4
    move-exception v10

    goto :goto_99

    .line 270
    .end local v5    # "ioex":Ljava/io/IOException;
    :catch_d6
    move-exception v7

    .line 271
    .local v7, "sex":Ljava/lang/SecurityException;
    :try_start_d7
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_ef

    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 272
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ef
    .catchall {:try_start_d7 .. :try_end_ef} :catchall_f7

    .line 276
    :cond_ef
    if-eqz v2, :cond_99

    .line 277
    :try_start_f1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_fe

    goto :goto_99

    .line 278
    :catch_f5
    move-exception v10

    goto :goto_99

    .line 274
    .end local v7    # "sex":Ljava/lang/SecurityException;
    :catchall_f7
    move-exception v10

    .line 276
    if-eqz v2, :cond_fd

    .line 277
    :try_start_fa
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_119
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_fe

    .line 279
    :cond_fd
    :goto_fd
    :try_start_fd
    throw v10
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_fe} :catch_fe

    .line 282
    .end local v2    # "clis":Ljava/io/InputStream;
    .end local v4    # "i":I
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "urls":[Ljava/net/URL;
    :catch_fe
    move-exception v3

    .line 283
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 284
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 278
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "clis":Ljava/io/InputStream;
    .restart local v4    # "i":I
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v9    # "urls":[Ljava/net/URL;
    :catch_119
    move-exception v11

    goto :goto_fd

    :catch_11b
    move-exception v10

    goto/16 :goto_99
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 304
    .local v0, "mtf":Lcom/sun/activation/registries/MailcapFile;
    :try_start_1
    new-instance v1, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    .end local v0    # "mtf":Lcom/sun/activation/registries/MailcapFile;
    .local v1, "mtf":Lcom/sun/activation/registries/MailcapFile;
    move-object v0, v1

    .line 308
    .end local v1    # "mtf":Lcom/sun/activation/registries/MailcapFile;
    .restart local v0    # "mtf":Lcom/sun/activation/registries/MailcapFile;
    :goto_7
    return-object v0

    .line 305
    :catch_8
    move-exception v2

    goto :goto_7
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "clis":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_2e

    .line 201
    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, v0}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    .line 202
    .local v2, "mf":Lcom/sun/activation/registries/MailcapFile;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MailcapCommandMap: successfully loaded mailcap file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_28} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_28} :catch_6e
    .catchall {:try_start_1 .. :try_end_28} :catchall_8f

    .line 219
    :cond_28
    if-eqz v0, :cond_2d

    .line 220
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_96

    .line 223
    .end local v2    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :cond_2d
    :goto_2d
    return-object v2

    .line 207
    :cond_2e
    :try_start_2e
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MailcapCommandMap: not loading mailcap file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_46} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_46} :catch_6e
    .catchall {:try_start_2e .. :try_end_46} :catchall_8f

    .line 219
    :cond_46
    if-eqz v0, :cond_4b

    .line 220
    :try_start_48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_9a

    .line 223
    :cond_4b
    :goto_4b
    const/4 v2, 0x0

    goto :goto_2d

    .line 211
    :catch_4d
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    :try_start_4e
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MailcapCommandMap: can\'t load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_4e .. :try_end_66} :catchall_8f

    .line 219
    :cond_66
    if-eqz v0, :cond_4b

    .line 220
    :try_start_68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_4b

    .line 221
    :catch_6c
    move-exception v4

    goto :goto_4b

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6e
    move-exception v3

    .line 215
    .local v3, "sex":Ljava/lang/SecurityException;
    :try_start_6f
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MailcapCommandMap: can\'t load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_8f

    .line 219
    :cond_87
    if-eqz v0, :cond_4b

    .line 220
    :try_start_89
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_4b

    .line 221
    :catch_8d
    move-exception v4

    goto :goto_4b

    .line 217
    .end local v3    # "sex":Ljava/lang/SecurityException;
    :catchall_8f
    move-exception v4

    .line 219
    if-eqz v0, :cond_95

    .line 220
    :try_start_92
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_98

    .line 222
    :cond_95
    :goto_95
    throw v4

    .line 221
    .restart local v2    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :catch_96
    move-exception v4

    goto :goto_2d

    .end local v2    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :catch_98
    move-exception v5

    goto :goto_95

    :catch_9a
    move-exception v4

    goto :goto_4b
.end method


# virtual methods
.method public declared-synchronized addMailcap(Ljava/lang/String;)V
    .registers 5
    .param p1, "mail_cap"    # Ljava/lang/String;

    .prologue
    .line 532
    monitor-enter p0

    :try_start_1
    const-string v0, "MailcapCommandMap: add to PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_17

    .line 534
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2}, Lcom/sun/activation/registries/MailcapFile;-><init>()V

    aput-object v2, v0, v1

    .line 536
    :cond_17
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->appendToMailcap(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 537
    monitor-exit p0

    return-void

    .line 532
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .registers 9
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 547
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MailcapCommandMap: createDataContentHandler for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 548
    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 550
    :cond_19
    if-eqz p1, :cond_21

    .line 551
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 553
    :cond_21
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v5, v5

    if-lt v2, v5, :cond_30

    .line 571
    const/4 v2, 0x0

    :goto_28
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v5, v5
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_b7

    if-lt v2, v5, :cond_73

    .line 587
    const/4 v1, 0x0

    :goto_2e
    monitor-exit p0

    return-object v1

    .line 554
    :cond_30
    :try_start_30
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v2

    if-nez v5, :cond_39

    .line 553
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 556
    :cond_39
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  search DB #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 558
    :cond_51
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 559
    .local v0, "cmdMap":Ljava/util/Map;
    if-eqz v0, :cond_36

    .line 560
    const-string v5, "content-handler"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 561
    .local v4, "v":Ljava/util/List;
    if-eqz v4, :cond_36

    .line 562
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v1

    .line 564
    .local v1, "dch":Ljavax/activation/DataContentHandler;
    if-eqz v1, :cond_36

    goto :goto_2e

    .line 572
    .end local v0    # "cmdMap":Ljava/util/Map;
    .end local v1    # "dch":Ljavax/activation/DataContentHandler;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "v":Ljava/util/List;
    :cond_73
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v2

    if-nez v5, :cond_7c

    .line 571
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 574
    :cond_7c
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_94

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  search fallback DB #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 576
    :cond_94
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 577
    .restart local v0    # "cmdMap":Ljava/util/Map;
    if-eqz v0, :cond_79

    .line 578
    const-string v5, "content-handler"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 579
    .restart local v4    # "v":Ljava/util/List;
    if-eqz v4, :cond_79

    .line 580
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 581
    .restart local v3    # "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    :try_end_b2
    .catchall {:try_start_30 .. :try_end_b2} :catchall_b7

    move-result-object v1

    .line 582
    .restart local v1    # "dch":Ljavax/activation/DataContentHandler;
    if-eqz v1, :cond_79

    goto/16 :goto_2e

    .line 547
    .end local v0    # "cmdMap":Ljava/util/Map;
    .end local v1    # "dch":Ljavax/activation/DataContentHandler;
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "v":Ljava/util/List;
    :catchall_b7
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .registers 7
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 428
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_e

    .line 430
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 432
    :cond_e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v3, v4, :cond_28

    .line 441
    const/4 v3, 0x0

    :goto_15
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v3, v4, :cond_42

    .line 449
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljavax/activation/CommandInfo;

    .line 450
    .local v0, "cmdInfos":[Ljavax/activation/CommandInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    check-cast v0, [Ljavax/activation/CommandInfo;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3f

    .line 452
    .restart local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    monitor-exit p0

    return-object v0

    .line 433
    .end local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    :cond_28
    :try_start_28
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    if-nez v4, :cond_31

    .line 432
    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 435
    :cond_31
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 436
    .local v2, "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_2e

    .line 437
    invoke-direct {p0, v2, v1}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_3f

    goto :goto_2e

    .line 428
    .end local v1    # "cmdList":Ljava/util/List;
    .end local v2    # "cmdMap":Ljava/util/Map;
    .end local v3    # "i":I
    :catchall_3f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 442
    .restart local v1    # "cmdList":Ljava/util/List;
    .restart local v3    # "i":I
    :cond_42
    :try_start_42
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    if-nez v4, :cond_4b

    .line 441
    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 444
    :cond_4b
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 445
    .restart local v2    # "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_48

    .line 446
    invoke-direct {p0, v2, v1}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3f

    goto :goto_48
.end method

.method public declared-synchronized getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;
    .registers 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "cmdName"    # Ljava/lang/String;

    .prologue
    .line 483
    monitor-enter p0

    if-eqz p1, :cond_9

    .line 484
    :try_start_3
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 486
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v2, v4, :cond_18

    .line 503
    const/4 v2, 0x0

    :goto_10
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_42

    if-lt v2, v4, :cond_45

    .line 518
    const/4 v4, 0x0

    :goto_16
    monitor-exit p0

    return-object v4

    .line 487
    :cond_18
    :try_start_18
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    if-nez v4, :cond_21

    .line 486
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 489
    :cond_21
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 490
    .local v1, "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_1e

    .line 492
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 493
    .local v3, "v":Ljava/util/List;
    if-eqz v3, :cond_1e

    .line 494
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 496
    .local v0, "cmdClassName":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 497
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, p2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_42

    goto :goto_16

    .line 483
    .end local v0    # "cmdClassName":Ljava/lang/String;
    .end local v1    # "cmdMap":Ljava/util/Map;
    .end local v2    # "i":I
    .end local v3    # "v":Ljava/util/List;
    :catchall_42
    move-exception v4

    monitor-exit p0

    throw v4

    .line 504
    .restart local v2    # "i":I
    :cond_45
    :try_start_45
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    if-nez v4, :cond_4e

    .line 503
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 506
    :cond_4e
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 507
    .restart local v1    # "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_4b

    .line 509
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 510
    .restart local v3    # "v":Ljava/util/List;
    if-eqz v3, :cond_4b

    .line 511
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    .restart local v0    # "cmdClassName":Ljava/lang/String;
    if-eqz v0, :cond_4b

    .line 514
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, p2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_45 .. :try_end_6e} :catchall_42

    goto :goto_16
.end method

.method public declared-synchronized getMimeTypes()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 630
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v2, "mtList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v5, v5

    if-lt v0, v5, :cond_1a

    .line 645
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 646
    .local v3, "mts":[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mts":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_41

    .line 648
    .restart local v3    # "mts":[Ljava/lang/String;
    monitor-exit p0

    return-object v3

    .line 633
    .end local v3    # "mts":[Ljava/lang/String;
    :cond_1a
    :try_start_1a
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v0

    if-nez v5, :cond_23

    .line 632
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 635
    :cond_23
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/sun/activation/registries/MailcapFile;->getMimeTypes()[Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "ts":[Ljava/lang/String;
    if-eqz v4, :cond_20

    .line 637
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2e
    array-length v5, v4

    if-ge v1, v5, :cond_20

    .line 639
    aget-object v5, v4, v1

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 640
    aget-object v5, v4, v1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_1a .. :try_end_3e} :catchall_41

    .line 637
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 630
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "mtList":Ljava/util/List;
    .end local v4    # "ts":[Ljava/lang/String;
    :catchall_41
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 666
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v0, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_e

    .line 668
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 670
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v2, v4, :cond_22

    .line 683
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 684
    .local v1, "cmds":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cmds":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_49

    .line 686
    .restart local v1    # "cmds":[Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 671
    .end local v1    # "cmds":[Ljava/lang/String;
    :cond_22
    :try_start_22
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    if-nez v4, :cond_2b

    .line 670
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 673
    :cond_2b
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 674
    .restart local v1    # "cmds":[Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 675
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_36
    array-length v4, v1

    if-ge v3, v4, :cond_28

    .line 677
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 678
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_49

    .line 675
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 666
    .end local v0    # "cmdList":Ljava/util/List;
    .end local v1    # "cmds":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catchall_49
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .registers 7
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 362
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v1, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_e

    .line 364
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 366
    :cond_e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v3, v4, :cond_28

    .line 375
    const/4 v3, 0x0

    :goto_15
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v3, v4, :cond_42

    .line 383
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljavax/activation/CommandInfo;

    .line 384
    .local v0, "cmdInfos":[Ljavax/activation/CommandInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    check-cast v0, [Ljavax/activation/CommandInfo;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3f

    .line 386
    .restart local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    monitor-exit p0

    return-object v0

    .line 367
    .end local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    :cond_28
    :try_start_28
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    if-nez v4, :cond_31

    .line 366
    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 369
    :cond_31
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 370
    .local v2, "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_2e

    .line 371
    invoke-direct {p0, v2, v1}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_3f

    goto :goto_2e

    .line 362
    .end local v1    # "cmdList":Ljava/util/List;
    .end local v2    # "cmdMap":Ljava/util/Map;
    .end local v3    # "i":I
    :catchall_3f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 376
    .restart local v1    # "cmdList":Ljava/util/List;
    .restart local v3    # "i":I
    :cond_42
    :try_start_42
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    if-nez v4, :cond_4b

    .line 375
    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 378
    :cond_4b
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 379
    .restart local v2    # "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_48

    .line 380
    invoke-direct {p0, v2, v1}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3f

    goto :goto_48
.end method
