.class public final Lcom/ecommerce/furniture/helpers/JSSEProvider;
.super Ljava/security/Provider;
.source "JSSEProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 8
    const-string v0, "HarmonyJSSE"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, "Harmony JSSE Provider"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 9
    new-instance v0, Lcom/ecommerce/furniture/helpers/JSSEProvider$1;

    invoke-direct {v0, p0}, Lcom/ecommerce/furniture/helpers/JSSEProvider$1;-><init>(Lcom/ecommerce/furniture/helpers/JSSEProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 21
    return-void
.end method
