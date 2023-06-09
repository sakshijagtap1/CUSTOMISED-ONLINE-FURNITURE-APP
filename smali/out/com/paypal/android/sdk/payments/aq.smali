.class final Lcom/paypal/android/sdk/payments/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ch;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/ap;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ap;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/aq;->a:Lcom/paypal/android/sdk/payments/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aq;->a:Lcom/paypal/android/sdk/payments/ap;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ap;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->a()V

    return-void
.end method
