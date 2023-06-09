.class final Lcom/paypal/android/sdk/payments/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/af;->a:Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/af;->a:Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->finish()V

    return-void
.end method
