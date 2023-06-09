.class final Lcom/paypal/android/sdk/payments/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/c;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/m;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/m;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/q;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/q;->a:Lcom/paypal/android/sdk/payments/m;

    sget-object v1, Lcom/paypal/android/sdk/fc;->u:Lcom/paypal/android/sdk/fc;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/m;->a(Lcom/paypal/android/sdk/payments/m;Lcom/paypal/android/sdk/fc;)V

    return-void
.end method
