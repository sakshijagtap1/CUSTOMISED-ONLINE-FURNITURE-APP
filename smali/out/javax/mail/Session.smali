.class public final Ljavax/mail/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static defaultSession:Ljavax/mail/Session;


# instance fields
.field private final addressMap:Ljava/util/Properties;

.field private final authTable:Ljava/util/Hashtable;

.field private final authenticator:Ljavax/mail/Authenticator;

.field private debug:Z

.field private out:Ljava/io/PrintStream;

.field private final props:Ljava/util/Properties;

.field private final providers:Ljava/util/Vector;

.field private final providersByClassName:Ljava/util/Hashtable;

.field private final providersByProtocol:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    .line 187
    return-void
.end method

.method private constructor <init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V
    .registers 5
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "authenticator"    # Ljavax/mail/Authenticator;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    .line 194
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    .line 195
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    .line 196
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    .line 197
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    .line 204
    iput-object p1, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    .line 205
    iput-object p2, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    .line 207
    const-string v1, "mail.debug"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 208
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    .line 210
    :cond_40
    iget-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v1, :cond_49

    .line 211
    const-string v1, "DEBUG: JavaMail version 1.4.1"

    invoke-direct {p0, v1}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 215
    :cond_49
    if-eqz p2, :cond_56

    .line 216
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 220
    .local v0, "cl":Ljava/lang/Class;
    :goto_4f
    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadProviders(Ljava/lang/Class;)V

    .line 221
    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadAddressMap(Ljava/lang/Class;)V

    .line 222
    return-void

    .line 218
    .end local v0    # "cl":Ljava/lang/Class;
    :cond_56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "cl":Ljava/lang/Class;
    goto :goto_4f
.end method

.method static synthetic access$0(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-direct {p0, p1}, Ljavax/mail/Session;->loadProvidersFromStream(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$1(Ljavax/mail/Session;)Ljava/util/Properties;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    return-object v0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 1187
    new-instance v0, Ljavax/mail/Session$3;

    invoke-direct {v0}, Ljavax/mail/Session$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 1186
    return-object v0
.end method

.method public static getDefaultInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .registers 2
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .registers 5
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "authenticator"    # Ljavax/mail/Authenticator;

    .prologue
    .line 308
    const-class v1, Ljavax/mail/Session;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    if-nez v0, :cond_12

    .line 309
    new-instance v0, Ljavax/mail/Session;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    sput-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    .line 324
    :cond_e
    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3e

    monitor-exit v1

    return-object v0

    .line 312
    :cond_12
    :try_start_12
    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    iget-object v0, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eq v0, p1, :cond_e

    .line 314
    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    iget-object v0, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v0, :cond_36

    .line 315
    if-eqz p1, :cond_36

    .line 316
    sget-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    iget-object v0, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 316
    if-eq v0, v2, :cond_e

    .line 321
    :cond_36
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Access to default session denied"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_3e

    .line 308
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .registers 3
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    .line 259
    new-instance v0, Ljavax/mail/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .registers 3
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "authenticator"    # Ljavax/mail/Authenticator;

    .prologue
    .line 242
    new-instance v0, Ljavax/mail/Session;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method private static getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1202
    :try_start_0
    new-instance v1, Ljavax/mail/Session$4;

    invoke-direct {v1, p0, p1}, Ljavax/mail/Session$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1201
    return-object v1

    .line 1207
    :catch_c
    move-exception v0

    .line 1208
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
    .registers 3
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1214
    new-instance v0, Ljavax/mail/Session$5;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session$5;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    .line 1213
    return-object v0
.end method

.method private getService(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljava/lang/Object;
    .registers 20
    .param p1, "provider"    # Ljavax/mail/Provider;
    .param p2, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 739
    if-nez p1, :cond_a

    .line 740
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    const-string v2, "null"

    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_a
    if-nez p2, :cond_1c

    .line 745
    new-instance p2, Ljavax/mail/URLName;

    .end local p2    # "url":Ljavax/mail/URLName;
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 746
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p2

    .line 745
    invoke-direct/range {v1 .. v7}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .restart local p2    # "url":Ljavax/mail/URLName;
    :cond_1c
    const/4 v15, 0x0

    .line 753
    .local v15, "service":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v1, :cond_6a

    .line 754
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 759
    .local v10, "cl":Ljava/lang/ClassLoader;
    :goto_2f
    const/16 v16, 0x0

    .line 762
    .local v16, "serviceClass":Ljava/lang/Class;
    :try_start_31
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_73

    move-result-object v9

    .line 763
    .local v9, "ccl":Ljava/lang/ClassLoader;
    if-eqz v9, :cond_3f

    .line 765
    :try_start_37
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_3e} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3e} :catch_73

    move-result-object v16

    .line 769
    :cond_3f
    :goto_3f
    if-nez v16, :cond_49

    .line 770
    :try_start_41
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_73

    move-result-object v16

    .line 786
    .end local v9    # "ccl":Ljava/lang/ClassLoader;
    :cond_49
    :goto_49
    const/4 v1, 0x2

    :try_start_4a
    new-array v8, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/mail/Session;

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-class v2, Ljavax/mail/URLName;

    aput-object v2, v8, v1

    .line 787
    .local v8, "c":[Ljava/lang/Class;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 789
    .local v11, "cons":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x2

    new-array v14, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v14, v1

    const/4 v1, 0x1

    aput-object p2, v14, v1

    .line 790
    .local v14, "o":[Ljava/lang/Object;
    invoke-virtual {v11, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_68} :catch_95

    move-result-object v15

    .line 797
    return-object v15

    .line 756
    .end local v8    # "c":[Ljava/lang/Class;
    .end local v10    # "cl":Ljava/lang/ClassLoader;
    .end local v11    # "cons":Ljava/lang/reflect/Constructor;
    .end local v14    # "o":[Ljava/lang/Object;
    .end local v16    # "serviceClass":Ljava/lang/Class;
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .restart local v10    # "cl":Ljava/lang/ClassLoader;
    goto :goto_2f

    .line 771
    .restart local v16    # "serviceClass":Ljava/lang/Class;
    :catch_73
    move-exception v13

    .line 776
    .local v13, "ex1":Ljava/lang/Exception;
    :try_start_74
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_7d

    move-result-object v16

    goto :goto_49

    .line 777
    :catch_7d
    move-exception v12

    .line 779
    .local v12, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljavax/mail/Session;->debug:Z

    if-eqz v1, :cond_8b

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 780
    :cond_8b
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    .end local v12    # "ex":Ljava/lang/Exception;
    .end local v13    # "ex1":Ljava/lang/Exception;
    :catch_95
    move-exception v12

    .line 793
    .restart local v12    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljavax/mail/Session;->debug:Z

    if-eqz v1, :cond_a3

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 794
    :cond_a3
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    .end local v12    # "ex":Ljava/lang/Exception;
    .restart local v9    # "ccl":Ljava/lang/ClassLoader;
    :catch_ad
    move-exception v1

    goto :goto_3f
.end method

.method private getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;
    .registers 6
    .param p1, "provider"    # Ljavax/mail/Provider;
    .param p2, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 574
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v1

    sget-object v2, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    if-eq v1, v2, :cond_12

    .line 575
    :cond_a
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    const-string v2, "invalid provider"

    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Store;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_18} :catch_19

    return-object v1

    .line 580
    :catch_19
    move-exception v0

    .line 581
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    const-string v2, "incorrect class"

    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1238
    new-instance v0, Ljavax/mail/Session$6;

    invoke-direct {v0, p0}, Ljavax/mail/Session$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    .line 1237
    return-object v0
.end method

.method private getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .registers 6
    .param p1, "provider"    # Ljavax/mail/Provider;
    .param p2, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 713
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v1

    sget-object v2, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    if-eq v1, v2, :cond_12

    .line 714
    :cond_a
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    const-string v2, "invalid provider"

    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 718
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Transport;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_18} :catch_19

    return-object v1

    .line 719
    :catch_19
    move-exception v0

    .line 720
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    const-string v2, "incorrect class"

    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadAddressMap(Ljava/lang/Class;)V
    .registers 8
    .param p1, "cl"    # Ljava/lang/Class;

    .prologue
    .line 1010
    new-instance v0, Ljavax/mail/Session$2;

    invoke-direct {v0, p0}, Ljavax/mail/Session$2;-><init>(Ljavax/mail/Session;)V

    .line 1017
    .local v0, "loader":Ljavax/mail/StreamLoader;
    const-string v3, "/META-INF/javamail.default.address.map"

    invoke-direct {p0, v3, p1, v0}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 1020
    const-string v3, "META-INF/javamail.address.map"

    invoke-direct {p0, v3, p1, v0}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 1024
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "java.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1026
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "javamail.address.map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1024
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "res":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_3d} :catch_58

    .line 1033
    .end local v1    # "res":Ljava/lang/String;
    :cond_3d
    :goto_3d
    iget-object v3, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1034
    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v3, :cond_4e

    .line 1035
    const-string v3, "DEBUG: failed to load address map, using defaults"

    invoke-direct {p0, v3}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 1036
    :cond_4e
    iget-object v3, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    const-string v4, "rfc822"

    const-string v5, "smtp"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    :cond_57
    return-void

    .line 1028
    :catch_58
    move-exception v2

    .line 1029
    .local v2, "sex":Ljava/lang/SecurityException;
    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v3, :cond_3d

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: can\'t get java.home: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/Class;
    .param p3, "loader"    # Ljavax/mail/StreamLoader;

    .prologue
    .line 1120
    const/4 v0, 0x0

    .line 1123
    .local v0, "anyLoaded":Z
    const/4 v1, 0x0

    .line 1125
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_2
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1126
    if-nez v1, :cond_c

    .line 1127
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1128
    :cond_c
    if-eqz v1, :cond_36

    .line 1129
    invoke-static {v1, p1}, Ljavax/mail/Session;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v8

    .line 1132
    .local v8, "urls":[Ljava/net/URL;
    :goto_12
    if-eqz v8, :cond_18

    .line 1133
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    array-length v9, v8
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_d8

    if-lt v4, v9, :cond_3b

    .line 1170
    .end local v4    # "i":I
    .end local v8    # "urls":[Ljava/net/URL;
    :cond_18
    :goto_18
    if-nez v0, :cond_35

    .line 1171
    iget-boolean v9, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v9, :cond_23

    .line 1172
    const-string v9, "DEBUG: !anyLoaded"

    invoke-direct {p0, v9}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 1173
    :cond_23
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p2, p3}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 1175
    :cond_35
    return-void

    .line 1131
    :cond_36
    :try_start_36
    invoke-static {p1}, Ljavax/mail/Session;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v8

    .restart local v8    # "urls":[Ljava/net/URL;
    goto :goto_12

    .line 1134
    .restart local v4    # "i":I
    :cond_3b
    aget-object v7, v8, v4

    .line 1135
    .local v7, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 1136
    .local v2, "clis":Ljava/io/InputStream;
    iget-boolean v9, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v9, :cond_54

    .line 1137
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG: URL "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_54} :catch_d8

    .line 1139
    :cond_54
    :try_start_54
    invoke-static {v7}, Ljavax/mail/Session;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    .line 1140
    if-eqz v2, :cond_7c

    .line 1141
    invoke-interface {p3, v2}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1142
    const/4 v0, 0x1

    .line 1143
    iget-boolean v9, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v9, :cond_74

    .line 1144
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG: successfully loaded resource: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1144
    invoke-direct {p0, v9}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_74} :catch_93
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_74} :catch_b2
    .catchall {:try_start_54 .. :try_end_74} :catchall_d1

    .line 1158
    :cond_74
    :goto_74
    if-eqz v2, :cond_79

    .line 1159
    :try_start_76
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_f3
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_d8

    .line 1133
    :cond_79
    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1147
    :cond_7c
    :try_start_7c
    iget-boolean v9, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v9, :cond_74

    .line 1148
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG: not loading resource: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_92} :catch_93
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_92} :catch_b2
    .catchall {:try_start_7c .. :try_end_92} :catchall_d1

    goto :goto_74

    .line 1150
    :catch_93
    move-exception v5

    .line 1151
    .local v5, "ioex":Ljava/io/IOException;
    :try_start_94
    iget-boolean v9, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v9, :cond_aa

    .line 1152
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_94 .. :try_end_aa} :catchall_d1

    .line 1158
    :cond_aa
    if-eqz v2, :cond_79

    .line 1159
    :try_start_ac
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_d8

    goto :goto_79

    .line 1160
    :catch_b0
    move-exception v9

    goto :goto_79

    .line 1153
    .end local v5    # "ioex":Ljava/io/IOException;
    :catch_b2
    move-exception v6

    .line 1154
    .local v6, "sex":Ljava/lang/SecurityException;
    :try_start_b3
    iget-boolean v9, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v9, :cond_c9

    .line 1155
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_b3 .. :try_end_c9} :catchall_d1

    .line 1158
    :cond_c9
    if-eqz v2, :cond_79

    .line 1159
    :try_start_cb
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_d8

    goto :goto_79

    .line 1160
    :catch_cf
    move-exception v9

    goto :goto_79

    .line 1156
    .end local v6    # "sex":Ljava/lang/SecurityException;
    :catchall_d1
    move-exception v9

    .line 1158
    if-eqz v2, :cond_d7

    .line 1159
    :try_start_d4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_d8

    .line 1161
    :cond_d7
    :goto_d7
    :try_start_d7
    throw v9
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_d8} :catch_d8

    .line 1164
    .end local v2    # "clis":Ljava/io/InputStream;
    .end local v4    # "i":I
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urls":[Ljava/net/URL;
    :catch_d8
    move-exception v3

    .line 1165
    .local v3, "ex":Ljava/lang/Exception;
    iget-boolean v9, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v9, :cond_18

    .line 1166
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1160
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "clis":Ljava/io/InputStream;
    .restart local v4    # "i":I
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urls":[Ljava/net/URL;
    :catch_f1
    move-exception v10

    goto :goto_d7

    :catch_f3
    move-exception v9

    goto :goto_79
.end method

.method private loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljavax/mail/StreamLoader;

    .prologue
    .line 1063
    const/4 v0, 0x0

    .line 1065
    .local v0, "clis":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_5c
    .catchall {:try_start_1 .. :try_end_b} :catchall_8d

    .line 1066
    .end local v0    # "clis":Ljava/io/InputStream;
    .local v1, "clis":Ljava/io/InputStream;
    :try_start_b
    invoke-interface {p2, v1}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1067
    iget-boolean v4, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v4, :cond_24

    .line 1068
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: successfully loaded file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_24} :catch_9f
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_24} :catch_9c
    .catchall {:try_start_b .. :try_end_24} :catchall_99

    .line 1081
    :cond_24
    if-eqz v1, :cond_a2

    .line 1082
    :try_start_26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_94

    move-object v0, v1

    .line 1085
    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    :cond_2a
    :goto_2a
    return-void

    .line 1069
    :catch_2b
    move-exception v2

    .line 1070
    .local v2, "e":Ljava/io/IOException;
    :goto_2c
    :try_start_2c
    iget-boolean v4, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v4, :cond_54

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: not loading file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 1072
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_8d

    .line 1081
    :cond_54
    if-eqz v0, :cond_2a

    .line 1082
    :try_start_56
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_2a

    .line 1083
    :catch_5a
    move-exception v4

    goto :goto_2a

    .line 1074
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5c
    move-exception v3

    .line 1075
    .local v3, "sex":Ljava/lang/SecurityException;
    :goto_5d
    :try_start_5d
    iget-boolean v4, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v4, :cond_85

    .line 1076
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: not loading file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 1077
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_5d .. :try_end_85} :catchall_8d

    .line 1081
    :cond_85
    if-eqz v0, :cond_2a

    .line 1082
    :try_start_87
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_2a

    .line 1083
    :catch_8b
    move-exception v4

    goto :goto_2a

    .line 1079
    .end local v3    # "sex":Ljava/lang/SecurityException;
    :catchall_8d
    move-exception v4

    .line 1081
    :goto_8e
    if-eqz v0, :cond_93

    .line 1082
    :try_start_90
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_97

    .line 1084
    :cond_93
    :goto_93
    throw v4

    .line 1083
    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :catch_94
    move-exception v4

    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_2a

    :catch_97
    move-exception v5

    goto :goto_93

    .line 1079
    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :catchall_99
    move-exception v4

    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_8e

    .line 1074
    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :catch_9c
    move-exception v3

    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_5d

    .line 1069
    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :catch_9f
    move-exception v2

    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_2c

    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :cond_a2
    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_2a
.end method

.method private loadProviders(Ljava/lang/Class;)V
    .registers 11
    .param p1, "cl"    # Ljava/lang/Class;

    .prologue
    .line 880
    new-instance v6, Ljavax/mail/Session$1;

    invoke-direct {v6, p0}, Ljavax/mail/Session$1;-><init>(Ljavax/mail/Session;)V

    .line 888
    .local v6, "loader":Ljavax/mail/StreamLoader;
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 889
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 890
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "javamail.providers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 891
    .local v7, "res":Ljava/lang/String;
    invoke-direct {p0, v7, v6}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_33} :catch_f4

    .line 898
    .end local v7    # "res":Ljava/lang/String;
    :cond_33
    :goto_33
    const-string v0, "META-INF/javamail.providers"

    invoke-direct {p0, v0, p1, v6}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 901
    const-string v0, "/META-INF/javamail.default.providers"

    invoke-direct {p0, v0, p1, v6}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 903
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_ba

    .line 904
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_4e

    .line 905
    const-string v0, "DEBUG: failed to load any providers, using defaults"

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 907
    :cond_4e
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 908
    const-string v2, "imap"

    const-string v3, "com.sun.mail.imap.IMAPStore"

    .line 909
    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 910
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 911
    const-string v2, "imaps"

    const-string v3, "com.sun.mail.imap.IMAPSSLStore"

    .line 912
    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 913
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 914
    const-string v2, "pop3"

    const-string v3, "com.sun.mail.pop3.POP3Store"

    .line 915
    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 916
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 917
    const-string v2, "pop3s"

    const-string v3, "com.sun.mail.pop3.POP3SSLStore"

    .line 918
    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 919
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    .line 920
    const-string v2, "smtp"

    const-string v3, "com.sun.mail.smtp.SMTPTransport"

    .line 921
    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 922
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    .line 923
    const-string v2, "smtps"

    const-string v3, "com.sun.mail.smtp.SMTPSSLTransport"

    .line 924
    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 927
    :cond_ba
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_f3

    .line 929
    const-string v0, "DEBUG: Tables of loaded providers"

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: Providers Listed By Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 931
    iget-object v1, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: Providers Listed By Protocol: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    iget-object v1, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 935
    :cond_f3
    return-void

    .line 892
    :catch_f4
    move-exception v8

    .line 893
    .local v8, "sex":Ljava/lang/SecurityException;
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v0, :cond_33

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: can\'t get java.home: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method private loadProvidersFromStream(Ljava/io/InputStream;)V
    .registers 16
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    if-eqz p1, :cond_d

    .line 940
    new-instance v8, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v8, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 944
    .local v8, "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_7
    :goto_7
    invoke-virtual {v8}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "currLine":Ljava/lang/String;
    if-nez v6, :cond_e

    .line 992
    .end local v6    # "currLine":Ljava/lang/String;
    .end local v8    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_d
    return-void

    .line 946
    .restart local v6    # "currLine":Ljava/lang/String;
    .restart local v8    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_e
    const-string v12, "#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 948
    const/4 v1, 0x0

    .line 949
    .local v1, "type":Ljavax/mail/Provider$Type;
    const/4 v2, 0x0

    .local v2, "protocol":Ljava/lang/String;
    const/4 v3, 0x0

    .line 950
    .local v3, "className":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "vendor":Ljava/lang/String;
    const/4 v5, 0x0

    .line 953
    .local v5, "version":Ljava/lang/String;
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, ";"

    invoke-direct {v11, v6, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    .local v11, "tuples":Ljava/util/StringTokenizer;
    :cond_22
    :goto_22
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-nez v12, :cond_51

    .line 978
    if-eqz v1, :cond_3a

    if-eqz v2, :cond_3a

    if-eqz v3, :cond_3a

    .line 979
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_c1

    .line 981
    :cond_3a
    iget-boolean v12, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v12, :cond_7

    .line 982
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG: Bad provider entry: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    goto :goto_7

    .line 955
    :cond_51
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 958
    .local v7, "currTuple":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 959
    .local v9, "sep":I
    const-string v12, "protocol="

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 960
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    .line 961
    :cond_6e
    const-string v12, "type="

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_92

    .line 962
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 963
    .local v10, "strType":Ljava/lang/String;
    const-string v12, "store"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_87

    .line 964
    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    goto :goto_22

    .line 965
    :cond_87
    const-string v12, "transport"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 966
    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    goto :goto_22

    .line 968
    .end local v10    # "strType":Ljava/lang/String;
    :cond_92
    const-string v12, "class="

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a1

    .line 969
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 970
    :cond_a1
    const-string v12, "vendor="

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b1

    .line 971
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_22

    .line 972
    :cond_b1
    const-string v12, "version="

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 973
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_22

    .line 985
    .end local v7    # "currTuple":Ljava/lang/String;
    .end local v9    # "sep":I
    :cond_c1
    new-instance v0, Ljavax/mail/Provider;

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    .local v0, "provider":Ljavax/mail/Provider;
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    goto/16 :goto_7
.end method

.method private loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/Class;
    .param p3, "loader"    # Ljavax/mail/StreamLoader;

    .prologue
    .line 1091
    const/4 v0, 0x0

    .line 1093
    .local v0, "clis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {p2, p1}, Ljavax/mail/Session;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1094
    if-eqz v0, :cond_26

    .line 1095
    invoke-interface {p3, v0}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1096
    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v3, :cond_20

    .line 1097
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: successfully loaded resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_20} :catch_5c
    .catchall {:try_start_1 .. :try_end_20} :catchall_7b

    .line 1110
    :cond_20
    :goto_20
    if-eqz v0, :cond_25

    .line 1111
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_84

    .line 1114
    :cond_25
    :goto_25
    return-void

    .line 1099
    :cond_26
    :try_start_26
    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v3, :cond_20

    .line 1100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: not loading resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_3c} :catch_5c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_7b

    goto :goto_20

    .line 1102
    :catch_3d
    move-exception v1

    .line 1103
    .local v1, "e":Ljava/io/IOException;
    :try_start_3e
    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v3, :cond_54

    .line 1104
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_7b

    .line 1110
    :cond_54
    if-eqz v0, :cond_25

    .line 1111
    :try_start_56
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_25

    .line 1112
    :catch_5a
    move-exception v3

    goto :goto_25

    .line 1105
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5c
    move-exception v2

    .line 1106
    .local v2, "sex":Ljava/lang/SecurityException;
    :try_start_5d
    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v3, :cond_73

    .line 1107
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_7b

    .line 1110
    :cond_73
    if-eqz v0, :cond_25

    .line 1111
    :try_start_75
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_25

    .line 1112
    :catch_79
    move-exception v3

    goto :goto_25

    .line 1108
    .end local v2    # "sex":Ljava/lang/SecurityException;
    :catchall_7b
    move-exception v3

    .line 1110
    if-eqz v0, :cond_81

    .line 1111
    :try_start_7e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 1113
    :cond_81
    :goto_81
    throw v3

    .line 1112
    :catch_82
    move-exception v4

    goto :goto_81

    :catch_84
    move-exception v3

    goto :goto_25
.end method

.method private static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 3
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    :try_start_0
    new-instance v1, Ljavax/mail/Session$7;

    invoke-direct {v1, p0}, Ljavax/mail/Session$7;-><init>(Ljava/net/URL;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1262
    return-object v1

    .line 1268
    :catch_c
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private pr(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1178
    invoke-virtual {p0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1179
    return-void
.end method


# virtual methods
.method public declared-synchronized addProvider(Ljavax/mail/Provider;)V
    .registers 4
    .param p1, "provider"    # Ljavax/mail/Provider;

    .prologue
    .line 1001
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1002
    iget-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1004
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 1005
    :cond_24
    monitor-exit p0

    return-void

    .line 1001
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebug()Z
    .registers 2

    .prologue
    .line 379
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebugOut()Ljava/io/PrintStream;
    .registers 2

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_9

    .line 405
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    .line 407
    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_7

    .line 404
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 4
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    .line 613
    .local v0, "store":Ljavax/mail/Store;
    invoke-virtual {v0}, Ljavax/mail/Store;->connect()V

    .line 614
    invoke-virtual {v0, p1}, Ljavax/mail/Store;->getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;

    move-result-object v1

    return-object v1
.end method

.method public getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;
    .registers 3
    .param p1, "url"    # Ljavax/mail/URLName;

    .prologue
    .line 823
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/PasswordAuthentication;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProvider(Ljava/lang/String;)Ljavax/mail/Provider;
    .registers 8
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 440
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_14

    .line 441
    :cond_9
    new-instance v3, Ljavax/mail/NoSuchProviderException;

    const-string v4, "Invalid protocol: null"

    invoke-direct {v3, v4}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    .line 440
    :catchall_11
    move-exception v3

    monitor-exit p0

    throw v3

    .line 444
    :cond_14
    const/4 v1, 0x0

    .line 447
    .local v1, "_provider":Ljavax/mail/Provider;
    :try_start_15
    iget-object v3, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "_className":Ljava/lang/String;
    if-eqz v0, :cond_5a

    .line 449
    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v3, :cond_52

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 451
    const-string v4, ".class property exists and points to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 452
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-direct {p0, v3}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V

    .line 454
    :cond_52
    iget-object v3, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "_provider":Ljavax/mail/Provider;
    check-cast v1, Ljavax/mail/Provider;
    :try_end_5a
    .catchall {:try_start_15 .. :try_end_5a} :catchall_11

    .line 457
    .restart local v1    # "_provider":Ljavax/mail/Provider;
    :cond_5a
    if-eqz v1, :cond_5f

    move-object v2, v1

    .line 471
    .end local v1    # "_provider":Ljavax/mail/Provider;
    .local v2, "_provider":Ljavax/mail/Provider;
    :goto_5d
    monitor-exit p0

    return-object v2

    .line 461
    .end local v2    # "_provider":Ljavax/mail/Provider;
    .restart local v1    # "_provider":Ljavax/mail/Provider;
    :cond_5f
    :try_start_5f
    iget-object v3, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "_provider":Ljavax/mail/Provider;
    check-cast v1, Ljavax/mail/Provider;

    .line 464
    .restart local v1    # "_provider":Ljavax/mail/Provider;
    if-nez v1, :cond_7e

    .line 465
    new-instance v3, Ljavax/mail/NoSuchProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No provider for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 467
    :cond_7e
    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    if-eqz v3, :cond_98

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: getProvider() returning "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1}, Ljavax/mail/Provider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-direct {p0, v3}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_5f .. :try_end_98} :catchall_11

    :cond_98
    move-object v2, v1

    .line 471
    .end local v1    # "_provider":Ljavax/mail/Provider;
    .restart local v2    # "_provider":Ljavax/mail/Provider;
    goto :goto_5d
.end method

.method public declared-synchronized getProviders()[Ljavax/mail/Provider;
    .registers 3

    .prologue
    .line 418
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljavax/mail/Provider;

    .line 419
    .local v0, "_providers":[Ljavax/mail/Provider;
    iget-object v1, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 420
    monitor-exit p0

    return-object v0

    .line 418
    .end local v0    # "_providers":[Ljavax/mail/Provider;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getStore()Ljavax/mail/Store;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 506
    const-string v0, "mail.store.protocol"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getStore(Ljava/lang/String;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljava/lang/String;)Ljavax/mail/Store;
    .registers 9
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 520
    new-instance v0, Ljavax/mail/URLName;

    const/4 v3, -0x1

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljavax/mail/Provider;)Ljavax/mail/Store;
    .registers 3
    .param p1, "provider"    # Ljavax/mail/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;
    .registers 5
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v0

    .line 541
    .local v0, "p":Ljavax/mail/Provider;
    invoke-direct {p0, v0, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v2

    return-object v2
.end method

.method public getTransport()Ljavax/mail/Transport;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 627
    const-string v0, "mail.transport.protocol"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljava/lang/String;)Ljavax/mail/Transport;
    .registers 9
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 641
    new-instance v0, Ljavax/mail/URLName;

    const/4 v3, -0x1

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;
    .registers 6
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 692
    .local v0, "transportProtocol":Ljava/lang/String;
    if-nez v0, :cond_27

    .line 693
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No provider for Address type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_27
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    return-object v1
.end method

.method public getTransport(Ljavax/mail/Provider;)Ljavax/mail/Transport;
    .registers 3
    .param p1, "provider"    # Ljavax/mail/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .registers 5
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v0

    .line 661
    .local v0, "p":Ljavax/mail/Provider;
    invoke-direct {p0, v0, p1}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v2

    return-object v2
.end method

.method public requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;
    .registers 12
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "defaultUserName"    # Ljava/lang/String;

    .prologue
    .line 849
    iget-object v0, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v0, :cond_10

    .line 850
    iget-object v0, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/mail/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v0

    .line 853
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public declared-synchronized setDebug(Z)V
    .registers 3
    .param p1, "debug"    # Z

    .prologue
    .line 368
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Ljavax/mail/Session;->debug:Z

    .line 369
    if-eqz p1, :cond_a

    .line 370
    const-string v0, "DEBUG: setDebug: JavaMail version 1.4.1"

    invoke-direct {p0, v0}, Ljavax/mail/Session;->pr(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 371
    :cond_a
    monitor-exit p0

    return-void

    .line 368
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugOut(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V
    .registers 4
    .param p1, "url"    # Ljavax/mail/URLName;
    .param p2, "pw"    # Ljavax/mail/PasswordAuthentication;

    .prologue
    .line 810
    if-nez p2, :cond_8

    .line 811
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :goto_7
    return-void

    .line 813
    :cond_8
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public declared-synchronized setProtocolForAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "addresstype"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1053
    monitor-enter p0

    if-nez p2, :cond_a

    .line 1054
    :try_start_3
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    .line 1057
    :goto_8
    monitor-exit p0

    return-void

    .line 1056
    :cond_a
    :try_start_a
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_8

    .line 1053
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProvider(Ljavax/mail/Provider;)V
    .registers 5
    .param p1, "provider"    # Ljavax/mail/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 486
    monitor-enter p0

    if-nez p1, :cond_e

    .line 487
    :try_start_3
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "Can\'t set null provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 486
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 489
    :cond_e
    :try_start_e
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_b

    .line 492
    monitor-exit p0

    return-void
.end method
