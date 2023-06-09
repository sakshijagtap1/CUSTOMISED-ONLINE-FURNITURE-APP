.class final Lcom/paypal/android/sdk/payments/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/paypal/android/sdk/gh;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/paypal/android/sdk/payments/LoginActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/LoginActivity;Lcom/paypal/android/sdk/gh;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/an;->c:Lcom/paypal/android/sdk/payments/LoginActivity;

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/an;->a:Lcom/paypal/android/sdk/gh;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/an;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/paypal/android/sdk/fw;->aX:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/an;->a:Lcom/paypal/android/sdk/gh;

    new-instance v3, Lcom/paypal/android/sdk/payments/ao;

    invoke-direct {v3, p0}, Lcom/paypal/android/sdk/payments/ao;-><init>(Lcom/paypal/android/sdk/payments/an;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
