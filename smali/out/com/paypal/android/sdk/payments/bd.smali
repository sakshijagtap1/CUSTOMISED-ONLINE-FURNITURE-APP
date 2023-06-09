.class final Lcom/paypal/android/sdk/payments/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/LoginActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bd;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bd;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
