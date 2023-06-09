.class public final Lorg/apache/harmony/awt/ContextStorage;
.super Ljava/lang/Object;
.source "ContextStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/awt/ContextStorage$ContextLock;
    }
.end annotation


# static fields
.field private static final globalContext:Lorg/apache/harmony/awt/ContextStorage;


# instance fields
.field private final contextLock:Ljava/lang/Object;

.field private dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

.field private graphicsEnvironment:Ljava/awt/GraphicsEnvironment;

.field private volatile shutdownPending:Z

.field private toolkit:Ljava/awt/Toolkit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lorg/apache/harmony/awt/ContextStorage;

    invoke-direct {v0}, Lorg/apache/harmony/awt/ContextStorage;-><init>()V

    sput-object v0, Lorg/apache/harmony/awt/ContextStorage;->globalContext:Lorg/apache/harmony/awt/ContextStorage;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/awt/ContextStorage;->shutdownPending:Z

    .line 40
    new-instance v0, Lorg/apache/harmony/awt/ContextStorage$ContextLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/awt/ContextStorage$ContextLock;-><init>(Lorg/apache/harmony/awt/ContextStorage;Lorg/apache/harmony/awt/ContextStorage$ContextLock;)V

    iput-object v0, p0, Lorg/apache/harmony/awt/ContextStorage;->contextLock:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static getContextLock()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->contextLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->globalContext:Lorg/apache/harmony/awt/ContextStorage;

    return-object v0
.end method

.method public static getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;
    .registers 1

    .prologue
    .line 59
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    return-object v0
.end method

.method public static getDefaultToolkit()Ljava/awt/Toolkit;
    .registers 1

    .prologue
    .line 50
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->toolkit:Ljava/awt/Toolkit;

    return-object v0
.end method

.method public static getGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;
    .registers 1

    .prologue
    .line 67
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->graphicsEnvironment:Ljava/awt/GraphicsEnvironment;

    return-object v0
.end method

.method public static setDTK(Lorg/apache/harmony/awt/datatransfer/DTK;)V
    .registers 2
    .param p0, "dtk"    # Lorg/apache/harmony/awt/datatransfer/DTK;

    .prologue
    .line 55
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iput-object p0, v0, Lorg/apache/harmony/awt/ContextStorage;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    .line 56
    return-void
.end method

.method public static setDefaultToolkit(Ljava/awt/Toolkit;)V
    .registers 2
    .param p0, "newToolkit"    # Ljava/awt/Toolkit;

    .prologue
    .line 46
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iput-object p0, v0, Lorg/apache/harmony/awt/ContextStorage;->toolkit:Ljava/awt/Toolkit;

    .line 47
    return-void
.end method

.method public static setGraphicsEnvironment(Ljava/awt/GraphicsEnvironment;)V
    .registers 2
    .param p0, "environment"    # Ljava/awt/GraphicsEnvironment;

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iput-object p0, v0, Lorg/apache/harmony/awt/ContextStorage;->graphicsEnvironment:Ljava/awt/GraphicsEnvironment;

    .line 72
    return-void
.end method

.method public static shutdownPending()Z
    .registers 1

    .prologue
    .line 79
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iget-boolean v0, v0, Lorg/apache/harmony/awt/ContextStorage;->shutdownPending:Z

    return v0
.end method


# virtual methods
.method shutdown()V
    .registers 1

    .prologue
    .line 84
    return-void
.end method
