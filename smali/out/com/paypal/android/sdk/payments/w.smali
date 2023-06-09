.class final Lcom/paypal/android/sdk/payments/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/m;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/m;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/w;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/w;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/m;->e(Lcom/paypal/android/sdk/payments/m;)V

    return-void
.end method
