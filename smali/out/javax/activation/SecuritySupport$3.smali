.class Ljavax/activation/SecuritySupport$3;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cl:Ljava/lang/ClassLoader;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/activation/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;

    iput-object p2, p0, Ljavax/activation/SecuritySupport$3;->val$name:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 8

    .prologue
    .line 88
    const/4 v2, 0x0

    check-cast v2, [Ljava/net/URL;

    .line 90
    .local v2, "ret":[Ljava/net/URL;
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v4, "v":Ljava/util/List;
    iget-object v5, p0, Ljavax/activation/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;

    iget-object v6, p0, Ljavax/activation/SecuritySupport$3;->val$name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 92
    .local v1, "e":Ljava/util/Enumeration;
    :cond_10
    :goto_10
    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 97
    :cond_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2c

    .line 98
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Ljava/net/URL;

    .line 99
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/net/URL;

    move-object v2, v0

    .line 103
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v4    # "v":Ljava/util/List;
    :cond_2c
    :goto_2c
    return-object v2

    .line 93
    .restart local v1    # "e":Ljava/util/Enumeration;
    .restart local v4    # "v":Ljava/util/List;
    :cond_2d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 94
    .local v3, "url":Ljava/net/URL;
    if-eqz v3, :cond_10

    .line 95
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_38} :catch_39
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_38} :catch_3b

    goto :goto_10

    .line 101
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "v":Ljava/util/List;
    :catch_39
    move-exception v5

    goto :goto_2c

    .line 102
    :catch_3b
    move-exception v5

    goto :goto_2c
.end method
