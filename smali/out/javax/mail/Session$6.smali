.class Ljavax/mail/Session$6;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/mail/Session;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/mail/Session$6;->val$name:Ljava/lang/String;

    .line 1238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 1240
    const/4 v1, 0x0

    check-cast v1, [Ljava/net/URL;

    .line 1242
    .local v1, "ret":[Ljava/net/URL;
    :try_start_3
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1243
    .local v3, "v":Ljava/util/Vector;
    iget-object v4, p0, Ljavax/mail/Session$6;->val$name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 1244
    .local v0, "e":Ljava/util/Enumeration;
    :cond_e
    :goto_e
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_26

    .line 1249
    :cond_16
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_25

    .line 1250
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v1, v4, [Ljava/net/URL;

    .line 1251
    invoke-virtual {v3, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1255
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v3    # "v":Ljava/util/Vector;
    :cond_25
    :goto_25
    return-object v1

    .line 1245
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v3    # "v":Ljava/util/Vector;
    :cond_26
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 1246
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_e

    .line 1247
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_31} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_31} :catch_34

    goto :goto_e

    .line 1253
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "v":Ljava/util/Vector;
    :catch_32
    move-exception v4

    goto :goto_25

    .line 1254
    :catch_34
    move-exception v4

    goto :goto_25
.end method
