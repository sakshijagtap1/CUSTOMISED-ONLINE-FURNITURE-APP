.class final Lcom/paypal/android/sdk/payments/ab;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/aa;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/aa;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ab;->a:Lcom/paypal/android/sdk/payments/aa;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ab;->a:Lcom/paypal/android/sdk/payments/aa;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/aa;->a(Lcom/paypal/android/sdk/payments/aa;)V

    goto :goto_8

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
