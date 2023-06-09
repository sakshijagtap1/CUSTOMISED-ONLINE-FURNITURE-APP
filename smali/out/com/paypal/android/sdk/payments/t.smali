.class final Lcom/paypal/android/sdk/payments/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/m;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/m;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/t;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/t;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/m;->c(Lcom/paypal/android/sdk/payments/m;)V

    return-void
.end method
