.class public Ljavax/activation/DataHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Lmyjava/awt/datatransfer/Transferable;


# static fields
.field private static final emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

.field private static factory:Ljavax/activation/DataContentHandlerFactory;


# instance fields
.field private currentCommandMap:Ljavax/activation/CommandMap;

.field private dataContentHandler:Ljavax/activation/DataContentHandler;

.field private dataSource:Ljavax/activation/DataSource;

.field private factoryDCH:Ljavax/activation/DataContentHandler;

.field private objDataSource:Ljavax/activation/DataSource;

.field private object:Ljava/lang/Object;

.field private objectMimeType:Ljava/lang/String;

.field private oldFactory:Ljavax/activation/DataContentHandlerFactory;

.field private shortType:Ljava/lang/String;

.field private transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    sput-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 115
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 95
    iput-object v1, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    .line 100
    iput-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 101
    iput-object v1, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    .line 108
    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 111
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 112
    iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 116
    iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 118
    iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 144
    iput-object p2, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    .line 145
    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 95
    iput-object v1, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    .line 100
    iput-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 101
    iput-object v1, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    .line 108
    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 111
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 112
    iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 116
    iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 118
    iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    .line 156
    new-instance v0, Ljavax/activation/URLDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 157
    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .registers 4
    .param p1, "ds"    # Ljavax/activation/DataSource;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 95
    iput-object v1, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    .line 100
    iput-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 101
    iput-object v1, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    .line 108
    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 111
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 112
    iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 116
    iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 118
    iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 130
    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 131
    return-void
.end method

.method static synthetic access$0(Ljavax/activation/DataHandler;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized getBaseType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 648
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 649
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1c

    move-result-object v0

    .line 651
    .local v0, "ct":Ljava/lang/String;
    :try_start_9
    new-instance v2, Ljavax/activation/MimeType;

    invoke-direct {v2, v0}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    .line 652
    .local v2, "mt":Ljavax/activation/MimeType;
    invoke-virtual {v2}, Ljavax/activation/MimeType;->getBaseType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
    :try_end_14
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_9 .. :try_end_14} :catch_18
    .catchall {:try_start_9 .. :try_end_14} :catchall_1c

    .line 657
    .end local v0    # "ct":Ljava/lang/String;
    .end local v2    # "mt":Ljavax/activation/MimeType;
    :cond_14
    :goto_14
    :try_start_14
    iget-object v3, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_1c

    monitor-exit p0

    return-object v3

    .line 653
    .restart local v0    # "ct":Ljava/lang/String;
    :catch_18
    move-exception v1

    .line 654
    .local v1, "e":Ljavax/activation/MimeTypeParseException;
    :try_start_19
    iput-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_14

    .line 648
    .end local v0    # "ct":Ljava/lang/String;
    .end local v1    # "e":Ljavax/activation/MimeTypeParseException;
    :catchall_1c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getCommandMap()Ljavax/activation/CommandMap;
    .registers 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    if-eqz v0, :cond_9

    .line 165
    iget-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    .line 167
    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    move-result-object v0

    goto :goto_7

    .line 164
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDataContentHandler()Ljavax/activation/DataContentHandler;
    .registers 6

    .prologue
    .line 602
    monitor-enter p0

    :try_start_1
    sget-object v1, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iget-object v2, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    if-eq v1, v2, :cond_15

    .line 603
    sget-object v1, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 604
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 605
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 606
    sget-object v1, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 609
    :cond_15
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    if-eqz v1, :cond_1d

    .line 610
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_6a

    .line 640
    :goto_1b
    monitor-exit p0

    return-object v1

    .line 612
    :cond_1d
    :try_start_1d
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "simpleMT":Ljava/lang/String;
    iget-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    if-nez v1, :cond_31

    sget-object v1, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    if-eqz v1, :cond_31

    .line 615
    sget-object v1, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    invoke-interface {v1, v0}, Ljavax/activation/DataContentHandlerFactory;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v1

    iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 617
    :cond_31
    iget-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    if-eqz v1, :cond_39

    .line 618
    iget-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 620
    :cond_39
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    if-nez v1, :cond_4d

    .line 621
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v1, :cond_5f

    .line 622
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v1

    .line 623
    iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-virtual {v1, v0, v2}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/DataContentHandler;

    move-result-object v1

    .line 622
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 631
    :cond_4d
    :goto_4d
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v1, :cond_6d

    .line 632
    new-instance v1, Ljavax/activation/DataSourceDataContentHandler;

    .line 633
    iget-object v2, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 634
    iget-object v3, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-direct {v1, v2, v3}, Ljavax/activation/DataSourceDataContentHandler;-><init>(Ljavax/activation/DataContentHandler;Ljavax/activation/DataSource;)V

    .line 632
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 640
    :goto_5c
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    goto :goto_1b

    .line 625
    :cond_5f
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v1

    .line 626
    invoke-virtual {v1, v0}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v1

    .line 625
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
    :try_end_69
    .catchall {:try_start_1d .. :try_end_69} :catchall_6a

    goto :goto_4d

    .line 602
    .end local v0    # "simpleMT":Ljava/lang/String;
    :catchall_6a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 636
    .restart local v0    # "simpleMT":Ljava/lang/String;
    :cond_6d
    :try_start_6d
    new-instance v1, Ljavax/activation/ObjectDataContentHandler;

    .line 637
    iget-object v2, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 638
    iget-object v3, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 639
    iget-object v4, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Ljavax/activation/ObjectDataContentHandler;-><init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_6a

    goto :goto_5c
.end method

.method public static declared-synchronized setDataContentHandlerFactory(Ljavax/activation/DataContentHandlerFactory;)V
    .registers 6
    .param p0, "newFactory"    # Ljavax/activation/DataContentHandlerFactory;

    .prologue
    .line 675
    const-class v3, Ljavax/activation/DataHandler;

    monitor-enter v3

    :try_start_3
    sget-object v2, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    if-eqz v2, :cond_12

    .line 676
    new-instance v2, Ljava/lang/Error;

    const-string v4, "DataContentHandlerFactory already defined"

    invoke-direct {v2, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 675
    :catchall_f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 678
    :cond_12
    :try_start_12
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    move-result-object v1

    .line 679
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1b

    .line 682
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1b} :catch_1f
    .catchall {:try_start_18 .. :try_end_1b} :catchall_f

    .line 692
    :cond_1b
    :try_start_1b
    sput-object p0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_f

    .line 693
    monitor-exit v3

    return-void

    .line 683
    :catch_1f
    move-exception v0

    .line 687
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_20
    const-class v2, Ljavax/activation/DataHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 688
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 687
    if-eq v2, v4, :cond_1b

    .line 689
    throw v0
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_f
.end method


# virtual methods
.method public getAllCommands()[Ljavax/activation/CommandInfo;
    .registers 4

    .prologue
    .line 503
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_13

    .line 504
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-virtual {v0, v1, v2}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    .line 506
    :goto_12
    return-object v0

    :cond_13
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    goto :goto_12
.end method

.method public getBean(Ljavax/activation/CommandInfo;)Ljava/lang/Object;
    .registers 5
    .param p1, "cmdinfo"    # Ljavax/activation/CommandInfo;

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 570
    .local v0, "bean":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 572
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_2
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 573
    if-nez v1, :cond_10

    .line 574
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 575
    :cond_10
    invoke-virtual {p1, p0, v1}, Ljavax/activation/CommandInfo;->getCommandObject(Ljavax/activation/DataHandler;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_13} :catch_15

    move-result-object v0

    .line 579
    .end local v0    # "bean":Ljava/lang/Object;
    :goto_14
    return-object v0

    .line 577
    .restart local v0    # "bean":Ljava/lang/Object;
    :catch_15
    move-exception v2

    goto :goto_14

    .line 576
    :catch_17
    move-exception v2

    goto :goto_14
.end method

.method public getCommand(Ljava/lang/String;)Ljavax/activation/CommandInfo;
    .registers 5
    .param p1, "cmdName"    # Ljava/lang/String;

    .prologue
    .line 522
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_13

    .line 523
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    .line 524
    iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 523
    invoke-virtual {v0, v1, p1, v2}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/CommandInfo;

    move-result-object v0

    .line 526
    :goto_12
    return-object v0

    :cond_13
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;

    move-result-object v0

    goto :goto_12
.end method

.method public getContent()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 548
    iget-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 550
    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/activation/DataContentHandler;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_b

    .line 218
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    goto :goto_a
.end method

.method public getDataSource()Ljavax/activation/DataSource;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-nez v0, :cond_12

    .line 187
    iget-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    if-nez v0, :cond_f

    .line 188
    new-instance v0, Ljavax/activation/DataHandlerDataSource;

    invoke-direct {v0, p0}, Ljavax/activation/DataHandlerDataSource;-><init>(Ljavax/activation/DataHandler;)V

    iput-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    .line 189
    :cond_f
    iget-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    .line 191
    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    goto :goto_11
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 250
    .local v2, "ins":Ljava/io/InputStream;
    iget-object v5, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v5, :cond_c

    .line 251
    iget-object v5, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-interface {v5}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 293
    :goto_b
    return-object v2

    .line 253
    :cond_c
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v0

    .line 255
    .local v0, "dch":Ljavax/activation/DataContentHandler;
    if-nez v0, :cond_2b

    .line 256
    new-instance v5, Ljavax/activation/UnsupportedDataTypeException;

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "no DCH for MIME type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 256
    invoke-direct {v5, v6}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    :cond_2b
    instance-of v5, v0, Ljavax/activation/ObjectDataContentHandler;

    if-eqz v5, :cond_51

    move-object v5, v0

    .line 260
    check-cast v5, Ljavax/activation/ObjectDataContentHandler;

    invoke-virtual {v5}, Ljavax/activation/ObjectDataContentHandler;->getDCH()Ljavax/activation/DataContentHandler;

    move-result-object v5

    if-nez v5, :cond_51

    .line 261
    new-instance v5, Ljavax/activation/UnsupportedDataTypeException;

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "no object DCH for MIME type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 261
    invoke-direct {v5, v6}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 265
    :cond_51
    move-object v1, v0

    .line 273
    .local v1, "fdch":Ljavax/activation/DataContentHandler;
    new-instance v4, Ljava/io/PipedOutputStream;

    invoke-direct {v4}, Ljava/io/PipedOutputStream;-><init>()V

    .line 274
    .local v4, "pos":Ljava/io/PipedOutputStream;
    new-instance v3, Ljava/io/PipedInputStream;

    invoke-direct {v3, v4}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 275
    .local v3, "pin":Ljava/io/PipedInputStream;
    new-instance v5, Ljava/lang/Thread;

    .line 276
    new-instance v6, Ljavax/activation/DataHandler$1;

    invoke-direct {v6, p0, v4, v1}, Ljavax/activation/DataHandler$1;-><init>(Ljavax/activation/DataHandler;Ljava/io/PipedOutputStream;Ljavax/activation/DataContentHandler;)V

    .line 289
    const-string v7, "DataHandler.getInputStream"

    .line 275
    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 290
    move-object v2, v3

    goto :goto_b
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_b

    .line 348
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 350
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPreferredCommands()[Ljavax/activation/CommandInfo;
    .registers 4

    .prologue
    .line 483
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_13

    .line 484
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    .line 485
    iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 484
    invoke-virtual {v0, v1, v2}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    .line 487
    :goto_12
    return-object v0

    :cond_13
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    goto :goto_12
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .registers 4
    .param p1, "flavor"    # Lmyjava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyjava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-interface {v0, p1, v1}, Ljavax/activation/DataContentHandler;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .registers 3

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iget-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    if-eq v0, v1, :cond_b

    .line 379
    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 382
    :cond_b
    iget-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    sget-object v1, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    if-ne v0, v1, :cond_1b

    .line 383
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v0

    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 384
    :cond_1b
    iget-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    .line 378
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDataFlavorSupported(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .registers 5
    .param p1, "flavor"    # Lmyjava/awt/datatransfer/DataFlavor;

    .prologue
    .line 400
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v1

    .line 402
    .local v1, "lFlavors":[Lmyjava/awt/datatransfer/DataFlavor;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, v1

    if-lt v0, v2, :cond_a

    .line 406
    const/4 v2, 0x0

    :goto_9
    return v2

    .line 403
    :cond_a
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 404
    const/4 v2, 0x1

    goto :goto_9

    .line 402
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public declared-synchronized setCommandMap(Ljavax/activation/CommandMap;)V
    .registers 3
    .param p1, "commandMap"    # Ljavax/activation/CommandMap;

    .prologue
    .line 460
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    if-ne p1, v0, :cond_7

    if-nez p1, :cond_10

    .line 462
    :cond_7
    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 465
    iput-object p1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 467
    :cond_10
    monitor-exit p0

    return-void

    .line 460
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v4, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v4, :cond_25

    .line 314
    const/4 v3, 0x0

    .line 315
    .local v3, "is":Ljava/io/InputStream;
    const/16 v4, 0x2000

    new-array v1, v4, [B

    .line 318
    .local v1, "data":[B
    iget-object v4, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-interface {v4}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 321
    :goto_f
    :try_start_f
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1f

    move-result v0

    .local v0, "bytes_read":I
    if-gtz v0, :cond_1a

    .line 325
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 326
    const/4 v3, 0x0

    .line 332
    .end local v0    # "bytes_read":I
    .end local v1    # "data":[B
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_19
    return-void

    .line 322
    .restart local v0    # "bytes_read":I
    .restart local v1    # "data":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_1a
    const/4 v4, 0x0

    :try_start_1b
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 324
    .end local v0    # "bytes_read":I
    :catchall_1f
    move-exception v4

    .line 325
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 326
    const/4 v3, 0x0

    .line 327
    throw v4

    .line 329
    .end local v1    # "data":[B
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_25
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v2

    .line 330
    .local v2, "dch":Ljavax/activation/DataContentHandler;
    iget-object v4, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    iget-object v5, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    invoke-interface {v2, v4, v5, p1}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_19
.end method
