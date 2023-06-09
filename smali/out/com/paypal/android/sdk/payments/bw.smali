.class final Lcom/paypal/android/sdk/payments/bw;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/bv;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/bv;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bw;->a:Lcom/paypal/android/sdk/payments/bv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bw;->a:Lcom/paypal/android/sdk/payments/bv;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bv;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->c(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V

    return-void
.end method
