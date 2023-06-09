.class final Lcom/paypal/android/sdk/payments/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ch;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/u;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/u;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/u;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/u;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/m;->d(Lcom/paypal/android/sdk/payments/m;)V

    return-void
.end method
