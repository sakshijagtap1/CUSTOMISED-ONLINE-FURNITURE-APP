.class Lcom/paypal/android/sdk/payments/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/paypal/android/sdk/payments/cf;

.field private c:Ljava/lang/Object;

.field private d:Lcom/paypal/android/sdk/payments/cc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/paypal/android/sdk/payments/cc;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/paypal/android/sdk/payments/cc;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    instance-of v0, v0, Lcom/paypal/android/sdk/fg;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    instance-of v0, v0, Lcom/paypal/android/sdk/fk;

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_13
    iput-object v1, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_19

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/cc;

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method final a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_8

    const-string v0, "success"

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/cc;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/cc;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/a;->b(Lcom/paypal/android/sdk/payments/cc;)V

    :cond_11
    return-void
.end method

.method final a(Lcom/paypal/android/sdk/payments/cc;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/a;->b(Lcom/paypal/android/sdk/payments/cc;)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->b:Lcom/paypal/android/sdk/payments/cf;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->b:Lcom/paypal/android/sdk/payments/cf;

    invoke-interface {p1, v0}, Lcom/paypal/android/sdk/payments/cc;->a(Lcom/paypal/android/sdk/payments/cf;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/a;->b:Lcom/paypal/android/sdk/payments/cf;

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/cc;

    goto :goto_8

    :cond_17
    iput-object p1, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/cc;

    goto :goto_8
.end method

.method final a(Lcom/paypal/android/sdk/payments/cf;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/cc;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/cc;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/payments/cc;->a(Lcom/paypal/android/sdk/payments/cf;)V

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/paypal/android/sdk/payments/a;->b:Lcom/paypal/android/sdk/payments/cf;

    goto :goto_9
.end method

.method final a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    return-void
.end method

.method final b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/cc;

    return-void
.end method
