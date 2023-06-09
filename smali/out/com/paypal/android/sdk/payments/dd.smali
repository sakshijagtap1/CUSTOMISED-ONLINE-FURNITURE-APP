.class final Lcom/paypal/android/sdk/payments/dd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/dd;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dd;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Z)V

    return-void
.end method
